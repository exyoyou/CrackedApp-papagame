package com.bytedance.sdk.openadsdk.mediation.ad;

import androidx.annotation.Nullable;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 686, 687})
public abstract class MediationSplashRequestInfo implements IMediationSplashRequestInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23526c;
    private String tt;
    private String uj;
    private String ve;

    public MediationSplashRequestInfo(String str, String str2, String str3, String str4) {
        this.f23526c = str;
        this.tt = str2;
        this.ve = str3;
        this.uj = str4;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAdnName() {
        return this.f23526c;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAdnSlotId() {
        return this.tt;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAppId() {
        return this.ve;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAppkey() {
        return this.uj;
    }
}
