package com.windmill.sdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
class k {
    k() {
    }

    public static String a(byte[] data) {
        if (data != null && data.length != 0) {
            try {
                try {
                    return Base64.encodeToString(data, 2);
                } catch (Exception unused) {
                    return Arrays.toString(data);
                }
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    public static String b(String base64String) {
        if (TextUtils.isEmpty(base64String)) {
            return "";
        }
        try {
            return new String(Base64.decode(base64String, 2));
        } catch (Exception unused) {
            return base64String;
        }
    }

    public static String a(String data) {
        return TextUtils.isEmpty(data) ? "" : a(data.getBytes());
    }
}
