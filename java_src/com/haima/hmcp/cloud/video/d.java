package com.haima.hmcp.cloud.video;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DownloadTask f33863b;

    public /* synthetic */ d(DownloadTask downloadTask) {
        this.f33863b = downloadTask;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33863b.stopKeepAlive();
    }
}
