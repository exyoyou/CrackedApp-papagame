package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class km implements com.kwad.sdk.core.d<com.kwad.sdk.m.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.funcSwitch = jSONObject.optLong("funcSwitch");
        dVar.bmQ = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("urlList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                dVar.bmQ.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        dVar.bmR = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("actConfigList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                com.kwad.sdk.m.d.a aVar = new com.kwad.sdk.m.d.a();
                aVar.parseJson(jSONArrayOptJSONArray2.optJSONObject(i11));
                dVar.bmR.add(aVar);
            }
        }
        dVar.byteCount = jSONObject.optLong(com.facebook.imagepipeline.producers.m.f28480s);
        dVar.sampleRate = jSONObject.optDouble("sampleRate");
        dVar.bmS = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("anchorNodeList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                com.kwad.sdk.m.a.b bVar = new com.kwad.sdk.m.a.b();
                bVar.parseJson(jSONArrayOptJSONArray3.optJSONObject(i12));
                dVar.bmS.add(bVar);
            }
        }
        dVar.bmI = new ArrayList();
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("aggregationCheckConfigList");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                com.kwad.sdk.m.a.a aVar2 = new com.kwad.sdk.m.a.a();
                aVar2.parseJson(jSONArrayOptJSONArray4.optJSONObject(i13));
                dVar.bmI.add(aVar2);
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.m.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = dVar.funcSwitch;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "funcSwitch", j10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "urlList", dVar.bmQ);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "actConfigList", dVar.bmR);
        long j11 = dVar.byteCount;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.facebook.imagepipeline.producers.m.f28480s, j11);
        }
        double d10 = dVar.sampleRate;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sampleRate", d10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "anchorNodeList", dVar.bmS);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregationCheckConfigList", dVar.bmI);
        return jSONObject;
    }
}
