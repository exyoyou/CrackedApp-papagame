package com.bykv.vk.component.ttvideo.utils;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23291a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23292b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23293c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f23294d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f23295e = 0;

    public void a() {
        this.f23294d = 0;
        if (this.f23293c == this.f23291a) {
            this.f23295e = SystemClock.elapsedRealtime();
        }
    }

    public int b() {
        if (this.f23293c == this.f23291a) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            int i10 = (int) (jElapsedRealtime - this.f23295e);
            if (i10 >= 0) {
                this.f23294d += i10;
            }
            this.f23295e = jElapsedRealtime;
        }
        return this.f23294d;
    }

    public void c() {
        this.f23293c = this.f23292b;
        this.f23294d = 0;
        this.f23295e = 0L;
    }

    public void d() {
        if (this.f23293c == this.f23292b) {
            this.f23293c = this.f23291a;
            this.f23295e = SystemClock.elapsedRealtime();
        }
    }

    public void e() {
        if (this.f23293c == this.f23291a) {
            this.f23293c = this.f23292b;
            int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - this.f23295e);
            if (iElapsedRealtime >= 0) {
                this.f23294d += iElapsedRealtime;
            }
        }
    }
}
