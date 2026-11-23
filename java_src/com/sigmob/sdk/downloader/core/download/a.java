package com.sigmob.sdk.downloader.core.download;

import android.net.Uri;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f80550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f80551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f80552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f80553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f80554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f80555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f80556g;

    public a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, long responseInstanceLength) {
        this.f80554e = task;
        this.f80555f = info;
        this.f80556g = responseInstanceLength;
    }

    public boolean a() {
        return this.f80553d;
    }

    public com.sigmob.sdk.downloader.core.cause.b b() {
        if (!this.f80551b) {
            return com.sigmob.sdk.downloader.core.cause.b.INFO_DIRTY;
        }
        if (!this.f80550a) {
            return com.sigmob.sdk.downloader.core.cause.b.FILE_NOT_EXIST;
        }
        if (!this.f80552c) {
            return com.sigmob.sdk.downloader.core.cause.b.OUTPUT_STREAM_NOT_SUPPORT;
        }
        throw new IllegalStateException("No cause find with dirty: " + this.f80553d);
    }

    public boolean c() {
        int iG = this.f80555f.g();
        if (iG <= 0 || this.f80555f.b() || this.f80555f.o() == null) {
            return false;
        }
        if (!this.f80555f.o().equals(this.f80554e.m()) || this.f80555f.o().length() > this.f80555f.j()) {
            return false;
        }
        if (this.f80556g > 0 && this.f80555f.j() != this.f80556g) {
            return false;
        }
        for (int i10 = 0; i10 < iG; i10++) {
            if (this.f80555f.b(i10).d() <= 0) {
                return false;
            }
        }
        return true;
    }

    public boolean d() {
        if (com.sigmob.sdk.downloader.g.j().e().a()) {
            return true;
        }
        return this.f80555f.g() == 1 && !com.sigmob.sdk.downloader.g.j().f().b(this.f80554e);
    }

    public boolean e() {
        Uri uriH = this.f80554e.h();
        if (com.sigmob.sdk.downloader.core.c.a(uriH)) {
            return com.sigmob.sdk.downloader.core.c.c(uriH) > 0;
        }
        File fileM = this.f80554e.m();
        return fileM != null && fileM.exists();
    }

    public void f() {
        this.f80550a = e();
        this.f80551b = c();
        boolean zD = d();
        this.f80552c = zD;
        this.f80553d = (this.f80551b && this.f80550a && zD) ? false : true;
    }

    public String toString() {
        return "fileExist[" + this.f80550a + "] infoRight[" + this.f80551b + "] outputStreamSupport[" + this.f80552c + "] " + super.toString();
    }
}
