package com.xinzhu.haunted.android.content.pm;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88749a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88750b = com.xinzhu.haunted.d.b("android.content.pm.ILauncherApps");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88751a = com.xinzhu.haunted.d.b("android.content.pm.ILauncherApps$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88752b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88753c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88752b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88752b.get() != null) {
                return true;
            }
            if (f88753c) {
                return false;
            }
            androidx.lifecycle.i.a(f88752b, null, com.xinzhu.haunted.d.g(f88751a, "asInterface", IBinder.class));
            f88753c = true;
            return f88752b.get() != null;
        }
    }
}
