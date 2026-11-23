package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gn implements com.kwad.sdk.core.d<AdMatrixInfo.InnerEcAuthInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.InnerEcAuthInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.InnerEcAuthInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.InnerEcAuthInfo innerEcAuthInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        innerEcAuthInfo.cancelClosureAuthTime = jSONObject.optInt("cancelClosureAuthTime");
    }

    private static JSONObject b(AdMatrixInfo.InnerEcAuthInfo innerEcAuthInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = innerEcAuthInfo.cancelClosureAuthTime;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cancelClosureAuthTime", i10);
        }
        return jSONObject;
    }
}
