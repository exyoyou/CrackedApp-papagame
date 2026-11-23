package com.beizi.ad.lance.a;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class o {
    public static String a(Context context) {
        String strB;
        if (context == null) {
            return "";
        }
        String strD = com.beizi.ad.b.a() != null ? com.beizi.ad.b.a().d() : null;
        if (TextUtils.isEmpty(strD)) {
            return ((com.beizi.ad.b.a() == null || (!com.beizi.ad.b.b() && com.beizi.ad.b.a().c())) && (strB = com.beizi.ad.internal.e.l.b(context, "__OAID__")) != null) ? strB : "";
        }
        return strD;
    }

    public static String b(Context context) {
        String strB;
        if (context == null) {
            return "";
        }
        return ((com.beizi.ad.b.a() == null || (!com.beizi.ad.b.b() && com.beizi.ad.b.a().c())) && (strB = com.beizi.ad.internal.e.l.b(context, "__HONOROAID__")) != null) ? strB : "";
    }
}
