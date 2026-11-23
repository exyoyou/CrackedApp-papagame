package com.czhj.sdk.common.ThreadPool;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class ThreadPoolFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final TimeUnit f25461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Handler f25462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Handler f25463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ExecutorService f25464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HandlerThread f25465f;

    public static class BackgroundThreadPool {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static volatile BackgroundThreadPool f25466d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f25467a = 2;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BlockingQueue<Runnable> f25468b = new LinkedBlockingQueue();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ExecutorService f25469c = ThreadPoolFactory.f25464e;

        BackgroundThreadPool() {
            HandlerThread unused = ThreadPoolFactory.f25465f = new HandlerThread("ioThread");
            ThreadPoolFactory.f25465f.start();
            Handler unused2 = ThreadPoolFactory.f25463d = new Handler(ThreadPoolFactory.f25465f.getLooper());
        }

        public static BackgroundThreadPool getInstance() {
            if (f25466d == null) {
                synchronized (BackgroundThreadPool.class) {
                    if (f25466d == null) {
                        f25466d = new BackgroundThreadPool();
                    }
                }
            }
            return f25466d;
        }

        public ExecutorService getExecutorService() {
            return this.f25469c;
        }

        public Handler getIOHandler() {
            return ThreadPoolFactory.f25463d;
        }

        public Looper getIOLooper() {
            return ThreadPoolFactory.f25465f.getLooper();
        }

        public void submit(Runnable runnable) {
            try {
                this.f25469c.submit(runnable);
            } catch (Throwable unused) {
            }
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f25460a = iAvailableProcessors;
        f25461b = TimeUnit.SECONDS;
        f25462c = new Handler(Looper.getMainLooper());
        f25464e = Executors.newFixedThreadPool(iAvailableProcessors + 1, new BackgroundThreadFactory());
    }

    public static void MainThreadRun(Runnable runnable) {
        f25462c.post(runnable);
    }

    public static ExecutorService getFixIOExecutor() {
        return f25464e;
    }
}
