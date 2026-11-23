package com.kwad.sdk.core.b.a;

import com.haima.hmcp.ConstantsInternal;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cc implements com.kwad.sdk.core.d<com.kwad.sdk.commercial.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.commercial.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.commercial.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.commercial.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.creativeId = jSONObject.optLong("creative_id");
        aVar.llsid = jSONObject.optLong("llsid");
        aVar.posId = jSONObject.optLong("pos_Id");
        aVar.templateId = jSONObject.optString("template_id");
        if (JSONObject.NULL.toString().equals(aVar.templateId)) {
            aVar.templateId = "";
        }
        aVar.templateVersion = jSONObject.optString("template_version");
        if (JSONObject.NULL.toString().equals(aVar.templateVersion)) {
            aVar.templateVersion = "";
        }
        aVar.tkPublishType = jSONObject.optInt("tk_publish_type");
        aVar.errorCode = jSONObject.optInt("error_code");
        aVar.errorMsg = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG);
        if (JSONObject.NULL.toString().equals(aVar.errorMsg)) {
            aVar.errorMsg = "";
        }
        aVar.campaignType = jSONObject.optInt("campaign_type");
        aVar.ocpcActionType = jSONObject.optInt("ocpc_action_type");
        aVar.industryFirstLevelId = jSONObject.optInt("industry_first_level_id");
        aVar.adOperationType = jSONObject.optInt("ad_operation_type");
        aVar.webUriSourceType = jSONObject.optInt("web_uri_source_type");
    }

    private static JSONObject b(com.kwad.sdk.commercial.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = aVar.creativeId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j10);
        }
        long j11 = aVar.llsid;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j11);
        }
        long j12 = aVar.posId;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pos_Id", j12);
        }
        String str = aVar.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", aVar.templateId);
        }
        String str2 = aVar.templateVersion;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_version", aVar.templateVersion);
        }
        int i10 = aVar.tkPublishType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_publish_type", i10);
        }
        int i11 = aVar.errorCode;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_code", i11);
        }
        String str3 = aVar.errorMsg;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, ConstantsInternal.KEY_ERROR_MSG, aVar.errorMsg);
        }
        int i12 = aVar.campaignType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "campaign_type", i12);
        }
        int i13 = aVar.ocpcActionType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ocpc_action_type", i13);
        }
        int i14 = aVar.industryFirstLevelId;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "industry_first_level_id", i14);
        }
        int i15 = aVar.adOperationType;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_operation_type", i15);
        }
        int i16 = aVar.webUriSourceType;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "web_uri_source_type", i16);
        }
        return jSONObject;
    }
}
