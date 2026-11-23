package com.cmic.gen.sdk.e;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f24502a = new ThreadPoolExecutor(0, 30, 60, TimeUnit.SECONDS, new SynchronousQueue());

    public static void a(a aVar) {
        try {
            f24502a.execute(aVar);
        } catch (Exception e10) {
            aVar.f24503a.uncaughtException(Thread.currentThread(), e10);
        }
    }

    public static abstract class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Thread.UncaughtExceptionHandler f24503a;

        protected a() {
            this.f24503a = new Thread.UncaughtExceptionHandler() { // from class: com.cmic.gen.sdk.e.n.a.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    th.printStackTrace();
                }
            };
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setUncaughtExceptionHandler(this.f24503a);
            a();
            Thread.currentThread().setUncaughtExceptionHandler(null);
        }

        protected a(final Context context, final com.cmic.gen.sdk.a aVar) {
            this.f24503a = new Thread.UncaughtExceptionHandler() { // from class: com.cmic.gen.sdk.e.n.a.2
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    aVar.a().f24446a.add(th);
                    com.cmic.gen.sdk.auth.c.getInstance(context).callBackResult("200025", "发生未知错误", aVar, null);
                }
            };
        }
    }
}
