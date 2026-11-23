package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.core.response.model.LiveRewardInfo;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.kwad.sdk.core.b.a.if, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class Cif implements com.kwad.sdk.core.d<LiveRewardInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((LiveRewardInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((LiveRewardInfo) bVar, jSONObject);
    }

    private static void a(LiveRewardInfo liveRewardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        liveRewardInfo.rewardTimeSecond = jSONObject.optLong("rewardTimeSecond");
        liveRewardInfo.rewardAmount = jSONObject.optLong("rewardAmount");
        liveRewardInfo.rewardType = jSONObject.optInt(MediationConstant.KEY_REWARD_TYPE);
        liveRewardInfo.rewardVerified = jSONObject.optBoolean("rewardVerified");
    }

    private static JSONObject b(LiveRewardInfo liveRewardInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = liveRewardInfo.rewardTimeSecond;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardTimeSecond", j10);
        }
        long j11 = liveRewardInfo.rewardAmount;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardAmount", j11);
        }
        int i10 = liveRewardInfo.rewardType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_REWARD_TYPE, i10);
        }
        boolean z10 = liveRewardInfo.rewardVerified;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardVerified", z10);
        }
        return jSONObject;
    }
}
