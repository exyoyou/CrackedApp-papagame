package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88467a = "k";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88468b = com.xinzhu.haunted.d.b("android.app.ApplicationThreadNative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f88469c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88470d = false;

    public static IInterface a(IBinder iBinder) {
        if (!b(iBinder)) {
            return null;
        }
        try {
            return (IInterface) f88469c.get().invoke(null, iBinder);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static boolean b(IBinder iBinder) {
        if (f88469c.get() != null) {
            return true;
        }
        if (f88470d) {
            return false;
        }
        androidx.lifecycle.i.a(f88469c, null, com.xinzhu.haunted.d.g(f88468b, "asInterface", IBinder.class));
        f88470d = true;
        return f88469c.get() != null;
    }
}
