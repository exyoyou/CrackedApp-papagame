package com.wufun.union.ad.bytedance;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a extends AdChannel {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f88163m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f88164n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f88165o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f88166p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f88167q = 4;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f88168r = 5;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f88169s = 6;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f88170t = 7;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f88171u = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f88172j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TTAdNative f88173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    TTRewardVideoAd f88174l;

    /* JADX INFO: renamed from: com.wufun.union.ad.bytedance.a$a, reason: collision with other inner class name */
    class C1093a implements TTAdSdk.Callback {
        C1093a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i10, String str) {
            ((AdChannel) a.this).f88140b = false;
            a.this.i(0, Boolean.FALSE, "[" + i10 + ", " + str + "]");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            ((AdChannel) a.this).f88140b = true;
            a.this.i(0, Boolean.TRUE, "");
        }
    }

    class b implements TTAdNative.RewardVideoAdListener {
        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int i10, String str) {
            a.this.i(1, Boolean.FALSE, "[" + i10 + ", " + str + "]");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            a aVar = a.this;
            aVar.f88174l = tTRewardVideoAd;
            ((AdChannel) aVar).f88139a = true;
            a.this.i(1, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            ((AdChannel) a.this).f88139a = true;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            a aVar = a.this;
            aVar.f88174l = tTRewardVideoAd;
            ((AdChannel) aVar).f88139a = true;
        }
    }

    class c implements TTRewardVideoAd.RewardAdInteractionListener {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Activity f88177g;

        c(Activity activity) {
            this.f88177g = activity;
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            try {
                this.f88177g.finish();
                a.this.i(6, Boolean.TRUE, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            a.this.i(3, Boolean.TRUE, "");
            AdService.i(((AdChannel) a.this).f88143e, ((AdChannel) a.this).f88147i, "smallExpAdSDK", ((AdChannel) a.this).f88145g + "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            a.this.i(5, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z10, int i10, Bundle bundle) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("isRewardValid", Boolean.valueOf(z10));
                jSONObject.putOpt(MediationConstant.KEY_REWARD_TYPE, Integer.valueOf(i10));
                com.wufun.union.ad.bytedance.b bVar = new com.wufun.union.ad.bytedance.b(bundle);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("rewardAmount", Integer.valueOf(bVar.a()));
                jSONObject2.putOpt("rewardName", bVar.b());
                jSONObject2.putOpt("rewardPropose", Float.valueOf(bVar.c()));
                jSONObject2.putOpt("errorCode", Integer.valueOf(bVar.d()));
                jSONObject2.putOpt("errorMsg", bVar.e());
                jSONObject.putOpt("extraInfo", jSONObject2);
                a.this.i(8, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z10, int i10, String str, int i11, String str2) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("rewardVerify", Boolean.valueOf(z10));
                jSONObject.putOpt("rewardAmount", Integer.valueOf(i10));
                jSONObject.putOpt("rewardName", str);
                jSONObject.putOpt("code", Integer.valueOf(i11));
                jSONObject.putOpt("msg", str2);
                a.this.i(7, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
            a.this.i(4, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            a.this.i(2, Boolean.TRUE, "");
            AdService.i(((AdChannel) a.this).f88143e, ((AdChannel) a.this).f88147i, "smallVideoDoneAdSDK", ((AdChannel) a.this).f88145g + "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
            a.this.i(2, Boolean.FALSE, "");
        }
    }

    public a() {
        this.f88141c = AdChannel.Type.TT;
    }

    @Override // com.wufun.union.ad.AdChannel
    public void d(Context context, String str) {
        if (context.getSharedPreferences("PrefDef", 0).getBoolean("sdkInit", false)) {
            return;
        }
        this.f88143e = context;
        TTAdSdk.init(context, new TTAdConfig.Builder().appId(str).appName("悟饭游戏厅_android").titleBarTheme(0).directDownloadNetworkType(4, 3, 5).supportMultiProcess(true).allowShowNotify(true).build());
        TTAdSdk.start(new C1093a());
        this.f88173k = TTAdSdk.getAdManager().createAdNative(context);
    }

    @Override // com.wufun.union.ad.AdChannel
    public void h(String str, float f10, float f11) {
        if (this.f88143e.getSharedPreferences("PrefDef", 0).getBoolean("sdkInit", false)) {
            return;
        }
        if (this.f88173k == null || !TTAdSdk.isInitSuccess()) {
            i(1, Boolean.FALSE, "ad sdk not init");
        } else {
            if (TextUtils.isEmpty(str)) {
                i(1, Boolean.FALSE, "ad code id is must not null");
                return;
            }
            this.f88146h = str;
            this.f88173k.loadRewardVideoAd(new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(f10, f11).setOrientation(2).setAdLoadType(TTAdLoadType.PRELOAD).build(), new b());
        }
    }

    @Override // com.wufun.union.ad.AdChannel
    public void m(Activity activity) {
        if (activity == null) {
            return;
        }
        if (this.f88174l == null || !this.f88139a) {
            if (TextUtils.isEmpty(this.f88146h)) {
                return;
            }
            g(this.f88146h);
            return;
        }
        c cVar = new c(activity);
        this.f88174l.setRewardAdInteractionListener(cVar);
        this.f88174l.setRewardPlayAgainInteractionListener(cVar);
        this.f88174l.showRewardVideoAd(activity);
        this.f88174l = null;
        this.f88139a = false;
        if (!this.f88172j || TextUtils.isEmpty(this.f88146h)) {
            return;
        }
        g(this.f88146h);
    }
}
