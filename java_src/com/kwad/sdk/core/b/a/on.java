package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class on implements com.kwad.sdk.core.d<com.kwad.sdk.wrapper.l.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.wrapper.l.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.wrapper.l.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.wrapper.l.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bue = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("c_cns");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                aVar.bue.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        aVar.bug = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("s_cns");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                com.kwad.sdk.wrapper.l.a.C0963a c0963a = new com.kwad.sdk.wrapper.l.a.C0963a();
                c0963a.parseJson(jSONArrayOptJSONArray2.optJSONObject(i11));
                aVar.bug.add(c0963a);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.wrapper.l.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "c_cns", aVar.bue);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "s_cns", aVar.bug);
        return jSONObject;
    }
}
