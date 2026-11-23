package com.byazt.ym;

import com.byazt.vb.n;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 799, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f22336c = "com.bytedance.openadsdk";
    public static String tt = "content://" + f22336c + ".TTMultiProvider";

    public static String c(n nVar) {
        if (nVar.getContext() != null) {
            f22336c = nVar.getContext().getPackageName();
            tt = "content://" + f22336c + ".TTMultiProvider";
        }
        return tt;
    }
}
