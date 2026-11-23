package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88527b = "o";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88528c = com.xinzhu.haunted.d.b("android.app.IActivityTaskManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88529d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88530e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88531f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88532g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88533a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88534a = com.xinzhu.haunted.d.b("android.app.IActivityTaskManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88535b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88536c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88535b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88535b.get() != null) {
                return true;
            }
            if (f88536c) {
                return false;
            }
            androidx.lifecycle.i.a(f88535b, null, com.xinzhu.haunted.d.g(f88534a, "asInterface", IBinder.class));
            f88536c = true;
            return f88535b.get() != null;
        }
    }

    public o(Object obj) {
        this.f88533a = obj;
    }

    public boolean a(IBinder iBinder) {
        if (f88531f.get() != null) {
            return true;
        }
        if (f88532g) {
            return false;
        }
        androidx.lifecycle.i.a(f88531f, null, com.xinzhu.haunted.d.g(f88528c, "getLaunchedFromPackage", IBinder.class));
        f88532g = true;
        return f88531f.get() != null;
    }

    public boolean b(IBinder iBinder) {
        if (f88529d.get() != null) {
            return true;
        }
        if (f88530e) {
            return false;
        }
        androidx.lifecycle.i.a(f88529d, null, com.xinzhu.haunted.d.g(f88528c, "getLaunchedFromUid", IBinder.class));
        f88530e = true;
        return f88529d.get() != null;
    }

    public String c(IBinder iBinder) {
        if (!a(iBinder)) {
            return null;
        }
        try {
            return (String) f88531f.get().invoke(this.f88533a, iBinder);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public int d(IBinder iBinder) {
        if (!b(iBinder)) {
            return 0;
        }
        try {
            return ((Integer) f88529d.get().invoke(this.f88533a, iBinder)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private o() {
    }
}
