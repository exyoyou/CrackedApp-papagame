package com.kwad.sdk.core.b.a;

import com.haima.hmcp.ConstantsInternal;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ky implements com.kwad.sdk.core.d<com.kwad.components.ad.reward.retryReward.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.reward.retryReward.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.reward.retryReward.c) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.reward.retryReward.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.status = jSONObject.optInt("status");
        cVar.Bz = jSONObject.optString("convert_url");
        if (JSONObject.NULL.toString().equals(cVar.Bz)) {
            cVar.Bz = "";
        }
        cVar.convertType = jSONObject.optInt("convert_type");
        cVar.BA = jSONObject.optString("ad_desc");
        if (JSONObject.NULL.toString().equals(cVar.BA)) {
            cVar.BA = "";
        }
        cVar.productName = jSONObject.optString("product_name");
        if (JSONObject.NULL.toString().equals(cVar.productName)) {
            cVar.productName = "";
        }
        cVar.tT = jSONObject.optString("icon_url");
        if (JSONObject.NULL.toString().equals(cVar.tT)) {
            cVar.tT = "";
        }
        cVar.errorCode = jSONObject.optInt("error_code");
        cVar.errorMsg = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG);
        if (JSONObject.NULL.toString().equals(cVar.errorMsg)) {
            cVar.errorMsg = "";
        }
    }

    private static JSONObject b(com.kwad.components.ad.reward.retryReward.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = cVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        String str = cVar.Bz;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convert_url", cVar.Bz);
        }
        int i11 = cVar.convertType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "convert_type", i11);
        }
        String str2 = cVar.BA;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_desc", cVar.BA);
        }
        String str3 = cVar.productName;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "product_name", cVar.productName);
        }
        String str4 = cVar.tT;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "icon_url", cVar.tT);
        }
        int i12 = cVar.errorCode;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_code", i12);
        }
        String str5 = cVar.errorMsg;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, ConstantsInternal.KEY_ERROR_MSG, cVar.errorMsg);
        }
        return jSONObject;
    }
}
