package com.sigmob.sdk.manager;

import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.mta.PointEntitySigmobRequest;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ConcurrentHashMap<String, Boolean> f80836h = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f80837a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AdStatus f80838b = AdStatus.AdStatusNone;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f80839c = 8193;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f80840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f80841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Integer f80842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f80843g;

    public static String j() {
        return UUID.randomUUID().toString();
    }

    public static boolean n(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return false;
        }
        String ad_source_channel = adUnit.getAd_source_channel();
        if (t.a((CharSequence) ad_source_channel)) {
            return false;
        }
        return ad_source_channel.equalsIgnoreCase(com.sigmob.sdk.base.n.f79582i);
    }

    public abstract boolean c();

    public abstract boolean d();

    public abstract BaseAdUnit e();

    public abstract LoadAdRequest f();

    protected abstract void g();

    protected boolean g(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return false;
        }
        int playMode = adUnit.getPlayMode();
        SigmobLogger.d(this.f80837a, "checkAdUnit: playMode = " + playMode, new Object[0]);
        if (playMode != 0) {
            return true;
        }
        try {
            boolean zIsEndCardIndexExist = adUnit.isEndCardIndexExist();
            SigmobLogger.d(this.f80837a, "checkAdUnit: isEndCardReady = " + zIsEndCardIndexExist, new Object[0]);
            return zIsEndCardIndexExist;
        } catch (Throwable th) {
            SigmobLogger.e(this.f80837a, "checkAdUnit: error = " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public String h() {
        LoadAdRequest loadAdRequestF = f();
        if (loadAdRequestF == null) {
            return null;
        }
        return loadAdRequestF.getPlacementId();
    }

    public abstract BaseAdUnit i();

    protected String i(BaseAdUnit adUnit) {
        BiddingResponse biddingResponse;
        String str;
        if (adUnit == null || (biddingResponse = adUnit.bidding_response) == null || (str = biddingResponse.currency) == null) {
            return null;
        }
        SigmobLogger.d(this.f80837a, "getCurrency: currency = " + str, new Object[0]);
        return str;
    }

    public Integer k() {
        return this.f80842f;
    }

    public String l() {
        return this.f80843g;
    }

    protected Map<String, String> m(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return null;
        }
        List<FrequencyControl> frequencyControl = adUnit.getFrequencyControl();
        if (com.sigmob.sdk.base.utils.e.a(frequencyControl)) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(PointParamKey.FREQUENCY_CONTROL_LIST, com.sigmob.sdk.base.utils.i.a(frequencyControl));
        for (FrequencyControl frequencyControl2 : frequencyControl) {
            SigmobLogger.d(this.f80837a, "频控策略 ID = " + frequencyControl2.strategy_id + ", 频控策略类型 = " + frequencyControl2.frequency_control_event, new Object[0]);
        }
        return map;
    }

    public static void b(final BaseAdUnit adUnit, String category, final String url) {
        k(adUnit);
        try {
            Thread.sleep(10L);
        } catch (InterruptedException e10) {
            SigmobLogger.e("BaseAdManager", "trackDeeplinkResult: error = " + e10.getMessage(), new Object[0]);
        }
        com.sigmob.sdk.base.network.h.a(adUnit, category);
        ad.a(category, (String) null, adUnit, new ad.a() { // from class: com.sigmob.sdk.manager.i
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                b.a(url, adUnit, obj);
            }
        });
    }

    public static boolean c(Integer requestSceneType) {
        return requestSceneType != null && requestSceneType.intValue() == com.sigmob.sdk.base.j.NormalRequest.a();
    }

    public static void k(BaseAdUnit adUnit) {
        int interactionType;
        if (adUnit == null || (interactionType = adUnit.getInteractionType()) == 7 || interactionType == 8 || !adUnit.enableDetectPkg()) {
            return;
        }
        String str = adUnit.canOpen() ? PointCategory.CAN_DP : PointCategory.NO_CAN_DP;
        ad.a(str, (String) null, adUnit, (ad.a) null);
        String requestId = adUnit.getRequestId();
        ConcurrentHashMap<String, Boolean> concurrentHashMap = f80836h;
        if (concurrentHashMap.containsKey(requestId)) {
            return;
        }
        com.sigmob.sdk.base.network.h.a(adUnit, str);
        concurrentHashMap.put(requestId, Boolean.TRUE);
    }

    public void a(int requestSceneTypeValue) {
        boolean z10 = !c();
        boolean z11 = z10 && a(Integer.valueOf(requestSceneTypeValue));
        SigmobLogger.i(this.f80837a, "addToWindAdExpirationManager: allowAdd = " + z11 + ", unready = " + z10 + ", requestSceneTypeValue = " + requestSceneTypeValue, new Object[0]);
        if (z11) {
            a(this);
        }
    }

    public void d(Integer bidFloor) {
        this.f80842f = bidFloor;
    }

    protected boolean f(BaseAdUnit adUnit) {
        return adUnit != null && adUnit.isExpiredAd();
    }

    protected String h(BaseAdUnit adUnit) {
        BiddingResponse biddingResponse;
        Integer num;
        if (adUnit != null && (biddingResponse = adUnit.bidding_response) != null && (num = biddingResponse.ecpm) != null) {
            try {
                String strValueOf = String.valueOf(num);
                SigmobLogger.d(this.f80837a, "getEcpm: eCPM = " + strValueOf, new Object[0]);
                return strValueOf;
            } catch (Exception e10) {
                SigmobLogger.e(this.f80837a, "getEcpm: error = " + e10.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    public Map<String, BiddingResponse> j(BaseAdUnit adUnit) {
        if (adUnit == null || adUnit.bidding_response == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(adUnit.getRequestId(), adUnit.bidding_response);
        return map;
    }

    protected void l(final BaseAdUnit adUnit) {
        a(adUnit, new ad.a() { // from class: com.sigmob.sdk.manager.k
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f80893a.a(adUnit, obj);
            }
        });
    }

    public void a(AdStatus adStatus) {
        this.f80838b = adStatus;
    }

    public void b(b adManager) {
        d.a().b(adManager);
    }

    public static boolean b(Integer requestSceneType) {
        if (requestSceneType == null) {
            return false;
        }
        return requestSceneType.intValue() == com.sigmob.sdk.base.j.AutoNextPreload.a() || requestSceneType.intValue() == com.sigmob.sdk.base.j.SplashCloseRequest.a();
    }

    protected void a(BaseAdUnit adUnit, ad.a extra) {
        ad.a(PointCategory.RESPOND, "1", adUnit, extra);
    }

    public void a(BaseAdUnit adUnit, LoadAdRequest adRequest) {
        if (a(Integer.valueOf(adRequest.getRequest_scene_type()))) {
            this.f80838b = AdStatus.AdStatusReady;
            a(this);
        }
        ad.a("ready", null, adUnit, null, adRequest, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
            options.put(PointParamKey.IS_CACHE, "1");
            Map<String, String> mapM = m(baseAdUnit);
            if (com.sigmob.sdk.base.utils.e.b(mapM)) {
                options.putAll(mapM);
            }
        }
    }

    protected void a(BaseAdUnit adUnit, String cate, final int adType, final String placementId, final String loadId, WindAdError adError) {
        ad.a(cate, adError, adUnit, new ad.a() { // from class: com.sigmob.sdk.manager.g
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                b.a(loadId, placementId, adType, obj);
            }
        });
    }

    public void a(BaseAdUnit adUnit, String key, String value) {
        if (adUnit == null || adUnit.bidding_response == null) {
            return;
        }
        adUnit.getMacroCommon().addMarcoKey(key, value);
    }

    protected void a(LoadAdRequest loadAdRequest) {
        loadAdRequest.setRequestId("");
        final String traceId = loadAdRequest.getTraceId();
        final int request_scene_type = loadAdRequest.getRequest_scene_type();
        if (request_scene_type == com.sigmob.sdk.base.j.NormalRequest.a()) {
            return;
        }
        ad.a(PointCategory.REQUEST, a(Integer.valueOf(request_scene_type)) ? "init" : "play", (WindAdRequest) null, loadAdRequest, new ad.a() { // from class: com.sigmob.sdk.manager.l
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f80895a.a(traceId, request_scene_type, obj);
            }
        });
    }

    public void a(b adManager) {
        d.a().a(adManager);
        e.a().a(adManager);
    }

    protected void a(WindAdError error, com.sigmob.sdk.videoAd.m listener) {
        AdStatus adStatus = this.f80838b;
        if (adStatus != AdStatus.AdStatusLoading && adStatus != AdStatus.AdStatusClose) {
            g();
            this.f80838b = AdStatus.AdStatusNone;
        }
        if (listener == null || error == null) {
            return;
        }
        listener.onAdShowError(error, h());
    }

    public void a(String currency) {
        this.f80843g = currency;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i10, Object obj) {
        if (obj instanceof PointEntitySigmobRequest) {
            PointEntitySigmobRequest pointEntitySigmobRequest = (PointEntitySigmobRequest) obj;
            pointEntitySigmobRequest.setTrace_id(str);
            pointEntitySigmobRequest.setAdx_id(null);
            Map<String, String> options = pointEntitySigmobRequest.getOptions();
            options.putAll(d.a().a(this, Integer.valueOf(i10)));
            pointEntitySigmobRequest.setOptions(options);
        }
    }

    protected void a(String event, BaseAdUnit adUnit) {
        e.a().a(event, adUnit, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (t.b(str)) {
                pointEntitySigmob.setFinal_url(str);
            }
            if (baseAdUnit == null) {
                return;
            }
            AndroidMarket androidMarket = baseAdUnit.getAndroidMarket();
            if (baseAdUnit.getInteractionType() == 8 || w.b(androidMarket)) {
                pointEntitySigmob.getOptions().put(PointParamKey.FAST_PKG, com.sigmob.sdk.b.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, int i10, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            PointEntitySigmobError pointEntitySigmobError = (PointEntitySigmobError) obj;
            pointEntitySigmobError.setLoad_id(str);
            pointEntitySigmobError.setPlacement_id(str2);
            pointEntitySigmobError.setAdtype(String.valueOf(i10));
        }
    }

    public void a(String originVid, String originPrice, com.sigmob.sdk.base.j requestSceneType) {
        this.f80840d = originVid;
        this.f80841e = originPrice;
        SigmobLogger.i(this.f80837a, "expiredAdReload: originVid = " + originVid + ", originPrice = " + originPrice, new Object[0]);
    }

    public void a(String category, final Map<String, String> option) {
        BaseAdUnit baseAdUnitI = i();
        if (com.sigmob.sdk.base.o.a().ag()) {
            ad.a(category, (String) null, baseAdUnitI, new ad.a() { // from class: com.sigmob.sdk.manager.h
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    b.a(option, obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
            Map<String, String> mapM = m(baseAdUnit);
            if (com.sigmob.sdk.base.utils.e.b(mapM)) {
                options.putAll(mapM);
            }
            pointEntitySigmob.setOptions(options);
        }
    }

    protected void a(final List<BaseAdUnit> adUnits, LoadAdRequest loadAdRequest, final BaseAdUnit adUnit) {
        ad.a(PointCategory.RESPOND, "1", adUnit, null, loadAdRequest, new ad.a() { // from class: com.sigmob.sdk.manager.j
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f80890a.a(adUnits, adUnit, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Map map, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (map == null) {
                return;
            }
            pointEntitySigmob.getOptions().putAll(map);
        }
    }

    public static boolean a(com.sigmob.sdk.base.j requestSceneType) {
        if (requestSceneType == null) {
            return false;
        }
        return a(Integer.valueOf(requestSceneType.a()));
    }

    public static boolean a(Integer requestSceneType) {
        if (requestSceneType == null) {
            return false;
        }
        return requestSceneType.intValue() == com.sigmob.sdk.base.j.ReloadAfterExpiration.a() || requestSceneType.intValue() == com.sigmob.sdk.base.j.ActiveFailureReload.a();
    }
}
