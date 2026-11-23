package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface InnerDownloadCallback {
    void onDownload(InnerCloudFile innerCloudFile);

    void onDownloadFail(int i10, String str);

    void onDownloadFail(InnerCloudFile innerCloudFile, int i10, String str);

    void onDownloadFinish();

    void onDownloaded(InnerCloudFile innerCloudFile);

    void onMovedFail(InnerCloudFile innerCloudFile, int i10, String str);

    void onMovedSuccess(InnerCloudFile innerCloudFile);

    void onProgress(InnerCloudFile innerCloudFile, long j10, long j11);

    long onProgressCheck();

    void onProgressFreeze();

    void onQueryFail(int i10, String str);

    void onQuerySuccess(List<CloudFile> list);

    void onQueryTimeOut();

    void onRetry(InnerCloudFile innerCloudFile, long j10);

    void onRunning(List<CloudFile> list);

    void onStartKeepAlive(boolean z10);

    void onStopKeepAlive(boolean z10);
}
