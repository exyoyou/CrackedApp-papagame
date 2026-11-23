package cn.com.chinatelecom.account.api.d;

import android.content.Context;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f881a = new k();

    public static String a() {
        return f881a.a(true);
    }

    public static String b() {
        return f881a.a(false);
    }

    public static String a(Context context, String str, String str2, String str3, long j10, String str4) {
        return f881a.a(context, str, str2, str3, j10, true, str4);
    }

    public static String b(Context context, String str, String str2, String str3, long j10, String str4) {
        return f881a.a(context, str, str2, str3, j10, false, str4);
    }

    public static String a(String str, String str2) {
        return f881a.a(str, str2);
    }
}
