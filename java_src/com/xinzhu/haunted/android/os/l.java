package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89031a = "l";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89032b = com.xinzhu.haunted.d.b("android.os.IStatsManagerService");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f89033a = com.xinzhu.haunted.d.b("android.os.IStatsManagerService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f89034b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f89035c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f89034b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f89034b.get() != null) {
                return true;
            }
            if (f89035c) {
                return false;
            }
            androidx.lifecycle.i.a(f89034b, null, com.xinzhu.haunted.d.g(f89033a, "asInterface", IBinder.class));
            f89035c = true;
            return f89034b.get() != null;
        }
    }
}
