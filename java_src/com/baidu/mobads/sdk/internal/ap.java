package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.IPromoteInstallAdInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class ap implements IPromoteInstallAdInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aq f7446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f7447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f7453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f7454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f7457l;

    public ap(JSONObject jSONObject, Context context, aq aqVar) {
        this.f7446a = aqVar;
        this.f7447b = context;
        try {
            this.f7448c = jSONObject.optString(com.umeng.analytics.pro.f.S);
            this.f7449d = jSONObject.optString("icon");
            this.f7450e = jSONObject.optString("appname");
            this.f7451f = jSONObject.optString("bidlayer");
            this.f7452g = jSONObject.optString("enc_bid_price");
            this.f7453h = jSONObject.optString("publisher");
            this.f7454i = jSONObject.optString("app_version");
            this.f7455j = jSONObject.optString("privacy_link");
            this.f7456k = jSONObject.optString("permission_link");
            this.f7457l = jSONObject.optString("function_link");
        } catch (Throwable unused) {
        }
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getAppPublisher() {
        return this.f7453h;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getAppVersion() {
        return this.f7454i;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getBrandName() {
        return this.f7450e;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getECPMLevel() {
        return this.f7451f;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getFunctionUrl() {
        return this.f7457l;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getIconUrl() {
        return this.f7449d;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPECPM() {
        return this.f7452g;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPermissionUrl() {
        return this.f7456k;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getPrivacyUrl() {
        return this.f7455j;
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public String getUnionLogoUrl() {
        return "https://union.baidu.com";
    }

    @Override // com.baidu.mobads.sdk.api.IPromoteInstallAdInfo
    public void handleAdInstall() {
        aq aqVar = this.f7446a;
        if (aqVar != null) {
            aqVar.a(this.f7447b, this.f7448c);
        }
    }
}
