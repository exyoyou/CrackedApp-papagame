package com.kwad.sdk.core.b.a;

import com.czhj.sdk.common.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.kwad.sdk.mobileid.UaidInfo;
import com.sigmob.sdk.base.mta.PointParamKey;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nn implements com.kwad.sdk.core.d<UaidInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((UaidInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((UaidInfo) bVar, jSONObject);
    }

    private static void a(UaidInfo uaidInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        uaidInfo.status = jSONObject.optInt("status");
        uaidInfo.canRequest = jSONObject.optString("can_request");
        if (JSONObject.NULL.toString().equals(uaidInfo.canRequest)) {
            uaidInfo.canRequest = "";
        }
        uaidInfo.traceId = jSONObject.optString(PointParamKey.TRACE_ID);
        if (JSONObject.NULL.toString().equals(uaidInfo.traceId)) {
            uaidInfo.traceId = "";
        }
        uaidInfo.operatorType = jSONObject.optInt("operator_type");
        uaidInfo.networkType = jSONObject.optInt(com.umeng.analytics.pro.bm.T);
        uaidInfo.dcontrollerEnableNetwork = jSONObject.optBoolean("dcontroller_enable_network");
        uaidInfo.dcontrollerEnablePhoneState = jSONObject.optBoolean("dcontroller_enable_phone_state");
        uaidInfo.imsiNotEmpty = jSONObject.optBoolean("imsi_not_empty");
        uaidInfo.uaid = jSONObject.optString("uaid");
        if (JSONObject.NULL.toString().equals(uaidInfo.uaid)) {
            uaidInfo.uaid = "";
        }
        uaidInfo.result = jSONObject.optInt("result");
        uaidInfo.token = jSONObject.optString(Constants.TOKEN);
        if (JSONObject.NULL.toString().equals(uaidInfo.token)) {
            uaidInfo.token = "";
        }
        uaidInfo.errorCode = jSONObject.optString("error_code");
        if (JSONObject.NULL.toString().equals(uaidInfo.errorCode)) {
            uaidInfo.errorCode = "";
        }
        uaidInfo.errorMsg = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG);
        if (JSONObject.NULL.toString().equals(uaidInfo.errorMsg)) {
            uaidInfo.errorMsg = "";
        }
    }

    private static JSONObject b(UaidInfo uaidInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = uaidInfo.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        String str = uaidInfo.canRequest;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "can_request", uaidInfo.canRequest);
        }
        String str2 = uaidInfo.traceId;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, PointParamKey.TRACE_ID, uaidInfo.traceId);
        }
        int i11 = uaidInfo.operatorType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "operator_type", i11);
        }
        int i12 = uaidInfo.networkType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.umeng.analytics.pro.bm.T, i12);
        }
        boolean z10 = uaidInfo.dcontrollerEnableNetwork;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "dcontroller_enable_network", z10);
        }
        boolean z11 = uaidInfo.dcontrollerEnablePhoneState;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "dcontroller_enable_phone_state", z11);
        }
        boolean z12 = uaidInfo.imsiNotEmpty;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "imsi_not_empty", z12);
        }
        String str3 = uaidInfo.uaid;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "uaid", uaidInfo.uaid);
        }
        int i13 = uaidInfo.result;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "result", i13);
        }
        String str4 = uaidInfo.token;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, Constants.TOKEN, uaidInfo.token);
        }
        String str5 = uaidInfo.errorCode;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_code", uaidInfo.errorCode);
        }
        String str6 = uaidInfo.errorMsg;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, ConstantsInternal.KEY_ERROR_MSG, uaidInfo.errorMsg);
        }
        return jSONObject;
    }
}
