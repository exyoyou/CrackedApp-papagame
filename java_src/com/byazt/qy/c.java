package com.byazt.qy;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.bog.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 110, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c f19372c;
    public volatile ThreadPoolExecutor tt = null;
    public final Handler ve;

    private c() {
        HandlerThread handlerThread = new HandlerThread("csj_api_main");
        handlerThread.start();
        this.ve = new Handler(handlerThread.getLooper());
    }

    public static c c() {
        if (f19372c == null) {
            synchronized (c.class) {
                f19372c = new c();
            }
        }
        return f19372c;
    }

    public Handler tt() {
        return this.ve;
    }

    public ExecutorService uj() {
        if (this.tt == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, Integer.MAX_VALUE, 1000L, TimeUnit.MILLISECONDS, new SynchronousQueue());
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            this.tt = threadPoolExecutor;
        }
        return this.tt;
    }

    public Handler ve() {
        return new Handler(Looper.getMainLooper());
    }

    public void c(Runnable runnable) {
        if (runnable != null) {
            try {
                this.ve.post(runnable);
            } catch (Throwable th) {
                a.c(th);
            }
        }
    }
}
