package com.kwad.sdk.core.b.a;

import com.kwad.components.ad.reward.model.RewardFraudVerifyRespInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class fm implements com.kwad.sdk.core.d<RewardFraudVerifyRespInfo.FraudDataInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((RewardFraudVerifyRespInfo.FraudDataInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((RewardFraudVerifyRespInfo.FraudDataInfo) bVar, jSONObject);
    }

    private static void a(RewardFraudVerifyRespInfo.FraudDataInfo fraudDataInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        fraudDataInfo.fraud = jSONObject.optBoolean("fraud");
        fraudDataInfo.code = jSONObject.optInt("code");
    }

    private static JSONObject b(RewardFraudVerifyRespInfo.FraudDataInfo fraudDataInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = fraudDataInfo.fraud;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fraud", z10);
        }
        int i10 = fraudDataInfo.code;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "code", i10);
        }
        return jSONObject;
    }
}
