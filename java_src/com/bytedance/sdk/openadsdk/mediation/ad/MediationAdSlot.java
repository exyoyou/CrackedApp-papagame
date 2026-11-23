package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.zqa.c;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 686, 1572})
public class MediationAdSlot implements IMediationAdSlot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f23500a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f23501c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private String f23502da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23503i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MediationSplashRequestInfo f23504m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f23505n;
    private boolean sl;
    private boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MediationNativeToBannerListener f23506t;
    private boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f23507u;
    private int uj;
    private String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Map<String, Object> f23508x;
    private float yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f23509z;

    @c(c = {0, 80, 81, 82, 83, 686, 1033})
    public static class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f23511c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        private int f23512da;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private MediationSplashRequestInfo f23514m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f23515n;
        private boolean sl;
        private boolean sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private MediationNativeToBannerListener f23516t;
        private boolean tt;
        private float uj;
        private boolean ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f23518x;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f23519z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, Object> f23510a = new HashMap();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f23513i = "";

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private float f23517u = 80.0f;
        private float yp = 80.0f;

        public MediationAdSlot build() {
            MediationAdSlot mediationAdSlot = new MediationAdSlot();
            mediationAdSlot.f23501c = this.f23511c;
            mediationAdSlot.tt = this.tt;
            mediationAdSlot.sp = this.ve;
            mediationAdSlot.f23505n = this.uj;
            mediationAdSlot.f23500a = this.f23515n;
            mediationAdSlot.f23508x = this.f23510a;
            mediationAdSlot.f23503i = this.sp;
            mediationAdSlot.f23502da = this.f23518x;
            mediationAdSlot.ve = this.f23513i;
            mediationAdSlot.uj = this.f23512da;
            mediationAdSlot.sl = this.sl;
            mediationAdSlot.f23506t = this.f23516t;
            mediationAdSlot.f23507u = this.f23517u;
            mediationAdSlot.yp = this.yp;
            mediationAdSlot.f23509z = this.f23519z;
            mediationAdSlot.f23504m = this.f23514m;
            return mediationAdSlot;
        }

        public Builder setAllowShowCloseBtn(boolean z10) {
            this.sl = z10;
            return this;
        }

        public Builder setBidNotify(boolean z10) {
            this.sp = z10;
            return this;
        }

        public Builder setExtraObject(String str, Object obj) {
            Map<String, Object> map = this.f23510a;
            if (map != null) {
                map.put(str, obj);
            }
            return this;
        }

        public Builder setMediationNativeToBannerListener(MediationNativeToBannerListener mediationNativeToBannerListener) {
            this.f23516t = mediationNativeToBannerListener;
            return this;
        }

        public Builder setMediationSplashRequestInfo(MediationSplashRequestInfo mediationSplashRequestInfo) {
            this.f23514m = mediationSplashRequestInfo;
            return this;
        }

        public Builder setMuted(boolean z10) {
            this.ve = z10;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i10) {
            this.f23512da = i10;
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            this.f23513i = str;
            return this;
        }

        public Builder setScenarioId(String str) {
            this.f23518x = str;
            return this;
        }

        public Builder setShakeViewSize(float f10, float f11) {
            this.f23517u = f10;
            this.yp = f11;
            return this;
        }

        public Builder setSplashPreLoad(boolean z10) {
            this.tt = z10;
            return this;
        }

        public Builder setSplashShakeButton(boolean z10) {
            this.f23511c = z10;
            return this;
        }

        public Builder setUseSurfaceView(boolean z10) {
            this.f23515n = z10;
            return this;
        }

        public Builder setVolume(float f10) {
            this.uj = f10;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.f23519z = str;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public Map<String, Object> getExtraObject() {
        return this.f23508x;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public int getRewardAmount() {
        return this.uj;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getRewardName() {
        return this.ve;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getScenarioId() {
        return this.f23502da;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewHeight() {
        return this.yp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewWidth() {
        return this.f23507u;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getVolume() {
        return this.f23505n;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getWxAppId() {
        return this.f23509z;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isAllowShowCloseBtn() {
        return this.sl;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isBidNotify() {
        return this.f23503i;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isMuted() {
        return this.sp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashPreLoad() {
        return this.tt;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashShakeButton() {
        return this.f23501c;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isUseSurfaceView() {
        return this.f23500a;
    }

    private MediationAdSlot() {
        this.ve = "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationNativeToBannerListener getMediationNativeToBannerListener() {
        return this.f23506t;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationSplashRequestInfo getMediationSplashRequestInfo() {
        return this.f23504m;
    }
}
