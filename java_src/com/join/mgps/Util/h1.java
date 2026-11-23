package com.join.mgps.Util;

import java.util.MissingFormatArgumentException;

/* JADX INFO: loaded from: classes4.dex */
public class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49749a = "WF";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f49750b;

    public static void a(String msg, Object... args) {
        try {
            if (f49750b) {
                String.format(msg, args);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void b(String msg, Throwable t10) {
    }

    public static void c(String msg, Object... args) {
        try {
            if (f49750b) {
                String.format(msg, args);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void d(String msg, Object... args) {
        try {
            if (f49750b) {
                String.format(msg, args);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }

    public static void e(String... s10) {
        if (f49750b) {
            String str = "";
            for (String str2 : s10) {
                str = str + " " + str2;
            }
        }
    }

    public static void f(String msg, Object... args) {
        try {
            if (f49750b) {
                String.format(msg, args);
            }
        } catch (MissingFormatArgumentException unused) {
        }
    }
}
