package com.byazt.n;

import android.app.Notification;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 46, 20})
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17039a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Notification f17040c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17041i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f17042n;
    public long sp;
    public int tt;
    public long uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f17043x;

    public c(int i10, String str) {
        this.tt = i10;
        this.f17042n = str;
    }

    public long a() {
        if (this.sp == 0) {
            this.sp = System.currentTimeMillis();
        }
        return this.sp;
    }

    public abstract void c(BaseException baseException, boolean z10);

    public void c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.tt = downloadInfo.getId();
        this.f17042n = downloadInfo.getTitle();
    }

    public int n() {
        return this.f17039a;
    }

    public synchronized void sp() {
        this.f17043x++;
    }

    public long tt() {
        return this.ve;
    }

    public String uj() {
        return this.f17042n;
    }

    public long ve() {
        return this.uj;
    }

    public boolean x() {
        return this.f17041i;
    }

    public void tt(long j10) {
        this.uj = j10;
    }

    public int c() {
        return this.tt;
    }

    public void c(long j10) {
        this.ve = j10;
    }

    public void c(int i10, BaseException baseException, boolean z10) {
        c(i10, baseException, z10, false);
    }

    public void c(int i10, BaseException baseException, boolean z10, boolean z11) {
        if (z11 || this.f17039a != i10) {
            this.f17039a = i10;
            c(baseException, z10);
        }
    }

    public void c(long j10, long j11) {
        this.ve = j10;
        this.uj = j11;
        this.f17039a = 4;
        c((BaseException) null, false);
    }

    public void c(Notification notification) {
        if (this.tt == 0 || notification == null) {
            return;
        }
        tt.c().c(this.tt, this.f17039a, notification);
    }
}
