package com.xinzhu.haunted.android.os;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88990a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88991b = com.xinzhu.haunted.d.a(d.a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f88992c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88993d = false;

    public static boolean a(File file, int i10, long j10) {
        if (f88992c.get() != null) {
            return true;
        }
        if (f88993d) {
            return false;
        }
        androidx.lifecycle.i.a(f88992c, null, com.xinzhu.haunted.d.g(f88991b, "deleteOlderFiles", File.class, Integer.TYPE, Long.TYPE));
        f88993d = true;
        return f88992c.get() != null;
    }

    public static boolean b(File file, int i10, long j10) {
        if (!a(file, i10, j10)) {
            return false;
        }
        try {
            return ((Boolean) f88992c.get().invoke(null, file, Integer.valueOf(i10), Long.valueOf(j10))).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }
}
