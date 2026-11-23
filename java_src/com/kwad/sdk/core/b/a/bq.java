package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bq implements com.kwad.sdk.core.d<com.kwad.components.core.request.model.b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.request.model.b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.request.model.b.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.request.model.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.streamType = jSONObject.optInt("streamType");
        aVar.ako = jSONObject.optInt("maxVolume");
        aVar.akp = jSONObject.optInt("minVolume");
        aVar.akq = jSONObject.optInt("currentVolume");
    }

    private static JSONObject b(com.kwad.components.core.request.model.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.streamType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "streamType", i10);
        }
        int i11 = aVar.ako;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "maxVolume", i11);
        }
        int i12 = aVar.akp;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "minVolume", i12);
        }
        int i13 = aVar.akq;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentVolume", i13);
        }
        return jSONObject;
    }
}
