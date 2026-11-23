package com.aggmoread.sdk.z.a.j;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f3579a = new f();

    public int a(String str) {
        String strA = com.aggmoread.sdk.z.a.m.f.a().a(str);
        if (TextUtils.isEmpty(strA)) {
            return 0;
        }
        return Integer.parseInt(strA);
    }

    public static f a() {
        return f3579a;
    }

    public void a(String str, int i10) {
        com.aggmoread.sdk.z.a.m.f.a().a(str, String.valueOf(i10));
    }
}
