package com.windmill.sdk.natives;

/* JADX INFO: loaded from: classes8.dex */
public class WMNativePrivacyInfo implements WMNativeAdData.AppInfo {
    private String appName;
    private String appPackageName;
    private long appPackageSize;
    private String appVersion;
    private String developerName;
    private String functionDescUrl;
    private String permissionInfo;
    private String permissionInfoUrl;
    private String privacyUrl;

    public WMNativePrivacyInfo(String appName, String appVersion, long appPackageSize, String appPackageName, String developerName, String privacyUrl, String permissionInfo, String permissionInfoUrl, String functionDescUrl) {
        this.appName = appName;
        this.appVersion = appVersion;
        this.appPackageSize = appPackageSize;
        this.appPackageName = appPackageName;
        this.developerName = developerName;
        this.privacyUrl = privacyUrl;
        this.permissionInfo = permissionInfo;
        this.permissionInfoUrl = permissionInfoUrl;
        this.functionDescUrl = functionDescUrl;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getAppName() {
        return this.appName;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getAppPackageName() {
        return this.appPackageName;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public long getAppPackageSize() {
        return this.appPackageSize;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getAppVersion() {
        return this.appVersion;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getDeveloperName() {
        return this.developerName;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getFunctionDescUrl() {
        return this.functionDescUrl;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getPermissionInfo() {
        return this.permissionInfo;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getPermissionInfoUrl() {
        return this.permissionInfoUrl;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdData.AppInfo
    public String getPrivacyUrl() {
        return this.privacyUrl;
    }
}
