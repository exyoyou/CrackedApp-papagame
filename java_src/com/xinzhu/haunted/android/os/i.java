package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89013a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89014b = com.xinzhu.haunted.d.b("android.os.IDeviceIdleController");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f89015a = com.xinzhu.haunted.d.b("android.os.IDeviceIdleController$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f89016b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f89017c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f89016b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f89016b.get() != null) {
                return true;
            }
            if (f89017c) {
                return false;
            }
            androidx.lifecycle.i.a(f89016b, null, com.xinzhu.haunted.d.g(f89015a, "asInterface", IBinder.class));
            f89017c = true;
            return f89016b.get() != null;
        }
    }
}
