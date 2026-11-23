package com.windmill.sdk.interstitial;

import com.windmill.sdk.WindMillAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMInterstitialAdRequest extends WindMillAdRequest {
    public WMInterstitialAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options);
        this.adType = 4;
    }
}
