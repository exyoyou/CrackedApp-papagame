package com.windmill.sdk.common;

import android.text.TextUtils;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes8.dex */
public class b {
    private b() {
    }

    public static boolean a(String value) {
        if (TextUtils.isEmpty(value)) {
            return false;
        }
        String strTrim = value.trim();
        if (TextUtils.isEmpty(strTrim)) {
            return false;
        }
        try {
            return new BigDecimal(strTrim).compareTo(BigDecimal.ZERO) == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
