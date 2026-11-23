package com.bytedance.sdk.openadsdk.mediation.init;

import com.byazt.zqa.c;
import com.umeng.analytics.pro.k;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 84, 1837})
public class MediationConfig implements IMediationConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f23575a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23576c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private boolean f23577da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23578i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f23579n;
    private String sl;
    private boolean sp;
    private boolean tt;
    private Map<String, Object> uj;
    private MediationConfigUserInfoForSegment ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f23580x;

    @c(c = {0, 80, 81, 82, 83, 84, k.f84752b})
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONObject f23581a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f23582c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        private boolean f23583da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f23584i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f23585n;
        private String sl;
        private boolean sp;
        private boolean tt;
        private Map<String, Object> uj;
        private MediationConfigUserInfoForSegment ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f23586x;

        public MediationConfig build() {
            MediationConfig mediationConfig = new MediationConfig();
            mediationConfig.f23576c = this.f23582c;
            mediationConfig.tt = this.tt;
            mediationConfig.ve = this.ve;
            mediationConfig.uj = this.uj;
            mediationConfig.f23579n = this.f23585n;
            mediationConfig.f23575a = this.f23581a;
            mediationConfig.sp = this.sp;
            mediationConfig.f23580x = this.f23586x;
            mediationConfig.f23578i = this.f23584i;
            mediationConfig.f23577da = this.f23583da;
            mediationConfig.sl = this.sl;
            return mediationConfig;
        }

        public Builder setCustomLocalConfig(JSONObject jSONObject) {
            this.f23581a = jSONObject;
            return this;
        }

        public Builder setHttps(boolean z10) {
            this.f23585n = z10;
            return this;
        }

        @Deprecated
        public Builder setLocalExtra(Map<String, Object> map) {
            this.uj = map;
            return this;
        }

        public Builder setMediationConfigUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
            this.ve = mediationConfigUserInfoForSegment;
            return this;
        }

        public Builder setOpenAdnTest(boolean z10) {
            this.tt = z10;
            return this;
        }

        public Builder setOpensdkVer(String str) {
            this.f23586x = str;
            return this;
        }

        public Builder setPublisherDid(String str) {
            this.f23582c = str;
            return this;
        }

        public Builder setSupportH265(boolean z10) {
            this.f23584i = z10;
            return this;
        }

        public Builder setSupportSplashZoomout(boolean z10) {
            this.f23583da = z10;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.sl = str;
            return this;
        }

        public Builder setWxInstalled(boolean z10) {
            this.sp = z10;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public JSONObject getCustomLocalConfig() {
        return this.f23575a;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean getHttps() {
        return this.f23579n;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public Map<String, Object> getLocalExtra() {
        return this.uj;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public MediationConfigUserInfoForSegment getMediationConfigUserInfoForSegment() {
        return this.ve;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getOpensdkVer() {
        return this.f23580x;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getPublisherDid() {
        return this.f23576c;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isOpenAdnTest() {
        return this.tt;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportH265() {
        return this.f23578i;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportSplashZoomout() {
        return this.f23577da;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isWxInstalled() {
        return this.sp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String wxAppId() {
        return this.sl;
    }

    private MediationConfig() {
    }
}
