package com.byazt.yy;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 122, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Context f22492c;

    public static void c(Context context) {
        if (f22492c == null && context != null) {
            f22492c = context.getApplicationContext();
        }
    }

    public static Context getContext() {
        return f22492c;
    }
}
