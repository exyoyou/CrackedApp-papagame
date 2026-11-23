package com.haima.hmcp.cloud.video;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.enums.DownloadMode;

/* JADX INFO: loaded from: classes5.dex */
public interface DownloadLifeCycleCallback {
    void onCancel(DownloadMode downloadMode);

    void onDownload(CloudFile cloudFile);

    void onDownloadFail(CloudFile cloudFile, int i10, String str);

    void onDownloaded(CloudFile cloudFile);

    void onDownloading();

    void onFail(DownloadMode downloadMode, int i10, String str);

    void onFinish(DownloadMode downloadMode);

    void onPermissionNotGranted(String str);

    void onProgress(CloudFile cloudFile, long j10, long j11);

    void onStart(DownloadMode downloadMode);
}
