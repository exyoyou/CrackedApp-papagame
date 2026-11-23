package com.byazt.hs;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.byazt.nr.m;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1404, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f15098c = false;
    public static long sp = -1;
    public static final String tt = "tt";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile tt f15099x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15100a;
    public final sl ve = sl.c();
    public final AtomicInteger uj = new AtomicInteger();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c f15101n = new c(com.byazt.u.n.c());

    @com.byazt.zqa.c(c = {0, 1, 1404, 194})
    private class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        public void c() {
            sendEmptyMessage(1);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            tt.this.a();
            sendEmptyMessageDelayed(1, 1000L);
        }

        public void tt() {
            removeMessages(1);
        }
    }

    private tt() {
    }

    public static tt c() {
        if (f15099x == null) {
            synchronized (tt.class) {
                if (f15099x == null) {
                    f15099x = new tt();
                }
            }
        }
        return f15099x;
    }

    public static void n() {
        f15098c = com.byazt.w.a.tt(com.byazt.zz.ve.ic());
    }

    public static long uj() {
        return TrafficStats.getTotalRxBytes() - TrafficStats.getMobileRxBytes();
    }

    public void a() {
        try {
            n();
            long jUj = f15098c ? uj() : TrafficStats.getMobileRxBytes();
            long j10 = sp;
            long j11 = jUj - j10;
            if (j10 >= 0) {
                synchronized (this) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    this.ve.c(j11, jUptimeMillis - this.f15100a);
                    this.f15100a = jUptimeMillis;
                }
            }
            sp = jUj;
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void sp() {
        a();
        sp = -1L;
    }

    public void tt() {
        try {
            com.byazt.x.c.ve(tt, "startSampling: mSamplingCounter = " + this.uj);
            if (this.uj.getAndIncrement() == 0) {
                this.f15101n.c();
                this.f15100a = SystemClock.uptimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    public void ve() {
        try {
            com.byazt.x.c.ve(tt, "stopSampling: mSamplingCounter = " + this.uj);
            if (this.uj.decrementAndGet() == 0) {
                this.f15101n.tt();
                sp();
            }
        } catch (Throwable unused) {
        }
    }
}
