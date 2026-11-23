package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nb implements com.kwad.sdk.core.d<com.kwad.sdk.m.a.b.C0953b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.a.b.C0953b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.a.b.C0953b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.a.b.C0953b c0953b, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0953b.name = jSONObject.optString("name");
        if (JSONObject.NULL.toString().equals(c0953b.name)) {
            c0953b.name = "";
        }
        c0953b.bns = jSONObject.optBoolean("isStatic");
        c0953b.bnt = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("paramList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                com.kwad.sdk.m.a.b.a aVar = new com.kwad.sdk.m.a.b.a();
                aVar.parseJson(jSONArrayOptJSONArray.optJSONObject(i10));
                c0953b.bnt.add(aVar);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.a.b.C0953b c0953b, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0953b.name;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "name", c0953b.name);
        }
        boolean z10 = c0953b.bns;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isStatic", z10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "paramList", c0953b.bnt);
        return jSONObject;
    }
}
