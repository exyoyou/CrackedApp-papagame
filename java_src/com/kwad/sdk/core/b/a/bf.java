package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bf implements com.kwad.sdk.core.d<com.kwad.sdk.m.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bmZ = jSONObject.optInt("aggregationType");
        aVar.bna = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sdkCheckList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                aVar.bna.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        com.kwad.sdk.m.a.b bVar = new com.kwad.sdk.m.a.b();
        aVar.bnb = bVar;
        bVar.parseJson(jSONObject.optJSONObject("anchorNode"));
        aVar.bnc = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("stackCheckList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                aVar.bnc.add((String) jSONArrayOptJSONArray2.opt(i11));
            }
        }
        aVar.bnd = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("callStackList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                aVar.bnd.add((String) jSONArrayOptJSONArray3.opt(i12));
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.bmZ;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregationType", i10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkCheckList", aVar.bna);
        com.kwad.sdk.utils.ac.a(jSONObject, "anchorNode", aVar.bnb);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "stackCheckList", aVar.bnc);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "callStackList", aVar.bnd);
        return jSONObject;
    }
}
