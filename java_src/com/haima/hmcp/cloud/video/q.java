package com.haima.hmcp.cloud.video;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DownloadTask f33955b;

    public /* synthetic */ q(DownloadTask downloadTask) {
        this.f33955b = downloadTask;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33955b.cancelMoveFileJob();
    }
}
