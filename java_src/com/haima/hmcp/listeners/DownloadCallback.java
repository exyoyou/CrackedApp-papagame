package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;

/* JADX INFO: loaded from: classes5.dex */
public interface DownloadCallback {
    void onDownload(CloudFile cloudFile);

    void onDownloadFail(int i10, String str);

    void onDownloadFail(CloudFile cloudFile, int i10, String str);

    void onDownloadFinish();

    void onDownloadProgress(CloudFile cloudFile, long j10, long j11);

    void onDownloading();
}
