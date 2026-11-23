package com.kuaishou.weapon.p0;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile n f74809a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f74810b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f74811c = 6;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ThreadPoolExecutor f74812d;

    private n() {
    }

    public static n a() {
        if (f74809a == null) {
            synchronized (n.class) {
                if (f74809a == null) {
                    f74809a = new n();
                }
                if (f74812d == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f74810b, f74811c, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(50), new RejectedExecutionHandler() { // from class: com.kuaishou.weapon.p0.n.1
                        @Override // java.util.concurrent.RejectedExecutionHandler
                        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                        }
                    });
                    f74812d = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f74809a;
    }

    public static n a(int i10, int i11) {
        if (f74809a == null) {
            synchronized (n.class) {
                if (f74809a == null) {
                    f74810b = i10;
                    f74811c = i11;
                    f74809a = new n();
                    if (f74812d == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f74810b, f74811c, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(50), new RejectedExecutionHandler() { // from class: com.kuaishou.weapon.p0.n.2
                            @Override // java.util.concurrent.RejectedExecutionHandler
                            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                            }
                        });
                        f74812d = threadPoolExecutor;
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                    }
                }
            }
        }
        return f74809a;
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            try {
                f74812d.execute(runnable);
            } catch (Exception unused) {
            }
        }
    }
}
