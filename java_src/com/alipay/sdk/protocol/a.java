package com.alipay.sdk.protocol;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public enum a {
    None("none"),
    WapPay("js://wappay"),
    Update("js://update");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7206d;

    a(String str) {
        this.f7206d = str;
    }

    public static a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return None;
        }
        a aVar = None;
        for (a aVar2 : values()) {
            if (str.startsWith(aVar2.f7206d)) {
                return aVar2;
            }
        }
        return aVar;
    }
}
