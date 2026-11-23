package com.aggmoread.sdk.z.c.a.a.e;

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
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Handler f5261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f5262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f5263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f5264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadFactory f5265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f5266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f5267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Executor f5268h;

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f5269a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AMSdkThread # " + this.f5269a.getAndIncrement());
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f5270a = new AtomicInteger(1);

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AMSdkThread # cache-" + this.f5270a.getAndIncrement());
        }
    }

    static class c implements RejectedExecutionHandler {
        c() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            e.a("******Task rejected, too many task!");
        }
    }

    static class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f5271b;

        d(Runnable runnable) {
            this.f5271b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb2;
            String str;
            try {
                q.f5268h.execute(this.f5271b);
            } catch (Exception e10) {
                e = e10;
                sb2 = new StringBuilder();
                str = "  err ";
                sb2.append(str);
                sb2.append(e.getMessage());
                e.a(sb2.toString());
            } catch (InternalError e11) {
                e = e11;
                sb2 = new StringBuilder();
                str = "internal  err ";
                sb2.append(str);
                sb2.append(e.getMessage());
                e.a(sb2.toString());
            } catch (OutOfMemoryError e12) {
                e = e12;
                sb2 = new StringBuilder();
                str = "ooe err ";
                sb2.append(str);
                sb2.append(e.getMessage());
                e.a(sb2.toString());
            }
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f5262b = iAvailableProcessors;
        int i10 = iAvailableProcessors >= 4 ? 4 : 1;
        f5263c = i10;
        int i11 = iAvailableProcessors >= 4 ? 4 : 1;
        f5264d = i11;
        a aVar = new a();
        f5265e = aVar;
        b bVar = new b();
        f5266f = bVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1024);
        f5267g = linkedBlockingQueue;
        new ThreadPoolExecutor(i10, i11, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar, new c());
        f5268h = Executors.newCachedThreadPool(bVar);
    }

    public static Handler a() {
        if (f5261a == null) {
            synchronized (q.class) {
                if (f5261a == null) {
                    f5261a = new Handler(Looper.getMainLooper());
                }
            }
        }
        return f5261a;
    }

    public static void b() {
    }

    public static void c(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            b(runnable);
        }
    }

    public static void a(Runnable runnable, long j10) {
        a().postDelayed(runnable, j10);
    }

    public static boolean b(Runnable runnable) {
        StringBuilder sb2;
        String str;
        try {
            a(new d(runnable));
            return true;
        } catch (Exception e10) {
            e = e10;
            sb2 = new StringBuilder();
            str = "  err ";
            sb2.append(str);
            sb2.append(e.getMessage());
            e.a(sb2.toString());
            return false;
        } catch (InternalError e11) {
            e = e11;
            sb2 = new StringBuilder();
            str = "internal  err ";
            sb2.append(str);
            sb2.append(e.getMessage());
            e.a(sb2.toString());
            return false;
        } catch (OutOfMemoryError e12) {
            e = e12;
            sb2 = new StringBuilder();
            str = "ooe err ";
            sb2.append(str);
            sb2.append(e.getMessage());
            e.a(sb2.toString());
            return false;
        }
    }

    public static boolean a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
            return false;
        }
        a().post(runnable);
        return true;
    }
}
