package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89007a = "h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89008b = com.xinzhu.haunted.d.b("android.os.IDeviceIdentifiersPolicyService");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f89009a = com.xinzhu.haunted.d.b("android.os.IDeviceIdentifiersPolicyService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f89010b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f89011c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f89010b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f89010b.get() != null) {
                return true;
            }
            if (f89011c) {
                return false;
            }
            androidx.lifecycle.i.a(f89010b, null, com.xinzhu.haunted.d.g(f89009a, "asInterface", IBinder.class));
            f89011c = true;
            return f89010b.get() != null;
        }
    }
}
