package com.haima.hmcp.cloud;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.listeners.WebSocketObserver;
import com.haima.hmcp.utils.FileUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CloudFileManager extends BaseCloudFileManager implements WebSocketObserver {
    private static final int RETRY_MAX = 1;
    private static CloudFileManager mCloudFileManager;
    private CloudFile mHandUpDownloadFile;
    private List<CloudFile> mHandUpUploadBatchFiles;
    private CloudFile mHandUpUploadFile;
    private int uploadSocketRetryCount = 0;
    private int downloadSocketRetryCount = 0;

    private CloudFileManager() {
    }

    static /* synthetic */ int access$108(CloudFileManager cloudFileManager) {
        int i10 = cloudFileManager.uploadSocketRetryCount;
        cloudFileManager.uploadSocketRetryCount = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$308(CloudFileManager cloudFileManager) {
        int i10 = cloudFileManager.downloadSocketRetryCount;
        cloudFileManager.downloadSocketRetryCount = i10 + 1;
        return i10;
    }

    public static CloudFileManager getInstance() {
        if (mCloudFileManager == null) {
            synchronized (CloudFileManager.class) {
                if (mCloudFileManager == null) {
                    mCloudFileManager = new CloudFileManager();
                }
            }
        }
        return mCloudFileManager;
    }

    private void getStatus(CloudOperation cloudOperation) {
        getInternalCloudFile(cloudOperation).getStatus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void interBatchUploadTask(CloudOperation cloudOperation, IWebSocket iWebSocket, CloudFileConfig cloudFileConfig, List<InternalCloudFile> list, List<InternalCloudFile> list2, IUploadSummaryListener iUploadSummaryListener) {
        ICloudFile internalCloudFile = getInternalCloudFile(CloudOperation.BATCH_UPLOAD);
        if (internalCloudFile != null) {
            if (internalCloudFile instanceof BatchUploadWork) {
                ((BatchUploadWork) internalCloudFile).batchUploadTaskExecute(iWebSocket, cloudFileConfig, list, list2, iUploadSummaryListener);
                return;
            }
            return;
        }
        LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: : need call checkFile() first");
        if (iUploadSummaryListener != null) {
            iUploadSummaryListener.onUploadError(-1, "need call checkFile() first");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalExecute(final CloudOperation cloudOperation, IWebSocket iWebSocket, CloudFileConfig cloudFileConfig, List<InternalCloudFile> list, final IUpDownloadListener iUpDownloadListener) {
        ICloudFile internalCloudFile = getInternalCloudFile(cloudOperation);
        if (internalCloudFile != null) {
            internalCloudFile.execute(iWebSocket, list, cloudFileConfig, new IWorkListener() { // from class: com.haima.hmcp.cloud.CloudFileManager.3
                @Override // com.haima.hmcp.cloud.IWorkListener
                public void onError(InternalCloudFile internalCloudFile2, String str) {
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onError(cloudOperation, CloudFileManager.this.getMessage(str));
                    }
                }

                @Override // com.haima.hmcp.cloud.IWorkListener
                public void onFinish(ArrayList<InternalCloudFile> arrayList) {
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onComplete(cloudOperation);
                    }
                }

                @Override // com.haima.hmcp.cloud.IWorkListener
                public boolean onHangUp() {
                    boolean z10;
                    String str = "onHangUp->socketRetryCount: " + CloudFileManager.this.uploadSocketRetryCount + "; RETRY_MAX:1";
                    LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + str);
                    if (cloudOperation == CloudOperation.UPLOAD) {
                        z10 = CloudFileManager.this.uploadSocketRetryCount < 1;
                        CloudFileManager.access$108(CloudFileManager.this);
                    } else {
                        z10 = CloudFileManager.this.downloadSocketRetryCount < 1;
                        CloudFileManager.access$308(CloudFileManager.this);
                    }
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onHangUp(z10);
                    }
                    return z10;
                }

                @Override // com.haima.hmcp.cloud.IWorkListener
                public void onStop(int i10, String str, List<InternalCloudFile> list2) {
                    if (CloudFileManager.this.hasHangUpTask(cloudOperation)) {
                        LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: has hang up task and intercept stop callback");
                        return;
                    }
                    LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + str);
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onStop(cloudOperation, CloudFileManager.this.getMessage(str), CloudFileManager.this.getCloudFile(list2));
                    }
                }

                @Override // com.haima.hmcp.cloud.IWorkListener
                public void onSuccess(InternalCloudFile internalCloudFile2) {
                    CloudFile cloudFile = new CloudFile();
                    cloudFile.setName(internalCloudFile2.getName());
                    cloudFile.setPath(internalCloudFile2.getPath());
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onSuccess(cloudOperation, cloudFile);
                    }
                }
            });
            return;
        }
        LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: : need call checkFile() first");
        if (iUpDownloadListener != null) {
            iUpDownloadListener.onStop(cloudOperation, getMessage("need call checkFile() first"), getCloudFile(list));
        }
    }

    private void interrupt(CloudOperation cloudOperation) {
        getInternalCloudFile(cloudOperation).interrupt();
    }

    public static void release() {
        CloudFileManager cloudFileManager = mCloudFileManager;
        if (cloudFileManager != null) {
            cloudFileManager.cancel(CloudOperation.UPLOAD);
            mCloudFileManager.cancel(CloudOperation.DOWNLOAD);
            mCloudFileManager.mContext = null;
            mCloudFileManager = null;
        }
    }

    public void cancel(CloudOperation cloudOperation) {
        interrupt(cloudOperation);
    }

    public boolean checkTokenValid(long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        if (this.mConfig == null) {
            LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: valid time:120000; check time:" + jCurrentTimeMillis);
            return System.currentTimeMillis() - j10 < BaseCloudFileManager.STOKEN_VALID_TIME;
        }
        LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: valid time:" + this.mConfig.getStokenValidTime() + "; check time:" + jCurrentTimeMillis);
        return jCurrentTimeMillis < this.mConfig.getStokenValidTime();
    }

    public void clearHandUpBatchContent(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            this.mHandUpUploadBatchFiles = null;
        }
    }

    public void download(List<CloudFile> list, IUpDownloadListener iUpDownloadListener) {
        if (iUpDownloadListener == null) {
            LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + "prepare upload fail: IUploadListener is null");
            return;
        }
        CloudOperation cloudOperation = CloudOperation.DOWNLOAD;
        if (getInternalCloudFile(cloudOperation).getStatus() != WorkStatus.IDLE) {
            LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + "download task is running");
            iUpDownloadListener.onStop(cloudOperation, "download task is running", list);
            return;
        }
        if (list == null || list.size() == 0) {
            iUpDownloadListener.onStop(cloudOperation, getMessage("no files to download"), list);
            cancel(cloudOperation);
            LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + "no files to download");
            return;
        }
        String str = BaseCloudFileManager.TAG;
        LogUtils.d(str, "cloud-file: to prepare download");
        if (this.mConfig == null) {
            this.mConfig = new CloudFileConfig();
        }
        String downloadUrl = iUpDownloadListener.getDownloadUrl();
        if (TextUtils.isEmpty(downloadUrl)) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket url is null");
            iUpDownloadListener.onStop(cloudOperation, getMessage("web-socket url is null"), list);
            cancel(cloudOperation);
            return;
        }
        this.mConfig.url = downloadUrl;
        IWebSocket webSocket = iUpDownloadListener.getWebSocket();
        if (webSocket == null) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket instance is null");
            iUpDownloadListener.onStop(cloudOperation, getMessage("web-socket instance is null"), list);
            cancel(cloudOperation);
            return;
        }
        String bid = iUpDownloadListener.getBid();
        if (TextUtils.isEmpty(bid)) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "access key is null");
            iUpDownloadListener.onStop(cloudOperation, getMessage("access key is null"), list);
            cancel(cloudOperation);
            return;
        }
        this.mConfig.bid = bid;
        String cid = iUpDownloadListener.getCid();
        if (TextUtils.isEmpty(cid)) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "cid is null");
            iUpDownloadListener.onStop(cloudOperation, getMessage("cid is null"), list);
            cancel(cloudOperation);
            return;
        }
        this.mConfig.cid = cid;
        ArrayList arrayList = new ArrayList();
        for (CloudFile cloudFile : list) {
            InternalCloudFile internalCloudFile = new InternalCloudFile();
            internalCloudFile.setName(cloudFile.getName());
            if (TextUtils.isEmpty(cloudFile.getPath())) {
                internalCloudFile.isSaveToGallery = true;
                cloudFile.setPath(FileUtil.S_DEFAULT_STORAGE_PATH);
            }
            internalCloudFile.setPath(cloudFile.getPath());
            internalCloudFile.setCloudPath(cloudFile.getCloudPath());
            internalCloudFile.cloudFile = cloudFile;
            arrayList.add(internalCloudFile);
        }
        internalExecute(CloudOperation.DOWNLOAD, webSocket, this.mConfig, arrayList, iUpDownloadListener);
    }

    public Context getContext() {
        return this.mContext;
    }

    public List<CloudFile> getHandUpBatchContent() {
        List<CloudFile> list = this.mHandUpUploadBatchFiles;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.mHandUpUploadBatchFiles);
        this.mHandUpUploadBatchFiles = null;
        return arrayList;
    }

    public CloudFile getHandUpContent(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            if (this.mHandUpUploadFile == null) {
                return null;
            }
            CloudFile cloudFile = new CloudFile();
            cloudFile.setName(this.mHandUpUploadFile.getName());
            cloudFile.setPath(this.mHandUpUploadFile.getPath());
            cloudFile.setImageType(this.mHandUpUploadFile.getImageType());
            this.mHandUpUploadFile = null;
            return cloudFile;
        }
        if (this.mHandUpDownloadFile == null) {
            return null;
        }
        CloudFile cloudFile2 = new CloudFile();
        cloudFile2.setName(this.mHandUpDownloadFile.getName());
        cloudFile2.setPath(this.mHandUpDownloadFile.getPath());
        cloudFile2.setCloudPath(this.mHandUpDownloadFile.getCloudPath());
        this.mHandUpDownloadFile = null;
        return cloudFile2;
    }

    public WebSocketObserver getObserver() {
        return this;
    }

    public void hangUp(CloudOperation cloudOperation, CloudFile cloudFile) {
        if (cloudOperation != CloudOperation.UPLOAD) {
            if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName())) {
                LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: hang up file fail because file is null");
                return;
            }
            LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: task is hang up");
            CloudFile cloudFile2 = new CloudFile();
            this.mHandUpDownloadFile = cloudFile2;
            cloudFile2.setName(cloudFile.getName());
            this.mHandUpDownloadFile.setPath(cloudFile.getPath());
            this.mHandUpDownloadFile.setCloudPath(cloudFile.getCloudPath());
            return;
        }
        if (cloudFile == null) {
            LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: hang up file fail because file is null");
            return;
        }
        if (TextUtils.isEmpty(cloudFile.getName()) || TextUtils.isEmpty(cloudFile.getPath())) {
            LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: hang up file fail because name or path is null");
            return;
        }
        LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: task is hang up");
        CloudFile cloudFile3 = new CloudFile();
        this.mHandUpUploadFile = cloudFile3;
        cloudFile3.setName(cloudFile.getName());
        this.mHandUpUploadFile.setPath(cloudFile.getPath());
        this.mHandUpUploadFile.setImageType(cloudFile.getImageType());
    }

    public void hangUpBatch(CloudOperation cloudOperation, List<CloudFile> list) {
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            if (list == null || list.size() == 0) {
                LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: hang up file fail because file is null");
            } else {
                LogUtils.d(BaseCloudFileManager.TAG, "cloud-file: batch task is hang up");
                this.mHandUpUploadBatchFiles = list;
            }
        }
    }

    @Override // com.haima.hmcp.cloud.BaseCloudFileManager
    public boolean hasHangUpTask(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            return this.mHandUpUploadFile != null;
        }
        if (cloudOperation != CloudOperation.BATCH_UPLOAD) {
            return this.mHandUpDownloadFile != null;
        }
        List<CloudFile> list = this.mHandUpUploadBatchFiles;
        return list != null && list.size() > 0;
    }

    @Override // com.haima.hmcp.cloud.BaseCloudFileManager
    public /* bridge */ /* synthetic */ boolean isRunning(CloudOperation cloudOperation) {
        return super.isRunning(cloudOperation);
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onMessage(WebSocketManager.WebSocketType webSocketType, String str) {
        WebSocketManager.WebSocketType webSocketType2 = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onObserver(WebSocketManager.WebSocketType webSocketType, int i10) {
    }

    public void resetDownloadRetry() {
        this.downloadSocketRetryCount = 0;
    }

    public void resetUploadRetry() {
        this.uploadSocketRetryCount = 0;
    }

    @Override // com.haima.hmcp.cloud.BaseCloudFileManager
    public /* bridge */ /* synthetic */ void setConfig(CloudFileConfig cloudFileConfig) {
        super.setConfig(cloudFileConfig);
    }

    public void setContext(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void upload(List<CloudFile> list, final IUpDownloadListener iUpDownloadListener) {
        CloudOperation cloudOperation = CloudOperation.UPLOAD;
        ICloudFile internalCloudFile = getInternalCloudFile(cloudOperation);
        if (internalCloudFile.getStatus() == WorkStatus.IDLE) {
            internalCloudFile.check(list, new IFileCheckListener() { // from class: com.haima.hmcp.cloud.CloudFileManager.1
                @Override // com.haima.hmcp.cloud.IFileCheckListener
                public void onCheckComplete(List<InternalCloudFile> list2) {
                    String str = BaseCloudFileManager.TAG;
                    LogUtils.d(str, "cloud-file: file check complete and to prepare upload");
                    if (iUpDownloadListener == null) {
                        LogUtils.d(str, "cloud-file: prepare upload fail: IUploadListener is null");
                        return;
                    }
                    if (list2 == null || list2.size() == 0) {
                        IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                        if (iUpDownloadListener2 != null) {
                            iUpDownloadListener2.onStop(CloudOperation.UPLOAD, CloudFileManager.this.getMessage("no files to upload after file check"), CloudFileManager.this.getCloudFile(list2));
                        }
                        CloudFileManager.this.cancel(CloudOperation.UPLOAD);
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "no files to upload after file check");
                        return;
                    }
                    LogUtils.d(str, "cloud-file: to prepare upload");
                    String uploadUrl = iUpDownloadListener.getUploadUrl();
                    if (TextUtils.isEmpty(uploadUrl)) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket url is null");
                        IUpDownloadListener iUpDownloadListener3 = iUpDownloadListener;
                        if (iUpDownloadListener3 != null) {
                            iUpDownloadListener3.onStop(CloudOperation.UPLOAD, CloudFileManager.this.getMessage("web-socket url is null"), CloudFileManager.this.getCloudFile(list2));
                        }
                        CloudFileManager.this.cancel(CloudOperation.UPLOAD);
                        return;
                    }
                    CloudFileManager.this.mConfig.url = uploadUrl;
                    IWebSocket webSocket = iUpDownloadListener.getWebSocket();
                    if (webSocket == null) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket instance is null");
                        IUpDownloadListener iUpDownloadListener4 = iUpDownloadListener;
                        if (iUpDownloadListener4 != null) {
                            iUpDownloadListener4.onStop(CloudOperation.UPLOAD, CloudFileManager.this.getMessage("web-socket instance is null"), CloudFileManager.this.getCloudFile(list2));
                        }
                        CloudFileManager.this.cancel(CloudOperation.UPLOAD);
                        return;
                    }
                    CloudFileManager cloudFileManager = CloudFileManager.this;
                    if (cloudFileManager.mConfig == null) {
                        cloudFileManager.mConfig = new CloudFileConfig();
                    }
                    String bid = iUpDownloadListener.getBid();
                    if (TextUtils.isEmpty(bid)) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "access key is null");
                        IUpDownloadListener iUpDownloadListener5 = iUpDownloadListener;
                        if (iUpDownloadListener5 != null) {
                            iUpDownloadListener5.onStop(CloudOperation.UPLOAD, CloudFileManager.this.getMessage("access key is null"), CloudFileManager.this.getCloudFile(list2));
                        }
                        CloudFileManager.this.cancel(CloudOperation.UPLOAD);
                        return;
                    }
                    CloudFileManager.this.mConfig.bid = bid;
                    String cid = iUpDownloadListener.getCid();
                    if (!TextUtils.isEmpty(cid)) {
                        CloudFileManager cloudFileManager2 = CloudFileManager.this;
                        CloudFileConfig cloudFileConfig = cloudFileManager2.mConfig;
                        cloudFileConfig.cid = cid;
                        cloudFileManager2.internalExecute(CloudOperation.UPLOAD, webSocket, cloudFileConfig, list2, iUpDownloadListener);
                        return;
                    }
                    LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "cid is null");
                    IUpDownloadListener iUpDownloadListener6 = iUpDownloadListener;
                    if (iUpDownloadListener6 != null) {
                        iUpDownloadListener6.onStop(CloudOperation.UPLOAD, CloudFileManager.this.getMessage("cid is null"), CloudFileManager.this.getCloudFile(list2));
                    }
                    CloudFileManager.this.cancel(CloudOperation.UPLOAD);
                }

                @Override // com.haima.hmcp.cloud.IBaseCheckListener
                public void onFail(CloudFile cloudFile, String str) {
                    IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                    if (iUpDownloadListener2 != null) {
                        iUpDownloadListener2.onFail(cloudFile, str);
                    }
                }
            });
            return;
        }
        LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + "upload task is running");
        if (iUpDownloadListener != null) {
            iUpDownloadListener.onStop(cloudOperation, "upload task is running", list);
        }
    }

    public void uploadBatch(List<CloudFile> list, final IUpDownloadListener iUpDownloadListener) {
        CloudOperation cloudOperation = CloudOperation.BATCH_UPLOAD;
        ICloudFile internalCloudFile = getInternalCloudFile(cloudOperation);
        if (internalCloudFile.getStatus() == WorkStatus.IDLE) {
            internalCloudFile.check(list, new IBatchFileCheckListener() { // from class: com.haima.hmcp.cloud.CloudFileManager.2
                @Override // com.haima.hmcp.cloud.IBatchFileCheckListener
                public void onCheckComplete(List<InternalCloudFile> list2, List<InternalCloudFile> list3) {
                    String str = BaseCloudFileManager.TAG;
                    LogUtils.d(str, "cloud-file: file check complete and to prepare upload");
                    if (iUpDownloadListener == null) {
                        LogUtils.d(str, "cloud-file: prepare upload fail: IUploadListener is null");
                        return;
                    }
                    if (list2 == null || list2.size() == 0) {
                        IUpDownloadListener iUpDownloadListener2 = iUpDownloadListener;
                        if (iUpDownloadListener2 != null) {
                            iUpDownloadListener2.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage("no files to upload after file check"), null);
                        }
                        CloudFileManager.this.cancel(CloudOperation.BATCH_UPLOAD);
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "no files to upload after file check");
                        return;
                    }
                    LogUtils.d(str, "cloud-file: to prepare upload");
                    String uploadUrl = iUpDownloadListener.getUploadUrl();
                    if (TextUtils.isEmpty(uploadUrl)) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket url is null");
                        IUpDownloadListener iUpDownloadListener3 = iUpDownloadListener;
                        if (iUpDownloadListener3 != null) {
                            iUpDownloadListener3.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage("web-socket url is null"), null);
                        }
                        CloudFileManager.this.cancel(CloudOperation.BATCH_UPLOAD);
                        return;
                    }
                    IWebSocket webSocket = iUpDownloadListener.getWebSocket();
                    if (webSocket == null) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "web-socket instance is null");
                        IUpDownloadListener iUpDownloadListener4 = iUpDownloadListener;
                        if (iUpDownloadListener4 != null) {
                            iUpDownloadListener4.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage("web-socket instance is null"), null);
                        }
                        CloudFileManager.this.cancel(CloudOperation.BATCH_UPLOAD);
                        return;
                    }
                    CloudFileManager cloudFileManager = CloudFileManager.this;
                    if (cloudFileManager.mConfig == null) {
                        cloudFileManager.mConfig = new CloudFileConfig();
                    }
                    CloudFileManager.this.mConfig.url = uploadUrl;
                    String bid = iUpDownloadListener.getBid();
                    if (TextUtils.isEmpty(bid)) {
                        LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "access key is null");
                        IUpDownloadListener iUpDownloadListener5 = iUpDownloadListener;
                        if (iUpDownloadListener5 != null) {
                            iUpDownloadListener5.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage("access key is null"), null);
                        }
                        CloudFileManager.this.cancel(CloudOperation.BATCH_UPLOAD);
                        return;
                    }
                    CloudFileManager.this.mConfig.bid = bid;
                    String cid = iUpDownloadListener.getCid();
                    if (!TextUtils.isEmpty(cid)) {
                        CloudFileManager cloudFileManager2 = CloudFileManager.this;
                        CloudFileConfig cloudFileConfig = cloudFileManager2.mConfig;
                        cloudFileConfig.cid = cid;
                        cloudFileManager2.interBatchUploadTask(CloudOperation.BATCH_UPLOAD, webSocket, cloudFileConfig, list2, list3, new IUploadSummaryListener() { // from class: com.haima.hmcp.cloud.CloudFileManager.2.1
                            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
                            public boolean onHangUp() {
                                String str2 = "onHangBatchUp->socketRetryCount: " + CloudFileManager.this.uploadSocketRetryCount + "; RETRY_MAX:1";
                                LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + str2);
                                boolean z10 = CloudFileManager.this.uploadSocketRetryCount < 1;
                                CloudFileManager.access$108(CloudFileManager.this);
                                IUpDownloadListener iUpDownloadListener6 = iUpDownloadListener;
                                if (iUpDownloadListener6 != null) {
                                    iUpDownloadListener6.onHangUp(z10);
                                }
                                return z10;
                            }

                            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
                            public void onUploadComplete(List<BatchCloudOperationListener.FileStatus> list4, List<BatchCloudOperationListener.FileStatus> list5) {
                                IUpDownloadListener iUpDownloadListener6 = iUpDownloadListener;
                                if (iUpDownloadListener6 != null) {
                                    iUpDownloadListener6.onBatchComplete(CloudOperation.BATCH_UPLOAD, list4, list5);
                                }
                            }

                            @Override // com.haima.hmcp.cloud.IUploadSummaryListener
                            public void onUploadError(int i10, String str2) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                IUpDownloadListener iUpDownloadListener6 = iUpDownloadListener;
                                if (iUpDownloadListener6 != null) {
                                    iUpDownloadListener6.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage(str2), null);
                                }
                            }
                        });
                        return;
                    }
                    LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "cid is null");
                    IUpDownloadListener iUpDownloadListener6 = iUpDownloadListener;
                    if (iUpDownloadListener6 != null) {
                        iUpDownloadListener6.onStop(CloudOperation.BATCH_UPLOAD, CloudFileManager.this.getMessage("cid is null"), null);
                    }
                    CloudFileManager.this.cancel(CloudOperation.BATCH_UPLOAD);
                }

                @Override // com.haima.hmcp.cloud.IBaseCheckListener
                public void onFail(CloudFile cloudFile, String str) {
                }
            });
            return;
        }
        LogUtils.d(BaseCloudFileManager.TAG, BaseCloudFileManager.FILTER_TAG + "batch_upload task is running");
        if (iUpDownloadListener != null) {
            iUpDownloadListener.onStop(cloudOperation, "batch_upload task is running", list);
        }
    }
}
