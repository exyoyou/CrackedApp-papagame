package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88736a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88737b = com.xinzhu.haunted.d.b("android.content.pm.ICrossProfileApps");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88738a = com.xinzhu.haunted.d.b("android.content.pm.ICrossProfileApps$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88739b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88740c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88739b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88739b.get() != null) {
                return true;
            }
            if (f88740c) {
                return false;
            }
            androidx.lifecycle.i.a(f88739b, null, com.xinzhu.haunted.d.g(f88738a, "asInterface", IBinder.class));
            f88740c = true;
            return f88739b.get() != null;
        }
    }
}
