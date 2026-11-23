package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ThreadPoolExecutor f2733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ScheduledExecutorService f2734b = Executors.newSingleThreadScheduledExecutor();

    public static abstract class a implements Runnable {
        public abstract void a() throws Throwable;

        public void a(Throwable th) {
        }

        public String b() {
            return "";
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!TextUtils.isEmpty(b())) {
                    Thread.currentThread().setName(b());
                }
                a();
            } catch (Throwable th) {
                try {
                    a(th);
                } catch (Throwable unused) {
                }
                SSDKLog.b().d(th);
            }
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, 3, 3L, TimeUnit.MINUTES, new LinkedBlockingQueue());
        f2733a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public static void a(Runnable runnable) {
        try {
            f2733a.execute(runnable);
        } catch (Throwable th) {
            SSDKLog.b().d(th);
        }
    }

    public static <T extends a> void a(T t10) {
        try {
            f2734b.execute(t10);
        } catch (Throwable th) {
            SSDKLog.b().d(th);
        }
    }
}
