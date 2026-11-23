package com.ta.utdid2.android.utils;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f82931a = "alidebug";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f82932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class<?> f82933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f82934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f82935e;

    static {
        f82932b = b(f82931a, 0) == 1;
        f82933c = null;
        f82934d = null;
        f82935e = null;
    }

    public static String a(String str) {
        c();
        try {
            return (String) f82934d.invoke(f82933c, str);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int b(String str, int i10) {
        c();
        try {
            return ((Integer) f82935e.invoke(f82933c, str, Integer.valueOf(i10))).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return i10;
        }
    }

    private static void c() {
        try {
            if (f82933c == null) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                f82933c = cls;
                f82934d = cls.getDeclaredMethod("get", String.class);
                f82935e = f82933c.getDeclaredMethod("getInt", String.class, Integer.TYPE);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
