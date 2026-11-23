package com.xinzhu.haunted.android.app;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88575a = "u";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88576b = com.xinzhu.haunted.d.b("android.app.IWallpaperManager");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88577a = com.xinzhu.haunted.d.b("android.app.IWallpaperManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88578b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88579c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88578b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88578b.get() != null) {
                return true;
            }
            if (f88579c) {
                return false;
            }
            androidx.lifecycle.i.a(f88578b, null, com.xinzhu.haunted.d.g(f88577a, "asInterface", IBinder.class));
            f88579c = true;
            return f88578b.get() != null;
        }
    }
}
