package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ji implements com.kwad.sdk.core.d<AdGlobalConfigInfo.NeoScanAggregationSceneInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdGlobalConfigInfo.NeoScanAggregationSceneInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdGlobalConfigInfo.NeoScanAggregationSceneInfo) bVar, jSONObject);
    }

    private static void a(AdGlobalConfigInfo.NeoScanAggregationSceneInfo neoScanAggregationSceneInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        neoScanAggregationSceneInfo.neoCountDownNeedSwipeTrigger = jSONObject.optBoolean("neoCountDownNeedSwipeTrigger");
        neoScanAggregationSceneInfo.neoCountDownTime = jSONObject.optInt("neoCountDownTime");
        neoScanAggregationSceneInfo.noActionStopCountDown = jSONObject.optBoolean("noActionStopCountDown");
        neoScanAggregationSceneInfo.noActionTime = jSONObject.optInt("noActionTime");
        neoScanAggregationSceneInfo.guidSwipezShowMore = jSONObject.optBoolean("guidSwipezShowMore");
        neoScanAggregationSceneInfo.mute = jSONObject.optBoolean(com.sigmob.sdk.base.common.a.f78892z);
    }

    private static JSONObject b(AdGlobalConfigInfo.NeoScanAggregationSceneInfo neoScanAggregationSceneInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = neoScanAggregationSceneInfo.neoCountDownNeedSwipeTrigger;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neoCountDownNeedSwipeTrigger", z10);
        }
        int i10 = neoScanAggregationSceneInfo.neoCountDownTime;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "neoCountDownTime", i10);
        }
        boolean z11 = neoScanAggregationSceneInfo.noActionStopCountDown;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "noActionStopCountDown", z11);
        }
        int i11 = neoScanAggregationSceneInfo.noActionTime;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "noActionTime", i11);
        }
        boolean z12 = neoScanAggregationSceneInfo.guidSwipezShowMore;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "guidSwipezShowMore", z12);
        }
        boolean z13 = neoScanAggregationSceneInfo.mute;
        if (z13) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.sigmob.sdk.base.common.a.f78892z, z13);
        }
        return jSONObject;
    }
}
