package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.model.SDKInitMsg;
import com.windmill.sdk.WMConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lj implements com.kwad.sdk.core.d<SDKInitMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((SDKInitMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((SDKInitMsg) bVar, jSONObject);
    }

    private static void a(SDKInitMsg sDKInitMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        sDKInitMsg.launchIntervalTime = jSONObject.optLong("init_launch_interval_time");
        sDKInitMsg.totalDurationTime = jSONObject.optLong("init_total_duration_time");
        sDKInitMsg.initStatus = jSONObject.optInt(WMConstants.INIT_STATUS, new Integer("0").intValue());
        sDKInitMsg.errorReason = jSONObject.optString("error_reason");
        if (JSONObject.NULL.toString().equals(sDKInitMsg.errorReason)) {
            sDKInitMsg.errorReason = "";
        }
        sDKInitMsg.initCount = jSONObject.optInt("init_count");
        sDKInitMsg.initProcess = jSONObject.optInt("init_process");
        sDKInitMsg.initThread = jSONObject.optInt("init_thread");
        sDKInitMsg.intDynamicSDK = jSONObject.optInt("init_dynamic_sdk");
        sDKInitMsg.intBuildNumber = jSONObject.optInt("init_build_number");
    }

    private static JSONObject b(SDKInitMsg sDKInitMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = sDKInitMsg.launchIntervalTime;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_launch_interval_time", j10);
        }
        long j11 = sDKInitMsg.totalDurationTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_total_duration_time", j11);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, WMConstants.INIT_STATUS, sDKInitMsg.initStatus);
        String str = sDKInitMsg.errorReason;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "error_reason", sDKInitMsg.errorReason);
        }
        int i10 = sDKInitMsg.initCount;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_count", i10);
        }
        int i11 = sDKInitMsg.initProcess;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_process", i11);
        }
        int i12 = sDKInitMsg.initThread;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_thread", i12);
        }
        int i13 = sDKInitMsg.intDynamicSDK;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_dynamic_sdk", i13);
        }
        int i14 = sDKInitMsg.intBuildNumber;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "init_build_number", i14);
        }
        return jSONObject;
    }
}
