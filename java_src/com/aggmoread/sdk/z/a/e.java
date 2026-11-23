package com.aggmoread.sdk.z.a;

import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class e extends b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final JSONObject f3307a = new JSONObject();

    public e() {
        new HashMap();
    }

    public c a(c cVar) {
        return a(cVar.a());
    }

    public c a(JSONObject jSONObject) {
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    this.f3307a.put(next, jSONObject.getString(next));
                } catch (JSONException e10) {
                    d.a("PATAG", "ERR %s", e10);
                }
            }
        }
        return this;
    }

    @Override // com.aggmoread.sdk.z.a.c
    public JSONObject a() {
        return this.f3307a;
    }
}
