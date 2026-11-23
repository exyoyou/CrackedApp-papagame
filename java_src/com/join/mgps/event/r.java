package com.join.mgps.event;

import com.github.snowdream.android.app.downloader.DownloadTask;

/* JADX INFO: loaded from: classes3.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DownloadTask f68212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f68214c;

    public r() {
        this.f68213b = 0;
    }

    public DownloadTask a() {
        return this.f68212a;
    }

    public String b() {
        return this.f68214c;
    }

    public int c() {
        return this.f68213b;
    }

    public void d(DownloadTask downloadTask) {
        this.f68212a = downloadTask;
    }

    public void e(String gameId) {
        this.f68214c = gameId;
    }

    public void f(int status) {
        this.f68213b = status;
    }

    public r(DownloadTask _downloadTask, int _status) {
        this.f68212a = _downloadTask;
        this.f68213b = _status;
    }

    public r(DownloadTask _downloadTask, String gameId, int status) {
        this.f68212a = _downloadTask;
        this.f68213b = status;
        this.f68214c = gameId;
    }
}
