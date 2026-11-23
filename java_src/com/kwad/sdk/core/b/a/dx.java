package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdStyleInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class dx implements com.kwad.sdk.core.d<AdStyleInfo.PlayDetailInfo.DetailWebCardInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdStyleInfo.PlayDetailInfo.DetailWebCardInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdStyleInfo.PlayDetailInfo.DetailWebCardInfo) bVar, jSONObject);
    }

    private static void a(AdStyleInfo.PlayDetailInfo.DetailWebCardInfo detailWebCardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        detailWebCardInfo.style = jSONObject.optInt("style");
        detailWebCardInfo.maxTimeOut = jSONObject.optLong("maxTimeOut");
        detailWebCardInfo.typeLandscape = jSONObject.optLong("typeLandscape");
        detailWebCardInfo.typePortrait = jSONObject.optLong("typePortrait");
        detailWebCardInfo.cardUrl = jSONObject.optString("cardUrl");
        if (JSONObject.NULL.toString().equals(detailWebCardInfo.cardUrl)) {
            detailWebCardInfo.cardUrl = "";
        }
        detailWebCardInfo.cardData = jSONObject.optString("cardData");
        if (JSONObject.NULL.toString().equals(detailWebCardInfo.cardData)) {
            detailWebCardInfo.cardData = "";
        }
        detailWebCardInfo.cardShowTime = jSONObject.optLong("cardShowTime");
        detailWebCardInfo.cardType = jSONObject.optInt("cardType");
    }

    private static JSONObject b(AdStyleInfo.PlayDetailInfo.DetailWebCardInfo detailWebCardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = detailWebCardInfo.style;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "style", i10);
        }
        long j10 = detailWebCardInfo.maxTimeOut;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "maxTimeOut", j10);
        }
        long j11 = detailWebCardInfo.typeLandscape;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "typeLandscape", j11);
        }
        long j12 = detailWebCardInfo.typePortrait;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "typePortrait", j12);
        }
        String str = detailWebCardInfo.cardUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardUrl", detailWebCardInfo.cardUrl);
        }
        String str2 = detailWebCardInfo.cardData;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardData", detailWebCardInfo.cardData);
        }
        long j13 = detailWebCardInfo.cardShowTime;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardShowTime", j13);
        }
        int i11 = detailWebCardInfo.cardType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardType", i11);
        }
        return jSONObject;
    }
}
