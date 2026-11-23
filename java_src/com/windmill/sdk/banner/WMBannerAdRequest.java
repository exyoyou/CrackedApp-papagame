package com.windmill.sdk.banner;

import com.windmill.sdk.WindMillAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMBannerAdRequest extends WindMillAdRequest {
    public WMBannerAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options);
        this.adType = 7;
    }
}
