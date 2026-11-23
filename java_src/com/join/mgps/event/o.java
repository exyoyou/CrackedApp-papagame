package com.join.mgps.event;

import com.github.snowdream.android.app.downloader.DownloadTask;

/* JADX INFO: loaded from: classes3.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DownloadTask f68207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68208b;

    public o(DownloadTask _downloadTask, int _type) {
        this.f68207a = _downloadTask;
        this.f68208b = _type;
    }

    public DownloadTask a() {
        return this.f68207a;
    }

    public void b(DownloadTask downloadTask) {
        this.f68207a = downloadTask;
    }

    public void c(int type) {
        this.f68208b = type;
    }

    public int getType() {
        return this.f68208b;
    }
}
