package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.reward.check.RewardCheckMonitorInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class kt implements com.kwad.sdk.core.d<RewardCheckMonitorInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((RewardCheckMonitorInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((RewardCheckMonitorInfo) bVar, jSONObject);
    }

    private static void a(RewardCheckMonitorInfo rewardCheckMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rewardCheckMonitorInfo.checkType = jSONObject.optInt("check_type");
        rewardCheckMonitorInfo.requestStatus = jSONObject.optInt("request_state");
        rewardCheckMonitorInfo.code = jSONObject.optInt("code");
        rewardCheckMonitorInfo.creativeId = jSONObject.optLong("creative_id");
        rewardCheckMonitorInfo.dataLoadInterval = jSONObject.optLong("data_load_interval_duration_ms");
        rewardCheckMonitorInfo.posId = jSONObject.optLong("pos_Id");
        rewardCheckMonitorInfo.enviType = jSONObject.optInt("enviType");
    }

    private static JSONObject b(RewardCheckMonitorInfo rewardCheckMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = rewardCheckMonitorInfo.checkType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "check_type", i10);
        }
        int i11 = rewardCheckMonitorInfo.requestStatus;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_state", i11);
        }
        int i12 = rewardCheckMonitorInfo.code;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "code", i12);
        }
        long j10 = rewardCheckMonitorInfo.creativeId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j10);
        }
        long j11 = rewardCheckMonitorInfo.dataLoadInterval;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "data_load_interval_duration_ms", j11);
        }
        long j12 = rewardCheckMonitorInfo.posId;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pos_Id", j12);
        }
        int i13 = rewardCheckMonitorInfo.enviType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enviType", i13);
        }
        return jSONObject;
    }
}
