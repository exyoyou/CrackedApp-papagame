package com.beizi.ad.internal.e;

import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class k {
    public static void a(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            com.beizi.ad.lance.a.n.a("ReportEventUtil", "ReportEventUtil:" + str);
            if (!TextUtils.isEmpty(str)) {
                new com.beizi.ad.internal.d(p.a(str, "", "", "", "", "", "", "")).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }
}
