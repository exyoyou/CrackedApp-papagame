package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ec implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.a.m.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.a.m.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.a.m.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.a.m.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.f75272x = jSONObject.optDouble("x");
        aVar.f75273y = jSONObject.optDouble("y");
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.a.m.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = aVar.f75272x;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "x", d10);
        }
        double d11 = aVar.f75273y;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "y", d11);
        }
        return jSONObject;
    }
}
