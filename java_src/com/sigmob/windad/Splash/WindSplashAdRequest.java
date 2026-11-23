package com.sigmob.windad.Splash;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindSplashAdRequest extends WindAdRequest {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f82137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f82138c;

    public WindSplashAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options, 2);
        this.f82137b = 5;
        this.f82138c = false;
    }

    public int getFetchDelay() {
        return Math.max(this.f82137b, 3);
    }

    public boolean isDisableAutoHideAd() {
        return this.f82138c;
    }

    public void setDisableAutoHideAd(boolean disableAutoHideAd) {
        this.f82138c = disableAutoHideAd;
    }

    public void setFetchDelay(int fetchDelay) {
        this.f82137b = fetchDelay;
    }
}
