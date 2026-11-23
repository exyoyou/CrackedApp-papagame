package com.byazt.ddx;

import android.os.SystemClock;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.ukr.yp;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12783a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12784c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12786i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f12787n;
    public long sp;
    public long uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ic f12790x;
    public AtomicBoolean tt = new AtomicBoolean(false);

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public AtomicLong f12785da = new AtomicLong(0);
    public AtomicInteger sl = new AtomicInteger(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public AtomicLong f12788t = new AtomicLong(0);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile boolean f12789u = false;

    public n(ic icVar, String str) {
        this.f12790x = icVar;
        this.f12786i = str;
    }

    private void n(long j10) {
        if (this.sp <= 0) {
            this.sp = j10;
        }
    }

    private void tt(long j10) {
        if (this.uj <= 0) {
            this.uj = j10;
        }
    }

    private void uj(long j10) {
        if (this.f12783a <= 0) {
            this.f12783a = j10;
        }
    }

    private boolean ve(int i10) {
        return i10 == 56 || i10 == 51 || i10 == 52 || i10 == 57 || i10 == 55 || i10 == 53 || i10 == 54;
    }

    public void c(boolean z10) {
        this.f12789u = z10;
    }

    private void ve(long j10) {
        if (this.f12787n <= 0) {
            this.f12787n = j10;
        }
    }

    public boolean c() {
        return this.f12789u;
    }

    private void c(long j10) {
        if (this.ve <= 0) {
            this.ve = j10;
        }
    }

    private void tt(int i10) {
        this.sl.set(i10);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime == 0) {
            yp.c().c(this.f12790x, "currentElapsedRealTime");
        }
        switch (i10) {
            case 11:
                this.f12785da.set(jElapsedRealtime);
                this.f12788t.set(jElapsedRealtime);
                break;
            case 12:
                if (this.f12788t.get() != 0) {
                    this.f12785da.set(jElapsedRealtime);
                }
                break;
            case 13:
                if (this.f12788t.get() != 0) {
                    c(jElapsedRealtime, i10);
                }
                break;
            case 15:
                if (this.f12785da.get() != 0 && this.sl.get() != 14) {
                    c(jElapsedRealtime, i10);
                    break;
                }
                break;
        }
    }

    private boolean uj(int i10) {
        return !this.f12789u && ve(i10);
    }

    public void c(int i10) {
        if (uj(i10)) {
            return;
        }
        int i11 = this.sl.get();
        StringBuilder sb2 = new StringBuilder("index:");
        int i12 = this.f12784c + 1;
        this.f12784c = i12;
        sb2.append(i12);
        sb2.append(" lifeScene:");
        sb2.append(i11);
        sb2.append(" scene:");
        sb2.append(i10);
        sb2.append(" showTs:");
        sb2.append(this.f12788t);
        m.c("xgc_ad", sb2.toString());
        if (i11 != 13 && i11 != 15 && this.f12788t.get() != 0) {
            c(SystemClock.elapsedRealtime(), i10);
        } else if (i11 == 14) {
            yp.c().c(this.f12790x, "attach");
        } else {
            m.c("ast", "no need report");
        }
    }

    private void c(long j10, int i10) {
        uj.c(String.valueOf(j10 - (this.f12785da.get() == 0 ? this.f12788t : this.f12785da).get()), this.f12790x, this.f12786i, i10, tt());
        this.f12785da.set(0L);
    }

    public Map<String, Long> tt() {
        HashMap map = new HashMap();
        try {
            long j10 = this.ve;
            if (j10 > 0) {
                map.put("show_start", Long.valueOf(j10));
                long j11 = this.uj;
                if (j11 > 0) {
                    map.put("show_firstQuartile", Long.valueOf(j11));
                    long j12 = this.f12787n;
                    if (j12 > 0) {
                        map.put("show_mid", Long.valueOf(j12));
                        long j13 = this.f12783a;
                        if (j13 > 0) {
                            map.put("show_thirdQuartile", Long.valueOf(j13));
                            long j14 = this.sp;
                            if (j14 > 0) {
                                map.put("show_full", Long.valueOf(j14));
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return map;
    }

    public void c(float f10, int i10) {
        if (uj(i10)) {
            return;
        }
        c(f10);
        tt(i10);
    }

    public void c(float f10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f10 >= 1.0f) {
            c(jCurrentTimeMillis);
            tt(jCurrentTimeMillis);
            ve(jCurrentTimeMillis);
            uj(jCurrentTimeMillis);
            n(jCurrentTimeMillis);
            return;
        }
        double d10 = f10;
        if (d10 >= 0.75d) {
            c(jCurrentTimeMillis);
            tt(jCurrentTimeMillis);
            ve(jCurrentTimeMillis);
            uj(jCurrentTimeMillis);
            return;
        }
        if (d10 >= 0.5d) {
            c(jCurrentTimeMillis);
            tt(jCurrentTimeMillis);
            ve(jCurrentTimeMillis);
        } else if (d10 >= 0.25d) {
            c(jCurrentTimeMillis);
            tt(jCurrentTimeMillis);
        } else if (f10 > 0.0f) {
            c(jCurrentTimeMillis);
        }
    }
}
