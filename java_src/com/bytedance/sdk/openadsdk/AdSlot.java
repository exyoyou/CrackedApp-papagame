package com.bytedance.sdk.openadsdk;

import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_DROPPING_DTS_MAX_DIFF})
public class AdSlot implements SlotType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23317a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23318c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private String f23319da;
    private TTAdLoadType gr;
    private String gt;
    private String gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23320i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f23321m;
    private String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f23322n;
    private int nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f23323p;
    private String qy;
    private String rh;
    private String rl;
    private String sl;
    private boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f23324t;
    private int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f23325u;
    private float uj;
    private int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f23326x;
    private int yp;
    private int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f23327z;
    private IMediationAdSlot zm;

    @c(c = {0, 80, 81, 82, 897})
    public static class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f23329c;
        private String gr;
        private String gt;
        private String gu;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int[] f23332m;
        private String my;
        private int nu;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f23334p;
        private String qy;
        private String rh;
        private int sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f23335t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private float f23336u;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f23337x;
        private float yp;
        private int yv;
        private IMediationAdSlot zm;
        private int tt = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
        private int ve = 320;
        private boolean uj = true;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f23333n = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f23328a = false;
        private int sp = 1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f23331i = "defaultUser";

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        private int f23330da = 2;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private boolean f23338z = true;
        private TTAdLoadType rl = TTAdLoadType.UNKNOWN;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.f23318c = this.f23329c;
            adSlot.f23317a = this.sp;
            adSlot.sp = this.uj;
            adSlot.f23326x = this.f23333n;
            adSlot.f23320i = this.f23328a;
            adSlot.tt = this.tt;
            adSlot.ve = this.ve;
            adSlot.uj = this.f23336u;
            adSlot.f23322n = this.yp;
            adSlot.f23319da = this.f23337x;
            adSlot.sl = this.f23331i;
            adSlot.f23324t = this.f23330da;
            adSlot.yp = this.sl;
            adSlot.f23327z = this.f23338z;
            adSlot.f23321m = this.f23332m;
            adSlot.nu = this.nu;
            adSlot.rh = this.rh;
            adSlot.gt = this.qy;
            adSlot.rl = this.gu;
            adSlot.qy = this.gr;
            adSlot.f23325u = this.f23335t;
            adSlot.my = this.my;
            adSlot.gu = this.gt;
            adSlot.gr = this.rl;
            adSlot.f23323p = this.f23334p;
            adSlot.yv = this.yv;
            adSlot.zm = this.zm;
            return adSlot;
        }

        public Builder setAdCount(int i10) {
            if (i10 <= 0) {
                i10 = 1;
            }
            if (i10 > 20) {
                i10 = 20;
            }
            this.sp = i10;
            return this;
        }

        public Builder setAdId(String str) {
            this.qy = str;
            return this;
        }

        public Builder setAdLoadType(TTAdLoadType tTAdLoadType) {
            this.rl = tTAdLoadType;
            return this;
        }

        public Builder setAdType(int i10) {
            this.f23335t = i10;
            return this;
        }

        public Builder setAdloadSeq(int i10) {
            this.nu = i10;
            return this;
        }

        public Builder setCodeId(String str) {
            this.f23329c = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.gu = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f10, float f11) {
            this.f23336u = f10;
            this.yp = f11;
            return this;
        }

        public Builder setExt(String str) {
            this.gr = str;
            return this;
        }

        public Builder setExternalABVid(int... iArr) {
            this.f23332m = iArr;
            return this;
        }

        public Builder setImageAcceptedSize(int i10, int i11) {
            this.tt = i10;
            this.ve = i11;
            return this;
        }

        public Builder setIsAutoPlay(boolean z10) {
            this.f23338z = z10;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.f23337x = str;
            return this;
        }

        public Builder setMediationAdSlot(IMediationAdSlot iMediationAdSlot) {
            this.zm = iMediationAdSlot;
            return this;
        }

        @Deprecated
        public Builder setNativeAdType(int i10) {
            this.sl = i10;
            return this;
        }

        public Builder setOrientation(int i10) {
            this.f23330da = i10;
            return this;
        }

        public Builder setPrimeRit(String str) {
            this.rh = str;
            return this;
        }

        public Builder setRewardAmount(int i10) {
            this.yv = i10;
            return this;
        }

        public Builder setRewardName(String str) {
            this.f23334p = str;
            return this;
        }

        public Builder setSupportDeepLink(boolean z10) {
            this.uj = z10;
            return this;
        }

        public Builder setUserData(String str) {
            this.gt = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.f23331i = str;
            return this;
        }

        public Builder supportIconStyle() {
            this.f23328a = true;
            return this;
        }

        public Builder supportRenderControl() {
            this.f23333n = true;
            return this;
        }

        public Builder withBid(String str) {
            if (str == null) {
                return this;
            }
            this.my = str;
            return this;
        }
    }

    public int getAdCount() {
        return this.f23317a;
    }

    public String getAdId() {
        return this.gt;
    }

    public TTAdLoadType getAdLoadType() {
        return this.gr;
    }

    public int getAdType() {
        return this.f23325u;
    }

    public int getAdloadSeq() {
        return this.nu;
    }

    public String getBidAdm() {
        return this.my;
    }

    public String getCodeId() {
        return this.f23318c;
    }

    public String getCreativeId() {
        return this.rl;
    }

    public float getExpressViewAcceptedHeight() {
        return this.f23322n;
    }

    public float getExpressViewAcceptedWidth() {
        return this.uj;
    }

    public String getExt() {
        return this.qy;
    }

    public int[] getExternalABVid() {
        return this.f23321m;
    }

    public int getImgAcceptedHeight() {
        return this.ve;
    }

    public int getImgAcceptedWidth() {
        return this.tt;
    }

    public String getMediaExtra() {
        return this.f23319da;
    }

    public IMediationAdSlot getMediationAdSlot() {
        return this.zm;
    }

    @Deprecated
    public int getNativeAdType() {
        return this.yp;
    }

    public int getOrientation() {
        return this.f23324t;
    }

    public String getPrimeRit() {
        String str = this.rh;
        return str == null ? "" : str;
    }

    public int getRewardAmount() {
        return this.yv;
    }

    public String getRewardName() {
        return this.f23323p;
    }

    public String getUserData() {
        return this.gu;
    }

    public String getUserID() {
        return this.sl;
    }

    public boolean isAutoPlay() {
        return this.f23327z;
    }

    public boolean isSupportDeepLink() {
        return this.sp;
    }

    public boolean isSupportIconStyle() {
        return this.f23320i;
    }

    public boolean isSupportRenderConrol() {
        return this.f23326x;
    }

    public void setAdCount(int i10) {
        this.f23317a = i10;
    }

    public void setAdLoadType(TTAdLoadType tTAdLoadType) {
        this.gr = tTAdLoadType;
    }

    public void setExternalABVid(int... iArr) {
        this.f23321m = iArr;
    }

    public void setNativeAdType(int i10) {
        this.yp = i10;
    }

    public void setUserData(String str) {
        this.gu = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.f23318c);
            jSONObject.put("mIsAutoPlay", this.f23327z);
            jSONObject.put("mImgAcceptedWidth", this.tt);
            jSONObject.put("mImgAcceptedHeight", this.ve);
            jSONObject.put("mExpressViewAcceptedWidth", this.uj);
            jSONObject.put("mExpressViewAcceptedHeight", this.f23322n);
            jSONObject.put("mAdCount", this.f23317a);
            jSONObject.put("mSupportDeepLink", this.sp);
            jSONObject.put("mSupportRenderControl", this.f23326x);
            jSONObject.put("mSupportIconStyle", this.f23320i);
            jSONObject.put("mMediaExtra", this.f23319da);
            jSONObject.put("mUserID", this.sl);
            jSONObject.put("mOrientation", this.f23324t);
            jSONObject.put("mNativeAdType", this.yp);
            jSONObject.put("mAdloadSeq", this.nu);
            jSONObject.put("mPrimeRit", this.rh);
            jSONObject.put("mAdId", this.gt);
            jSONObject.put("mCreativeId", this.rl);
            jSONObject.put("mExt", this.qy);
            jSONObject.put("mBidAdm", this.my);
            jSONObject.put("mUserData", this.gu);
            jSONObject.put("mAdLoadType", this.gr);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.f23318c + "', mImgAcceptedWidth=" + this.tt + ", mImgAcceptedHeight=" + this.ve + ", mExpressViewAcceptedWidth=" + this.uj + ", mExpressViewAcceptedHeight=" + this.f23322n + ", mAdCount=" + this.f23317a + ", mSupportDeepLink=" + this.sp + ", mSupportRenderControl=" + this.f23326x + ", mSupportIconStyle=" + this.f23320i + ", mMediaExtra='" + this.f23319da + "', mUserID='" + this.sl + "', mOrientation=" + this.f23324t + ", mNativeAdType=" + this.yp + ", mIsAutoPlay=" + this.f23327z + ", mPrimeRit" + this.rh + ", mAdloadSeq" + this.nu + ", mAdId" + this.gt + ", mCreativeId" + this.rl + ", mExt" + this.qy + ", mUserData" + this.gu + ", mAdLoadType" + this.gr + '}';
    }

    private AdSlot() {
        this.f23324t = 2;
        this.f23327z = true;
    }
}
