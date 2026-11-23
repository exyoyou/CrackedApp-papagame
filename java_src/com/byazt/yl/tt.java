package com.byazt.yl;

import android.text.TextUtils;
import com.byazt.vx.eo;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 509, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22288c = eo.uj();
    public static boolean tt = true;

    public static int c() {
        return Integer.parseInt(tt().replace(o0.f49827a, ""));
    }

    public static String tt() {
        return com.byazt.tjo.tt.ve();
    }

    public static String uj() {
        return com.byazt.tjo.tt.uj();
    }

    public static String ve() {
        if (TextUtils.isEmpty(tt())) {
            return "";
        }
        String[] strArrSplit = tt().split("\\.");
        if (strArrSplit.length < 4) {
            return "";
        }
        return strArrSplit[0] + o0.f49827a + strArrSplit[1] + o0.f49827a + strArrSplit[2];
    }
}
