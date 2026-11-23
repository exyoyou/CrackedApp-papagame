package com.windmill.sdk.splash;

import com.windmill.sdk.WindMillAdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMSplashAdRequest extends WindMillAdRequest {
    private String appDesc;
    private String appTitle;
    private boolean disableAutoHideAd;

    public WMSplashAdRequest(String placementId, String userId, Map<String, Object> options) {
        super(placementId, userId, options, 2);
        this.disableAutoHideAd = false;
    }

    public String getAppDesc() {
        return this.appDesc;
    }

    public String getAppTitle() {
        return this.appTitle;
    }

    public boolean isDisableAutoHideAd() {
        return this.disableAutoHideAd;
    }

    public void setAppDesc(String appDesc) {
        this.appDesc = appDesc;
    }

    public void setAppTitle(String appTitle) {
        this.appTitle = appTitle;
    }

    public void setDisableAutoHideAd(boolean disableAutoHideAd) {
        this.disableAutoHideAd = disableAutoHideAd;
    }

    public WMSplashAdRequest(String placementId, String userId, Map<String, Object> options, boolean disableAutoHideAd) {
        super(placementId, userId, options, 2);
        this.disableAutoHideAd = disableAutoHideAd;
    }

    public WMSplashAdRequest(String placementId, String userId, Map<String, Object> options, String appTitle, String appDesc, boolean disableAutoHideAd) {
        super(placementId, userId, options, 2);
        this.appTitle = appTitle;
        this.appDesc = appDesc;
        this.disableAutoHideAd = disableAutoHideAd;
    }
}
