package com.sigmob.windad.natives;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindNativeAdRequest extends WindAdRequest {
    @Deprecated
    public WindNativeAdRequest(String placementId, String userId, int adCount, Map<String, Object> options) {
        super(placementId, userId, options, 5);
        this.f82163a = adCount;
    }

    public static WindNativeAdRequest getWindVideoAdRequest(WindAdRequest adRequest) {
        if (adRequest == null) {
            return null;
        }
        return new WindNativeAdRequest(adRequest.getPlacementId(), adRequest.getUserId(), 1, adRequest.getOptions());
    }

    public WindNativeAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options, 5);
    }
}
