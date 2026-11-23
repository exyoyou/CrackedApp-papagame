package com.haima.hmcp.cloud;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseCloudFileManager {
    public static final long ACK_TIMEOUT = 3000;
    public static final int ERROR_FILE_MD5 = 6;
    public static final int ERROR_FILE_NOT_EXISTS = 3;
    public static final int ERROR_FILE_PATH_NAME = 2;
    public static final int ERROR_FILE_SIZE_OUT_OF_GAUGE = 5;
    public static final int ERROR_FILE_TYPE_NOT_SUPPORT = 4;
    public static final int ERROR_PARAM_NULL = 1;
    public static final int ERROR_SYSTEM = 7;
    public static final int EXTERNAL_ERROR = 1;
    public static final int FILE_CACHE_SIZE_DEFAULT = 1;
    public static final int FILE_CACHE_SIZE_MAX = 2;
    public static final int FILE_SEGMENT_COEFFICIENT = 2;
    public static final int FILE_SEGMENT_COUNT = 2;
    public static final int FILE_SEGMENT_MAX_COUNT = 128;
    public static final long FILE_SIZE_MAX = 10485760;
    public static final long FILE_SIZE_MIN = 1024;
    public static final String FILTER_TAG = "cloud-file: ";
    public static final int INTERNAL_ERROR = 2;
    public static final String KEY_CODE = "code";
    public static final String KEY_MESSAGE = "message";
    public static final int STATUS_RUNNING = 1;
    public static final long STOKEN_VALID_TIME = 120000;
    public static final String TAG = CloudFileManager.class.getSimpleName();
    private Map<String, Object> jsonMap = new HashMap();
    private BatchUploadWork mBatchUploadWork;
    CloudFileConfig mConfig;
    protected Context mContext;
    private DownloadWork mDownloadWork;
    private UploadWork mUploadWork;

    BaseCloudFileManager() {
    }

    List<CloudFile> getCloudFile(List<InternalCloudFile> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator<InternalCloudFile> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().makeCloudFile());
        }
        return arrayList;
    }

    synchronized ICloudFile getInternalCloudFile(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            if (this.mUploadWork == null) {
                this.mUploadWork = new UploadWork();
            }
            return this.mUploadWork;
        }
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            if (this.mBatchUploadWork == null) {
                this.mBatchUploadWork = new BatchUploadWork();
            }
            return this.mBatchUploadWork;
        }
        if (this.mDownloadWork == null) {
            this.mDownloadWork = new DownloadWork(this.mContext);
        }
        return this.mDownloadWork;
    }

    String getMessage(String str) {
        this.jsonMap.clear();
        this.jsonMap.put("message", str);
        return JsonUtil.getJsonObj(this.jsonMap).toString();
    }

    void handleDownloadMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        DownloadWork downloadWork = this.mDownloadWork;
        if (downloadWork == null || downloadWork.getStatus() == WorkStatus.IDLE) {
            LogUtils.d(TAG, "download work is running");
        } else {
            this.mDownloadWork.onMessage(str);
        }
    }

    void handleUploadMessage(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UploadWork uploadWork = this.mUploadWork;
        if (uploadWork == null || uploadWork.getStatus() == WorkStatus.IDLE) {
            LogUtils.d(TAG, "upload work is running");
        } else {
            this.mUploadWork.onMessage(str);
        }
    }

    public abstract boolean hasHangUpTask(CloudOperation cloudOperation);

    public boolean isRunning(CloudOperation cloudOperation) {
        if (hasHangUpTask(cloudOperation)) {
            return true;
        }
        if (cloudOperation == CloudOperation.UPLOAD) {
            UploadWork uploadWork = this.mUploadWork;
            return (uploadWork == null || uploadWork.getStatus() == WorkStatus.IDLE) ? false : true;
        }
        if (cloudOperation == CloudOperation.BATCH_UPLOAD) {
            BatchUploadWork batchUploadWork = this.mBatchUploadWork;
            return (batchUploadWork == null || batchUploadWork.getStatus() == WorkStatus.IDLE) ? false : true;
        }
        DownloadWork downloadWork = this.mDownloadWork;
        return (downloadWork == null || downloadWork.getStatus() == WorkStatus.IDLE) ? false : true;
    }

    public void setConfig(CloudFileConfig cloudFileConfig) {
        this.mConfig = cloudFileConfig;
    }
}
