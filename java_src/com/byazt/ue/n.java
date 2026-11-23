package com.byazt.ue;

import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1265, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f20548c = "com.bytedance.openadsdk";
    public static String tt = "content://" + f20548c + ".TTMultiProvider";

    static {
        c();
    }

    public static void c() {
        if (gt.getContext() != null) {
            f20548c = gt.getContext().getPackageName();
            tt = "content://" + f20548c + ".TTMultiProvider";
        }
    }
}
