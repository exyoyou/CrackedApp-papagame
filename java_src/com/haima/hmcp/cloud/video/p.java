package com.haima.hmcp.cloud.video;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DownloadTask f33946b;

    public /* synthetic */ p(DownloadTask downloadTask) {
        this.f33946b = downloadTask;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33946b.lambda$onMovedSuccess$78();
    }
}
