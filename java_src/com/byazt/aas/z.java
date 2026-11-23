package com.byazt.aas;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 133})
public class z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f11497c;
    public static String tt;

    public static void c(String str) {
        if (com.byazt.lkt.c.c() != null) {
            com.byazt.lkt.c.c().c(str);
        }
        if (TextUtils.isEmpty(str) || str.equals(f11497c)) {
            return;
        }
        com.byazt.omf.tt.c().put("did", str);
        f11497c = str;
    }

    public static String c() {
        if (!TextUtils.isEmpty(f11497c)) {
            return f11497c;
        }
        String str = com.byazt.omf.tt.c().get("did", tt);
        f11497c = str;
        return str;
    }
}
