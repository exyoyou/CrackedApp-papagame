package com.xinzhu.haunted.android.os;

import android.content.pm.ApplicationInfo;
import android.os.StrictMode;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89102a = "u";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89103b = com.xinzhu.haunted.d.a(StrictMode.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f89104c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89105d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f89106e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f89107f = false;

    public static boolean a() {
        if (f89106e.get() != null) {
            return true;
        }
        if (f89107f) {
            return false;
        }
        androidx.lifecycle.i.a(f89106e, null, com.xinzhu.haunted.d.g(f89103b, "disableDeathOnFileUriExposure", new Object[0]));
        f89107f = true;
        return f89106e.get() != null;
    }

    public static boolean b(ApplicationInfo applicationInfo) {
        if (f89104c.get() != null) {
            return true;
        }
        if (f89105d) {
            return false;
        }
        androidx.lifecycle.i.a(f89104c, null, com.xinzhu.haunted.d.g(f89103b, "initThreadDefaults", ApplicationInfo.class));
        f89105d = true;
        return f89104c.get() != null;
    }

    public static void c() {
        if (a()) {
            try {
                f89106e.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public static void d(ApplicationInfo applicationInfo) {
        if (b(applicationInfo)) {
            try {
                f89104c.get().invoke(null, applicationInfo);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
