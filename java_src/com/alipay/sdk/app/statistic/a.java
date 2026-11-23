package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f7061a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7062b = "alipay_cashier_statistic_record";

    public static void a(Context context) {
        if (f7061a != null) {
            return;
        }
        f7061a = new c(context);
    }

    public static synchronized void b(Context context, String str) {
        String strReplace;
        String strReplace2;
        String str2;
        c cVar = f7061a;
        if (cVar == null) {
            return;
        }
        if (TextUtils.isEmpty(cVar.f7089i)) {
            str2 = "";
        } else {
            String[] strArrSplit = str.split(x.a.f97576d);
            if (strArrSplit != null) {
                strReplace = null;
                strReplace2 = null;
                for (String str3 : strArrSplit) {
                    String[] strArrSplit2 = str3.split(SimpleComparison.EQUAL_TO_OPERATION);
                    if (strArrSplit2 != null && strArrSplit2.length == 2) {
                        if (strArrSplit2[0].equalsIgnoreCase("partner")) {
                            strArrSplit2[1].replace(x.a.f97579g, "");
                        } else if (strArrSplit2[0].equalsIgnoreCase("out_trade_no")) {
                            strReplace = strArrSplit2[1].replace(x.a.f97579g, "");
                        } else if (strArrSplit2[0].equalsIgnoreCase(c.f7080z)) {
                            strReplace2 = strArrSplit2[1].replace(x.a.f97579g, "");
                        }
                    }
                }
            } else {
                strReplace = null;
                strReplace2 = null;
            }
            String strB = c.b(strReplace2);
            String strB2 = c.b(strReplace);
            String str4 = String.format("%s,%s,-,%s,-,-,-", strB, strB2, c.b(strB2));
            cVar.f7082b = str4;
            str2 = String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", cVar.f7081a, str4, cVar.f7083c, cVar.f7084d, cVar.f7085e, cVar.f7086f, cVar.f7087g, cVar.f7088h, cVar.f7089i, cVar.f7090j);
        }
        new Thread(new b(context, str2)).start();
        f7061a = null;
    }

    public static void c(String str, String str2, String str3) {
        c cVar = f7061a;
        if (cVar == null) {
            return;
        }
        cVar.d(str, str2, str3);
    }

    public static void d(String str, String str2, Throwable th) {
        c cVar = f7061a;
        if (cVar == null) {
            return;
        }
        cVar.e(str, str2, th);
    }

    public static void e(String str, Throwable th) {
        if (f7061a == null || th == null) {
            return;
        }
        f7061a.e(str, th.getClass().getSimpleName(), th);
    }

    private static void f(Context context, String str) {
        new Thread(new b(context, str)).start();
    }
}
