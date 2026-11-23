package com.sigmob.sdk.downloader;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f80797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f80798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f80799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f80800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f80801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f80802f;

    private static String a(long bytes, boolean si) {
        return com.sigmob.sdk.downloader.core.c.a(bytes, si) + "/s";
    }

    long b() {
        return SystemClock.uptimeMillis();
    }

    public synchronized void c() {
        long jB = b();
        long j10 = this.f80798b;
        long jMax = Math.max(1L, jB - this.f80797a);
        this.f80798b = 0L;
        this.f80797a = jB;
        this.f80799c = (long) ((j10 / jMax) * 1000.0f);
    }

    public long d() {
        c();
        return this.f80799c;
    }

    public synchronized long e() {
        long jB = b() - this.f80797a;
        if (jB < 1000) {
            long j10 = this.f80799c;
            if (j10 != 0) {
                return j10;
            }
        }
        if (this.f80799c == 0 && jB < 500) {
            return 0L;
        }
        return d();
    }

    public synchronized long f() {
        long jB;
        jB = this.f80801e;
        if (jB == 0) {
            jB = b();
        }
        return (long) ((this.f80802f / Math.max(1L, jB - this.f80800d)) * 1000.0f);
    }

    public synchronized void g() {
        this.f80801e = b();
    }

    public String h() {
        return m();
    }

    public String i() {
        return a(e(), true);
    }

    public String j() {
        return a(this.f80799c, true);
    }

    public synchronized long k() {
        return b() - this.f80797a;
    }

    public String l() {
        return a(d(), false);
    }

    public String m() {
        return a(d(), true);
    }

    public String n() {
        return o();
    }

    public String o() {
        return a(f(), true);
    }

    public synchronized void a() {
        this.f80797a = 0L;
        this.f80798b = 0L;
        this.f80799c = 0L;
        this.f80800d = 0L;
        this.f80801e = 0L;
        this.f80802f = 0L;
    }

    public synchronized void a(long increaseBytes) {
        if (this.f80797a == 0) {
            long jB = b();
            this.f80797a = jB;
            this.f80800d = jB;
        }
        this.f80798b += increaseBytes;
        this.f80802f += increaseBytes;
    }
}
