package com.kwad.sdk.core.b.a;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class le implements com.kwad.sdk.core.d<AdMatrixInfo.RotateDegreeInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.RotateDegreeInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.RotateDegreeInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rotateDegreeInfo.rotateDegree = jSONObject.optInt("rotateDegree");
        rotateDegreeInfo.direction = jSONObject.optInt(HmInputMappingContent.FIELD_DIRECTION);
    }

    private static JSONObject b(AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = rotateDegreeInfo.rotateDegree;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rotateDegree", i10);
        }
        int i11 = rotateDegreeInfo.direction;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, HmInputMappingContent.FIELD_DIRECTION, i11);
        }
        return jSONObject;
    }
}
