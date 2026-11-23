package com.aggmoread.sdk.adapter.helper;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class ThreadHelper {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE = 1;
    private static final int MAXIMUM_POOL_SIZE;
    static final Executor THREAD_POOL_CACHED_EXECUTOR;
    static final Executor THREAD_POOL_EXECUTOR;
    public static Handler sMainThreadHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private static final ThreadFactory sThreadFactory2;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int i10 = iAvailableProcessors >= 4 ? 4 : 1;
        CORE_POOL_SIZE = i10;
        int i11 = iAvailableProcessors >= 4 ? 4 : 1;
        MAXIMUM_POOL_SIZE = i11;
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.aggmoread.sdk.adapter.helper.ThreadHelper.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "tt custom adapter # " + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory = threadFactory;
        ThreadFactory threadFactory2 = new ThreadFactory() { // from class: com.aggmoread.sdk.adapter.helper.ThreadHelper.2
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "tt custom adapter # cache-" + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory2 = threadFactory2;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        sPoolWorkQueue = linkedBlockingQueue;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(i10, i11, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory, new RejectedExecutionHandler() { // from class: com.aggmoread.sdk.adapter.helper.ThreadHelper.3
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                LogHelper.log("******Task rejected, too many task!");
            }
        });
        THREAD_POOL_CACHED_EXECUTOR = Executors.newCachedThreadPool(threadFactory2);
    }

    public static void delayRunInMainThread(Runnable runnable, long j10) {
        getMainThreadHandler().postDelayed(runnable, j10);
    }

    public static Handler getMainThreadHandler() {
        if (sMainThreadHandler == null) {
            synchronized (ThreadHelper.class) {
                if (sMainThreadHandler == null) {
                    sMainThreadHandler = new Handler(Looper.getMainLooper());
                }
            }
        }
        return sMainThreadHandler;
    }

    public static boolean runInMainThread(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
            return false;
        }
        getMainThreadHandler().post(runnable);
        return true;
    }

    public static boolean runInWorkerThread(final Runnable runnable) {
        try {
            runInMainThread(new Runnable() { // from class: com.aggmoread.sdk.adapter.helper.ThreadHelper.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ThreadHelper.THREAD_POOL_CACHED_EXECUTOR.execute(runnable);
                    } catch (InternalError e10) {
                        LogHelper.log("internal  err " + e10.getMessage());
                    } catch (OutOfMemoryError e11) {
                        LogHelper.log("ooe err " + e11.getMessage());
                    }
                }
            });
            return true;
        } catch (InternalError e10) {
            LogHelper.log("internal  err " + e10.getMessage());
            return false;
        } catch (OutOfMemoryError e11) {
            LogHelper.log("ooe err " + e11.getMessage());
            return false;
        }
    }

    public static void runOnUIThreadByThreadPool(final Runnable runnable) {
        try {
            THREAD_POOL_CACHED_EXECUTOR.execute(new Runnable() { // from class: com.aggmoread.sdk.adapter.helper.ThreadHelper.5
                @Override // java.lang.Runnable
                public void run() {
                    ThreadHelper.runInMainThread(runnable);
                }
            });
        } catch (Exception unused) {
        }
    }
}
