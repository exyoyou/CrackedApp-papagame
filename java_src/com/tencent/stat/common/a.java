package com.tencent.stat.common;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c f83873a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static StatLogger f83874d = k.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static JSONObject f83875e = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Integer f83876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f83877c;

    public a(Context context) {
        this.f83876b = null;
        this.f83877c = null;
        try {
            a(context);
            this.f83876b = k.q(context.getApplicationContext());
            this.f83877c = k.p(context);
        } catch (Throwable th) {
            f83874d.e(th);
        }
    }

    static synchronized c a(Context context) {
        if (f83873a == null) {
            f83873a = new c(context.getApplicationContext());
        }
        return f83873a;
    }

    public static void a(Context context, Map<String, String> map) throws JSONException {
        if (map == null) {
            return;
        }
        HashMap map2 = new HashMap(map);
        if (f83875e == null) {
            f83875e = new JSONObject();
        }
        for (Map.Entry entry : map2.entrySet()) {
            f83875e.put((String) entry.getKey(), entry.getValue());
        }
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            c cVar = f83873a;
            if (cVar != null) {
                cVar.a(jSONObject2);
            }
            k.a(jSONObject2, "cn", this.f83877c);
            Integer num = this.f83876b;
            if (num != null) {
                jSONObject2.put("tn", num);
            }
            jSONObject.put("ev", jSONObject2);
            JSONObject jSONObject3 = f83875e;
            if (jSONObject3 == null || jSONObject3.length() <= 0) {
                return;
            }
            jSONObject.put("eva", f83875e);
        } catch (Throwable th) {
            f83874d.e(th);
        }
    }
}
