package com.qq.e.comm.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f78373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final StringBuilder f78374b = new StringBuilder();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f78375c;

    public void a() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f78373a;
        this.f78375c += jElapsedRealtime;
        StringBuilder sb2 = this.f78374b;
        sb2.append(jElapsedRealtime);
        sb2.append(",");
    }

    public void b() {
        a();
        c();
    }

    public void c() {
        this.f78373a = SystemClock.elapsedRealtime();
    }

    public String toString() {
        int length = this.f78374b.length();
        if (length <= 0) {
            return "";
        }
        StringBuilder sbDeleteCharAt = this.f78374b.deleteCharAt(length - 1);
        sbDeleteCharAt.append(":");
        sbDeleteCharAt.append(this.f78375c);
        return sbDeleteCharAt.toString();
    }
}
