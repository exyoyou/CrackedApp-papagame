package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cw implements com.kwad.sdk.core.d<AdMatrixInfo.ComponentParam> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.ComponentParam) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.ComponentParam) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.ComponentParam componentParam, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        componentParam.pageId = jSONObject.optLong("page_id");
        componentParam.endPageId = jSONObject.optLong("endcard_page_id");
    }

    private static JSONObject b(AdMatrixInfo.ComponentParam componentParam, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = componentParam.pageId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "page_id", j10);
        }
        long j11 = componentParam.endPageId;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "endcard_page_id", j11);
        }
        return jSONObject;
    }
}
