package com.danikula.videocache;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;

/* JADX INFO: loaded from: classes9.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f26040a = "HttpProxyCacheDebuger";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static boolean f26041b = true;

    public static void a(Activity activity, String str) {
        if (!f26041b || TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(activity, str, 0).show();
    }

    public static void b() {
        f26041b = false;
    }

    public static void c() {
        f26041b = true;
    }

    public static boolean d() {
        return f26041b;
    }

    public static void e(String str) {
        if (f26041b) {
            TextUtils.isEmpty(str);
        }
    }

    public static void f(String str, Exception exc) {
        if (f26041b) {
            TextUtils.isEmpty(str);
            exc.printStackTrace();
        }
    }

    public static void g(String str, String str2) {
        if (f26041b) {
            TextUtils.isEmpty(str2);
        }
    }

    public static void h(String str) {
        i(f26040a, str);
    }

    public static void i(String str, String str2) {
        if (!f26041b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }

    public static void j(String str) {
        k(f26040a, str);
    }

    public static void k(String str, String str2) {
        if (!f26041b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }
}
