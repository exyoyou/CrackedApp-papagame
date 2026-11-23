package com.kwad.components.offline.api.core.downloader;

/* JADX INFO: loaded from: classes2.dex */
public interface DownloadListener {
    void onCanceled(int i10);

    void onCompleted(int i10, String str, String str2, String str3);

    void onError(int i10, Throwable th);

    void onProgress(int i10, long j10, long j11);

    void onStart(int i10);
}
