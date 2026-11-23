package com.windmill.sdk.natives;

import com.windmill.sdk.WindMillAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMNativeAdRequest extends WindMillAdRequest {
    public WMNativeAdRequest(String placementId, String userId, int adCount, Map<String, Object> options) {
        super(placementId, userId, adCount, options);
        this.adType = 5;
    }
}
