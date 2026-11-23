package com.papa.gsyvideoplayer.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f76925a = "GSYVideoPlayer";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static boolean f76926b;

    public static void a(Activity activity, String str) {
        if (!f76926b || TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(activity, str, 0).show();
    }

    public static void b() {
        f76926b = false;
    }

    public static void c() {
        f76926b = true;
    }

    public static boolean d() {
        return f76926b;
    }

    public static void e(String str) {
        if (f76926b) {
            TextUtils.isEmpty(str);
        }
    }

    public static void f(String str, Exception exc) {
        if (f76926b) {
            TextUtils.isEmpty(str);
            exc.printStackTrace();
        }
    }

    public static void g(String str, String str2) {
        if (f76926b) {
            TextUtils.isEmpty(str2);
        }
    }

    public static void h(String str) {
        i(f76925a, str);
    }

    public static void i(String str, String str2) {
        if (!f76926b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }

    public static void j(String str) {
        k(f76925a, str);
    }

    public static void k(String str, String str2) {
        if (!f76926b || str2 == null) {
            return;
        }
        TextUtils.isEmpty(str2);
    }
}
