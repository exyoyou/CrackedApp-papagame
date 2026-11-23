package com.haima.hmcp.cloud;

import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.utils.FileUtil;
import com.haima.hmcp.utils.LogUtils;
import com.join.mgps.Util.o0;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseFileTypeCheckTask implements ITask {
    private static final String TAG = "BaseFileTypeCheckTask";
    private IWorkListener mCheckListener;
    private CheckTask mCheckTask;

    class CheckTask extends AsyncTask<List<InternalCloudFile>, Integer, Boolean> {
        private ArrayList<InternalCloudFile> passFiles;
        private ArrayList<InternalCloudFile> toUploadFiles;

        private String bytesToHexString(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder();
            if (bArr == null || bArr.length <= 0) {
                return null;
            }
            for (byte b10 : bArr) {
                String hexString = Integer.toHexString(b10 & 255);
                if (hexString.length() < 2) {
                    sb2.append(0);
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        }

        private boolean checkFileExists(File file) {
            return file != null && file.exists();
        }

        private boolean checkFileSize(File file) {
            if (file == null) {
                return false;
            }
            long length = file.length();
            return length >= 1024 && length <= 10485760;
        }

        private String getErrorMessage(int i10) {
            if (i10 == 1) {
                return ResourceManager.getString(R.string.hmcp_upload_download_error_param_null);
            }
            if (i10 == 3) {
                return ResourceManager.getString(R.string.hmcp_upload_download_error_file_not_exists);
            }
            if (i10 == 4) {
                return ResourceManager.getString(R.string.hmcp_upload_download_error_file_type_not_support);
            }
            if (i10 != 5) {
                return (i10 == 6 || i10 == 7) ? ResourceManager.getString(R.string.hmcp_upload_download_error_system_failure) : ResourceManager.getString(R.string.hmcp_upload_download_unknown_error);
            }
            return ResourceManager.getString(R.string.hmcp_upload_download_error_file_size_exceeds_the_limit);
        }

        private boolean isEmptyPath(CloudFile cloudFile) {
            return TextUtils.isEmpty(cloudFile.getName()) || TextUtils.isEmpty(cloudFile.getPath());
        }

        private boolean isSupportType(CloudFile cloudFile) {
            ArrayMap<String, String> fileSuffixMap = BaseFileTypeCheckTask.this.getFileSuffixMap();
            if (fileSuffixMap == null || fileSuffixMap.size() == 0) {
                return false;
            }
            int iLastIndexOf = cloudFile.getName().lastIndexOf(o0.f49827a);
            if (iLastIndexOf == -1) {
                return true;
            }
            return fileSuffixMap.containsValue(cloudFile.getName().substring(iLastIndexOf + 1).toLowerCase());
        }

        private boolean isSupportTypeFromFileHeader(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            ArrayMap<String, String> fileHeaderTypeMap = BaseFileTypeCheckTask.this.getFileHeaderTypeMap();
            if (fileHeaderTypeMap == null || fileHeaderTypeMap.size() == 0) {
                return true;
            }
            return fileHeaderTypeMap.containsValue(str);
        }

        private CheckTask() {
            this.toUploadFiles = new ArrayList<>();
            this.passFiles = new ArrayList<>();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(List<InternalCloudFile>... listArr) throws Throwable {
            this.toUploadFiles.addAll(listArr[0]);
            int size = this.toUploadFiles.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (isCancelled()) {
                    LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: check task is stop running because is canceled.");
                    return Boolean.TRUE;
                }
                InternalCloudFile internalCloudFile = this.toUploadFiles.get(i10);
                if (internalCloudFile == null) {
                    LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : file is null");
                    publishProgress(Integer.valueOf(i10), 1);
                } else if (isEmptyPath(internalCloudFile)) {
                    LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : file name or path is null");
                    publishProgress(Integer.valueOf(i10), 1);
                } else if (isSupportType(internalCloudFile)) {
                    File file = new File(internalCloudFile.getPath() + internalCloudFile.getName());
                    if (!checkFileExists(file)) {
                        LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : file is not exists");
                        publishProgress(Integer.valueOf(i10), 3);
                    } else if (checkFileSize(file)) {
                        internalCloudFile.fileSize = file.length();
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(internalCloudFile.getPath() + internalCloudFile.getName(), options);
                        String str = options.outMimeType;
                        if (TextUtils.isEmpty(str) || !isSupportTypeFromFileHeader(str.toLowerCase())) {
                            LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : file header type is not support");
                            publishProgress(Integer.valueOf(i10), 4);
                        } else {
                            internalCloudFile.type = str;
                            String fileMd5 = FileUtil.getFileMd5(file);
                            if (TextUtils.isEmpty(fileMd5)) {
                                publishProgress(Integer.valueOf(i10), 6);
                            } else {
                                internalCloudFile.md5 = fileMd5;
                                this.passFiles.add(internalCloudFile.copy());
                            }
                        }
                    } else {
                        LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : size check fail");
                        publishProgress(Integer.valueOf(i10), 5);
                    }
                } else {
                    LogUtils.d(BaseFileTypeCheckTask.TAG, "cloud-file: : file suffix type is not support");
                    publishProgress(Integer.valueOf(i10), 4);
                }
            }
            return Boolean.TRUE;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            if (BaseFileTypeCheckTask.this.mCheckListener != null) {
                BaseFileTypeCheckTask.this.mCheckListener.onFinish(this.passFiles);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            if (BaseFileTypeCheckTask.this.mCheckListener != null) {
                BaseFileTypeCheckTask.this.mCheckListener.onError(new InternalCloudFile(this.toUploadFiles.get(numArr[0].intValue())), getErrorMessage(numArr[1].intValue()));
            }
        }
    }

    BaseFileTypeCheckTask() {
    }

    protected abstract ArrayMap<String, String> getFileHeaderTypeMap();

    protected abstract ArrayMap<String, String> getFileSuffixMap();

    @Override // com.haima.hmcp.cloud.ITask
    public int getStatus() {
        if (this.mCheckTask == null) {
            LogUtils.d(TAG, "cloud-file: check task status: idle");
            return 0;
        }
        LogUtils.d(TAG, "cloud-file: check task status: " + this.mCheckTask.getStatus());
        return 0;
    }

    @Override // com.haima.hmcp.cloud.ITask
    public boolean isRunning() {
        CheckTask checkTask = this.mCheckTask;
        return checkTask != null && checkTask.getStatus() == AsyncTask.Status.RUNNING;
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void start(List<InternalCloudFile> list, IWorkListener iWorkListener) {
        CheckTask checkTask = this.mCheckTask;
        if (checkTask != null) {
            checkTask.cancel(true);
            this.mCheckTask = null;
        }
        this.mCheckListener = iWorkListener;
        CheckTask checkTask2 = new CheckTask();
        this.mCheckTask = checkTask2;
        checkTask2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, list);
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void stop() {
        CheckTask checkTask = this.mCheckTask;
        if (checkTask != null) {
            checkTask.cancel(true);
            this.mCheckTask = null;
        }
    }
}
