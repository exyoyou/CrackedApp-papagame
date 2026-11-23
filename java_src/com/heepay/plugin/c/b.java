package com.heepay.plugin.c;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static String a(Exception exc) {
        String str = exc.getMessage() + ":\n";
        for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
            str = str + stackTraceElement.toString() + "\n";
        }
        return str;
    }

    public static void a(Exception exc, String str) {
        c.e("Exception", str + "产生了例外：" + a(exc));
    }
}
