package com.beizi.ad.internal.e;

import android.content.Context;
import android.text.TextUtils;
import com.sigmob.sdk.base.models.SigMacroCommon;

/* JADX INFO: loaded from: classes6.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f9018a = ".AD_CLK_PT_DOWN_X.";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f9019b = ".AD_CLK_PT_DOWN_Y.";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f9020c = ".AD_CLK_PT_UP_X.";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f9021d = ".AD_CLK_PT_UP_Y.";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f9022e = ".SCRN_CLK_PT_DOWN_X.";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f9023f = ".SCRN_CLK_PT_DOWN_Y.";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f9024g = ".SCRN_CLK_PT_UP_X.";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f9025h = ".SCRN_CLK_PT_UP_Y.";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f9026i = ".UTC_TS.";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f9027j = ".AD_CLK_PT_DOWN_X_DP.";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f9028k = ".AD_CLK_PT_DOWN_Y_DP.";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f9029l = ".AD_CLK_PT_UP_X_DP.";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f9030m = ".AD_CLK_PT_UP_Y_DP.";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f9031n = ".SCRN_CLK_PT_DOWN_X_DP.";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f9032o = ".SCRN_CLK_PT_DOWN_Y_DP.";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f9033p = ".SCRN_CLK_PT_UP_X_DP.";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f9034q = ".SCRN_CLK_PT_UP_Y_DP.";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f9035r = ".EVENT_TS_START.";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f9036s = ".EVENT_TS_END.";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f9037t = ".VIDEO_DURATION.";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f9038u = "__CLT__";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static String f9039v = "__CLT-999__";

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url must no null");
        }
        if (str.contains(f9018a)) {
            str = str.replace(f9018a, str2);
        }
        if (str.contains(f9019b)) {
            str = str.replace(f9019b, str3);
        }
        if (str.contains(f9020c)) {
            str = str.replace(f9020c, str2);
        }
        if (str.contains(f9021d)) {
            str = str.replace(f9021d, str3);
        }
        if (str.contains(f9022e)) {
            str = str.replace(f9022e, str4);
        }
        if (str.contains(f9023f)) {
            str = str.replace(f9023f, str5);
        }
        if (str.contains(f9024g)) {
            str = str.replace(f9024g, str4);
        }
        if (str.contains(f9025h)) {
            str = str.replace(f9025h, str5);
        }
        if (str.contains(f9026i)) {
            str = str.replace(f9026i, String.valueOf(System.currentTimeMillis()));
        }
        if (str.contains(f9035r)) {
            str = str.replace(f9035r, str6);
        }
        if (str.contains(f9036s)) {
            str = str.replace(f9036s, str7);
        }
        return str.contains(f9037t) ? str.replace(f9037t, str8) : str;
    }

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        if (!TextUtils.isEmpty(str)) {
            if (i10 == 2) {
                if (str.contains(f9038u)) {
                    str2 = "0";
                    str3 = "0";
                    str4 = str3;
                    str5 = str4;
                }
                if (str.contains(f9039v)) {
                    str2 = SigMacroCommon.DEFAULT_XY;
                    str3 = SigMacroCommon.DEFAULT_XY;
                    str4 = str3;
                    str5 = str4;
                }
            }
            if (str.contains(f9018a)) {
                str = str.replace(f9018a, str2);
            }
            if (str.contains(f9019b)) {
                str = str.replace(f9019b, str3);
            }
            if (str.contains(f9020c)) {
                str = str.replace(f9020c, str2);
            }
            if (str.contains(f9021d)) {
                str = str.replace(f9021d, str3);
            }
            if (str.contains(f9022e)) {
                str = str.replace(f9022e, str4);
            }
            if (str.contains(f9023f)) {
                str = str.replace(f9023f, str5);
            }
            if (str.contains(f9024g)) {
                str = str.replace(f9024g, str4);
            }
            if (str.contains(f9025h)) {
                str = str.replace(f9025h, str5);
            }
            if (str.contains(f9027j)) {
                str = str.replace(f9027j, a(com.beizi.ad.internal.c.a().f8769j, str2));
            }
            if (str.contains(f9028k)) {
                str = str.replace(f9028k, a(com.beizi.ad.internal.c.a().f8769j, str3));
            }
            if (str.contains(f9029l)) {
                str = str.replace(f9029l, a(com.beizi.ad.internal.c.a().f8769j, str2));
            }
            if (str.contains(f9030m)) {
                str = str.replace(f9030m, a(com.beizi.ad.internal.c.a().f8769j, str3));
            }
            if (str.contains(f9031n)) {
                str = str.replace(f9031n, a(com.beizi.ad.internal.c.a().f8769j, str4));
            }
            if (str.contains(f9032o)) {
                str = str.replace(f9032o, a(com.beizi.ad.internal.c.a().f8769j, str5));
            }
            if (str.contains(f9033p)) {
                str = str.replace(f9033p, a(com.beizi.ad.internal.c.a().f8769j, str4));
            }
            if (str.contains(f9034q)) {
                str = str.replace(f9034q, a(com.beizi.ad.internal.c.a().f8769j, str5));
            }
            if (str.contains(f9038u)) {
                str = str.replace(f9038u, String.valueOf(i10));
            }
            if (str.contains(f9039v)) {
                str = str.replace(f9039v, String.valueOf(i10));
            }
            if (str.contains(f9026i)) {
                str = str.replace(f9026i, String.valueOf(System.currentTimeMillis()));
            }
            if (str.contains(f9035r)) {
                str = str.replace(f9035r, str6);
            }
            if (str.contains(f9036s)) {
                str = str.replace(f9036s, str7);
            }
            return str.contains(f9037t) ? str.replace(f9037t, str8) : str;
        }
        throw new IllegalArgumentException("url must no null");
    }

    public static String a(String str, com.beizi.ad.model.f fVar, String str2, String str3, String str4) {
        if (str.contains(f9018a) && !TextUtils.isEmpty(fVar.a())) {
            str = str.replace(f9018a, fVar.a());
        }
        if (str.contains(f9019b) && !TextUtils.isEmpty(fVar.b())) {
            str = str.replace(f9019b, fVar.b());
        }
        if (str.contains(f9020c) && !TextUtils.isEmpty(fVar.e())) {
            str = str.replace(f9020c, fVar.e());
        }
        if (str.contains(f9021d) && !TextUtils.isEmpty(fVar.f())) {
            str = str.replace(f9021d, fVar.f());
        }
        if (str.contains(f9022e) && !TextUtils.isEmpty(fVar.c())) {
            str = str.replace(f9022e, fVar.c());
        }
        if (str.contains(f9023f) && !TextUtils.isEmpty(fVar.d())) {
            str = str.replace(f9023f, fVar.d());
        }
        if (str.contains(f9024g) && !TextUtils.isEmpty(fVar.g())) {
            str = str.replace(f9024g, fVar.g());
        }
        if (str.contains(f9025h) && !TextUtils.isEmpty(fVar.h())) {
            str = str.replace(f9025h, fVar.h());
        }
        if (str.contains(f9027j) && !TextUtils.isEmpty(fVar.a())) {
            str = str.replace(f9027j, a(com.beizi.ad.internal.c.a().f8769j, fVar.a()));
        }
        if (str.contains(f9028k) && !TextUtils.isEmpty(fVar.b())) {
            str = str.replace(f9028k, a(com.beizi.ad.internal.c.a().f8769j, fVar.b()));
        }
        if (str.contains(f9029l) && !TextUtils.isEmpty(fVar.e())) {
            str = str.replace(f9029l, a(com.beizi.ad.internal.c.a().f8769j, fVar.e()));
        }
        if (str.contains(f9030m) && !TextUtils.isEmpty(fVar.f())) {
            str = str.replace(f9030m, a(com.beizi.ad.internal.c.a().f8769j, fVar.f()));
        }
        if (str.contains(f9031n) && !TextUtils.isEmpty(fVar.c())) {
            str = str.replace(f9031n, a(com.beizi.ad.internal.c.a().f8769j, fVar.c()));
        }
        if (str.contains(f9032o) && !TextUtils.isEmpty(fVar.d())) {
            str = str.replace(f9032o, a(com.beizi.ad.internal.c.a().f8769j, fVar.d()));
        }
        if (str.contains(f9033p) && !TextUtils.isEmpty(fVar.g())) {
            str = str.replace(f9033p, a(com.beizi.ad.internal.c.a().f8769j, fVar.g()));
        }
        return (!str.contains(f9034q) || TextUtils.isEmpty(fVar.h())) ? str : str.replace(f9034q, a(com.beizi.ad.internal.c.a().f8769j, fVar.h()));
    }

    public static String a(String str, com.beizi.ad.model.f fVar, String str2, String str3, String str4, int i10) {
        if (!TextUtils.isEmpty(str)) {
            if (i10 != 2 && i10 != 5) {
                str = a(str, fVar, str2, str3, str4);
            } else {
                com.beizi.ad.model.f fVar2 = new com.beizi.ad.model.f();
                if (str.contains(f9038u)) {
                    fVar2.a("0");
                    fVar2.b("0");
                    fVar2.c("0");
                    fVar2.d("0");
                    fVar2.e("0");
                    fVar2.f("0");
                    fVar2.g("0");
                    fVar2.h("0");
                    str = a(str, fVar2, str2, str3, str4);
                }
                if (str.contains(f9039v)) {
                    fVar2.a(SigMacroCommon.DEFAULT_XY);
                    fVar2.b(SigMacroCommon.DEFAULT_XY);
                    fVar2.c(SigMacroCommon.DEFAULT_XY);
                    fVar2.d(SigMacroCommon.DEFAULT_XY);
                    fVar2.e(SigMacroCommon.DEFAULT_XY);
                    fVar2.f(SigMacroCommon.DEFAULT_XY);
                    fVar2.g(SigMacroCommon.DEFAULT_XY);
                    fVar2.h(SigMacroCommon.DEFAULT_XY);
                    str = a(str, fVar2, str2, str3, str4);
                }
            }
            if (str.contains(f9038u)) {
                str = str.replace(f9038u, String.valueOf(i10));
            }
            if (str.contains(f9039v)) {
                str = str.replace(f9039v, String.valueOf(i10));
            }
            if (str.contains(f9026i)) {
                str = str.replace(f9026i, String.valueOf(System.currentTimeMillis()));
            }
            if (str.contains(f9035r)) {
                str = str.replace(f9035r, str2);
            }
            if (str.contains(f9036s)) {
                str = str.replace(f9036s, str3);
            }
            return str.contains(f9037t) ? str.replace(f9037t, str4) : str;
        }
        throw new IllegalArgumentException("url must no null");
    }

    public static String a(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && !str.equals(SigMacroCommon.DEFAULT_XY) && !str.equals("0")) {
                return String.valueOf((int) ((((long) Double.parseDouble(str)) / context.getResources().getDisplayMetrics().density) + 0.5f));
            }
            return str;
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }
}
