package com.byazt.du;

import android.text.TextUtils;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 20})
public class c {
    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/images/");
        if (str.indexOf(o0.f49827a) > 0) {
            sb2.append(str);
            return sb2.toString();
        }
        sb2.append(str);
        sb2.append(".png");
        return sb2.toString();
    }
}
