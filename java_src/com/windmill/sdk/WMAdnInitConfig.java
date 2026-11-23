package com.windmill.sdk;

/* JADX INFO: loaded from: classes8.dex */
public class WMAdnInitConfig implements WMNetworkConfig.WMAdnInit {
    public int adnId;
    public String appId;
    public String appKey;

    public WMAdnInitConfig(int adnId) {
        this.adnId = adnId;
    }

    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
    public int getAdnId() {
        return this.adnId;
    }

    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
    public String getAppId() {
        return this.appId;
    }

    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
    public String getAppKey() {
        return this.appKey;
    }

    public WMAdnInitConfig(int adnId, String appId) {
        this.adnId = adnId;
        this.appId = appId;
        this.appKey = appId;
    }

    public WMAdnInitConfig(int adnId, String appId, String appKey) {
        this.adnId = adnId;
        this.appId = appId;
        this.appKey = appKey;
    }
}
