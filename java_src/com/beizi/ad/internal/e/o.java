package com.beizi.ad.internal.e;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f9015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f9016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f9017c;

    static {
        try {
            for (Method method : Class.forName("android.os.SystemProperties").getMethods()) {
                String name = method.getName();
                if (name.equals("getLong")) {
                    f9015a = method;
                } else if (name.equals("set")) {
                    f9017c = method;
                } else if (name.equals("get")) {
                    f9016b = method;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str, String str2) {
        try {
            return (String) f9016b.invoke(null, str, str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return str2;
        }
    }
}
