package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class by implements com.kwad.sdk.core.d<com.kwad.components.ad.c.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.c.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.c.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.c.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.cO = jSONObject.optInt("call_back_type");
        aVar.renderType = jSONObject.optInt("render_type");
        aVar.cP = jSONObject.optInt("expect_render_type");
    }

    private static JSONObject b(com.kwad.components.ad.c.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.cO;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "call_back_type", i10);
        }
        int i11 = aVar.renderType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i11);
        }
        int i12 = aVar.cP;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expect_render_type", i12);
        }
        return jSONObject;
    }
}
