package com.haima.hmcp.cloud.video.job;

import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.utils.LogUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class ScanFileJob implements Runnable {
    private static final String TAG = "ScanFileJob";
    private boolean cancel;
    private String mCid;
    private InnerCloudFile mDownloadingFile;
    private String mPath;
    private ScanFileJobCallback mScanFileCallback;

    public interface ScanFileJobCallback {
        void onDone(List<CloudFile> list);
    }

    public ScanFileJob(InnerCloudFile innerCloudFile, ScanFileJobCallback scanFileJobCallback) {
        this.mDownloadingFile = innerCloudFile;
        this.mScanFileCallback = scanFileJobCallback;
    }

    private void deleteFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                deleteFile(file2);
            } else {
                file2.delete();
            }
        }
        file.delete();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0064 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x0065  */
    /* JADX WARN: Code duplicated, block: B:43:0x006f  */
    /* JADX WARN: Code duplicated, block: B:74:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0069 A[SYNTHETIC] */
    private Map<String, InnerCloudFile> getDownloadMaps(String str, int i10) throws Throwable {
        InnerCloudFile innerCloudFile;
        CloudFile cloudFile;
        String strOptString;
        HashMap map = new HashMap();
        ArrayList<String> arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(str), "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            arrayList.add(line);
                        } catch (FileNotFoundException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            for (String str2 : arrayList) {
                                if (TextUtils.isEmpty(str2)) {
                                    try {
                                        JSONObject jSONObject = new JSONObject(str2);
                                        innerCloudFile = new InnerCloudFile();
                                        innerCloudFile.tempFileName = jSONObject.optString("tmp_file_name", "");
                                        innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                        cloudFile = new CloudFile();
                                        strOptString = jSONObject.optString("data");
                                        if (TextUtils.isEmpty(strOptString)) {
                                            JSONObject jSONObject2 = new JSONObject(strOptString);
                                            cloudFile.setName(jSONObject2.optString("name", ""));
                                            cloudFile.setPath(jSONObject2.optString("path", ""));
                                            cloudFile.setCloudPath(jSONObject2.optString("cloudPath", ""));
                                            cloudFile.setSize(jSONObject2.optLong("size", 0L));
                                            try {
                                                cloudFile.setVideoDuration(Double.parseDouble(jSONObject2.optString("duration", "")));
                                            } catch (NumberFormatException unused) {
                                            }
                                            cloudFile.setFileType(jSONObject2.optString("type", ""));
                                            innerCloudFile.cloudFile = cloudFile;
                                            if (i10 == 1) {
                                                map.put(cloudFile.getName(), innerCloudFile);
                                            } else {
                                                map.put(innerCloudFile.tempFileName, innerCloudFile);
                                            }
                                        }
                                    } catch (JSONException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (UnsupportedEncodingException e12) {
                            e = e12;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            while (r10.hasNext()) {
                                if (TextUtils.isEmpty(str2)) {
                                    JSONObject jSONObject3 = new JSONObject(str2);
                                    innerCloudFile = new InnerCloudFile();
                                    innerCloudFile.tempFileName = jSONObject3.optString("tmp_file_name", "");
                                    innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                    cloudFile = new CloudFile();
                                    strOptString = jSONObject3.optString("data");
                                    if (TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject4 = new JSONObject(strOptString);
                                        cloudFile.setName(jSONObject4.optString("name", ""));
                                        cloudFile.setPath(jSONObject4.optString("path", ""));
                                        cloudFile.setCloudPath(jSONObject4.optString("cloudPath", ""));
                                        cloudFile.setSize(jSONObject4.optLong("size", 0L));
                                        cloudFile.setVideoDuration(Double.parseDouble(jSONObject4.optString("duration", "")));
                                        cloudFile.setFileType(jSONObject4.optString("type", ""));
                                        innerCloudFile.cloudFile = cloudFile;
                                        if (i10 == 1) {
                                            map.put(cloudFile.getName(), innerCloudFile);
                                        } else {
                                            map.put(innerCloudFile.tempFileName, innerCloudFile);
                                        }
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (IOException e13) {
                            e = e13;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            while (r10.hasNext()) {
                                if (TextUtils.isEmpty(str2)) {
                                    JSONObject jSONObject5 = new JSONObject(str2);
                                    innerCloudFile = new InnerCloudFile();
                                    innerCloudFile.tempFileName = jSONObject5.optString("tmp_file_name", "");
                                    innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                    cloudFile = new CloudFile();
                                    strOptString = jSONObject5.optString("data");
                                    if (TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject6 = new JSONObject(strOptString);
                                        cloudFile.setName(jSONObject6.optString("name", ""));
                                        cloudFile.setPath(jSONObject6.optString("path", ""));
                                        cloudFile.setCloudPath(jSONObject6.optString("cloudPath", ""));
                                        cloudFile.setSize(jSONObject6.optLong("size", 0L));
                                        cloudFile.setVideoDuration(Double.parseDouble(jSONObject6.optString("duration", "")));
                                        cloudFile.setFileType(jSONObject6.optString("type", ""));
                                        innerCloudFile.cloudFile = cloudFile;
                                        if (i10 == 1) {
                                            map.put(cloudFile.getName(), innerCloudFile);
                                        } else {
                                            map.put(innerCloudFile.tempFileName, innerCloudFile);
                                        }
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            } catch (FileNotFoundException e16) {
                e = e16;
            } catch (UnsupportedEncodingException e17) {
                e = e17;
            } catch (IOException e18) {
                e = e18;
            }
            if (arrayList.isEmpty()) {
                return map;
            }
            while (r10.hasNext()) {
                if (TextUtils.isEmpty(str2)) {
                    JSONObject jSONObject7 = new JSONObject(str2);
                    innerCloudFile = new InnerCloudFile();
                    innerCloudFile.tempFileName = jSONObject7.optString("tmp_file_name", "");
                    innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                    cloudFile = new CloudFile();
                    strOptString = jSONObject7.optString("data");
                    if (TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject8 = new JSONObject(strOptString);
                        cloudFile.setName(jSONObject8.optString("name", ""));
                        cloudFile.setPath(jSONObject8.optString("path", ""));
                        cloudFile.setCloudPath(jSONObject8.optString("cloudPath", ""));
                        cloudFile.setSize(jSONObject8.optLong("size", 0L));
                        cloudFile.setVideoDuration(Double.parseDouble(jSONObject8.optString("duration", "")));
                        cloudFile.setFileType(jSONObject8.optString("type", ""));
                        innerCloudFile.cloudFile = cloudFile;
                        if (i10 == 1) {
                            map.put(cloudFile.getName(), innerCloudFile);
                        } else {
                            map.put(innerCloudFile.tempFileName, innerCloudFile);
                        }
                    }
                }
            }
            arrayList.clear();
            return map;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void cancel() {
        this.cancel = true;
        this.mScanFileCallback = null;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        InnerCloudFile innerCloudFile;
        String str = TAG;
        LogUtils.d(str, "download-file: scan file job is running");
        ArrayList arrayList = new ArrayList();
        File file = new File(this.mPath);
        if (!file.exists()) {
            LogUtils.d(str, "download-file: Scan file finish, " + this.mPath + " is not exists");
            ScanFileJobCallback scanFileJobCallback = this.mScanFileCallback;
            if (scanFileJobCallback != null) {
                scanFileJobCallback.onDone(arrayList);
                return;
            }
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            LogUtils.d(str, "download-file: Scan file finish, no file in " + this.mPath);
            ScanFileJobCallback scanFileJobCallback2 = this.mScanFileCallback;
            if (scanFileJobCallback2 != null) {
                scanFileJobCallback2.onDone(arrayList);
                return;
            }
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (this.cancel) {
                break;
            }
            if (file2.isDirectory()) {
                if (file2.getName().equals(this.mCid)) {
                    try {
                        String str2 = file2.getAbsoluteFile() + File.separator + InnerCloudFile.TMP_MAP_NAME;
                        if (!new File(str2).exists()) {
                            LogUtils.d(TAG, "download-file: scan job, no file-map in " + file2.getName());
                            break;
                        }
                        Map<String, InnerCloudFile> downloadMaps = getDownloadMaps(str2, 0);
                        for (File file3 : file2.listFiles()) {
                            InnerCloudFile innerCloudFile2 = downloadMaps.get(file3.getName());
                            if (innerCloudFile2 != null && ((innerCloudFile = this.mDownloadingFile) == null || !innerCloudFile.tempFileName.equals(file3.getName()))) {
                                LogUtils.d(TAG, "download-file: scan job, find file, name: " + innerCloudFile2.tempFileName);
                                arrayList.add(innerCloudFile2.cloudFile);
                            }
                        }
                    } catch (Exception e10) {
                        LogUtils.d(TAG, "download-file: scan file exception: " + Log.getStackTraceString(e10));
                    }
                } else {
                    LogUtils.d(TAG, "download-file: scan job, delete file: " + file2.getName());
                    deleteFile(file2);
                }
            }
        }
        LogUtils.d(TAG, "download-file: scan file job finish");
        ScanFileJobCallback scanFileJobCallback3 = this.mScanFileCallback;
        if (scanFileJobCallback3 != null) {
            scanFileJobCallback3.onDone(arrayList);
        }
    }

    public void setCid(String str) {
        this.mCid = str;
    }

    public void setScanPath(String str) {
        this.mPath = str;
    }
}
