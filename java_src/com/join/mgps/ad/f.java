package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.join.mgps.Util.h1;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;

/* JADX INFO: loaded from: classes5.dex */
public class f extends d {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static boolean f58376r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private UnifiedInterstitialAD f58377o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f58378p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b f58379q;

    class a implements NegativeFeedbackListener {
        a() {
        }

        @Override // com.qq.e.comm.listeners.NegativeFeedbackListener
        public void onComplainSuccess() {
            String str = f.this.f58362d;
        }
    }

    class b implements UnifiedInterstitialADListener, UnifiedInterstitialMediaListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f58381a = false;

        b() {
        }

        public void a(boolean showAd) {
            this.f58381a = showAd;
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClicked() {
            h1.c(f.this.f58362d, "rewardVideoAd bar click");
            f.this.onWfADClick();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClosed() {
            d.h(f.this.f58359a, 1004);
            f.this.onWfADClose();
            f fVar = f.this;
            fVar.onWfADClose(fVar.f58364f);
            f fVar2 = f.this;
            fVar2.onWfADClose(fVar2.f58364f, fVar2.f58365g, fVar2.f58366h);
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADExposure() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADLeftApplication() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADOpened() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADReceive() {
            f.this.f58378p = true;
            f fVar = f.this;
            fVar.f58369k = false;
            fVar.onWfADLoad(this.f58381a);
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onNoAD(AdError adError) {
            f.this.f58378p = false;
            f fVar = f.this;
            fVar.f58369k = false;
            fVar.onWfError(adError.getErrorCode(), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderFail() {
            f.this.f58378p = false;
            f fVar = f.this;
            fVar.f58369k = false;
            d.h(fVar.f58359a, 1004);
            f.this.onWfError(-1, "广告渲染失败");
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderSuccess() {
            f.this.f58378p = false;
            d.h(f.this.f58359a, 1003);
            f.this.onWfADShow();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onVideoCached() {
            f.this.f58378p = true;
            f fVar = f.this;
            fVar.f58369k = false;
            fVar.onWfVideoCached();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoComplete() {
            f.this.onWfVideoComplete();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoError(AdError adError) {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoInit() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoLoading() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageClose() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageOpen() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPause() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoReady(long l10) {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoStart() {
        }
    }

    public f(Context ctx, String appId, String posId) {
        super("GDT", ctx, appId, posId);
        this.f58378p = false;
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        try {
            if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
                return;
            }
            if (f58376r) {
                onWfInitSuccess();
            } else {
                GDTAdSdk.init(this.f58359a, this.f58360b);
                GlobalSetting.setChannel(1);
                GlobalSetting.setEnableMediationTool(true);
                f58376r = true;
                onWfInitSuccess();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        return this.f58377o != null && this.f58378p;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        this.f58378p = false;
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("load:");
            sb2.append(showAd);
        }
        try {
            if (this.f58379q == null) {
                this.f58379q = new b();
            }
            this.f58379q.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            UnifiedInterstitialAD unifiedInterstitialAD = this.f58377o;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.close();
                this.f58377o.destroy();
            }
            UnifiedInterstitialAD unifiedInterstitialAD2 = new UnifiedInterstitialAD(this.f58363e, this.f58361c, this.f58379q);
            this.f58377o = unifiedInterstitialAD2;
            unifiedInterstitialAD2.setNegativeFeedbackListener(new a());
            this.f58377o.setMediaListener(this.f58379q);
            this.f58377o.loadAD();
        } catch (Exception e10) {
            e10.printStackTrace();
            onWfError(-1, "广告加载错误");
        }
    }

    @Override // com.join.mgps.ad.d
    protected void t(Activity activity) {
        super.t(activity);
        this.f58378p = false;
        this.f58377o.show(activity);
    }

    public void v() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f58377o;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.destroy();
        }
    }
}
