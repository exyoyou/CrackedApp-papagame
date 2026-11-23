package com.umeng.analytics.pro;

import com.umeng.commonsdk.service.UMGlobalContext;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class aq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84293a = "https://ucc.umeng.com/v2/inn/fetch";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f84294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f84295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f84296d;

    public aq(String str, JSONObject jSONObject, String str2) {
        this.f84294b = str;
        this.f84295c = jSONObject.toString();
        this.f84296d = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONObject jSONObject = null;
        try {
            byte[] bArrA = ao.a(this.f84294b, this.f84295c);
            if (bArrA != null) {
                JSONObject jSONObject2 = new JSONObject(new String(bArrA));
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sourceIucc", this.f84296d);
                    jSONObject3.put("config", jSONObject2);
                } catch (Throwable unused) {
                }
                jSONObject = jSONObject3;
            }
        } catch (Throwable unused2) {
        }
        com.umeng.ccg.c.a(UMGlobalContext.getAppContext(), 102, com.umeng.ccg.d.a(), jSONObject);
    }
}
