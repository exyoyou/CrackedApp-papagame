package com.join.mgps.Util;

import android.content.Context;
import com.MApplication;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class p3 {
    public static void a(Context context) {
        String strA;
        String value;
        com.meituan.android.walle.c cVarE = com.meituan.android.walle.g.e(context);
        if (cVarE != null) {
            cVarE.a();
            strA = "";
            value = strA;
            for (Map.Entry<String, String> entry : cVarE.b().entrySet()) {
                entry.getKey();
                entry.getValue();
                if ("shareCode".equals(entry.getKey())) {
                    strA = entry.getValue();
                }
                if ("adId".equals(entry.getKey())) {
                    value = entry.getValue();
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("SplashActivity>>>>key：");
                sb2.append((Object) entry.getKey());
                sb2.append("，value：");
                sb2.append((Object) entry.getValue());
            }
        } else {
            strA = "";
            value = strA;
        }
        if (t2.h(strA)) {
            String strA2 = com.meituan.android.walle.g.a(context, "shareGame");
            strA = com.meituan.android.walle.g.a(context, "shareCode");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SplashActivity>>>>shareGame：");
            sb3.append(strA2);
            sb3.append("，shareCode：");
            sb3.append(strA);
        }
        if (t2.h(value)) {
            String strA3 = com.meituan.android.walle.g.a(context, "adId");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("SplashActivity>>>>adId：");
            sb4.append(strA3);
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("SplashActivity>>>>shareCode：");
        sb5.append(strA);
        MApplication.f3174l1 = t2.h(strA) ? "" : strA;
    }
}
