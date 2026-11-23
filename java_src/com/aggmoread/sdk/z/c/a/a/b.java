package com.aggmoread.sdk.z.c.a.a;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f4354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f4355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final LinkedBlockingDeque<Object[]> f4356c = new LinkedBlockingDeque<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Object[] f4357d = {null, null, null, null, null, null, Collections.synchronizedMap(new HashMap()), Collections.synchronizedMap(new WeakHashMap())};

    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static native Object b(int i10, Object obj);
    }

    public static Object a(int i10, int i11) {
        return a.b(1, new int[]{i10, i11});
    }

    public static int b(byte[] bArr) {
        return ((int[]) a.b(14, bArr))[0];
    }

    public static String c(Object obj) {
        return (String) a.b(27, obj);
    }

    public static String d(Object obj) {
        return (String) a.b(17, obj);
    }

    public static void e(String str) {
        a.b(12, new Object[]{new int[]{12}, str});
    }

    public static Map<Object, Object> f(Object obj) {
        return (Map) a.b(9, obj);
    }

    public static Map<Object, Object> g(Object obj) {
        return (Map) a.b(16, obj);
    }

    public static Map<Object, Object> h(Object obj) {
        return (Map) a.b(18, obj);
    }

    public static String i(Object obj) {
        return (String) a.b(22, obj);
    }

    public static String j(Object obj) {
        return (String) a.b(23, obj);
    }

    public static void k(String str) {
        a.b(12, new Object[]{new int[]{4}, str});
    }

    public static void l(String str) {
        a.b(12, new Object[]{new int[]{5}, str});
    }

    public static void m(String str) {
        a.b(12, new Object[]{new int[]{6}, str});
    }

    public static void n(String str) {
        a.b(12, new Object[]{new int[]{7}, str});
    }

    public static void o(String str) {
        a.b(12, new Object[]{new int[]{8}, str});
    }

    public static void p(String str) {
        a.b(12, new Object[]{new int[]{9}, str});
    }

    public static Object a(Object obj, Object obj2, Object obj3, Object obj4, String str) {
        return a.b(26, new Object[]{obj, obj2, obj3, obj4, str});
    }

    public static String b(Object obj) {
        return (String) a.b(15, obj);
    }

    public static void c() {
        a.b(19, null);
    }

    public static void d(String str) {
        a.b(12, new Object[]{new int[]{11}, str});
    }

    public static void e(Object[] objArr) {
        a.b(20, objArr);
    }

    public static void f(String str) {
        a.b(12, new Object[]{new int[]{13}, str});
    }

    public static void g(String str) {
        a.b(12, new Object[]{new int[]{14}, str});
    }

    public static void h(String str) {
        a.b(12, new Object[]{new int[]{15}, str});
    }

    public static void i(String str) {
        a.b(12, new Object[]{new int[]{2}, str});
    }

    public static void j(String str) {
        a.b(12, new Object[]{new int[]{3}, str});
    }

    public static Object a(String str, int[] iArr) {
        return a.b(2, new Object[]{str, iArr});
    }

    public static void b(String str) {
        a.b(12, new Object[]{new int[]{1}, str});
    }

    public static void c(String str) {
        a.b(12, new Object[]{new int[]{10}, str});
    }

    public static void d(Object[] objArr) {
        a.b(7, objArr);
    }

    public static byte[] e(Object obj) {
        return (byte[]) a.b(3, obj);
    }

    public static void f(Object[] objArr) {
        a.b(8, objArr);
    }

    public static String a(Object obj) {
        return (String) a.b(10, obj);
    }

    public static void b(Object[] objArr) {
        a.b(5, objArr);
    }

    public static void c(Object[] objArr) {
        a.b(6, objArr);
    }

    public static void a() {
        if (f4354a) {
            return;
        }
        synchronized (b.class) {
            if (!f4354a) {
                try {
                    System.setProperty("AMNAME", a.class.getName());
                    System.getSecurityManager();
                    System.loadLibrary("aggcore");
                    f4354a = ((Boolean) a.b(0, Boolean.TRUE)).booleanValue();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static Object[] b() {
        Object[] objArr = {null, null, null, null, null, null, null, null, null, null, null};
        objArr[9] = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        return objArr;
    }

    public static void a(String str) {
        a.b(12, new Object[]{new int[]{0}, str});
    }

    public static void a(Object[] objArr) {
        a.b(4, objArr);
    }

    public static void a(Object[] objArr, Context context) {
        if (f4355b) {
            f4356c.offer(objArr);
        }
    }

    public static boolean a(Context context, boolean z10) {
        if (f4355b) {
            return true;
        }
        synchronized (b.class) {
            if (f4355b) {
                return true;
            }
            boolean z11 = ((boolean[]) a.b(11, new Object[]{context, f4356c, new int[]{2, 0, 1, 3, 4, 5, 7, 6, 9, 8}, f4357d, new boolean[]{z10}}))[0];
            f4355b = z11;
            return z11;
        }
    }

    public static byte[] a(byte[] bArr) {
        return (byte[]) a.b(21, bArr);
    }

    public static byte[] a(int[] iArr) {
        return (byte[]) a.b(13, iArr);
    }
}
