package com.umeng.commonsdk.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f85542e = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f85543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f85544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f85545c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HandlerThread f85547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f85548g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f85546d = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler.Callback f85549h = new Handler.Callback() { // from class: com.umeng.commonsdk.utils.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            synchronized (a.this) {
                if (a.this.f85546d) {
                    return true;
                }
                long jElapsedRealtime = a.this.f85545c - SystemClock.elapsedRealtime();
                if (jElapsedRealtime <= 0) {
                    a.this.c();
                    if (a.this.f85547f != null) {
                        a.this.f85547f.quit();
                    }
                } else if (jElapsedRealtime < a.this.f85544b) {
                    a.this.f85548g.sendMessageDelayed(a.this.f85548g.obtainMessage(1), jElapsedRealtime);
                } else {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    a.this.a(jElapsedRealtime);
                    long jElapsedRealtime3 = (jElapsedRealtime2 + a.this.f85544b) - SystemClock.elapsedRealtime();
                    while (jElapsedRealtime3 < 0) {
                        jElapsedRealtime3 += a.this.f85544b;
                    }
                    a.this.f85548g.sendMessageDelayed(a.this.f85548g.obtainMessage(1), jElapsedRealtime3);
                }
                return false;
            }
        }
    };

    public a(long j10, long j11) {
        this.f85543a = j10;
        this.f85544b = j11;
        if (d()) {
            this.f85548g = new Handler(this.f85549h);
            return;
        }
        HandlerThread handlerThread = new HandlerThread("CountDownTimerThread");
        this.f85547f = handlerThread;
        handlerThread.start();
        this.f85548g = new Handler(this.f85547f.getLooper(), this.f85549h);
    }

    public abstract void a(long j10);

    public abstract void c();

    private boolean d() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    public final synchronized void a() {
        this.f85546d = true;
        this.f85548g.removeMessages(1);
    }

    public final synchronized a b() {
        this.f85546d = false;
        if (this.f85543a <= 0) {
            c();
            return this;
        }
        this.f85545c = SystemClock.elapsedRealtime() + this.f85543a;
        Handler handler = this.f85548g;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}
