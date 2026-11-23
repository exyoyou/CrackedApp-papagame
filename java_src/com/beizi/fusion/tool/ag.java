package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.model.RequestInfo;

/* JADX INFO: loaded from: classes6.dex */
public class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f10409a = "OaidUtil";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f10411c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static com.beizi.fusion.d.a.b.a f10410b = new com.beizi.fusion.d.a.b.a() { // from class: com.beizi.fusion.tool.ag.1
        @Override // com.beizi.fusion.d.a.b.a
        public void a(@NonNull String str) {
            String str2 = ag.f10409a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("code cn Oaid:");
            sb2.append(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String unused = ag.f10411c = str;
            Context contextE = com.beizi.fusion.c.b.a().e();
            as.a(contextE, "__OAID__", (Object) ag.f10411c);
            as.a(contextE, "__CNOAID__", (Object) ag.f10411c);
            if (RequestInfo.getInstance(contextE).getDevInfo() != null) {
                if (ah.b() && BeiZis.isLimitPersonalAds()) {
                    return;
                }
                RequestInfo.getInstance(contextE).getDevInfo().setOaid(ag.f10411c);
                RequestInfo.getInstance(contextE).getDevInfo().setCnOaid(ag.f10411c);
            }
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f10412d = true;
}
