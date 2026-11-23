package com.byazt.zyp;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.bog.a;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1493, 54})
public class ve {
    public static boolean c() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb2 = new StringBuilder("abi-support: ");
        sb2.append(strArr == null ? "null" : strArr.toString());
        a.c(sb2.toString());
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && str.toLowerCase().contains("arm64-v8a")) {
                return true;
            }
        }
        return false;
    }

    public static boolean tt() {
        return ve() && !c();
    }

    public static boolean ve() {
        a.tt("isOA8A: true");
        return true;
    }
}
