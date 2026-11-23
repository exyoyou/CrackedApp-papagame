package com.aggmoread.sdk.z.a.g;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f3459d = com.aggmoread.sdk.z.a.h.a.d().b();

    public JSONObject a(Context context) {
        this.f3456a = TextUtils.isEmpty(this.f3459d.s()) ? com.aggmoread.sdk.z.a.p.e.b(context) : this.f3459d.s();
        this.f3457b = com.aggmoread.sdk.z.a.p.e.c(context);
        this.f3458c = com.aggmoread.sdk.z.a.p.e.e(context);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ip", this.f3456a);
            jSONObject.put("connectionType", this.f3457b);
            jSONObject.put("operatorType", this.f3458c);
            Location locationN = this.f3459d.n();
            if (locationN != null) {
                double latitude = locationN.getLatitude();
                double longitude = locationN.getLongitude();
                jSONObject.put(com.umeng.analytics.pro.f.C, latitude);
                jSONObject.put("lon", longitude);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return "JuHeApiNetwork{ip='" + this.f3456a + "', connectionType=" + this.f3457b + ", operatorType=" + this.f3458c + '}';
    }
}
