package com.alipay.sdk.packet;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split(x.a.f97576d);
        if (strArrSplit.length == 0) {
            return "";
        }
        String strE = null;
        String strE2 = null;
        String strE3 = null;
        String strE4 = null;
        for (String str2 : strArrSplit) {
            if (TextUtils.isEmpty(strE)) {
                strE = !str2.contains("biz_type") ? null : e(str2);
            }
            if (TextUtils.isEmpty(strE2)) {
                strE2 = !str2.contains("biz_no") ? null : e(str2);
            }
            if (TextUtils.isEmpty(strE3)) {
                strE3 = (!str2.contains(com.alipay.sdk.app.statistic.c.f7080z) || str2.startsWith("out_trade_no")) ? null : e(str2);
            }
            if (TextUtils.isEmpty(strE4)) {
                strE4 = !str2.contains("app_userid") ? null : e(str2);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(strE)) {
            sb2.append("biz_type=" + strE + ";");
        }
        if (!TextUtils.isEmpty(strE2)) {
            sb2.append("biz_no=" + strE2 + ";");
        }
        if (!TextUtils.isEmpty(strE3)) {
            sb2.append("trade_no=" + strE3 + ";");
        }
        if (!TextUtils.isEmpty(strE4)) {
            sb2.append("app_userid=" + strE4 + ";");
        }
        String string = sb2.toString();
        return string.endsWith(";") ? string.substring(0, string.length() - 1) : string;
    }

    private static String b(String str) {
        if (str.contains("biz_type")) {
            return e(str);
        }
        return null;
    }

    private static String c(String str) {
        if (str.contains("biz_no")) {
            return e(str);
        }
        return null;
    }

    private static String d(String str) {
        if (!str.contains(com.alipay.sdk.app.statistic.c.f7080z) || str.startsWith("out_trade_no")) {
            return null;
        }
        return e(str);
    }

    private static String e(String str) {
        String[] strArrSplit = str.split(SimpleComparison.EQUAL_TO_OPERATION);
        if (strArrSplit.length <= 1) {
            return null;
        }
        String str2 = strArrSplit[1];
        return str2.contains(x.a.f97579g) ? str2.replaceAll(x.a.f97579g, "") : str2;
    }

    private static String f(String str) {
        if (str.contains("app_userid")) {
            return e(str);
        }
        return null;
    }
}
