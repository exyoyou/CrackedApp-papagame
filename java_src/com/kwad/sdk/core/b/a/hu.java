package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class hu implements com.kwad.sdk.core.d<com.kwad.components.core.page.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.page.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.page.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.page.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.adStyle = jSONObject.optInt("ad_style");
        aVar.adJ = jSONObject.optInt("neo_tk_render_type");
    }

    private static JSONObject b(com.kwad.components.core.page.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.adStyle;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i10);
        }
        int i11 = aVar.adJ;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neo_tk_render_type", i11);
        }
        return jSONObject;
    }
}
