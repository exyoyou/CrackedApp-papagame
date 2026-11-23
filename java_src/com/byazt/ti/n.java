package com.byazt.ti;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2161, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f20189c = "com.bytedance.openadsdk";
    public static String tt = "content://" + f20189c + ".TTMultiProvider";

    static {
        c();
    }

    public static void c() {
        Context context = tt.getContext();
        if (context != null) {
            f20189c = context.getPackageName();
            tt = "content://" + f20189c + ".TTMultiProvider";
        }
    }
}
