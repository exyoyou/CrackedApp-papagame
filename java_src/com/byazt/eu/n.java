package com.byazt.eu;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FORCE_CLOSE_CODEC, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Handler f14021a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f14022c = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final Executor f14023da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ThreadPoolExecutor f14024i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static HandlerThread f14025n;
    public static final int sp;
    public static final Object tt = new Object();
    public static Handler uj;
    public static boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f14026x;

    static {
        c();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        sp = iAvailableProcessors;
        f14026x = Math.min(iAvailableProcessors, 4);
        f14024i = i();
        f14023da = da();
    }

    public static Executor a() {
        return f14024i;
    }

    public static void c() {
        try {
            HandlerThread handlerThread = new HandlerThread("gm_t_main", -19);
            f14025n = handlerThread;
            handlerThread.start();
            f14021a = new Handler(f14025n.getLooper());
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private static Executor da() {
        return new com.byazt.jtc.uj(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), c("gm_t_log_upload:"), new ThreadPoolExecutor.DiscardPolicy());
    }

    private static ThreadPoolExecutor i() {
        int i10 = f14026x;
        com.byazt.jtc.uj ujVar = new com.byazt.jtc.uj(i10, i10, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(1024), c("gm_t_executor:"), new ThreadPoolExecutor.DiscardOldestPolicy() { // from class: com.byazt.eu.n.2
            @Override // java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy, java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                super.rejectedExecution(runnable, threadPoolExecutor);
                com.byazt.ii.c.c().ve();
            }
        });
        try {
            ujVar.allowCoreThreadTimeOut(true);
        } catch (Exception e10) {
            m.ve("ThreadHelper", "stackerror:", e10);
        } catch (NoSuchMethodError e11) {
            m.c(e11);
        }
        return ujVar;
    }

    public static boolean n() {
        return uj().getLooper() == Looper.myLooper();
    }

    public static Executor sp() {
        return f14023da;
    }

    public static Looper tt() {
        if (x()) {
            return f14025n.getLooper();
        }
        return null;
    }

    public static Handler uj() {
        Handler handler;
        synchronized (tt) {
            if (uj == null) {
                if (ve) {
                    throw new RuntimeException("Did not yet override the UI thread");
                }
                uj = new Handler(Looper.getMainLooper());
            }
            handler = uj;
        }
        return handler;
    }

    public static boolean ve() {
        return x() && f14025n.getLooper() == Looper.myLooper();
    }

    private static boolean x() {
        HandlerThread handlerThread = f14025n;
        return (handlerThread == null || !handlerThread.isAlive() || f14021a == null) ? false : true;
    }

    public static void tt(Runnable runnable) {
        if (n()) {
            runnable.run();
            return;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        c(futureTask);
        try {
            futureTask.get();
        } catch (Exception e10) {
            throw new RuntimeException("Exception occured while waiting for runnable", e10);
        }
    }

    public static void ve(Runnable runnable) {
        if (n()) {
            runnable.run();
        } else {
            uj().post(runnable);
        }
    }

    public static void c(Runnable runnable) {
        if (x()) {
            if (ve()) {
                runnable.run();
                return;
            } else {
                f14021a.post(runnable);
                return;
            }
        }
        c();
    }

    public static void uj(Runnable runnable) {
        c(f14024i, runnable);
    }

    public static void c(Runnable runnable, long j10) {
        if (x()) {
            f14021a.postDelayed(runnable, j10);
        } else {
            c();
        }
    }

    public static ThreadFactory c(final String str) {
        return new ThreadFactory() { // from class: com.byazt.eu.n.1
            public final AtomicInteger tt = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new com.byazt.jtc.ve(runnable, str + " # " + this.tt.getAndIncrement());
            }
        };
    }

    public static <T> FutureTask<T> c(FutureTask<T> futureTask) {
        uj().post(futureTask);
        return futureTask;
    }

    public static ExecutorService c(String str, int i10, RejectedExecutionHandler rejectedExecutionHandler) {
        return new com.byazt.jtc.uj(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(i10), c("gm_t_single_".concat(String.valueOf(str))), rejectedExecutionHandler);
    }

    private static boolean c(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
            return true;
        } catch (Throwable th) {
            m.ve("ThreadHelper", "stackerror:", th);
            return false;
        }
    }
}
