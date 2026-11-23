package com.uc.crashsdk.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f84020a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile HandlerThread f84021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile HandlerThread f84022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile HandlerThread f84023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Handler f84024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Handler f84025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Handler f84026g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Handler f84027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final HashMap<Object, Object[]> f84028i = new HashMap<>();

    public static Handler a(int i10) {
        if (i10 == 0) {
            if (f84021b == null) {
                a();
            }
            return f84024e;
        }
        if (i10 == 1) {
            if (f84022c == null) {
                b();
            }
            return f84025f;
        }
        if (i10 == 2) {
            if (f84026g == null) {
                f84026g = new Handler(Looper.getMainLooper());
            }
            return f84026g;
        }
        if (i10 == 3) {
            if (f84027h == null) {
                c();
            }
            return f84027h;
        }
        throw new RuntimeException("unknown thread type: " + i10);
    }

    public static boolean b(Runnable runnable) {
        Object[] objArr;
        if (runnable == null) {
            return false;
        }
        HashMap<Object, Object[]> map = f84028i;
        synchronized (map) {
            objArr = map.get(runnable);
        }
        return objArr != null;
    }

    private static synchronized void c() {
        if (f84023d == null) {
            HandlerThread handlerThread = new HandlerThread("CrashSDKAnrHandler", 0);
            f84023d = handlerThread;
            handlerThread.start();
            f84027h = new Handler(f84023d.getLooper());
        }
    }

    private static synchronized void b() {
        if (f84022c == null) {
            HandlerThread handlerThread = new HandlerThread("CrashSDKNormalHandler", 0);
            f84022c = handlerThread;
            handlerThread.start();
            f84025f = new Handler(f84022c.getLooper());
        }
    }

    public static boolean a(int i10, Runnable runnable, long j10) {
        Handler handlerA;
        if (runnable == null || (handlerA = a(i10)) == null) {
            return false;
        }
        e eVar = new e(10, new Object[]{runnable});
        HashMap<Object, Object[]> map = f84028i;
        synchronized (map) {
            map.put(runnable, new Object[]{eVar, Integer.valueOf(i10)});
        }
        return handlerA.postDelayed(eVar, j10);
    }

    public static void a(int i10, Object[] objArr) {
        if (i10 != 10) {
            if (!f84020a) {
                throw new AssertionError();
            }
        } else {
            if (!f84020a && objArr == null) {
                throw new AssertionError();
            }
            Runnable runnable = (Runnable) objArr[0];
            HashMap<Object, Object[]> map = f84028i;
            synchronized (map) {
                if (map.get(runnable) != null) {
                    map.remove(runnable);
                }
            }
            runnable.run();
        }
    }

    public static boolean a(int i10, Runnable runnable) {
        return a(i10, runnable, 0L);
    }

    public static void a(Runnable runnable) {
        Object[] objArr;
        Handler handler;
        if (runnable == null) {
            return;
        }
        HashMap<Object, Object[]> map = f84028i;
        synchronized (map) {
            objArr = map.get(runnable);
        }
        if (objArr == null) {
            return;
        }
        int iIntValue = ((Integer) objArr[1]).intValue();
        if (iIntValue == 0) {
            handler = f84024e;
        } else if (iIntValue != 1) {
            handler = iIntValue != 2 ? null : f84026g;
        } else {
            handler = f84025f;
        }
        if (handler != null) {
            handler.removeCallbacks((Runnable) objArr[0]);
        }
        synchronized (map) {
            if (map.get(runnable) != null) {
                map.remove(runnable);
            }
        }
    }

    private static synchronized void a() {
        if (f84021b == null) {
            HandlerThread handlerThread = new HandlerThread("CrashSDKBkgdHandler", 10);
            f84021b = handlerThread;
            handlerThread.start();
            f84024e = new Handler(f84021b.getLooper());
        }
    }
}
