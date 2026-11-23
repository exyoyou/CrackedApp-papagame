package com.umeng.analytics.pro;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class ap implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84290a = "https://aspect-upush.umeng.com/occa/v1/event/report";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f84291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f84292c;

    public ap(String str, JSONObject jSONObject) {
        this.f84291b = str;
        this.f84292c = jSONObject.toString();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (TextUtils.isEmpty(this.f84292c)) {
                return;
            }
            ao.b(this.f84291b, this.f84292c.getBytes());
        } catch (Throwable unused) {
        }
    }
}
