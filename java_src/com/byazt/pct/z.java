package com.byazt.pct;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 133})
public final class z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, Object> f18673c = new ConcurrentHashMap();

    private z() {
    }

    public static z c() {
        return new z();
    }

    public String tt() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.f18673c.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public z c(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.f18673c.put(str, obj);
        }
        return this;
    }
}
