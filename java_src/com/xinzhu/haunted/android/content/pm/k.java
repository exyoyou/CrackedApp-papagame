package com.xinzhu.haunted.android.content.pm;

import android.content.pm.PackageManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88801a = "k";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88802b = com.xinzhu.haunted.d.a(PackageManager.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f88803c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88804d = false;

    public static boolean a() {
        if (f88803c.get() != null) {
            return true;
        }
        if (f88804d) {
            return false;
        }
        androidx.lifecycle.i.a(f88803c, null, com.xinzhu.haunted.d.g(f88802b, "disableApplicationInfoCache", new Object[0]));
        f88804d = true;
        return f88803c.get() != null;
    }

    public static void b() {
        if (a()) {
            try {
                f88803c.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
