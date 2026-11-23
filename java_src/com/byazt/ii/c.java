package com.byazt.ii;

import android.text.TextUtils;
import com.byazt.it.ve;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 759, 20})
public class c {
    public static volatile c tt;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f15341a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f15343n;
    public long uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15342c = c.class.getSimpleName();
    public final ve ve = com.byazt.rq.c.n();

    private c() {
    }

    public static c c() {
        if (tt == null) {
            synchronized (c.class) {
                if (tt == null) {
                    tt = new c();
                }
            }
        }
        return tt;
    }

    public void a() {
        this.uj = System.currentTimeMillis();
    }

    public long da() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.uj;
        com.byazt.eu.tt.tt(this.f15342c, "SplashFillDuration = ".concat(String.valueOf(jCurrentTimeMillis)));
        return jCurrentTimeMillis;
    }

    public long i() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.uj;
        com.byazt.eu.tt.tt(this.f15342c, "SplashRequestDuration = ".concat(String.valueOf(jCurrentTimeMillis)));
        return jCurrentTimeMillis;
    }

    public synchronized void n() {
        this.ve.put("discard_num", 0);
    }

    public boolean sl() {
        return TextUtils.isEmpty(this.f15341a);
    }

    public void sp() {
        this.f15343n = System.currentTimeMillis();
    }

    public boolean t() {
        String str = this.f15341a;
        String str2 = com.byazt.ng.c.ve;
        boolean zEquals = TextUtils.equals(str, str2);
        com.byazt.eu.tt.tt(this.f15342c, "canUploadInitDuration = " + zEquals + " 当sessionId = " + str2 + " 存储的sessionId = " + this.f15341a);
        return !zEquals;
    }

    public long tt() {
        try {
            long jCurrentTimeMillis = this.ve.getLong("first_install_time", -1L);
            if (jCurrentTimeMillis == -1) {
                jCurrentTimeMillis = com.byazt.rq.c.c().getLong("first_install_time", -1L);
                if (jCurrentTimeMillis == -1) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                this.ve.put("first_install_time", jCurrentTimeMillis);
            }
            return jCurrentTimeMillis;
        } catch (Throwable th) {
            m.c(th);
            return 0L;
        }
    }

    public synchronized int uj() {
        return this.ve.getInt("discard_num", 0);
    }

    public synchronized void ve() {
        this.ve.put("discard_num", this.ve.getInt("discard_num", 0) + 1);
    }

    public long x() {
        long j10 = this.f15343n - this.uj;
        com.byazt.eu.tt.tt(this.f15342c, "InitMethodDuration = ".concat(String.valueOf(j10)));
        return j10;
    }

    public void c(long j10) {
        try {
            if (this.ve.getLong("first_install_time", -1L) == -1) {
                long j11 = com.byazt.rq.c.c().getLong("first_install_time", -1L);
                if (j11 != -1) {
                    j10 = j11;
                }
                this.ve.put("first_install_time", j10);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public void c(String str) {
        this.f15341a = str;
    }
}
