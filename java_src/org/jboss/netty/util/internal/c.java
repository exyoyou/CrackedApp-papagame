package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<Executor> f95814a = new ThreadLocal<>();

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Executor f95815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Runnable f95816c;

        a(Executor executor, Runnable runnable) {
            this.f95815b = executor;
            this.f95816c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.f95814a.set(this.f95815b);
            try {
                this.f95816c.run();
            } finally {
                c.f95814a.remove();
            }
        }
    }

    private c() {
    }

    public static void a(Executor executor, Runnable runnable) {
        if (executor == null) {
            throw new NullPointerException("parent");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable");
        }
        executor.execute(new a(executor, runnable));
    }
}
