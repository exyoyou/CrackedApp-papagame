package com.kwad.library.solder.lib;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static String DH() {
        return "";
    }

    private static String F(String str, String str2) {
        return "[" + str + "]: " + str2 + " " + DH();
    }

    public static void e(String str, String str2) {
        F(str, str2);
    }

    public static void e(String str, Throwable th) {
        F(str, "");
    }

    public static void e(String str, String str2, Throwable th) {
        F(str, str2);
    }
}
