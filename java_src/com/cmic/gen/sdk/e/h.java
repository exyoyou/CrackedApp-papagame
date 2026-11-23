package com.cmic.gen.sdk.e;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.bg;

/* JADX INFO: loaded from: classes9.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f24482a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f24483b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f24484c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f24485d = -1;

    private static boolean c() {
        if (TextUtils.isEmpty(f24482a)) {
            return !TextUtils.isEmpty(k.b("phonescripcache", "")) && a(k.a("phonescripstarttime", 0L));
        }
        c.b("PhoneScripUtils", f24483b + " " + f24484c);
        return a(f24484c);
    }

    public static void a(boolean z10, boolean z11) {
        k.a aVarA = k.a();
        aVarA.a("phonescripstarttime");
        aVarA.a("phonescripcache");
        aVarA.a("pre_sim_key");
        aVarA.a("phonescripversion");
        if (z11) {
            aVarA.a();
        } else {
            aVarA.b();
        }
        if (z10) {
            f24482a = null;
            f24483b = null;
            f24484c = 0L;
            f24485d = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, long j10, String str2) {
        String strA = b.a(context, str);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        k.a aVarA = k.a();
        aVarA.a("phonescripcache", strA);
        aVarA.a("phonescripstarttime", j10);
        aVarA.a("phonescripversion", 1);
        aVarA.a("pre_sim_key", str2);
        aVarA.b();
    }

    public static void a(final Context context, final String str, long j10, final String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || j10 <= 0) {
            return;
        }
        c.b("PhoneScripUtils", "save phone scrip simKey = " + str2);
        f24482a = str;
        long j11 = j10 * 1000;
        f24484c = System.currentTimeMillis() + j11;
        c.b("sLifeTime", f24484c + "");
        f24483b = str2;
        f24485d = 1;
        if (!"operator".equals(str3)) {
            n.a(new n.a() { // from class: com.cmic.gen.sdk.e.h.1
                @Override // com.cmic.gen.sdk.e.n.a
                protected void a() {
                    c.b("PhoneScripUtils", "start save scrip to sp in sub thread");
                    h.b(context, str, h.f24484c, str2);
                }
            });
        } else if (j11 > bg.f74510s) {
            f24484c = System.currentTimeMillis() + bg.f74510s;
        } else {
            f24484c = System.currentTimeMillis() + j11;
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f24482a)) {
            String strB = k.b("phonescripcache", "");
            if (TextUtils.isEmpty(strB)) {
                c.a("PhoneScripUtils", "null");
                return null;
            }
            f24484c = k.a("phonescripstarttime", 0L);
            f24483b = k.b("pre_sim_key", "");
            f24485d = k.a("phonescripversion", -1);
            String strB2 = b.b(context, strB);
            f24482a = strB2;
            return strB2;
        }
        return f24482a;
    }

    private static boolean a(long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        c.b("PhoneScripUtils", j10 + "");
        c.b("PhoneScripUtils", jCurrentTimeMillis + "");
        return j10 - jCurrentTimeMillis > 10000;
    }

    public static long a() {
        long jA;
        long j10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(f24482a)) {
            c.b("PhoneScripUtils", f24483b + " " + f24484c);
            jA = f24484c;
        } else {
            String strB = k.b("phonescripcache", "");
            jA = k.a("phonescripstarttime", 0L);
            if (TextUtils.isEmpty(strB)) {
                j10 = 0;
            }
            return Math.max(j10 / 1000, 0L);
        }
        j10 = (jA - jCurrentTimeMillis) - 10000;
        return Math.max(j10 / 1000, 0L);
    }

    private static int a(String str) {
        String strB;
        if (!TextUtils.isEmpty(f24483b)) {
            strB = f24483b;
        } else {
            strB = k.b("pre_sim_key", "");
            f24483b = strB;
        }
        if (TextUtils.isEmpty(strB)) {
            return 0;
        }
        return strB.equals(str) ? 1 : 2;
    }

    public static boolean a(com.cmic.gen.sdk.a aVar) {
        int iA = a(aVar.b("scripKey"));
        aVar.a("imsiState", iA + "");
        c.b("PhoneScripUtils", "simState = " + iA);
        if (iA == 0) {
            return false;
        }
        if (f24485d == -1) {
            f24485d = k.a("phonescripversion", -1);
        }
        if (f24485d != 1) {
            a(true, false);
            b.a();
            c.b("PhoneScripUtils", "phoneScriptVersion change");
            return false;
        }
        if (iA == 2) {
            a(true, false);
            return false;
        }
        return c();
    }
}
