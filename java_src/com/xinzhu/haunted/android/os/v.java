package com.xinzhu.haunted.android.os;

import android.content.Context;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89109a = "v";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89110b = com.xinzhu.haunted.d.b("com.android.internal.notification.SystemNotificationChannels");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f89111c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89112d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f89113e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f89114f = false;

    public static boolean a() {
        if (f89111c.get() != null) {
            return true;
        }
        if (f89112d) {
            return false;
        }
        androidx.lifecycle.i.a(f89111c, null, com.xinzhu.haunted.d.f(f89110b, "ACCOUNT"));
        f89112d = true;
        return f89111c.get() != null;
    }

    public static boolean b(String str, int i10, Context context) {
        if (f89113e.get() != null) {
            return true;
        }
        if (f89114f) {
            return false;
        }
        androidx.lifecycle.i.a(f89113e, null, com.xinzhu.haunted.d.g(f89110b, "createAccountChannelForPackage", String.class, Integer.TYPE, Context.class));
        f89114f = true;
        return f89113e.get() != null;
    }

    public static void c(String str, int i10, Context context) {
        if (b(str, i10, context)) {
            try {
                f89113e.get().invoke(null, str, Integer.valueOf(i10), context);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public static String d() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f89111c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean e(String str) {
        if (!a()) {
            return false;
        }
        try {
            f89111c.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
