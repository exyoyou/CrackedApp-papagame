package com.kwad.sdk.core.b.a;

import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class fp implements com.kwad.sdk.core.d<com.kwad.sdk.m.b.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.b.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.b.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.b.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.key = jSONObject.optString("key");
        if (JSONObject.NULL.toString().equals(bVar.key)) {
            bVar.key = "";
        }
        bVar.value = jSONObject.optInt(HmInputMappingContent.FIELD_VALUE);
    }

    private static JSONObject b(com.kwad.sdk.m.b.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.key;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "key", bVar.key);
        }
        int i10 = bVar.value;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, HmInputMappingContent.FIELD_VALUE, i10);
        }
        return jSONObject;
    }
}
