package com.byazt.u;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, 67, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f20497c = new Object();
    public Queue<tt> tt = new ConcurrentLinkedQueue();
    public Handler uj;
    public c ve;

    @com.byazt.zqa.c(c = {0, 1, 67, 180})
    private class c extends HandlerThread {
        public c(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            super.onLooperPrepared();
            Looper looper = getLooper();
            synchronized (sp.this.f20497c) {
                sp.this.uj = new Handler(looper);
            }
            while (!sp.this.tt.isEmpty()) {
                tt ttVar = (tt) sp.this.tt.poll();
                if (ttVar != null) {
                    sp.this.uj.postDelayed(ttVar.f20499c, ttVar.tt);
                }
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 67, TypedValues.Custom.TYPE_BOOLEAN})
    private class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Runnable f20499c;
        public long tt;

        public tt(Runnable runnable, long j10) {
            this.f20499c = runnable;
            this.tt = j10;
        }
    }

    public sp(String str) {
        this.ve = new c(str);
    }

    public void tt() {
        this.ve.quit();
    }

    public void c() {
        this.ve.start();
    }

    public void c(Runnable runnable) {
        c(runnable, 0L);
    }

    public void c(Runnable runnable, long j10) {
        if (this.uj == null) {
            synchronized (this.f20497c) {
                if (this.uj == null) {
                    this.tt.add(new tt(runnable, j10));
                    return;
                }
            }
        }
        this.uj.postDelayed(runnable, j10);
    }
}
