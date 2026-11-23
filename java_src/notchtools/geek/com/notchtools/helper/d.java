package notchtools.geek.com.notchtools.helper;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f94920a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Handler f94922c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f94921b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f94923d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f94924e = Executors.newFixedThreadPool(4, new b());

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f94925b;

        a(Object obj) {
            this.f94925b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.i().removeCallbacksAndMessages(this.f94925b);
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f94926b = -1;

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            this.f94926b++;
            return new Thread(runnable, "ThreadUtils: " + this.f94926b);
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f94927b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InterfaceC1217d f94928c;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Object f94929b;

            a(Object obj) {
                this.f94929b = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.f94928c.a(this.f94929b);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        c(e eVar, InterfaceC1217d interfaceC1217d) {
            this.f94927b = eVar;
            this.f94928c = interfaceC1217d;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objA;
            try {
                objA = this.f94927b.a();
            } catch (Throwable th) {
                th.printStackTrace();
                objA = null;
            }
            if (this.f94928c == null) {
                return;
            }
            d.p(new a(objA));
        }
    }

    /* JADX INFO: renamed from: notchtools.geek.com.notchtools.helper.d$d, reason: collision with other inner class name */
    public interface InterfaceC1217d<T> {
        void a(@Nullable T t10);
    }

    public interface e<T> {
        @Nullable
        T a();
    }

    public static void b(Context context) {
        if (context != null) {
            i().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    public static void c(Runnable runnable) {
        i().removeCallbacks(runnable);
    }

    public static void d(Context context) {
        if (context != null) {
            k().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    public static void e(Runnable runnable) {
        k().removeCallbacks(runnable);
    }

    public static void f(Context context, long j10) {
        if (context != null) {
            r(new a(Integer.valueOf(context.hashCode())), j10);
        }
    }

    public static void g(Runnable runnable) {
        if (runnable != null) {
            try {
                f94924e.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static <T> void h(e<T> eVar, InterfaceC1217d<T> interfaceC1217d) {
        if (eVar == null) {
            return;
        }
        f94924e.execute(new c(eVar, interfaceC1217d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Handler i() {
        Handler handler;
        synchronized (f94923d) {
            if (f94922c == null) {
                HandlerThread handlerThread = new HandlerThread("daemon-handler-thread");
                handlerThread.start();
                f94922c = new Handler(handlerThread.getLooper());
            }
            handler = f94922c;
        }
        return handler;
    }

    public static String j() {
        return Thread.currentThread().getName() + " : " + Thread.currentThread().getId();
    }

    private static Handler k() {
        Handler handler;
        synchronized (f94921b) {
            if (f94920a == null) {
                f94920a = new Handler(Looper.getMainLooper());
            }
            handler = f94920a;
        }
        return handler;
    }

    public static boolean l() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }

    public static boolean m(Context context, Runnable runnable) {
        return context == null ? n(runnable) : i().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    public static boolean n(Runnable runnable) {
        return i().post(runnable);
    }

    public static boolean o(Context context, Runnable runnable) {
        return context == null ? p(runnable) : k().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    public static boolean p(Runnable runnable) {
        return k().post(runnable);
    }

    public static boolean q(Context context, Runnable runnable, long j10) {
        return context == null ? r(runnable, j10) : i().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j10);
    }

    private static boolean r(Runnable runnable, long j10) {
        return i().postDelayed(runnable, j10);
    }

    public static boolean s(Context context, Runnable runnable, long j10) {
        return context == null ? t(runnable, j10) : k().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j10);
    }

    public static boolean t(Runnable runnable, long j10) {
        return k().postDelayed(runnable, j10);
    }

    public static boolean u() {
        return i().getLooper() == Looper.myLooper();
    }

    private static boolean v() {
        return k().getLooper() == Looper.myLooper();
    }

    public static void w(String str) {
        if (v()) {
            return;
        }
        throw new RuntimeException("ThreadUtils safeCheck alert " + str);
    }
}
