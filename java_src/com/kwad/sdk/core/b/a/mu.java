package com.kwad.sdk.core.b.a;

import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class mu implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.u.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.u.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.u.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.u.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.key = jSONObject.optString("key");
        if (JSONObject.NULL.toString().equals(aVar.key)) {
            aVar.key = "";
        }
        aVar.value = jSONObject.optString(HmInputMappingContent.FIELD_VALUE);
        if (JSONObject.NULL.toString().equals(aVar.value)) {
            aVar.value = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.u.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.key;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "key", aVar.key);
        }
        String str2 = aVar.value;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, HmInputMappingContent.FIELD_VALUE, aVar.value);
        }
        return jSONObject;
    }
}
