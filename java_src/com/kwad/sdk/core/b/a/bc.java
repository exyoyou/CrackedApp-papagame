package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdStyleInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bc implements com.kwad.sdk.core.d<AdStyleInfo.PlayEndInfo.AdWebCardInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdStyleInfo.PlayEndInfo.AdWebCardInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdStyleInfo.PlayEndInfo.AdWebCardInfo) bVar, jSONObject);
    }

    private static void a(AdStyleInfo.PlayEndInfo.AdWebCardInfo adWebCardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adWebCardInfo.typeLandscape = jSONObject.optLong("typeLandscape");
        adWebCardInfo.typePortrait = jSONObject.optLong("typePortrait");
        adWebCardInfo.cardUrl = jSONObject.optString("cardUrl");
        if (JSONObject.NULL.toString().equals(adWebCardInfo.cardUrl)) {
            adWebCardInfo.cardUrl = "";
        }
        adWebCardInfo.cardData = jSONObject.optString("cardData");
        if (JSONObject.NULL.toString().equals(adWebCardInfo.cardData)) {
            adWebCardInfo.cardData = "";
        }
        adWebCardInfo.cardShowPlayCount = jSONObject.optInt("cardShowPlayCount");
        adWebCardInfo.cardShowTime = jSONObject.optLong("cardShowTime");
        adWebCardInfo.cardDelayTime = jSONObject.optLong("cardDelayTime");
    }

    private static JSONObject b(AdStyleInfo.PlayEndInfo.AdWebCardInfo adWebCardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = adWebCardInfo.typeLandscape;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "typeLandscape", j10);
        }
        long j11 = adWebCardInfo.typePortrait;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "typePortrait", j11);
        }
        String str = adWebCardInfo.cardUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardUrl", adWebCardInfo.cardUrl);
        }
        String str2 = adWebCardInfo.cardData;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardData", adWebCardInfo.cardData);
        }
        int i10 = adWebCardInfo.cardShowPlayCount;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardShowPlayCount", i10);
        }
        long j12 = adWebCardInfo.cardShowTime;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardShowTime", j12);
        }
        long j13 = adWebCardInfo.cardDelayTime;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardDelayTime", j13);
        }
        return jSONObject;
    }
}
