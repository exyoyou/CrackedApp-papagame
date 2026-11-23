package com.aggmoread.sdk.b;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Handler;
import com.aggmoread.sdk.client.AMAdConfig;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdSize;
import com.aggmoread.sdk.client.AMAdType;
import com.aggmoread.sdk.client.AMChannelIdInfo;
import com.aggmoread.sdk.client.AMCustomController;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMRewardAdConfig;
import com.aggmoread.sdk.client.AMVideoConfigs;
import com.aggmoread.sdk.client.IAMAdInteractionListener;
import com.aggmoread.sdk.client.IAMAdLoadListener;
import com.aggmoread.sdk.t;
import com.aggmoread.sdk.z.c.a.a.d.a.d.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.d.b.h f3255a;

    class a extends com.aggmoread.sdk.z.c.a.a.c.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMCustomController f3256a;

        a(e eVar, AMCustomController aMCustomController) {
            this.f3256a = aMCustomController;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean a() {
            try {
                return this.f3256a.canReadInstalledPackages();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy can read install pkg err : " + e10.getMessage());
                return super.a();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean b() {
            try {
                return this.f3256a.canReadLocation();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy can loc err : " + e10.getMessage());
                return super.b();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean c() {
            try {
                return this.f3256a.canUseMacAddress();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy use mac err : " + e10.getMessage());
                return super.c();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean d() {
            try {
                return this.f3256a.canUseNetworkState();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy can net err : " + e10.getMessage());
                return super.d();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean e() {
            return super.e();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean f() {
            try {
                return this.f3256a.canUsePhoneState();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy use state err : " + e10.getMessage());
                return super.f();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public boolean g() {
            try {
                return this.f3256a.canUseStoragePermission();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy can storage err : " + e10.getMessage());
                return super.g();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String h() {
            try {
                return this.f3256a.getAndroidId();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy id err : " + e10.getMessage());
                return super.h();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String i() {
            try {
                return this.f3256a.getIMSI();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy imsi err : " + e10.getMessage());
                return super.i();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String j() {
            try {
                return this.f3256a.getImei();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy imei err : " + e10.getMessage());
                return super.j();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String[] k() {
            return super.k();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public List<PackageInfo> l() {
            try {
                return this.f3256a.getInstalledPackages();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy get installed pkg err : " + e10.getMessage());
                return super.l();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public Location m() {
            try {
                return this.f3256a.getLocation();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy  loc err : " + e10.getMessage());
                return super.m();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String n() {
            try {
                return this.f3256a.getMacAddress();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy get mac err : " + e10.getMessage());
                return super.n();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String o() {
            try {
                String str = t.SDK_TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getOaid ");
                sb2.append(this.f3256a.getDevOaid());
                return this.f3256a.getDevOaid();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy oaid err : " + e10.getMessage());
                return super.o();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.k
        public String p() {
            try {
                return this.f3256a.getSerialNumberInner();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("privacy serial err : " + e10.getMessage());
                return super.p();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f3257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f3258c;

        b(List list, Context context) {
            this.f3257b = list;
            this.f3258c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f3257b.size(); i10++) {
                AMChannelIdInfo aMChannelIdInfo = (AMChannelIdInfo) this.f3257b.get(i10);
                String str = aMChannelIdInfo.channelId;
                AMAdType aMAdType = aMChannelIdInfo.adType;
                AMAdLoadSlot aMAdLoadSlotBuild = aMChannelIdInfo.amAdLoadSlot;
                if (aMAdLoadSlotBuild == null) {
                    AMAdLoadSlot.Builder builder = new AMAdLoadSlot.Builder();
                    builder.setSlotId(str);
                    aMAdLoadSlotBuild = builder.build();
                }
                com.aggmoread.sdk.z.c.a.a.c.h.a aVarA = e.this.a(this.f3258c, aMAdType, aMAdLoadSlotBuild);
                com.aggmoread.sdk.b.d dVar = new com.aggmoread.sdk.b.d(aMAdType);
                dVar.a((IAMAdLoadListener<?>) null);
                aVarA.a(dVar.a());
                aVarA.a(true);
                e.this.f3255a.a(aVarA.a());
            }
        }
    }

    class c implements com.aggmoread.sdk.z.c.a.a.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AMRewardAdConfig f3260a;

        c(e eVar, AMRewardAdConfig aMRewardAdConfig) {
            this.f3260a = aMRewardAdConfig;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.b
        public void onReward(Map<String, Object> map) {
            if (this.f3260a.getRewardAdListener() != null) {
                this.f3260a.getRewardAdListener().onReward(map);
            }
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3261a;

        static {
            int[] iArr = new int[AMAdType.values().length];
            f3261a = iArr;
            try {
                iArr[AMAdType.EXPRESS_INFORMATION_FLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3261a[AMAdType.INFORMATION_FLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3261a[AMAdType.SPLASH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3261a[AMAdType.REWARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3261a[AMAdType.INTERSTITIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3261a[AMAdType.FULLSCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3261a[AMAdType.BANNER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3261a[AMAdType.DRAW.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3261a[AMAdType.MIX_INFORMATION_FLOW.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public e(Context context) {
        this.f3255a = new com.aggmoread.sdk.z.c.a.a.d.b.h(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0055  */
    /* JADX WARN: Code duplicated, block: B:21:0x0060  */
    /* JADX WARN: Code duplicated, block: B:24:0x006c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:30:0x007a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:39:0x009b A[LOOP:0: B:37:0x0095->B:39:0x009b, LOOP_END] */
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(Context context, AMAdType aMAdType, AMAdLoadSlot aMAdLoadSlot) {
        AMVideoConfigs aMVideoConfigs;
        AMRewardAdConfig aMRewardAdConfig;
        int i10;
        int i11;
        int i12;
        int i13;
        Map<String, Object> map;
        com.aggmoread.sdk.z.c.a.a.a aVar;
        String str;
        com.aggmoread.sdk.z.c.a.a.c.h.a aVarA = context instanceof Activity ? this.f3255a.a((Activity) context) : this.f3255a.a(context);
        aVarA.a(a(aMAdType));
        if (aMAdLoadSlot.adSize != null) {
            AMAdSize aMAdSize = aMAdLoadSlot.adSize;
            aVarA.a(new com.aggmoread.sdk.z.c.a.a.c.i(aMAdSize.adWidth, aMAdSize.adHeight));
        }
        if (aMAdType != AMAdType.EXPRESS_INFORMATION_FLOW) {
            str = aMAdType == AMAdType.INFORMATION_FLOW ? "2" : "1";
            aVarA.c(aMAdLoadSlot.bidToken);
            aVarA.b(aMAdLoadSlot.adSlotId);
            aVarA.b(aMAdLoadSlot.adCount);
            aVarA.a(aMAdLoadSlot.adContainer);
            aMVideoConfigs = aMAdLoadSlot.videoConfigs;
            if (aMVideoConfigs != null) {
                aVarA.a(a(aMVideoConfigs));
            }
            aMRewardAdConfig = aMAdLoadSlot.rewardAdConfig;
            if (aMRewardAdConfig != null) {
                aVarA.a(a(aMRewardAdConfig));
            }
            i10 = aMAdLoadSlot.fetchTimeOut;
            if (i10 != -1) {
                aVarA.a(i10);
            }
            i11 = aMAdLoadSlot.refreshTime;
            if (i11 != -1) {
                aVarA.e(i11);
            }
            i12 = aMAdLoadSlot.limitTime;
            if (i12 != -1) {
                aVarA.d(i12);
            }
            i13 = aMAdLoadSlot.shakeable;
            if (i13 != -1) {
                aVarA.c(i13);
            }
            map = aMAdLoadSlot.extras;
            if (map != null) {
                aVar = new com.aggmoread.sdk.z.c.a.a.a();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    aVar.b(entry.getKey(), entry.getValue());
                }
                aVarA.a(aVar);
            }
            return aVarA;
        }
        aVarA.a(str);
        aVarA.c(aMAdLoadSlot.bidToken);
        aVarA.b(aMAdLoadSlot.adSlotId);
        aVarA.b(aMAdLoadSlot.adCount);
        aVarA.a(aMAdLoadSlot.adContainer);
        aMVideoConfigs = aMAdLoadSlot.videoConfigs;
        if (aMVideoConfigs != null) {
            aVarA.a(a(aMVideoConfigs));
        }
        aMRewardAdConfig = aMAdLoadSlot.rewardAdConfig;
        if (aMRewardAdConfig != null) {
            aVarA.a(a(aMRewardAdConfig));
        }
        i10 = aMAdLoadSlot.fetchTimeOut;
        if (i10 != -1) {
            aVarA.a(i10);
        }
        i11 = aMAdLoadSlot.refreshTime;
        if (i11 != -1) {
            aVarA.e(i11);
        }
        i12 = aMAdLoadSlot.limitTime;
        if (i12 != -1) {
            aVarA.d(i12);
        }
        i13 = aMAdLoadSlot.shakeable;
        if (i13 != -1) {
            aVarA.c(i13);
        }
        map = aMAdLoadSlot.extras;
        if (map != null) {
            aVar = new com.aggmoread.sdk.z.c.a.a.a();
            while (r5.hasNext()) {
                aVar.b(entry.getKey(), entry.getValue());
            }
            aVarA.a(aVar);
        }
        return aVarA;
    }

    private com.aggmoread.sdk.z.c.a.a.c.j a(AMAdType aMAdType) {
        switch (d.f3261a[aMAdType.ordinal()]) {
            case 1:
            case 2:
                return com.aggmoread.sdk.z.c.a.a.c.j.INFORMATION_FLOW;
            case 3:
                return com.aggmoread.sdk.z.c.a.a.c.j.SPLASH;
            case 4:
                return com.aggmoread.sdk.z.c.a.a.c.j.REWARD_VIDEO;
            case 5:
                return com.aggmoread.sdk.z.c.a.a.c.j.INTERSTITIAL;
            case 6:
                return com.aggmoread.sdk.z.c.a.a.c.j.FULL_SCREEN_VIDEO;
            case 7:
                return com.aggmoread.sdk.z.c.a.a.c.j.BANNER;
            case 8:
                return com.aggmoread.sdk.z.c.a.a.c.j.DRAW;
            case 9:
                return com.aggmoread.sdk.z.c.a.a.c.j.MIX_INFORMATION_FLOW;
            default:
                return com.aggmoread.sdk.z.c.a.a.c.j.UNKNOWN;
        }
    }

    private com.aggmoread.sdk.z.c.a.a.c.s.c a(AMRewardAdConfig aMRewardAdConfig) {
        com.aggmoread.sdk.z.c.a.a.c.s.c cVar = new com.aggmoread.sdk.z.c.a.a.c.s.c();
        cVar.b(aMRewardAdConfig.getRewardName());
        cVar.a(aMRewardAdConfig.getRewardAmount());
        cVar.c(aMRewardAdConfig.getUserID());
        cVar.a(aMRewardAdConfig.getCustomData());
        cVar.a(new c(this, aMRewardAdConfig));
        return cVar;
    }

    private com.aggmoread.sdk.z.c.a.a.c.u.b a(AMVideoConfigs aMVideoConfigs) {
        com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b c0120b = new com.aggmoread.sdk.z.c.a.a.c.u.b.C0120b();
        c0120b.b(aMVideoConfigs.isDetailPageMuted());
        c0120b.a(aMVideoConfigs.isAutoPlayMuted());
        c0120b.a(aMVideoConfigs.getAutoPlayPolicy());
        c0120b.d(aMVideoConfigs.isEnableUserControl());
        c0120b.e(aMVideoConfigs.isNeedCoverImage());
        c0120b.f(aMVideoConfigs.isNeedProgressBar());
        c0120b.c(aMVideoConfigs.isEnableDetailPage());
        return c0120b.a();
    }

    public void a(Context context, AMAdType aMAdType, AMAdLoadSlot aMAdLoadSlot, IAMAdLoadListener<?> iAMAdLoadListener) {
        if (aMAdLoadSlot == null) {
            if (iAMAdLoadListener != null) {
                iAMAdLoadListener.onAdLoadFail(new AMError(10000, "广告请求配置为空，广告请求失败!"));
            }
        } else {
            com.aggmoread.sdk.z.c.a.a.c.h.a aVarA = a(context, aMAdType, aMAdLoadSlot);
            com.aggmoread.sdk.b.d dVar = new com.aggmoread.sdk.b.d(aMAdType);
            dVar.a(iAMAdLoadListener);
            aVarA.a(dVar.a());
            this.f3255a.a(aVarA.a());
        }
    }

    public void a(Context context, AMAdType aMAdType, AMAdLoadSlot aMAdLoadSlot, IAMAdLoadListener<?> iAMAdLoadListener, IAMAdInteractionListener iAMAdInteractionListener) {
        if (aMAdLoadSlot == null) {
            if (iAMAdLoadListener != null) {
                iAMAdLoadListener.onAdLoadFail(new AMError(10000, "广告请求配置为空，广告请求失败!"));
                return;
            }
            return;
        }
        com.aggmoread.sdk.z.c.a.a.c.h.a aVarA = a(context, aMAdType, aMAdLoadSlot);
        com.aggmoread.sdk.b.d dVar = new com.aggmoread.sdk.b.d(aMAdType);
        dVar.a(false);
        dVar.a(iAMAdLoadListener);
        dVar.a(iAMAdInteractionListener);
        aVarA.a(dVar.a());
        this.f3255a.a(aVarA.a());
    }

    public void a(Context context, List<AMChannelIdInfo> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        q.b(new b(list, context));
    }

    private void a(Handler.Callback callback, AMAdConfig aMAdConfig) {
        if (this.f3255a != null) {
            com.aggmoread.sdk.z.c.a.a.d.b.i.b bVar = new com.aggmoread.sdk.z.c.a.a.d.b.i.b();
            if (aMAdConfig != null) {
                AMCustomController customController = aMAdConfig.getCustomController();
                if (customController != null) {
                    bVar.a(new a(this, customController));
                }
                bVar.a(aMAdConfig.getAuthorities());
                this.f3255a.a(callback, bVar.a());
                int iIsAgreePrivacyRecommend = aMAdConfig.isAgreePrivacyRecommend();
                com.aggmoread.sdk.z.a.d.c(t.SDK_TAG, "ap = " + iIsAgreePrivacyRecommend);
                if (iIsAgreePrivacyRecommend != -1) {
                    p.a(iIsAgreePrivacyRecommend == 1);
                }
                int iIsAgreeShake = aMAdConfig.isAgreeShake();
                com.aggmoread.sdk.z.a.d.c(t.SDK_TAG, "as = " + iIsAgreeShake);
                if (iIsAgreeShake != -1) {
                    if (iIsAgreeShake == 0 || iIsAgreeShake == 1) {
                        p.a(String.valueOf(iIsAgreeShake));
                    } else {
                        com.aggmoread.sdk.z.a.d.c(t.SDK_TAG, "shakable not valid,only 0 Or 1");
                    }
                }
            }
        }
    }

    public void a(AMAdConfig aMAdConfig) {
        a(aMAdConfig, (Handler.Callback) null);
    }

    public void a(AMAdConfig aMAdConfig, Handler.Callback callback) {
        a(callback, aMAdConfig);
    }
}
