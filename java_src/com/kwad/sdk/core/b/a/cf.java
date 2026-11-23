package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cf implements com.kwad.sdk.core.d<com.kwad.sdk.crash.online.monitor.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.crash.online.monitor.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.crash.online.monitor.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.crash.online.monitor.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bfn = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("systemFilterList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                aVar.bfn.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        aVar.bfo = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sdkFilterList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                aVar.bfo.add((String) jSONArrayOptJSONArray2.opt(i11));
            }
        }
        aVar.bfp = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("matrixPrinterNameList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                aVar.bfp.add((String) jSONArrayOptJSONArray3.opt(i12));
            }
        }
        aVar.bfq = new ArrayList();
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("commonPrinterNameList");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                aVar.bfq.add((String) jSONArrayOptJSONArray4.opt(i13));
            }
        }
        aVar.bfr = new ArrayList();
        JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("featureConfigList");
        if (jSONArrayOptJSONArray5 != null) {
            for (int i14 = 0; i14 < jSONArrayOptJSONArray5.length(); i14++) {
                com.kwad.sdk.crash.online.monitor.a.b bVar = new com.kwad.sdk.crash.online.monitor.a.b();
                bVar.parseJson(jSONArrayOptJSONArray5.optJSONObject(i14));
                aVar.bfr.add(bVar);
            }
        }
        aVar.bft = jSONObject.optInt("afterFilterSystemCheckNum", new Integer("5").intValue());
        aVar.bfu = jSONObject.optInt("batchNum", new Integer("10").intValue());
        aVar.aJV = jSONObject.optDouble("ratio", new Double("0.01").doubleValue());
        aVar.bfv = jSONObject.optInt("monitorSwitch");
    }

    private static JSONObject b(com.kwad.sdk.crash.online.monitor.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "systemFilterList", aVar.bfn);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkFilterList", aVar.bfo);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "matrixPrinterNameList", aVar.bfp);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "commonPrinterNameList", aVar.bfq);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "featureConfigList", aVar.bfr);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "afterFilterSystemCheckNum", aVar.bft);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "batchNum", aVar.bfu);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "ratio", aVar.aJV);
        int i10 = aVar.bfv;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "monitorSwitch", i10);
        }
        return jSONObject;
    }
}
