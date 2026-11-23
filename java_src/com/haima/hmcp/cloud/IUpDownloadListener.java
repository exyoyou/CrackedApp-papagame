package com.haima.hmcp.cloud;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.listeners.BatchCloudOperationListener;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface IUpDownloadListener {
    String getBid();

    String getCid();

    String getDownloadUrl();

    String getUploadUrl();

    IWebSocket getWebSocket();

    void onBatchComplete(CloudOperation cloudOperation, List<BatchCloudOperationListener.FileStatus> list, List<BatchCloudOperationListener.FileStatus> list2);

    void onComplete(CloudOperation cloudOperation);

    void onError(CloudOperation cloudOperation, String str);

    void onFail(CloudFile cloudFile, String str);

    void onHangUp(boolean z10);

    void onStop(CloudOperation cloudOperation, String str, List<CloudFile> list);

    void onSuccess(CloudOperation cloudOperation, CloudFile cloudFile);
}
