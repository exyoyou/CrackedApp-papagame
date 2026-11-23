package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class al implements com.kwad.sdk.core.d<AdInfo.AdMaterialInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdInfo.AdMaterialInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdInfo.AdMaterialInfo) bVar, jSONObject);
    }

    private static void a(AdInfo.AdMaterialInfo adMaterialInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adMaterialInfo.materialType = jSONObject.optInt("materialType", new Integer("2").intValue());
        adMaterialInfo.videoVoice = jSONObject.optBoolean("videoVoice", new Boolean("false").booleanValue());
        adMaterialInfo.materialFeatureList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("materialFeature");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                AdInfo.AdMaterialInfo.MaterialFeature materialFeature = new AdInfo.AdMaterialInfo.MaterialFeature();
                materialFeature.parseJson(jSONArrayOptJSONArray.optJSONObject(i10));
                adMaterialInfo.materialFeatureList.add(materialFeature);
            }
        }
        adMaterialInfo.derivativeMaterialType = jSONObject.optInt("derivativeMaterialType");
    }

    private static JSONObject b(AdInfo.AdMaterialInfo adMaterialInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "materialType", adMaterialInfo.materialType);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "videoVoice", adMaterialInfo.videoVoice);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "materialFeature", adMaterialInfo.materialFeatureList);
        int i10 = adMaterialInfo.derivativeMaterialType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "derivativeMaterialType", i10);
        }
        return jSONObject;
    }
}
