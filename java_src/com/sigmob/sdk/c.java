package com.sigmob.sdk;

import android.os.Handler;
import android.os.Looper;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.z;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.manager.f;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c<T extends com.sigmob.sdk.manager.f> extends com.sigmob.sdk.base.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Handler f80308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f80309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected T f80310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected T f80311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected LoadAdRequest f80312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.k f80313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected c<T>.a f80314g;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f80315m;

    /* JADX INFO: renamed from: com.sigmob.sdk.c$1, reason: invalid class name */
    class AnonymousClass1 implements com.sigmob.sdk.videoAd.m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.sigmob.sdk.videoAd.m f80316a;

        AnonymousClass1(final com.sigmob.sdk.videoAd.m val$showListener) {
            this.f80316a = val$showListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(com.sigmob.sdk.base.utils.d.a aVar, String str, com.sigmob.sdk.videoAd.m mVar) {
            if (com.sigmob.sdk.base.utils.d.a(aVar)) {
                SigmobLog.i("onAdClicked: placementId = " + str);
                if (w.b(mVar)) {
                    mVar.onAdClicked(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (w.b(mVar)) {
                mVar.onVideoAdPlayEnd(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (w.b(mVar)) {
                mVar.onVideoAdPlayComplete(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (w.b(mVar)) {
                mVar.onAdShow(str);
            }
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdClicked(final String placementId) {
            String str = c.this.f80315m;
            T t10 = c.this.f80310c;
            final com.sigmob.sdk.base.utils.d.a aVarB = com.sigmob.sdk.base.utils.d.b(str, t10 == null ? null : t10.i());
            if (w.b(c.this.f80310c)) {
                HashMap map = new HashMap();
                Integer numValueOf = Integer.valueOf(aVarB == null ? 0 : aVarB.f79718a.intValue());
                Integer numValueOf2 = Integer.valueOf(aVarB == null ? com.sigmob.sdk.base.utils.d.f79716b : aVarB.f79719b.intValue());
                map.put(ClickCommon.CLICK_LOSE_RATE, String.valueOf(numValueOf));
                map.put(ClickCommon.CLICK_CB_STATE, String.valueOf(numValueOf2));
                c.this.f80310c.a("click_callback", map);
            }
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.m
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.a(aVarB, placementId, mVar);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdClosed(final String placementId) {
            SigmobLog.i("onAdClosed: placementId = " + placementId);
            ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusClose;
            if (w.b(c.this.f80310c)) {
                c.this.f80310c.a("close_callback", null);
            }
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f80821b.a(mVar, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdShow(final String placementId) {
            SigmobLog.i("onAdShow: placementId = " + placementId);
            ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusPlaying;
            if (w.b(c.this.f80310c)) {
                c.this.f80310c.a("show_callback", null);
            }
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.o
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.d(mVar, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onAdShowError(final WindAdError error, final String placementId) {
            SigmobLog.e("onAdShowError: error = " + error.toString() + ", placementId = " + placementId);
            ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusClose;
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81668b.a(mVar, error, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onVideoAdPlayComplete(final String placementId) {
            SigmobLog.i("onVideoAdPlayComplete: placementId = " + placementId);
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.p
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.c(mVar, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.m
        public void onVideoAdPlayEnd(final String placementId) {
            SigmobLog.i("onVideoAdPlayEnd: placementId = " + placementId);
            Handler handler = c.this.f80308a;
            final com.sigmob.sdk.videoAd.m mVar = this.f80316a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.n
                @Override // java.lang.Runnable
                public final void run() {
                    c.AnonymousClass1.b(mVar, placementId);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.sigmob.sdk.videoAd.m mVar, WindAdError windAdError, String str) {
            if (w.b(mVar)) {
                mVar.onAdShowError(windAdError, str);
            }
            if (w.b(c.this.f80311d)) {
                if (w.b(c.this.f80310c)) {
                    c.this.f80310c.s();
                }
                c cVar = c.this;
                cVar.f80310c = cVar.f80311d;
                ((com.sigmob.sdk.base.m) cVar).f79498h = AdStatus.AdStatusReady;
                c.this.f80311d = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.sigmob.sdk.videoAd.m mVar, String str) {
            if (w.b(mVar)) {
                mVar.onAdClosed(str);
            }
            if (w.b(c.this.f80311d)) {
                if (w.b(c.this.f80310c)) {
                    c.this.f80310c.s();
                }
                c cVar = c.this;
                cVar.f80310c = cVar.f80311d;
                ((com.sigmob.sdk.base.m) cVar).f79498h = AdStatus.AdStatusReady;
                c.this.f80311d = null;
            }
        }
    }

    protected class a implements com.sigmob.sdk.videoAd.k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.videoAd.k f80319b;

        public a(com.sigmob.sdk.videoAd.k windAdLoadListener) {
            this.f80319b = windAdLoadListener;
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdLoadError(final WindAdError error, final String placementId) {
            SigmobLog.e("onAdLoadError: error = " + error.toString() + ", placementId = " + placementId + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f79498h);
            if (((com.sigmob.sdk.base.m) c.this).f79498h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusNone;
            }
            c.this.f80308a.post(new Runnable() { // from class: com.sigmob.sdk.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81672b.a(error, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdLoadSuccess(final String placementId) {
            SigmobLog.i("onAdLoadSuccess: placementId = " + placementId + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f79498h);
            if (((com.sigmob.sdk.base.m) c.this).f79498h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusReady;
            }
            c.this.f80308a.post(new Runnable() { // from class: com.sigmob.sdk.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81768b.b(placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdPreLoadFail(final WindAdError error, final String placementId) {
            SigmobLog.e("onAdPreLoadFail: error = " + error.toString() + ", placementId = " + placementId + ", adStatus = " + ((com.sigmob.sdk.base.m) c.this).f79498h);
            if (((com.sigmob.sdk.base.m) c.this).f79498h != AdStatus.AdStatusPlaying) {
                ((com.sigmob.sdk.base.m) c.this).f79498h = AdStatus.AdStatusNone;
            }
            c.this.f80308a.post(new Runnable() { // from class: com.sigmob.sdk.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81772b.b(error, placementId);
                }
            });
        }

        @Override // com.sigmob.sdk.videoAd.k
        public void onAdPreLoadSuccess(final String placementId) {
            SigmobLog.i("onAdPreLoadSuccess: placementId = " + placementId);
            c.this.f80308a.post(new Runnable() { // from class: com.sigmob.sdk.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81770b.a(placementId);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(WindAdError windAdError, String str) {
            if (w.b(this.f80319b)) {
                this.f80319b.onAdPreLoadFail(windAdError, str);
            }
        }

        public void a() {
            this.f80319b = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(WindAdError windAdError, String str) {
            if (w.b(this.f80319b)) {
                this.f80319b.onAdLoadError(windAdError, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            if (w.b(this.f80319b)) {
                this.f80319b.onAdLoadSuccess(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (w.b(this.f80319b)) {
                this.f80319b.onAdPreLoadSuccess(str);
            }
        }
    }

    protected c(WindAdRequest windAdRequest, boolean z10, int i10) {
        super(windAdRequest, z10);
        this.f80315m = getClass().getSimpleName();
        this.f80308a = new Handler(Looper.getMainLooper());
        this.f80309b = i10;
        com.sigmob.sdk.base.common.h.g().a(e(), windAdRequest.getAdType());
        this.f80310c = (T) d();
    }

    protected abstract T d();

    public void destroy() {
        this.f80308a.removeCallbacksAndMessages(null);
        if (w.b(this.f80314g)) {
            this.f80314g.a();
            this.f80314g = null;
        }
        this.f80313f = null;
        if (w.b(this.f80310c)) {
            this.f80310c.s();
            this.f80310c = null;
        }
        if (w.b(this.f80311d)) {
            this.f80311d.s();
            this.f80311d = null;
        }
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        T t10 = this.f80310c;
        if (t10 == null) {
            return null;
        }
        return t10.b();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        T t10 = this.f80310c;
        if (t10 == null) {
            return null;
        }
        return t10.a();
    }

    public boolean isReady() {
        return g();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd() {
        super.loadAd();
        return a();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String bidToken) {
        super.loadAd(bidToken);
        return a();
    }

    private void a(T adManager) {
        String strJ = com.sigmob.sdk.manager.b.j();
        a((z) null, strJ);
        adManager.a(this.f80312e, strJ);
    }

    @Override // com.sigmob.sdk.base.m
    protected Map<String, BiddingResponse> b() {
        T t10 = this.f80310c;
        if (t10 == null) {
            return null;
        }
        return t10.m();
    }

    @Override // com.sigmob.sdk.base.m
    protected com.sigmob.sdk.manager.b c() {
        return this.f80310c;
    }

    protected void a(com.sigmob.sdk.videoAd.k adLoadListener) {
        this.f80313f = adLoadListener;
    }

    protected void a(com.sigmob.sdk.videoAd.l windAdRewardListener) {
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(WindAdError error) {
        if (this.f79498h != AdStatus.AdStatusLoading) {
            this.f79498h = AdStatus.AdStatusNone;
        }
        if (w.b(this.f80313f)) {
            String strE = e();
            this.f80313f.onAdPreLoadFail(error, strE);
            this.f80313f.onAdLoadError(error, strE);
        }
    }

    protected void a(WindAdError error, String errMsg) {
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", error.getErrorCode(), errMsg);
        pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(this.f80309b));
        pointEntitySigmobErrorSigmobError.setPlacement_id(e());
        pointEntitySigmobErrorSigmobError.commit();
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(String key, String value) {
        T t10 = this.f80310c;
        if (t10 == null) {
            return;
        }
        t10.a(key, value);
    }

    protected boolean a() {
        T t10;
        String strE = e();
        try {
            if (!h()) {
                return false;
            }
            if (w.b(this.f80314g)) {
                this.f80314g.a();
                this.f80314g = null;
            }
            this.f80314g = new a(this.f80313f);
            T t11 = this.f80310c;
            if (t11 == null) {
                this.f80310c = (T) d();
            } else if (t11.c() && this.f79498h == AdStatus.AdStatusReady) {
                this.f80314g.onAdPreLoadSuccess(strE);
                this.f80314g.onAdLoadSuccess(strE);
                return true;
            }
            LoadAdRequest loadAdRequest = new LoadAdRequest(this.f79502l);
            this.f80312e = loadAdRequest;
            loadAdRequest.setBidToken(getBid_token());
            this.f80312e.setBidFloor(Integer.valueOf(getBidFloor()));
            this.f80312e.setCurrency(i());
            this.f80310c.a(this.f80314g);
            if (this.f79498h == AdStatus.AdStatusPlaying) {
                if (this.f80311d == null) {
                    T t12 = (T) d();
                    this.f80311d = t12;
                    t12.a(this.f80314g);
                    t10 = this.f80311d;
                } else if (w.b(this.f80313f)) {
                    SigmobLog.i("onVideoAdLoadSuccess: placementId = " + strE);
                    this.f80313f.onAdLoadSuccess(strE);
                }
                return true;
            }
            this.f79498h = AdStatus.AdStatusLoading;
            t10 = this.f80310c;
            a(t10);
            return true;
        } catch (Throwable th) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", windAdError.getErrorCode(), th.getMessage());
            pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(this.f80309b));
            pointEntitySigmobErrorSigmobError.setPlacement_id(strE);
            pointEntitySigmobErrorSigmobError.commit();
            SigmobLog.e("onVideoAdLoadError: error = " + th.getMessage() + ", placementId = " + strE + ", adStatus = " + this.f79498h);
            if (w.b(this.f80313f)) {
                this.f80313f.onAdLoadError(windAdError, strE);
            }
            return false;
        }
    }

    protected boolean a(HashMap<String, String> options, com.sigmob.sdk.videoAd.m windAdShowListener) {
        return a(options, windAdShowListener, (com.sigmob.sdk.videoAd.l) null);
    }

    protected boolean a(HashMap<String, String> options, com.sigmob.sdk.videoAd.m showListener, com.sigmob.sdk.videoAd.l rewardListener) {
        try {
            if (this.f80312e == null) {
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_PLACEMENTID_EMPTY;
                a(windAdError, "loadAdRequest is null.");
                if (!w.b(showListener)) {
                    return false;
                }
                showListener.onAdShowError(windAdError, e());
                return false;
            }
            if (w.b(options)) {
                if (options.containsKey("scene_id")) {
                    this.f80312e.setAd_scene_id(options.get("scene_id"));
                }
                if (options.containsKey("scene_desc")) {
                    this.f80312e.setAd_scene_desc(options.get("scene_desc"));
                }
            }
            if (this.f80309b == 1) {
                a(rewardListener);
            }
            this.f80310c.a(this.f80312e, new AnonymousClass1(showListener));
            return true;
        } catch (Throwable th) {
            a(WindAdError.ERROR_SIGMOB_REQUEST, th.getMessage());
            SigmobLog.e("show: error = " + th.getMessage());
        }
    }
}
