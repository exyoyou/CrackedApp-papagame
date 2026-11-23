package com.haima.hmcp.cloud;

import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class UploadSummaryAdapter {
    private static final String TAG = "TransferSummaryAdapter";
    private IUploadSummaryListener mSummaryListener;
    private List<BatchCloudOperationListener.FileStatus> mSuccessFiles = new ArrayList();
    private List<BatchCloudOperationListener.FileStatus> mFailedFiles = new ArrayList();

    public void onComplete() {
        LogUtils.d(TAG, "Transfer completed successfully");
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_FINISH, "batchUploadComplete");
        IUploadSummaryListener iUploadSummaryListener = this.mSummaryListener;
        if (iUploadSummaryListener != null) {
            iUploadSummaryListener.onUploadComplete(this.mSuccessFiles, this.mFailedFiles);
        }
    }

    public void onError(int i10, String str) {
        LogUtils.e(TAG, "Transfer error: " + i10 + " - " + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_ERROR, "batchUploadError:" + i10 + ":" + str);
        IUploadSummaryListener iUploadSummaryListener = this.mSummaryListener;
        if (iUploadSummaryListener != null) {
            iUploadSummaryListener.onUploadError(i10, str);
        }
    }

    public void onFileError(InternalCloudFile internalCloudFile, BatchUploadTask.BatchUploadTaskStatus batchUploadTaskStatus, int i10, String str) {
        LogUtils.e(TAG, "File error: " + internalCloudFile + " - " + i10 + " - " + str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("batchUploadSingleFileError:");
        sb2.append(i10);
        sb2.append(":");
        sb2.append(str);
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_ERROR, sb2.toString());
        BatchCloudOperationListener.FileStatus fileStatus = new BatchCloudOperationListener.FileStatus(internalCloudFile.makeCloudFile(), i10, str);
        List<BatchCloudOperationListener.FileStatus> list = this.mFailedFiles;
        if (list != null) {
            list.add(fileStatus);
        }
    }

    public void onFileSuccess(InternalCloudFile internalCloudFile) {
        LogUtils.d(TAG, "File success: " + internalCloudFile.getName());
        BatchCloudOperationListener.FileStatus fileStatus = new BatchCloudOperationListener.FileStatus(internalCloudFile.makeCloudFile(), 0, "");
        List<BatchCloudOperationListener.FileStatus> list = this.mSuccessFiles;
        if (list != null) {
            list.add(fileStatus);
        }
    }

    public void onProgress(int i10) {
    }

    public void setUploadSummaryListener(IUploadSummaryListener iUploadSummaryListener) {
        this.mFailedFiles.clear();
        this.mSuccessFiles.clear();
        this.mSummaryListener = iUploadSummaryListener;
    }
}
