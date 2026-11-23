package com.kuaishou.weapon.p0;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class bq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f74539a = "weapon.set";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f74543e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f74540b = c.b("Y29tLmt3YWkud2VhcG9u", 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f74541c = c.b(f74541c, 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f74541c = c.b(f74541c, 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f74542d = c.b(f74542d, 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f74542d = c.b(f74542d, 2);

    private bq() {
    }

    public static synchronized String a(Context context) {
        if (!TextUtils.isEmpty(f74543e)) {
            return f74543e;
        }
        String strC = c(context);
        f74543e = strC;
        return strC;
    }

    private static void b(Context context, String str) {
        c(context, str);
        d(context, str);
    }

    private static String c(Context context) {
        String strE = e(context);
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        String strD = d(context);
        if (!TextUtils.isEmpty(strD)) {
            b(context, strD);
        }
        return strD;
    }

    private static String d(Context context) {
        try {
            h hVarA = h.a(context, "re_po_rt");
            boolean zE = hVarA.e("a1_p_s_p_s");
            boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            String strF = (zE || zE2) ? bf.f(context) : "";
            if (TextUtils.isEmpty(strF)) {
                strF = UUID.randomUUID().toString();
            }
            String str = strF + f74540b;
            String strC = (zE || zE2) ? bf.c(context) : "";
            if (TextUtils.isEmpty(strC) || strC.startsWith("RISK")) {
                strC = "0";
            }
            String string = new StringBuffer(strC).reverse().toString();
            return new bl(context).a(f.a(str).toUpperCase() + "|" + string.toUpperCase(), bg.f74512u);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String e(Context context) {
        String strA = a(context, f74541c);
        String strF = f(context);
        if (!TextUtils.isEmpty(strA) && TextUtils.equals(strA, strF)) {
            return strA;
        }
        if (!TextUtils.isEmpty(strA)) {
            d(context, strA);
            return strA;
        }
        if (TextUtils.isEmpty(strF)) {
            return "";
        }
        c(context, strF);
        return strF;
    }

    private static String f(Context context) {
        try {
            return dd.a(context).d();
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean b(Context context) {
        return Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context.getApplicationContext());
    }

    public static String a(Context context, String str) {
        try {
            return Settings.System.getString(context.getContentResolver(), str);
        } catch (Exception unused) {
            return "";
        }
    }

    private static void c(Context context, String str) {
        try {
            if (b(context)) {
                ContentResolver contentResolver = context.getContentResolver();
                Settings.System.putString(contentResolver, f74541c, str);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(System.currentTimeMillis());
                Settings.System.putString(contentResolver, f74539a, sb2.toString());
            }
        } catch (Exception unused) {
        }
    }

    private static void d(Context context, String str) {
        dd.a(context).c(str);
    }
}
