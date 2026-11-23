package com.kuaishou.weapon.p0;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
public class bv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f74549a = c.b("Y29tLmt3YWkud2VhcG9uLmNvbmp1cmU=\n", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f74550b = c.b(f74550b, 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f74550b = c.b(f74550b, 2);

    public static String a(Context context) {
        String str = TextUtils.isEmpty(d(context)) ? "0" : "1";
        String strC = c(context);
        if (TextUtils.isEmpty(strC)) {
            return "0" + str;
        }
        String str2 = "1" + str;
        b(context, strC);
        return str2;
    }

    public static String b(Context context) {
        String strC = c(context);
        String strD = d(context);
        if (!TextUtils.isEmpty(strC) && TextUtils.equals(strC, strD)) {
            return strC;
        }
        if (!TextUtils.isEmpty(strC)) {
            b(context, strC);
            return strC;
        }
        if (TextUtils.isEmpty(strD)) {
            return "";
        }
        a(context, strD);
        return strD;
    }

    public static String c(Context context) {
        try {
            return Settings.System.getString(context.getContentResolver(), f74549a);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d(Context context) {
        try {
            return dd.a(context).e();
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a(Context context, String str) {
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context.getApplicationContext())) {
                Settings.System.putString(context.getContentResolver(), f74549a, str);
            }
        } catch (Exception unused) {
        }
    }

    public static void b(Context context, String str) {
        dd.a(context).d(str);
    }
}
