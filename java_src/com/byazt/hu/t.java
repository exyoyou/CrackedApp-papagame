package com.byazt.hu;

import android.text.TextUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 66})
public class t {

    @com.byazt.zqa.c(c = {0, 1, 1381, 125})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static t f15112c = new t();
    }

    public static t c() {
        return c.f15112c;
    }

    public void tt(String str, String str2, String str3) {
        m.uj("[TTDownloaderLogger]", ((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? "" : String.format("sdk:%s.%s:", str, str2)) + str3);
    }

    private t() {
    }

    public void c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        String.format("sdk:%s.%s:", str, str2);
    }
}
