package com.windmill.sdk.reward;

import com.windmill.sdk.WindMillAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMRewardAdRequest extends WindMillAdRequest {
    public WMRewardAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options);
        this.adType = 1;
    }
}
