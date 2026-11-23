package com.cmic.gen.sdk.d;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ArrayList<Throwable> f24472b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f24473c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JSONArray f24474d;

    public void a(JSONObject jSONObject) {
        this.f24473c = jSONObject;
    }

    @Override // com.cmic.gen.sdk.d.b, com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObjectB = super.b();
        try {
            jSONObjectB.put(NotificationCompat.CATEGORY_EVENT, this.f24473c);
            jSONObjectB.put("exceptionStackTrace", this.f24474d);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObjectB;
    }

    @Override // com.cmic.gen.sdk.d.b
    public void a(JSONArray jSONArray) {
        this.f24474d = jSONArray;
    }
}
