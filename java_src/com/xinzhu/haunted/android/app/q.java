package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88551a = "q";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88552b = com.xinzhu.haunted.d.b("android.app.IAppTask");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88553a = com.xinzhu.haunted.d.b("android.app.IAppTask$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88554b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88555c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88554b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88554b.get() != null) {
                return true;
            }
            if (f88555c) {
                return false;
            }
            androidx.lifecycle.i.a(f88554b, null, com.xinzhu.haunted.d.g(f88553a, "asInterface", IBinder.class));
            f88555c = true;
            return f88554b.get() != null;
        }
    }
}
