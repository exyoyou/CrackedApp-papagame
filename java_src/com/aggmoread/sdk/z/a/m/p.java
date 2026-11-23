package com.aggmoread.sdk.z.a.m;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f3727a = "p";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f3728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f3729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f3730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadFactory f3731e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f3732f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f3733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Executor f3734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Handler f3735i;

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f3736a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AdSdk-api-Thread #" + this.f3736a.getAndIncrement());
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f3737a = new AtomicInteger(1);

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AdSdk-api-Thread2 #" + this.f3737a.getAndIncrement());
        }
    }

    static class c implements RejectedExecutionHandler {
        c() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            String str = p.f3727a;
        }
    }

    static class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f3738b;

        d(Runnable runnable) {
            this.f3738b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb2;
            String str;
            try {
                p.f3734h.execute(this.f3738b);
            } catch (InternalError e10) {
                e = e10;
                sb2 = new StringBuilder();
                str = "internal  err ";
                sb2.append(str);
                sb2.append(e.getMessage());
                com.aggmoread.sdk.z.c.a.a.e.e.a(sb2.toString());
            } catch (OutOfMemoryError e11) {
                e = e11;
                sb2 = new StringBuilder();
                str = "ooe err ";
                sb2.append(str);
                sb2.append(e.getMessage());
                com.aggmoread.sdk.z.c.a.a.e.e.a(sb2.toString());
            }
        }
    }

    private static class e extends Handler {
        public e() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                Pair pair = (Pair) message.obj;
                try {
                    ((Runnable) pair.first).run();
                } finally {
                    Object obj = pair.second;
                    if (obj != null) {
                        ((CountDownLatch) obj).countDown();
                    }
                }
            }
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f3728b = iAvailableProcessors;
        int i10 = iAvailableProcessors + 1;
        f3729c = i10;
        int i11 = (iAvailableProcessors * 2) + 1;
        f3730d = i11;
        a aVar = new a();
        f3731e = aVar;
        b bVar = new b();
        f3732f = bVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        f3733g = linkedBlockingQueue;
        new ThreadPoolExecutor(i10, i11, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar, new c());
        f3734h = Executors.newCachedThreadPool(bVar);
    }

    public static Handler a() {
        Handler handler;
        synchronized (p.class) {
            if (f3735i == null) {
                f3735i = new e();
            }
            handler = f3735i;
        }
        return handler;
    }

    public static void b(Runnable runnable) {
        a(runnable, false);
    }

    public static void a(Runnable runnable) {
        StringBuilder sb2;
        String str;
        try {
            b(new d(runnable));
        } catch (InternalError e10) {
            e = e10;
            sb2 = new StringBuilder();
            str = "internal  err ";
            sb2.append(str);
            sb2.append(e.getMessage());
            com.aggmoread.sdk.z.c.a.a.e.e.a(sb2.toString());
        } catch (OutOfMemoryError e11) {
            e = e11;
            sb2 = new StringBuilder();
            str = "ooe err ";
            sb2.append(str);
            sb2.append(e.getMessage());
            com.aggmoread.sdk.z.c.a.a.e.e.a(sb2.toString());
        }
    }

    public static void a(Runnable runnable, boolean z10) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
            return;
        }
        CountDownLatch countDownLatch = z10 ? new CountDownLatch(1) : null;
        a().obtainMessage(1, new Pair(runnable, countDownLatch)).sendToTarget();
        if (z10) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
    }
}
