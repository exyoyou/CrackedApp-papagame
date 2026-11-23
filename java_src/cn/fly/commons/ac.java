package cn.fly.commons;

import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f1042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f1043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExecutorService f1044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ExecutorService f1045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ExecutorService f1046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ScheduledExecutorService f1047f;

    private static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                cn.fly.commons.a.m.a().b(500L, runnable);
            } catch (Throwable unused) {
            }
        }
    }

    private static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AtomicInteger f1048a = new AtomicInteger(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ThreadGroup f1049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AtomicInteger f1050c = new AtomicInteger(1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f1051d;

        b(int i10) {
            SecurityManager securityManager = System.getSecurityManager();
            this.f1049b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            if (TextUtils.isEmpty("M-")) {
                this.f1051d = x.b("005i0cjcj-f3gj") + f1048a.getAndIncrement() + x.b("008,gjNhgTciRecUcbgj");
                return;
            }
            this.f1051d = "M-PL-" + i10 + "-" + f1048a.getAndIncrement() + "-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f1049b, runnable, this.f1051d + this.f1050c.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    static {
        int iMax = Math.max(2, 5);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f1042a = new ThreadPoolExecutor(2, iMax, 60L, timeUnit, new SynchronousQueue(), new b(0), new a());
        f1043b = new ThreadPoolExecutor(1, 1, 120L, timeUnit, new LinkedBlockingQueue(), new b(1));
        f1044c = Executors.newCachedThreadPool(new b(2));
        f1045d = Executors.newCachedThreadPool(new b(3));
        f1046e = Executors.newCachedThreadPool(new b(4));
        f1047f = Executors.newScheduledThreadPool(1, new b(5));
    }
}
