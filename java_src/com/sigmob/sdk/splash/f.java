package com.sigmob.sdk.splash;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.windad.Splash.WindSplashADListener;
import com.sigmob.windad.Splash.WindSplashAdRequest;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends com.sigmob.sdk.manager.b implements com.sigmob.sdk.base.common.h.b, com.sigmob.sdk.base.network.f.a, e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f81693h = 131073;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LoadAdRequest f81694i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<BaseAdUnit> f81696k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BaseAdUnit f81697l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private BaseAdUnit f81698m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile WindSplashADListener f81700o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private i f81701p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f81703r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f81704s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f81706u;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f81702q = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Handler f81705t = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.splash.f.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 131073 && ((com.sigmob.sdk.manager.b) f.this).f80838b == AdStatus.AdStatusLoading) {
                f.this.f81705t.removeMessages(131073);
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_TIME_OUT;
                f.this.a(windAdError.getErrorCode(), windAdError.getMessage(), f.this.f81694i);
                f.this.a(windAdError, true);
            }
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f81695j = new Runnable() { // from class: com.sigmob.sdk.splash.f.2
        @Override // java.lang.Runnable
        public void run() {
            f.this.p();
            if (f.this.f81701p == null) {
                return;
            }
            if (f.this.f81703r <= 0) {
                f.this.f81701p.setDuration(0);
                return;
            }
            f.this.f81701p.setDuration(f.this.f81703r);
            f.f(f.this);
            f.this.f81705t.postDelayed(f.this.f81695j, 1000L);
        }
    };

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final d f81699n = new d(this);

    public f(WindSplashAdRequest splashAdRequest, WindSplashADListener splashADListener) {
        this.f81694i = new LoadAdRequest(splashAdRequest);
        this.f81700o = splashADListener;
    }

    static /* synthetic */ int f(f fVar) {
        int i10 = fVar.f81703r;
        fVar.f81703r = i10 - 1;
        return i10;
    }

    private Activity t() {
        Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f81701p);
        SigmobLogger.d(this.f80837a, "getActivity: activityFromView = " + activityC, new Object[0]);
        return activityC;
    }

    private boolean u() {
        boolean z10 = c() && com.sigmob.sdk.base.utils.w.b(this.f81699n);
        SigmobLog.d("isExistCache: cached = " + z10);
        if (z10) {
            this.f81699n.a((Map<String, Object>) null, this.f81698m);
            com.sigmob.sdk.base.common.h.g().a(this.f81698m, this);
            SigmobLog.d("isExistCache: ready");
            l(this.f81698m);
        }
        return z10;
    }

    private synchronized void v() {
        LoadAdRequest loadAdRequest;
        if (this.f81701p != null && (loadAdRequest = this.f81694i) != null && !loadAdRequest.isDisableAutoHideAd()) {
            com.sigmob.sdk.base.utils.x.a(this.f81701p);
            this.f81701p = null;
        }
    }

    private void w() {
        if (this.f80838b == AdStatus.AdStatusPlaying) {
            this.f80838b = AdStatus.AdStatusClose;
            if (this.f81700o == null) {
                return;
            }
            this.f81700o.onSplashAdClose(this.f81694i.getPlacementId());
        }
    }

    @Override // com.sigmob.sdk.splash.e
    public void a_() {
        p();
    }

    @Override // com.sigmob.sdk.splash.e
    public void b_() {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE;
        ad.a("play", windAdError, this.f81698m, (LoadAdRequest) null);
        a(windAdError, false);
        n();
    }

    @Override // com.sigmob.sdk.splash.e
    public void c_() {
        if (com.sigmob.sdk.base.utils.w.b(this.f81701p)) {
            this.f81701p.setDuration(0);
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81700o)) {
            this.f81700o.onSplashAdSkip(this.f81694i.getPlacementId());
        }
    }

    @Override // com.sigmob.sdk.splash.e
    public void d_() {
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit i() {
        return this.f81697l;
    }

    public void m() {
        if (com.sigmob.sdk.base.utils.w.b(this.f81698m) && this.f81698m.getSessionManager() == null) {
            new k().a(this.f81698m);
        }
    }

    public synchronized void n() {
        if (com.sigmob.sdk.base.utils.w.b(this.f81699n)) {
            this.f81699n.b(this.f81698m);
        }
        w();
        v();
        g();
        this.f81700o = null;
        this.f81697l = null;
        p();
        b((com.sigmob.sdk.manager.b) this);
    }

    public String r() {
        return i(this.f81698m);
    }

    public Map<String, BiddingResponse> s() {
        return j(this.f81698m);
    }

    private BaseAdUnit b(LoadAdRequest loadAdRequest) {
        if (loadAdRequest == null) {
            com.sigmob.sdk.base.utils.k.e(this.f80837a, "getAdUnitCache: request is null.", new Object[0]);
            return null;
        }
        String strC = com.sigmob.sdk.base.utils.o.c(loadAdRequest.getPlacementId());
        Object fromCache = FileUtil.readFromCache(strC);
        if (!(fromCache instanceof BaseAdUnit)) {
            return null;
        }
        FileUtil.deleteFile(strC);
        BaseAdUnit baseAdUnit = (BaseAdUnit) fromCache;
        if (baseAdUnit.getAd() == null) {
            com.sigmob.sdk.base.utils.k.e(this.f80837a, "getAdUnitCache: ad is null.", new Object[0]);
            return null;
        }
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit.bidding_response) && com.sigmob.sdk.base.utils.t.b(baseAdUnit.bidding_response.currency, l())) {
            com.sigmob.sdk.base.utils.k.e(this.f80837a, "getAdUnitCache: Inconsistent currency.", new Object[0]);
            return null;
        }
        baseAdUnit.setTraceId(loadAdRequest.getTraceId());
        baseAdUnit.setRequestSceneType(loadAdRequest.getRequest_scene_type());
        com.sigmob.sdk.base.utils.k.c(this.f80837a, "getAdUnitCache: vid = " + baseAdUnit.getVid(), new Object[0]);
        return baseAdUnit;
    }

    @Override // com.sigmob.sdk.base.common.x
    public void a() {
    }

    @Override // com.sigmob.sdk.base.common.p
    public void c(BaseAdUnit adUnit) {
        this.f81704s = true;
        a("click", adUnit);
        if (com.sigmob.sdk.base.utils.d.a(com.sigmob.sdk.base.utils.d.b(this.f80837a, adUnit)) && com.sigmob.sdk.base.utils.w.b(this.f81700o)) {
            this.f81700o.onSplashAdClick(this.f81694i.getPlacementId());
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81701p) && this.f81701p.f()) {
            d(adUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.p
    public void d(BaseAdUnit adUnit) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f81706u <= 500) {
            SigmobLogger.d(this.f80837a, "onInterstitialDismissed: unavailable callback.", new Object[0]);
            return;
        }
        this.f81706u = jCurrentTimeMillis;
        this.f80838b = AdStatus.AdStatusClose;
        if (com.sigmob.sdk.base.utils.w.b(this.f81700o)) {
            this.f81700o.onSplashAdClose(this.f81694i.getPlacementId());
        }
        this.f81705t.post(new Runnable() { // from class: com.sigmob.sdk.splash.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f81756b.n();
            }
        });
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) adUnit.getBid_token())) {
            a(null, k(), l(), 45, Boolean.TRUE, com.sigmob.sdk.base.j.SplashCloseRequest, null);
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit e() {
        return (this.f81698m == null && com.sigmob.sdk.base.utils.e.b(this.f81696k)) ? this.f81696k.get(0) : this.f81698m;
    }

    @Override // com.sigmob.sdk.manager.b
    public LoadAdRequest f() {
        return this.f81694i;
    }

    @Override // com.sigmob.sdk.manager.b
    protected void g() {
        com.sigmob.sdk.base.common.h.b(this.f81698m);
        this.f81698m = null;
        this.f81696k = null;
    }

    public void o() {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION;
        ad.a("play", windAdError, this.f81698m, (LoadAdRequest) null);
        a(windAdError, false);
        n();
    }

    public void p() {
        this.f81705t.removeCallbacksAndMessages(null);
    }

    public String q() {
        return h(this.f81698m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int code, String message, LoadAdRequest loadAdRequest) {
        ad.a(PointCategory.REQUEST, (String) null, code, message, (WindAdRequest) null, loadAdRequest, (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.splash.s
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                f.a(obj);
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.x
    public void b() {
        BaseBroadcastReceiver.a(com.sigmob.sdk.b.e(), this.f81698m.getUuid(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean c() {
        try {
            if (this.f81698m == null) {
                this.f81698m = b(this.f81694i);
            }
            if (this.f81698m == null) {
                return false;
            }
            SigmobLog.d("isReady: vid = " + this.f81698m.getVid());
            boolean zCanRead = new File(this.f81698m.getSplashFilePath()).canRead();
            boolean zIsExpiredAd = this.f81698m.isExpiredAd();
            boolean zA = this.f81699n.a(this.f81698m);
            boolean z10 = zCanRead && !zIsExpiredAd && zA;
            SigmobLog.d("isReady: ready = " + z10 + ", isExist = " + zCanRead + ", isExpired = " + zIsExpiredAd + ", isValid = " + zA);
            return z10;
        } catch (Exception e10) {
            SigmobLog.e("isReady: error = " + e10.getMessage());
            return false;
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean d() {
        return f(this.f81698m);
    }

    @Override // com.sigmob.sdk.base.common.p
    public void e(BaseAdUnit adUnit) {
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int code, String message, String requestId, LoadAdRequest loadAdRequest) {
        WindAdError windAdError = WindAdError.getWindAdError(code);
        if (windAdError == null) {
            windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setErrorMessage(code, message);
        }
        ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        a(code, message, loadAdRequest);
        a(windAdError, true);
    }

    public void b(Activity activity) {
        if (this.f81701p == null || activity != t()) {
            return;
        }
        this.f81701p.e();
        this.f81705t.post(this.f81695j);
    }

    public void a(Activity activity) {
        if (this.f81701p == null || activity != t()) {
            return;
        }
        this.f81701p.d();
        p();
    }

    @Override // com.sigmob.sdk.base.common.p
    public void b(BaseAdUnit adUnit) {
        a("start", adUnit);
        this.f80838b = AdStatus.AdStatusPlaying;
        m();
        com.sigmob.sdk.base.common.h.a(adUnit);
        if (com.sigmob.sdk.base.utils.w.b(this.f81701p)) {
            int duration = this.f81701p.getDuration();
            if (duration > 0 && duration < this.f81703r) {
                this.f81703r = duration;
            }
            this.f81701p.setDuration(this.f81703r);
            this.f81701p.setVisibility(0);
        }
        b((com.sigmob.sdk.manager.b) this);
        if (com.sigmob.sdk.base.utils.w.b(this.f81700o)) {
            this.f81700o.onSplashAdShow(this.f81694i.getPlacementId());
        }
        this.f81702q = this.f81703r;
        this.f81705t.post(this.f81695j);
    }

    public synchronized void a(ViewGroup viewGroup) {
        boolean z10 = true;
        if (1 != ClientMetadata.getInstance().getOrientationInt().intValue()) {
            z10 = false;
        }
        if (!z10) {
            o();
            return;
        }
        if (com.sigmob.sdk.base.utils.w.b(viewGroup) && com.sigmob.sdk.base.utils.w.b(this.f81698m) && a(viewGroup, this.f81698m)) {
            BaseAdUnit baseAdUnit = this.f81698m;
            this.f81697l = baseAdUnit;
            this.f81699n.a(baseAdUnit, (Bundle) null);
            if (com.sigmob.sdk.base.utils.w.b(this.f81699n.f81689c)) {
                this.f81703r = this.f81699n.f81689c.l();
            }
            if (com.sigmob.sdk.base.utils.w.b(this.f81701p)) {
                this.f81701p.setDuration(this.f81703r);
                if (this.f81701p.c()) {
                    viewGroup.addView(this.f81701p, new ViewGroup.LayoutParams(-1, -1));
                    return;
                }
            }
        }
        b_();
    }

    @Override // com.sigmob.sdk.base.common.p
    public void b(BaseAdUnit adUnit, String error) {
        com.sigmob.sdk.base.utils.k.f(this.f80837a, "onInterstitialFailed: error = " + error, new Object[0]);
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
        windAdError.setMessage(error);
        a(windAdError, true);
        ad.a("load", windAdError, this.f81698m, (LoadAdRequest) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        SigmobLog.d("loadEnd: placementId = " + str);
        if (this.f81700o == null) {
            return;
        }
        this.f81700o.onSplashAdLoadSuccess(str);
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit) {
        SigmobLog.d("loadStart: placementId = " + h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdUnit baseAdUnit, int i10) {
        if (i10 == 0 && this.f81704s) {
            d(baseAdUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit, String error) {
        final String strH = h();
        if (com.sigmob.sdk.base.utils.t.b(error)) {
            SigmobLog.e("loadEnd: placementId = " + strH + ", adStatus = " + this.f80838b + ", error = " + error);
            b(this.f81698m, error);
            return;
        }
        if (this.f80838b == AdStatus.AdStatusClose) {
            FileUtil.writeToCache(adUnit, com.sigmob.sdk.base.utils.o.c(this.f81694i.getPlacementId()));
        }
        int request_scene_type = this.f81694i.getRequest_scene_type();
        SigmobLogger.d(this.f80837a, "loadEnd: sceneType = " + request_scene_type, new Object[0]);
        a(adUnit, this.f81694i);
        if (this.f80838b == AdStatus.AdStatusLoading && request_scene_type == com.sigmob.sdk.base.j.NormalRequest.a()) {
            if (!(1 == ClientMetadata.getInstance().getOrientationInt().intValue())) {
                o();
                return;
            }
            p();
            this.f80838b = AdStatus.AdStatusReady;
            a((com.sigmob.sdk.manager.b) this);
            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81757b.b(strH);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(WindAdError error, boolean isLoadError) {
        SigmobLogger.e(this.f80837a, "handleError: error = " + error + ", load = " + isLoadError, new Object[0]);
        this.f80838b = AdStatus.AdStatusNone;
        p();
        int request_scene_type = this.f81694i.getRequest_scene_type();
        String placementId = this.f81694i.getPlacementId();
        if (com.sigmob.sdk.manager.b.c(Integer.valueOf(request_scene_type)) && com.sigmob.sdk.base.utils.w.b(this.f81700o)) {
            if (isLoadError) {
                this.f81700o.onSplashAdLoadFail(error, placementId);
            } else {
                this.f81700o.onSplashAdShowError(error, placementId);
            }
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81699n)) {
            this.f81699n.b(this.f81698m);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setAdx_id(null);
        }
    }

    public void a(String bidToken, Integer bidFloor, String currency, Integer fetchTime, Boolean preload, com.sigmob.sdk.base.j sceneType, String traceId) {
        boolean zA = com.sigmob.sdk.manager.b.a(sceneType);
        this.f81694i.setOriginVid(zA ? this.f80840d : "");
        this.f81694i.setOriginPrice(zA ? this.f80841e : "");
        this.f81694i.setRequest_scene_type(sceneType.a());
        this.f81694i.setBidToken(bidToken);
        this.f81694i.setBidFloor(bidFloor);
        this.f81694i.setCurrency(currency);
        if (!com.sigmob.sdk.base.utils.t.b(traceId)) {
            traceId = com.sigmob.sdk.manager.b.j();
        }
        this.f81694i.setTraceId(traceId);
        SigmobLog.d("loadAd: preload = " + preload + ", sceneType = " + sceneType.a());
        if (com.sigmob.sdk.base.utils.w.b(preload)) {
            this.f80838b = AdStatus.AdStatusLoading;
            if (u()) {
                return;
            }
        }
        a(this.f81694i);
        com.sigmob.sdk.base.network.f.a(this.f81694i, this);
        this.f81705t.sendEmptyMessageDelayed(131073, ((long) fetchTime.intValue()) * 1000);
    }

    public void a(String key, String value) {
        a(this.f81698m, key, value);
    }

    @Override // com.sigmob.sdk.manager.b
    public void a(String originVid, String originPrice, com.sigmob.sdk.base.j requestSceneType) {
        super.a(originVid, originPrice, requestSceneType);
        if (com.sigmob.sdk.base.utils.t.b(this.f81694i.getBidToken())) {
            return;
        }
        g();
        a(null, k(), l(), 45, Boolean.TRUE, requestSceneType, null);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(List<BaseAdUnit> adUnits, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.e.a(adUnits)) {
            return;
        }
        this.f81696k = adUnits;
        BaseAdUnit baseAdUnit = adUnits.get(0);
        SigmobLog.d("onSuccess(real): vid = " + baseAdUnit.getVid());
        a(adUnits, loadAdRequest, baseAdUnit);
        a(loadAdRequest.getRequest_scene_type());
        if (com.sigmob.sdk.base.utils.w.b(this.f81699n) && !this.f81699n.a(baseAdUnit)) {
            a(WindAdError.ERROR_SIGMOB_INFORMATION_LOSE, true);
            return;
        }
        this.f81698m = baseAdUnit;
        if (com.sigmob.sdk.base.utils.w.b(this.f81699n)) {
            this.f81699n.a((Map<String, Object>) null, baseAdUnit);
        }
        com.sigmob.sdk.base.common.h.g().a(this.f81698m, this);
    }

    private boolean a(ViewGroup viewGroup, final BaseAdUnit adUnit) {
        if (adUnit == null) {
            return false;
        }
        this.f81701p = new i(viewGroup.getContext().getApplicationContext());
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (width <= 0 || height <= 0) {
            ViewGroup.LayoutParams layoutParams = this.f81701p.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -2);
                this.f81701p.setLayoutParams(layoutParams);
            }
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
            if (childMeasureSpec == 0) {
                childMeasureSpec = View.MeasureSpec.makeMeasureSpec(ClientMetadata.getInstance().getDisplayMetrics().widthPixels, 1073741824);
            }
            int i10 = layoutParams.height;
            this.f81701p.measure(childMeasureSpec, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            width = this.f81701p.getMeasuredWidth();
            height = this.f81701p.getMeasuredHeight();
        }
        if (width > 0 && height > 0) {
            this.f81701p.setAspectRatio((width * 1.0f) / height);
        }
        this.f81701p.b();
        this.f81701p.setViewStatusListener(new i.a() { // from class: com.sigmob.sdk.splash.r
            @Override // com.sigmob.sdk.splash.i.a
            public final void onWindowVisibilityChanged(int i11) {
                this.f81759a.a(adUnit, i11);
            }
        });
        return this.f81701p.a(adUnit, com.sigmob.sdk.base.utils.x.d(viewGroup));
    }
}
