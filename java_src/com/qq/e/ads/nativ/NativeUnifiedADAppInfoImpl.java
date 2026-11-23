package com.qq.e.ads.nativ;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeUnifiedADAppInfoImpl implements NativeUnifiedADAppMiitInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f78227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f78228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f78229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f78230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f78231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f78232f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f78233g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f78234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f78235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f78236j;

    private interface Keys {
        public static final String APP_NAME = "app_name";
        public static final String AUTHOR_NAME = "author_name";
        public static final String DESCRIPTION_URL = "description_url";
        public static final String ICP_INFO_URL = "icp_info_url";
        public static final String ICP_NUMBER = "icp_number";
        public static final String PACKAGE_SIZE = "package_size";
        public static final String PERMISSION_URL = "permission_url";
        public static final String PRIVACY_AGREEMENT = "privacy_agreement";
        public static final String SUITABLE_AGE = "suitable_age";
        public static final String VERSION_NAME = "version_name";
    }

    public NativeUnifiedADAppInfoImpl(JSONObject jSONObject) {
        this.f78227a = jSONObject.optString("app_name");
        this.f78228b = jSONObject.optString(Keys.AUTHOR_NAME);
        this.f78229c = jSONObject.optLong(Keys.PACKAGE_SIZE);
        this.f78230d = jSONObject.optString(Keys.PERMISSION_URL);
        this.f78231e = jSONObject.optString(Keys.PRIVACY_AGREEMENT);
        this.f78232f = jSONObject.optString(Keys.VERSION_NAME);
        this.f78233g = jSONObject.optString(Keys.DESCRIPTION_URL);
        this.f78234h = jSONObject.optString(Keys.ICP_NUMBER);
        this.f78235i = jSONObject.optString(Keys.SUITABLE_AGE);
        this.f78236j = jSONObject.optString(Keys.ICP_INFO_URL);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAppName() {
        return this.f78227a;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAuthorName() {
        return this.f78228b;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getDescriptionUrl() {
        return this.f78233g;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getIcpInfoUrl() {
        return this.f78236j;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getIcpNumber() {
        return this.f78234h;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public long getPackageSizeBytes() {
        return this.f78229c;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPermissionsUrl() {
        return this.f78230d;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPrivacyAgreement() {
        return this.f78231e;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getSuitableAge() {
        return this.f78235i;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getVersionName() {
        return this.f78232f;
    }
}
