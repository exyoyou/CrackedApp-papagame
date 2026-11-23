package com.sigmob.sdk.manager;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f extends b implements com.sigmob.sdk.base.common.h.b, com.sigmob.sdk.base.common.p, com.sigmob.sdk.base.network.f.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final Handler f80870h = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.manager.f.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 8193) {
                f fVar = f.this;
                if (fVar.f80838b == AdStatus.AdStatusLoading) {
                    fVar.f80870h.removeMessages(8193);
                    f.this.a(WindAdError.ERROR_SIGMOB_AD_TIME_OUT);
                }
            }
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f80871i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f80872j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected String f80873k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected long f80874l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected LoadAdRequest f80875m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected BaseAdUnit f80876n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected List<BaseAdUnit> f80877o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected com.sigmob.sdk.mraid.i f80878p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.k f80879q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected com.sigmob.sdk.videoAd.m f80880r;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.f80876n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        a(this.f80875m, com.sigmob.sdk.base.j.AutoNextPreload);
    }

    public String a() {
        return h(this.f80838b == AdStatus.AdStatusPlaying ? this.f80876n : e());
    }

    public String b() {
        return i(this.f80838b == AdStatus.AdStatusPlaying ? this.f80876n : e());
    }

    @Override // com.sigmob.sdk.base.common.p
    public void c(BaseAdUnit adUnit) {
        a("click", adUnit);
        if (w.b(this.f80880r)) {
            this.f80880r.onAdClicked(this.f80871i);
        }
    }

    @Override // com.sigmob.sdk.base.common.p
    public void d(BaseAdUnit adUnit) {
        a("dismissed", (Map<String, String>) null);
        AdStatus adStatus = this.f80838b;
        AdStatus adStatus2 = AdStatus.AdStatusClose;
        if (adStatus == adStatus2) {
            return;
        }
        this.f80838b = adStatus2;
        if (w.b(this.f80878p)) {
            this.f80878p.b(adUnit);
        }
        r();
        if (w.b(this.f80880r)) {
            this.f80880r.onAdClosed(this.f80871i);
        }
        this.f80870h.post(new Runnable() { // from class: com.sigmob.sdk.manager.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f80902b.t();
            }
        });
        q(adUnit);
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit e() {
        if (com.sigmob.sdk.base.utils.e.a(this.f80877o)) {
            return null;
        }
        return this.f80877o.get(0);
    }

    @Override // com.sigmob.sdk.manager.b
    public LoadAdRequest f() {
        return this.f80875m;
    }

    @Override // com.sigmob.sdk.manager.b
    public BaseAdUnit i() {
        return this.f80876n;
    }

    public Map<String, BiddingResponse> m() {
        return j(this.f80838b == AdStatus.AdStatusPlaying ? this.f80876n : e());
    }

    protected void n() {
        com.sigmob.sdk.videoAd.k kVar;
        if (this.f80838b != AdStatus.AdStatusLoading || (kVar = this.f80879q) == null) {
            return;
        }
        kVar.onAdPreLoadSuccess(this.f80871i);
    }

    public abstract com.sigmob.sdk.mraid.i o();

    protected void q() {
    }

    protected void r() {
    }

    public void s() {
        a("destroy", (Map<String, String>) null);
        if (t.b(this.f80872j)) {
            com.sigmob.sdk.base.common.h.b(this.f80872j);
        }
        if (t.b(this.f80873k)) {
            com.sigmob.sdk.base.common.h.b(this.f80873k);
        }
        g();
        this.f80879q = null;
        this.f80880r = null;
        this.f80876n = null;
        this.f80870h.removeCallbacksAndMessages(null);
        b(this);
    }

    private void q(BaseAdUnit adUnit) {
        if (adUnit == null || this.f80875m == null) {
            return;
        }
        int playMode = adUnit.getPlayMode();
        if (adUnit.getDisableAutoLoad() || playMode == 0 || !t.a((CharSequence) adUnit.getBid_token()) || adUnit.bidding_response != null) {
            return;
        }
        this.f80875m.setLastCampid(adUnit.getCamp_id());
        this.f80875m.setLastCrid(adUnit.getCrid());
        a(this.f80875m, com.sigmob.sdk.base.j.AutoNextPreload);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int error, String message, String requestId, LoadAdRequest loadAdRequest) {
        b(loadAdRequest);
        ad.a(PointCategory.RESPOND, "0", error, message, loadAdRequest);
        WindAdError windAdError = WindAdError.getWindAdError(error);
        if (windAdError == null) {
            windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setErrorMessage(error, message);
        }
        b(windAdError);
        a(windAdError);
    }

    @Override // com.sigmob.sdk.base.common.p
    public void b(BaseAdUnit adUnit) {
        a("start", adUnit);
        q();
        g();
        b(this);
        if (w.b(this.f80880r)) {
            this.f80880r.onAdShow(this.f80871i);
        }
        if (adUnit == null || this.f80875m == null) {
            return;
        }
        int playMode = adUnit.getPlayMode();
        if (!adUnit.getDisableAutoLoad() && playMode == 0 && t.a((CharSequence) adUnit.getBid_token()) && adUnit.bidding_response == null) {
            this.f80875m.setLastCampid(adUnit.getCamp_id());
            this.f80875m.setLastCrid(adUnit.getCrid());
            this.f80870h.post(new Runnable() { // from class: com.sigmob.sdk.manager.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f80903b.u();
                }
            });
        }
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean c() {
        com.sigmob.sdk.mraid.i iVar;
        BaseAdUnit baseAdUnitE = e();
        if (baseAdUnitE != null && !d() && g(baseAdUnitE) && (iVar = this.f80878p) != null && iVar.a(baseAdUnitE) && com.sigmob.sdk.base.common.h.e(baseAdUnitE.getUuid()) != null) {
            return true;
        }
        if (!w.b(baseAdUnitE)) {
            return false;
        }
        com.sigmob.sdk.base.common.h.g().e(baseAdUnitE);
        return false;
    }

    @Override // com.sigmob.sdk.manager.b
    public boolean d() {
        if (this.f80874l == 0) {
            return false;
        }
        return f(e());
    }

    @Override // com.sigmob.sdk.base.common.p
    public void e(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return;
        }
        com.sigmob.sdk.base.common.h.g().j(adUnit.getCamp_id());
        com.sigmob.sdk.base.common.h.g().i(adUnit.getCrid());
        g();
    }

    public void o(BaseAdUnit adUnit) {
        if (w.b(this.f80880r)) {
            this.f80880r.onVideoAdPlayEnd(this.f80871i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    protected com.sigmob.sdk.mraid.i p() {
        String message;
        String str;
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_PLAY_CHECK_FAIL;
        BaseAdUnit baseAdUnitE = e();
        AdStatus adStatus = this.f80838b;
        boolean z10 = false;
        if (adStatus == AdStatus.AdStatusPlaying) {
            message = WindAdError.ERROR_SIGMOB_AD_PLAY_HAS_PLAYING.getMessage();
        } else if (this.f80877o == null || baseAdUnitE == null) {
            message = "not ready adUnit";
        } else {
            if (adStatus == AdStatus.AdStatusReady) {
                if (this.f80878p == null) {
                    message = "interstitial object is null";
                } else if (d()) {
                    windAdError = WindAdError.ERROR_SIGMOB_EXPIRED;
                } else {
                    if (!g(baseAdUnitE)) {
                        str = "check ad unit endcard is invalid";
                    } else if (this.f80878p.a(baseAdUnitE)) {
                        z10 = true;
                    } else {
                        str = "check ad unit info is invalid";
                    }
                    windAdError.setMessage(str);
                }
                if (z10) {
                    return this.f80878p;
                }
                a(windAdError, this.f80880r);
                b(this);
                ad.a("play", windAdError, baseAdUnitE, this.f80875m);
                return null;
            }
            message = "ad status is not ready";
        }
        windAdError.setMessage(message);
        baseAdUnitE = null;
        if (z10) {
            return this.f80878p;
        }
        a(windAdError, this.f80880r);
        b(this);
        ad.a("play", windAdError, baseAdUnitE, this.f80875m);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(BaseAdUnit adUnit) {
        ad.a(PointCategory.LOADSTART, null, adUnit, null, this.f80875m, null);
        com.sigmob.sdk.base.network.h.a(adUnit, "load");
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit) {
        p(adUnit);
    }

    @Override // com.sigmob.sdk.base.common.p
    public void b(BaseAdUnit adUnit, String errMsg) {
        this.f80870h.removeMessages(8193);
        com.sigmob.sdk.base.utils.k.f(this.f80837a, "onInterstitialFailed: error = " + errMsg, new Object[0]);
        ad.a(PointCategory.LOADEND, "0", adUnit, null, this.f80875m, null);
        com.sigmob.sdk.base.network.h.a(adUnit, com.sigmob.sdk.base.common.a.f78891y);
        g();
        if (adUnit != null && adUnit.getPlayMode() == 0) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            windAdError.setMessage(errMsg);
            a(adUnit, "load", adUnit.getAd_type(), adUnit.getAdslot_id(), adUnit.getLoad_id(), windAdError);
            a(windAdError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(LoadAdRequest loadAdRequest) {
        ad.a(PointCategory.RESPOND, "0", loadAdRequest);
    }

    @Override // com.sigmob.sdk.base.common.h.b
    public void a(BaseAdUnit adUnit, String error) {
        a(adUnit, error, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BaseAdUnit adUnit, String error, boolean isPreload) {
        com.sigmob.sdk.base.network.h.a(adUnit, t.a((CharSequence) error) ? com.sigmob.sdk.base.common.a.f78890x : com.sigmob.sdk.base.common.a.f78891y);
        ad.a(PointCategory.LOADEND, t.a((CharSequence) error) ? "1" : "0", adUnit, null, this.f80875m, null);
        this.f80870h.removeMessages(8193);
        if (adUnit == null) {
            return;
        }
        if (isPreload) {
            a(adUnit, this.f80875m);
        }
        if (adUnit.getPlayMode() == 0) {
            if (t.a((CharSequence) error)) {
                this.f80874l = adUnit.getCreate_time();
                if (w.b(Boolean.valueOf(isPreload))) {
                    a((WindAdError) null);
                    return;
                }
                return;
            }
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            windAdError.setMessage(error);
            a(adUnit, "load", adUnit.getAd_type(), adUnit.getAdslot_id(), adUnit.getLoad_id(), windAdError);
            if (w.b(Boolean.valueOf(isPreload))) {
                a(windAdError);
            }
            g();
        }
    }

    protected void b(WindAdError error) {
        com.sigmob.sdk.videoAd.k kVar;
        if (this.f80838b != AdStatus.AdStatusLoading || (kVar = this.f80879q) == null) {
            return;
        }
        kVar.onAdPreLoadFail(error, this.f80871i);
    }

    private boolean b(LoadAdRequest request, String traceId) {
        if (!c()) {
            return false;
        }
        BaseAdUnit baseAdUnitE = e();
        if (w.b(baseAdUnitE)) {
            baseAdUnitE.setTraceId(traceId);
            baseAdUnitE.setRequestSceneType(request.getRequest_scene_type());
        }
        this.f80878p.a((Map<String, Object>) null, baseAdUnitE);
        SigmobLog.d("isExistCache: placementId = " + this.f80871i);
        n();
        a((WindAdError) null);
        l(baseAdUnitE);
        return true;
    }

    protected void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.base.j sceneType) {
        a(loadAdRequest, sceneType, (String) null, new com.sigmob.sdk.base.network.f.a() { // from class: com.sigmob.sdk.manager.f.2
            @Override // com.sigmob.sdk.base.network.f.a
            public void a(int error, String message, String request_id, LoadAdRequest loadAdRequest2) {
                f.this.b(loadAdRequest2);
                ad.a(PointCategory.RESPOND, "0", error, message, loadAdRequest2);
            }

            @Override // com.sigmob.sdk.base.network.f.a
            public void a(List<BaseAdUnit> adUnits, LoadAdRequest loadAdRequest2) {
                if (com.sigmob.sdk.base.utils.e.a(adUnits)) {
                    return;
                }
                BaseAdUnit baseAdUnit = adUnits.get(0);
                f.this.f80873k = baseAdUnit.getRequestId();
                f fVar = f.this;
                fVar.f80877o = adUnits;
                fVar.a(adUnits, loadAdRequest2, baseAdUnit);
                int request_scene_type = loadAdRequest2.getRequest_scene_type();
                f.this.a(request_scene_type);
                SigmobLog.d("preloadAdsRequest: sceneType = " + request_scene_type);
                if (w.b(f.this.f80878p) && !f.this.f80878p.a(baseAdUnit)) {
                    f.this.a(WindAdError.ERROR_SIGMOB_INFORMATION_LOSE);
                    return;
                }
                for (BaseAdUnit baseAdUnit2 : f.this.f80877o) {
                    if (b.n(baseAdUnit2)) {
                        com.sigmob.sdk.base.common.h.g().f(baseAdUnit2);
                    }
                }
                int playMode = baseAdUnit.getPlayMode();
                if (playMode != 0) {
                    f.this.f80874l = baseAdUnit.getCreate_time();
                }
                com.sigmob.sdk.base.common.h.a(adUnits);
                com.sigmob.sdk.base.common.h.b bVar = new com.sigmob.sdk.base.common.h.b() { // from class: com.sigmob.sdk.manager.f.2.1
                    @Override // com.sigmob.sdk.base.common.h.b
                    public void a(BaseAdUnit adUnit) {
                        f.this.p(adUnit);
                    }

                    @Override // com.sigmob.sdk.base.common.h.b
                    public void a(BaseAdUnit adUnit, String error) {
                        f.this.a(adUnit, error, true);
                    }
                };
                int creativeType = baseAdUnit.getCreativeType();
                SigmobLog.d("preloadAdsRequest: playMode = " + playMode + ", creativeType = " + creativeType);
                if (creativeType != com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()) {
                    if (playMode == 2) {
                        f.this.a(baseAdUnit, loadAdRequest2);
                        return;
                    } else {
                        f.this.f80878p.a(new HashMap(), baseAdUnit);
                        com.sigmob.sdk.base.common.h.g().a(baseAdUnit, bVar);
                        return;
                    }
                }
                boolean zA = new com.sigmob.sdk.base.common.e(adUnits, bVar, f.this.f80875m).a(false);
                SigmobLog.d("preloadAdsRequest: cache = " + zA);
                if (zA) {
                    f.this.f80878p.a(new HashMap(), baseAdUnit);
                } else {
                    f.this.a(baseAdUnit, loadAdRequest2);
                }
            }
        });
    }

    protected void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.base.j sceneType, String traceId, com.sigmob.sdk.base.network.f.a listener) {
        g();
        boolean zA = b.a(sceneType);
        loadAdRequest.setOriginVid(zA ? this.f80840d : "");
        loadAdRequest.setOriginPrice(zA ? this.f80841e : "");
        loadAdRequest.setRequest_scene_type(sceneType.a());
        loadAdRequest.setExpired(d());
        if (!t.b(traceId)) {
            traceId = b.j();
        }
        this.f80875m.setTraceId(traceId);
        a(loadAdRequest);
        com.sigmob.sdk.base.network.f.a(loadAdRequest, listener);
    }

    public void a(LoadAdRequest loadAdRequest, com.sigmob.sdk.videoAd.m windAdShowListener) {
        this.f80880r = windAdShowListener;
        this.f80875m = loadAdRequest;
        com.sigmob.sdk.mraid.i iVarP = p();
        if (iVarP == null) {
            return;
        }
        BaseAdUnit baseAdUnitE = e();
        this.f80876n = baseAdUnitE;
        this.f80872j = baseAdUnitE.getRequestId();
        String loadId = this.f80875m.getLoadId();
        String adSceneId = this.f80875m.getAdSceneId();
        String adSceneDesc = this.f80875m.getAdSceneDesc();
        this.f80876n.setLoad_id(loadId);
        this.f80876n.setAd_scene_id(adSceneId);
        this.f80876n.setAd_scene_desc(adSceneDesc);
        SigMacroCommon macroCommon = this.f80876n.getMacroCommon();
        if (t.b(adSceneDesc)) {
            macroCommon.addMarcoKey(SigMacroCommon._ADSCENE_, adSceneDesc);
        }
        if (t.b(adSceneId)) {
            macroCommon.addMarcoKey(SigMacroCommon._ADSCENEID_, adSceneId);
        }
        String video_url = this.f80876n.getVideo_url();
        if (t.b(video_url)) {
            macroCommon.addMarcoKey(SigMacroCommon._VMD5_, com.sigmob.sdk.base.common.h.g().k(this.f80876n.getVideoPath()));
            try {
                macroCommon.addMarcoKey(SigMacroCommon._VURL_, URLEncoder.encode(video_url, "UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                SigmobLog.e("show: error = " + e10.getMessage());
            }
        }
        boolean z10 = true;
        if (this.f80876n.getCreativeType() == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()) {
            if (!new com.sigmob.sdk.base.common.e(this.f80877o, this, this.f80875m).a(true)) {
                iVarP.a(new HashMap(), this.f80876n);
            }
        } else if (this.f80876n.getPlayMode() == 2) {
            iVarP.a(new HashMap(), this.f80876n);
            com.sigmob.sdk.base.common.h.g().a(this.f80876n, this);
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean(com.sigmob.sdk.base.n.f79596w, this.f80875m.isEnable_keep_on() || com.sigmob.sdk.base.o.a().i());
        if (!this.f80875m.isEnable_screen_lock_displayad() && !com.sigmob.sdk.base.o.a().h()) {
            z10 = false;
        }
        bundle.putBoolean(com.sigmob.sdk.base.n.f79595v, z10);
        iVarP.a(this.f80876n, bundle);
        this.f80838b = AdStatus.AdStatusPlaying;
        this.f80874l = 0L;
    }

    public void a(LoadAdRequest request, String traceId) {
        this.f80838b = AdStatus.AdStatusLoading;
        if (request == null || t.a((CharSequence) request.getPlacementId())) {
            SigmobLog.e("loadAd: request or placementId is null.");
            a(WindAdError.ERROR_SIGMOB_PLACEMENTID_EMPTY);
            return;
        }
        try {
            WindAdError sigMobError = Sigmob.getInstance().getSigMobError();
            if (w.b(sigMobError)) {
                SigmobLog.e("loadAd: error = " + sigMobError);
                PointEntitySigmobError.SigmobError("load", sigMobError.getErrorCode(), sigMobError.getMessage()).commit();
                a(sigMobError);
                return;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (t.b(request.getBidToken())) {
            g();
        }
        this.f80871i = request.getPlacementId();
        this.f80875m = request;
        if (this.f80878p == null) {
            this.f80878p = o();
        }
        if (b(request, traceId)) {
            return;
        }
        if (t.b(this.f80872j)) {
            com.sigmob.sdk.base.common.h.b(this.f80872j);
        }
        if (t.b(this.f80873k)) {
            com.sigmob.sdk.base.common.h.b(this.f80873k);
        }
        request.setLastCampid(com.sigmob.sdk.base.common.h.g().o());
        request.setLastCrid(com.sigmob.sdk.base.common.h.g().n());
        a(request, com.sigmob.sdk.base.j.NormalRequest, traceId, this);
        this.f80870h.sendEmptyMessageDelayed(8193, com.sigmob.sdk.base.o.a().x());
    }

    public void a(com.sigmob.sdk.videoAd.k windAdLoadListener) {
        this.f80879q = windAdLoadListener;
    }

    protected void a(WindAdError error) {
        if (this.f80838b != AdStatus.AdStatusLoading) {
            return;
        }
        if (error == null) {
            this.f80838b = AdStatus.AdStatusReady;
            a(this);
            a(e(), this.f80875m);
        } else {
            this.f80838b = AdStatus.AdStatusNone;
        }
        String strH = h();
        com.sigmob.sdk.videoAd.k kVar = this.f80879q;
        if (kVar == null) {
            return;
        }
        if (error == null) {
            kVar.onAdLoadSuccess(strH);
        } else {
            kVar.onAdLoadError(error, strH);
        }
    }

    public void a(String key, String value) {
        a(this.f80838b == AdStatus.AdStatusPlaying ? this.f80876n : e(), key, value);
    }

    @Override // com.sigmob.sdk.manager.b
    public void a(String originVid, String originPrice, com.sigmob.sdk.base.j requestSceneType) {
        super.a(originVid, originPrice, requestSceneType);
        LoadAdRequest loadAdRequestF = f();
        if (loadAdRequestF != null && t.a((CharSequence) loadAdRequestF.getBidToken())) {
            loadAdRequestF.setLastCampid("");
            loadAdRequestF.setLastCrid("");
            a(loadAdRequestF, requestSceneType);
        }
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(List<BaseAdUnit> adUnits, LoadAdRequest loadAdRequest) {
        try {
            if (com.sigmob.sdk.base.utils.e.a(adUnits)) {
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
                b(windAdError);
                ad.a(PointCategory.RESPOND, "0", windAdError.getErrorCode(), windAdError.getMessage(), loadAdRequest);
                a(windAdError);
                return;
            }
            BaseAdUnit baseAdUnit = adUnits.get(0);
            this.f80872j = baseAdUnit.getRequestId();
            this.f80877o = adUnits;
            a(adUnits, loadAdRequest, baseAdUnit);
            if (this.f80878p == null) {
                this.f80878p = o();
            }
            if (!this.f80878p.a(baseAdUnit)) {
                a(WindAdError.ERROR_SIGMOB_INFORMATION_LOSE);
                return;
            }
            n();
            com.sigmob.sdk.base.common.h.a(adUnits);
            for (BaseAdUnit baseAdUnit2 : this.f80877o) {
                if (b.n(baseAdUnit2)) {
                    com.sigmob.sdk.base.common.h.g().f(baseAdUnit2);
                }
            }
            int playMode = baseAdUnit.getPlayMode();
            if (playMode != 0) {
                this.f80874l = baseAdUnit.getCreate_time();
                a((WindAdError) null);
            }
            if (baseAdUnit.getCreativeType() == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()) {
                if (new com.sigmob.sdk.base.common.e(adUnits, this, this.f80875m).a(false)) {
                    this.f80878p.a(new HashMap(), baseAdUnit);
                    return;
                }
                return;
            }
            if (playMode == 2) {
                return;
            }
            this.f80878p.a(new HashMap(), baseAdUnit);
            com.sigmob.sdk.base.common.h.g().a(baseAdUnit, this);
        } catch (Throwable th) {
            String message = th.getMessage();
            SigmobLog.e("onSuccess: error = " + message);
            g();
            WindAdError windAdError2 = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
            int errorCode = windAdError2.getErrorCode();
            windAdError2.setMessage(message);
            ad.a(PointCategory.RESPOND, "0", errorCode, message, loadAdRequest);
            a(windAdError2);
        }
    }
}
