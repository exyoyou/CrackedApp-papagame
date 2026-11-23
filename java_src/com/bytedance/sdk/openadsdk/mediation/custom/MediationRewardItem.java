package com.bytedance.sdk.openadsdk.mediation.custom;

import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface MediationRewardItem {
    float getAmount();

    Map<String, Object> getCustomData();

    String getRewardName();

    boolean rewardVerify();
}
