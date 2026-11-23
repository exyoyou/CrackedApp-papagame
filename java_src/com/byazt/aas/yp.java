package com.byazt.aas;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 215})
public class yp {
    public static String c(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        String str = com.alipay.sdk.packet.d.f7182f;
        if (TextUtils.isEmpty(map.get(com.alipay.sdk.packet.d.f7182f))) {
            str = "Content-Type";
        }
        return map.get(str);
    }
}
