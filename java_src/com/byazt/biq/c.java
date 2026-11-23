package com.byazt.biq;

import android.text.TextUtils;
import com.byazt.ete.sp;
import com.byazt.nr.m;
import com.byazt.omf.x;
import java.util.Iterator;
import x.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 12, 20})
public class c {
    public static String c(String str) {
        if (!m.ve() || TextUtils.isEmpty(str)) {
            return str;
        }
        sp spVar = new sp(x.m().p());
        StringBuilder sb2 = new StringBuilder(str);
        Iterator<String> it2 = spVar.tt().iterator();
        while (it2.hasNext()) {
            if (sb2.toString().contains(it2.next())) {
                if (sb2.toString().contains("?")) {
                    sb2.append(a.f97576d);
                    sb2.append(spVar.c());
                } else {
                    sb2.append("?");
                    sb2.append(spVar.c());
                }
            }
        }
        return sb2.toString();
    }
}
