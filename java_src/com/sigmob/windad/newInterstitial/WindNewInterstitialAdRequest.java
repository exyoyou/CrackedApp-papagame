package com.sigmob.windad.newInterstitial;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindNewInterstitialAdRequest extends WindAdRequest {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f82203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f82204c;

    public WindNewInterstitialAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options, 6);
    }

    public boolean isEnableKeepOn() {
        return this.f82204c;
    }

    public boolean isEnableScreenLockDisPlayAd() {
        return this.f82203b;
    }

    public void setEnableKeepOn(boolean enableKeepOn) {
        this.f82204c = enableKeepOn;
    }

    public void setEnableScreenLockDisPlayAd(boolean enableScreenLockDisPlayAd) {
        this.f82203b = enableScreenLockDisPlayAd;
    }
}
