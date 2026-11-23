package com.alipay.sdk.packet;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f7175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7176b;

    public b(String str, String str2) {
        this.f7175a = str;
        this.f7176b = str2;
    }

    private void b(String str) {
        this.f7175a = str;
    }

    private String c() {
        return this.f7175a;
    }

    private void d(String str) {
        this.f7176b = str;
    }

    private String e() {
        return this.f7176b;
    }

    public final JSONObject a() {
        if (TextUtils.isEmpty(this.f7176b)) {
            return null;
        }
        try {
            return new JSONObject(this.f7176b);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return "\nenvelop:" + this.f7175a + "\nbody:" + this.f7176b;
    }
}
