package com.sigmob.windad.rewardVideo;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindRewardAdRequest extends WindAdRequest {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f82205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f82206c;

    public WindRewardAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options, 1);
    }

    public static WindRewardAdRequest getWindVideoAdRequest(WindAdRequest adRequest) {
        if (adRequest == null) {
            return null;
        }
        return new WindRewardAdRequest(adRequest.getPlacementId(), adRequest.getUserId(), adRequest.getOptions());
    }

    public boolean isEnableKeepOn() {
        return this.f82206c;
    }

    public boolean isEnableScreenLockDisPlayAd() {
        return this.f82205b;
    }

    public void setEnableKeepOn(boolean enableKeepOn) {
        this.f82206c = enableKeepOn;
    }

    public void setEnableScreenLockDisPlayAd(boolean enableScreenLockDisPlayAd) {
        this.f82205b = enableScreenLockDisPlayAd;
    }
}
