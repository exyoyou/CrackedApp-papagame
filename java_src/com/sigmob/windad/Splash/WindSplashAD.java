package com.sigmob.windad.Splash;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.utils.AdLifecycleManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.z;
import com.sigmob.sdk.base.j;
import com.sigmob.sdk.base.m;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.base.utils.x;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.umeng.analytics.pro.k;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class WindSplashAD extends m implements AdLifecycleManager.LifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindSplashADListener f82127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup f82128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f82129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f82130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f82131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f82132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f82133g;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.sigmob.sdk.splash.f f82134m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Handler f82135n;

    /* JADX INFO: renamed from: com.sigmob.windad.Splash.WindSplashAD$1, reason: invalid class name */
    class AnonymousClass1 implements WindSplashADListener {
        AnonymousClass1() {
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdClick(String placementId) {
            if (WindSplashAD.this.f82127a == null) {
                return;
            }
            WindSplashAD.this.f82127a.onSplashAdClick(placementId);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdClose(final String placementId) {
            ((m) WindSplashAD.this).f79498h = AdStatus.AdStatusClose;
            WindSplashAD.this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82148b.b(placementId);
                }
            });
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdLoadFail(final WindAdError error, final String placementId) {
            ((m) WindSplashAD.this).f79498h = AdStatus.AdStatusNone;
            WindSplashAD.this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82150b.a(error, placementId);
                }
            });
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdLoadSuccess(String placementId) {
            ((m) WindSplashAD.this).f79498h = AdStatus.AdStatusReady;
            if (w.b(WindSplashAD.this.f82127a)) {
                WindSplashAD.this.f82127a.onSplashAdLoadSuccess(placementId);
            }
            if (WindSplashAD.this.f82133g) {
                WindSplashAD.this.d();
            }
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdShow(String placementId) {
            if (WindSplashAD.this.f82127a == null) {
                return;
            }
            WindSplashAD.this.f82127a.onSplashAdShow(placementId);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdShowError(WindAdError error, String placementId) {
            WindSplashAD.this.b(error, placementId);
        }

        @Override // com.sigmob.windad.Splash.WindSplashADListener
        public void onSplashAdSkip(final String placementId) {
            WindSplashAD.this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82153b.a(placementId);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(WindAdError windAdError, String str) {
            if (WindSplashAD.this.f82127a == null) {
                return;
            }
            WindSplashAD.this.f82127a.onSplashAdLoadFail(windAdError, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            if (w.b(WindSplashAD.this.f82127a)) {
                WindSplashAD.this.f82127a.onSplashAdClose(str);
            }
            WindSplashAD.this.l();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (WindSplashAD.this.f82127a == null) {
                return;
            }
            WindSplashAD.this.f82127a.onSplashAdSkip(str);
        }
    }

    public WindSplashAD(WindSplashAdRequest adRequest, WindSplashADListener adListener) {
        super(adRequest, false);
        this.f82132f = false;
        this.f82135n = new Handler(Looper.getMainLooper());
        this.f82127a = adListener;
        this.f82134m = new com.sigmob.sdk.splash.f(adRequest, new AnonymousClass1());
        this.f82129c = adRequest.getFetchDelay();
        this.f82131e = adRequest.isDisableAutoHideAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.f82134m.a((ViewGroup) this.f82130d);
    }

    public void destroy() {
        Object[] objArr = new Object[1];
        WindAdRequest windAdRequest = this.f79502l;
        objArr[0] = windAdRequest != null ? windAdRequest.getPlacementId() : "null";
        SigmobLog.i(String.format("splash ad %s is Destroy", objArr));
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar != null) {
            fVar.n();
            this.f82135n.removeCallbacksAndMessages(null);
            this.f82127a = null;
            this.f82128b = null;
        }
        RelativeLayout relativeLayout = this.f82130d;
        if (relativeLayout != null && !this.f82131e) {
            relativeLayout.setVisibility(8);
            this.f82130d.removeAllViews();
        }
        this.f82130d = null;
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return null;
        }
        return fVar.r();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return null;
        }
        return fVar.q();
    }

    public boolean isReady() {
        return g();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd() {
        this.f82133g = false;
        super.loadAd();
        return j();
    }

    public void loadAndShow(ViewGroup adContainer) {
        if (adContainer == null) {
            a(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL);
            return;
        }
        super.loadAd();
        this.f82128b = adContainer;
        this.f82133g = true;
        j();
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onCreate(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onDestroy(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onPause(Activity activity) {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return;
        }
        fVar.a(activity);
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onResume(Activity activity) {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return;
        }
        fVar.b(activity);
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onStart(Activity activity) {
    }

    @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
    public void onStop(Activity activity) {
    }

    public void show(ViewGroup adContainer) {
        com.sigmob.sdk.splash.f fVar;
        if (this.f82133g || (fVar = this.f82134m) == null) {
            if (w.b(this.f82134m)) {
                com.sigmob.sdk.manager.b bVar = this.f82134m;
                bVar.b(bVar);
            }
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, e());
            return;
        }
        if (fVar.d()) {
            b(WindAdError.ERROR_SIGMOB_EXPIRED, e());
            return;
        }
        if (!isReady()) {
            com.sigmob.sdk.manager.b bVar2 = this.f82134m;
            bVar2.b(bVar2);
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, e());
        } else if (adContainer == null) {
            b(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL, e());
        } else {
            this.f82128b = adContainer;
            d();
        }
    }

    private boolean j() {
        int bidFloor = getBidFloor();
        String strI = i();
        if (this.f82134m.c() && this.f79498h == AdStatus.AdStatusReady) {
            SigmobLog.i("load: ready");
            return true;
        }
        if (!h()) {
            return false;
        }
        AdLifecycleManager.getInstance().addLifecycleListener(this);
        this.f79498h = AdStatus.AdStatusLoading;
        String strJ = com.sigmob.sdk.manager.b.j();
        a((z) null, strJ);
        this.f82134m.a(getBid_token(), Integer.valueOf(bidFloor), strI, Integer.valueOf(this.f82129c), Boolean.FALSE, j.NormalRequest, strJ);
        return true;
    }

    private void k() {
        Activity activityC;
        ViewGroup viewGroup = this.f82128b;
        if (viewGroup == null || (activityC = x.c(viewGroup)) == null) {
            return;
        }
        Window window = activityC.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.systemUiVisibility = k.f84752b;
        window.setAttributes(attributes);
        window.addFlags(1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f82131e) {
            return;
        }
        RelativeLayout relativeLayout = this.f82130d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            this.f82130d.removeAllViews();
            this.f82130d = null;
        }
        this.f82128b = null;
    }

    @Override // com.sigmob.sdk.base.m
    protected Map<String, BiddingResponse> b() {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return null;
        }
        return fVar.s();
    }

    @Override // com.sigmob.sdk.base.m
    protected com.sigmob.sdk.manager.b c() {
        return this.f82134m;
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String bid_token) {
        super.loadAd(bid_token);
        return j();
    }

    public void loadAndShow(String bidToken, ViewGroup adContainer) {
        if (adContainer == null) {
            a(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL);
            return;
        }
        super.loadAd(bidToken);
        this.f82128b = adContainer;
        this.f82133g = true;
        j();
    }

    private void a() {
        if (this.f82128b == null) {
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f82128b.getContext());
        this.f82130d = relativeLayout;
        relativeLayout.setVisibility(4);
        this.f82130d.setId(ClientMetadata.generateViewId());
        this.f82128b.addView(this.f82130d, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WindAdError windAdError) {
        WindSplashADListener windSplashADListener = this.f82127a;
        if (windSplashADListener == null) {
            return;
        }
        windSplashADListener.onSplashAdLoadFail(windAdError, e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f82134m == null) {
            a(WindAdError.ERROR_SIGMOB_SPLASH_NOT_READY, e());
            return;
        }
        a();
        RelativeLayout relativeLayout = this.f82130d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f82147b.m();
            }
        });
        this.f79498h = AdStatus.AdStatusPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final WindAdError error, final String placementId) {
        this.f79498h = AdStatus.AdStatusNone;
        com.sigmob.sdk.manager.b bVar = this.f82134m;
        bVar.b(bVar);
        this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f82139b.c(error, placementId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(WindAdError windAdError, String str) {
        WindSplashADListener windSplashADListener = this.f82127a;
        if (windSplashADListener == null) {
            return;
        }
        windSplashADListener.onSplashAdShowError(windAdError, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(WindAdError windAdError, String str) {
        WindSplashADListener windSplashADListener = this.f82127a;
        if (windSplashADListener == null) {
            return;
        }
        this.f82132f = true;
        windSplashADListener.onSplashAdLoadFail(windAdError, str);
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(final WindAdError adError) {
        this.f79498h = AdStatus.AdStatusNone;
        this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f82142b.b(adError);
            }
        });
    }

    private void a(final WindAdError error, final String placementId) {
        SigmobLog.e("onSplashError: error = " + error + ", placementId = " + placementId);
        if (this.f82132f) {
            return;
        }
        this.f82135n.removeMessages(1);
        this.f82135n.post(new Runnable() { // from class: com.sigmob.windad.Splash.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f82144b.d(error, placementId);
            }
        });
        l();
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(String key, String value) {
        com.sigmob.sdk.splash.f fVar = this.f82134m;
        if (fVar == null) {
            return;
        }
        fVar.a(key, value);
    }
}
