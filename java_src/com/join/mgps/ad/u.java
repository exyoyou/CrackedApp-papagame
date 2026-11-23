package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.MApplication;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h1;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes5.dex */
public class u extends com.join.mgps.ad.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f58417p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTAdNative f58418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTRewardVideoAd f58419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f58420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f58421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdSlot f58422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f58423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f58424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f58425h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f58426i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f58427j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f58428k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f58429l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Activity f58430m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f58431n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f58432o;

    class a implements TTAdSdk.Callback {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i10, String s10) {
            boolean unused = u.f58417p = false;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
        }
    }

    public static class c implements TTAdNative.RewardVideoAdListener, TTRewardVideoAd.RewardAdInteractionListener {
        public void a(String gameId) {
        }

        public void b(String gameId, int howTimes, int times) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int i10, String s10) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean b10, int i10, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean b10, int i10, String s10, int i11, String s11) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {
        }
    }

    public u(Context ctx, String appid, String adID, c listenerWrap) {
        this(ctx, appid, adID, 1, listenerWrap);
    }

    private static TTAdConfig o(Context context, String appid) {
        return new TTAdConfig.Builder().appId(appid).appName("悟饭游戏厅_android").titleBarTheme(1).allowShowNotify(true).debug(com.join.android.app.common.http.c.f34547c).supportMultiProcess(false).build();
    }

    private static void p(Context context, String appid) {
        if (new PrefDef_(context).sdkInit().d().booleanValue() || f58417p) {
            return;
        }
        TTAdSdk.init(context, o(context, appid));
        TTAdSdk.start(new a());
        f58417p = true;
    }

    private void q() {
        this.f58422e = new AdSlot.Builder().setCodeId(this.f58421d).setAdLoadType(TTAdLoadType.LOAD).setUserID("user123").setMediaExtra("media_extra").setOrientation(this.f58423f).build();
    }

    public void r() {
        try {
            q();
            TTAdNative tTAdNative = this.f58418a;
            if (tTAdNative != null) {
                tTAdNative.loadRewardVideoAd(this.f58422e, new b());
            } else {
                com.join.mgps.ad.b.a(this.f58426i, 5);
                c cVar = this.f58424g;
                if (cVar != null) {
                    cVar.onError(-1, "广告初始化错误");
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.join.mgps.ad.b.a(this.f58426i, 5);
            c cVar2 = this.f58424g;
            if (cVar2 != null) {
                cVar2.onError(-1, "广告初始化错误");
            }
        }
    }

    public void s(Activity activity) {
        t(activity, "");
    }

    public void t(Activity activity, String gameId) {
        u(activity, gameId, 0, 0);
    }

    public void u(Activity activity, String gameId, int howTImes, int times) {
        this.f58425h = gameId;
        this.f58428k = times;
        this.f58427j = howTImes;
        if (activity == null || activity.isFinishing()) {
            activity = MApplication.f3182z.getActivity();
        }
        this.f58430m = activity;
        this.f58429l = false;
        if (!com.join.android.app.common.utils.m.j(activity)) {
            a3.b(activity).d("网络异常，请联网重试");
            return;
        }
        TTRewardVideoAd tTRewardVideoAd = this.f58419b;
        if (tTRewardVideoAd != null && this.f58431n) {
            tTRewardVideoAd.showRewardVideoAd(activity);
            this.f58419b = null;
            return;
        }
        this.f58429l = true;
        if (Math.abs(System.currentTimeMillis() - this.f58432o) <= 2000) {
            a3.b(activity).d("广告加载中...");
        } else {
            this.f58432o = System.currentTimeMillis();
            r();
        }
    }

    public u(Context ctx, String appid, String adID, int orientation, c listenerWrap) {
        this.f58420c = false;
        this.f58429l = false;
        this.f58431n = false;
        this.f58432o = 0L;
        this.f58426i = ctx;
        this.f58421d = adID;
        this.f58423f = orientation;
        this.f58424g = listenerWrap;
        p(ctx, appid);
        this.f58418a = TTAdSdk.getAdManager().createAdNative(ctx);
        q();
    }

    class b implements TTAdNative.RewardVideoAdListener {

        class a implements TTRewardVideoAd.RewardAdInteractionListener {
            a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdClose() {
                com.join.mgps.ad.b.a(u.this.f58426i, 3);
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onAdClose();
                    u uVar = u.this;
                    uVar.f58424g.a(uVar.f58425h);
                    u uVar2 = u.this;
                    uVar2.f58424g.b(uVar2.f58425h, u.this.f58427j, u.this.f58428k);
                }
                h1.c("RewardVideo", "rewardVideoAd close");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdShow() {
                u.this.f58431n = false;
                com.join.mgps.ad.b.a(u.this.f58426i, 1);
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onAdShow();
                }
                h1.c("RewardVideo", "rewardVideoAd show");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdVideoBarClick() {
                com.join.mgps.ad.b.a(u.this.f58426i, 2);
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onAdVideoBarClick();
                }
                h1.c("RewardVideo", "rewardVideoAd bar click");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onRewardArrived(boolean b10, int i10, Bundle bundle) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onRewardVerify(boolean b10, int i10, String s10, int i11, String s11) {
                h1.c("RewardVideo", "verify:" + b10 + " amount:" + i10 + " name:" + s10);
                com.join.mgps.ad.b.a(u.this.f58426i, 6);
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onRewardVerify(b10, i10, s10, i11, s11);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onSkippedVideo() {
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onSkippedVideo();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onVideoComplete() {
                com.join.mgps.ad.b.a(u.this.f58426i, 4);
                h1.c("RewardVideo", "rewardVideoAd complete");
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onVideoComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onVideoError() {
                com.join.mgps.ad.b.a(u.this.f58426i, 5);
                h1.c("RewardVideo", "rewardVideoAd error");
                c cVar = u.this.f58424g;
                if (cVar != null) {
                    cVar.onVideoError();
                }
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.ad.u$b$b, reason: collision with other inner class name */
        class C0690b implements TTAppDownloadListener {
            C0690b() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName) {
                if (u.this.f58420c) {
                    return;
                }
                u.this.f58420c = true;
                h1.c("RewardVideo", "下载中，点击下载区域暂停");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName) {
                h1.c("RewardVideo", "下载失败，点击下载区域重新下载");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFinished(long totalBytes, String fileName, String appName) {
                h1.c("RewardVideo", "下载完成，点击下载区域重新下载");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName) {
                h1.c("RewardVideo", "下载暂停，点击下载区域继续");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onIdle() {
                u.this.f58420c = false;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onInstalled(String fileName, String appName) {
                h1.c("RewardVideo", "安装完成，点击下载区域打开");
            }
        }

        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int code, String message) {
            com.join.mgps.ad.b.a(u.this.f58426i, 5);
            c cVar = u.this.f58424g;
            if (cVar != null) {
                cVar.onError(code, message);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd ad2) {
            h1.c("RewardVideo", "rewardVideoAd loaded");
            u.this.f58431n = false;
            u.this.f58419b = ad2;
            u.this.f58419b.setRewardAdInteractionListener(new a());
            u.this.f58419b.setDownloadListener(new C0690b());
            c cVar = u.this.f58424g;
            if (cVar != null) {
                cVar.onRewardVideoAdLoad(ad2);
            }
            if (!u.this.f58429l || u.this.f58430m == null || u.this.f58430m.isFinishing()) {
                return;
            }
            u uVar = u.this;
            uVar.u(uVar.f58430m, u.this.f58425h, u.this.f58427j, u.this.f58428k);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            h1.c("RewardVideo", "rewardVideoAd video cached");
            u.this.f58431n = true;
            c cVar = u.this.f58424g;
            if (cVar != null) {
                cVar.onRewardVideoCached();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd ttRewardVideoAd) {
            u.this.f58431n = true;
        }
    }
}
