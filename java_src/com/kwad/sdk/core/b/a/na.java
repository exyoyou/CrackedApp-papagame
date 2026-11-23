package com.kwad.sdk.core.b.a;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class na implements com.kwad.sdk.core.d<com.kwad.sdk.core.h.a.C0936a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.h.a.C0936a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.h.a.C0936a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.h.a.C0936a c0936a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0936a.aYX = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sdk_version");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                c0936a.aYX.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        c0936a.aYY = jSONObject.optInt(com.umeng.analytics.pro.bm.f84422y);
        c0936a.aYZ = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("abi");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                c0936a.aYZ.add((String) jSONArrayOptJSONArray2.opt(i11));
            }
        }
        c0936a.aZa = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(com.baidu.mobads.sdk.internal.bn.f7598j);
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                c0936a.aZa.add((String) jSONArrayOptJSONArray3.opt(i12));
            }
        }
    }

    private static JSONObject b(com.kwad.sdk.core.h.a.C0936a c0936a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdk_version", c0936a.aYX);
        int i10 = c0936a.aYY;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bm.f84422y, i10);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "abi", c0936a.aYZ);
        com.kwad.sdk.utils.ac.putValue(jSONObject, com.baidu.mobads.sdk.internal.bn.f7598j, c0936a.aZa);
        return jSONObject;
    }
}
