package com.byazt.bog;

import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 935, 46})
public class n {
    public static boolean c() {
        if (Build.VERSION.SDK_INT >= 24) {
            return false;
        }
        a.tt("csj sdk only support android os >= android 7.0（API-24）");
        return true;
    }
}
