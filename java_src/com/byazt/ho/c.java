package com.byazt.ho;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.vb.n;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2240, 20})
public class c {
    public static volatile c uj = null;
    public static int ve = 3000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile HandlerThread f15028c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Looper f15029n;
    public volatile Handler tt = null;

    private c(n nVar) {
        this.f15028c = null;
        this.f15029n = null;
        if (nVar != null && nVar.uj() != null && nVar.uj().z() != null) {
            this.f15029n = nVar.uj().z();
        } else {
            this.f15028c = new HandlerThread("csj_ad_log", 10);
            this.f15028c.start();
        }
    }

    public static c c(n nVar) {
        if (uj == null) {
            synchronized (c.class) {
                if (uj == null) {
                    uj = new c(nVar);
                }
            }
        }
        return uj;
    }

    public int tt() {
        if (ve <= 0) {
            ve = 3000;
        }
        return ve;
    }

    public Handler c() {
        if (this.f15029n != null) {
            if (this.tt == null) {
                synchronized (c.class) {
                    if (this.tt == null) {
                        this.tt = new Handler(this.f15029n);
                    }
                }
            }
        } else if (this.f15028c != null && this.f15028c.isAlive()) {
            if (this.tt == null) {
                synchronized (c.class) {
                    if (this.tt == null) {
                        this.tt = new Handler(this.f15028c.getLooper());
                    }
                }
            }
        } else {
            synchronized (c.class) {
                if (this.f15028c == null || !this.f15028c.isAlive()) {
                    this.f15028c = new HandlerThread("csj_init_handle", -1);
                    this.f15028c.start();
                    this.tt = new Handler(this.f15028c.getLooper());
                }
            }
        }
        return this.tt;
    }
}
