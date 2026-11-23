package com.windmill.sdk.common;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdStatus;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.FreEntity;
import com.windmill.sdk.point.PointEntityWind;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes8.dex */
public class j extends l implements WMAdConnector {
    private static WeakReference<ExecutorService> D;
    private a A;
    private com.windmill.sdk.strategy.s.b F;
    private com.windmill.sdk.strategy.l.a G;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f86672u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f86674w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f86675x;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f86673v = 3000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f86676y = 15000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f86677z = "";
    private boolean B = false;
    private long C = -1;
    private String E = "----WMBannerAdController";

    /* JADX INFO: renamed from: com.windmill.sdk.common.j$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86679a;

        static {
            int[] iArr = new int[l.b.values().length];
            f86679a = iArr;
            try {
                iArr[l.b.WindFilterKeepGoing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86679a[l.b.WindFilterInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86679a[l.b.WindFilterParameter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86679a[l.b.WindFilterGdpr.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86679a[l.b.WindFilterLoadingBreak.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86679a[l.b.WindFilterLoadInterval.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public interface a {
        void checkVisibleStart();

        boolean isCanRefresh();
    }

    public interface b {
        void onAdAutoRefreshFail(WindMillError error, String placementId);

        void onAdAutoRefreshed(AdInfo adInfo, View bannerView);

        void onAdClicked(AdInfo adInfo);

        void onAdClosed(AdInfo adInfo);

        void onAdLoadError(WindMillError error, String placementId);

        void onAdLoadSuccess(View bannerView, String placementId);

        void onAdShown(AdInfo adInfo);
    }

    public j(Activity activity, WindMillAdRequest request, b windAdListener, a refreshListener) {
        this.f86724d = new ArrayList();
        this.f86725e = new HashMap();
        this.f86734n = new HashMap();
        a(activity);
        this.f86674w = windAdListener;
        this.A = refreshListener;
        this.f86735o = request;
        this.f86672u = request.getPlacementId();
        try {
            this.f86675x = new Handler(WindMillAd.sharedAds().getTobidHandlerLooper()) { // from class: com.windmill.sdk.common.j.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) throws Throwable {
                    int i10 = msg.what;
                    if (i10 != 1000 && i10 != 1001) {
                        if (i10 == 1003) {
                            j jVar = j.this;
                            jVar.a(jVar.f86675x, msg.arg1);
                            return;
                        }
                        if (i10 == 1004) {
                            j jVar2 = j.this;
                            jVar2.b(jVar2.f86675x, msg.arg1);
                            return;
                        }
                        if (i10 != 2000) {
                            if (i10 != 3000) {
                                return;
                            }
                            WMLogUtil.d("------------mRefreshTask------------" + System.currentTimeMillis());
                            if (j.this.A == null || !j.this.A.isCanRefresh()) {
                                j.this.B = true;
                                return;
                            } else {
                                j.this.b();
                                return;
                            }
                        }
                        try {
                            Object obj = msg.obj;
                            if (obj instanceof com.windmill.sdk.strategy.a) {
                                WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                                j.this.adapterDidFailToLoadAd(null, (com.windmill.sdk.strategy.a) obj, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            WMLogUtil.e("loadAd strategy name" + th.getMessage());
                            return;
                        }
                    }
                    WMLogUtil.e("----loadAd---动态总超时---超时阶段：" + j.this.f86729i + "  thread:：" + Thread.currentThread() + " loadId：" + j.this.f86677z);
                    j jVar3 = j.this;
                    String str = jVar3.f86729i;
                    jVar3.a(jVar3.f86675x);
                    if (j.this.f86721a == AdStatus.AdStatusLoading) {
                        WMLogUtil.e("------------loadAd-----总超时------------" + j.this.f86677z);
                        j jVar4 = j.this;
                        jVar4.a(jVar4.f86727g);
                        com.windmill.sdk.strategy.a aVarJ = j.this.j();
                        if (aVarJ != null) {
                            aVarJ.h(1);
                            if (aVarJ.Y() == 1) {
                                if (aVarJ.Z() == 1) {
                                    if (j.this.a(aVarJ)) {
                                        return;
                                    }
                                } else if (aVarJ.Z() == 0 && aVarJ.v()) {
                                    j jVar5 = j.this;
                                    jVar5.adapterDidLoadAdSuccessAd(jVar5.f(aVarJ), aVarJ);
                                    return;
                                }
                            } else if (!aVarJ.C()) {
                                WMAdBaseAdapter wMAdBaseAdapterF = j.this.f(aVarJ);
                                if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isLoadSuccess()) {
                                    j.this.a(wMAdBaseAdapterF, aVarJ);
                                    return;
                                }
                            } else if (aVarJ.v()) {
                                aVarJ.i(false);
                                j jVar6 = j.this;
                                jVar6.adapterDidLoadAdSuccessAd(jVar6.f(aVarJ), aVarJ);
                                return;
                            }
                        }
                        com.windmill.sdk.strategy.s sVar = j.this.f86727g;
                        if (sVar != null) {
                            sVar.j();
                        }
                        j jVar7 = j.this;
                        jVar7.a(jVar7.f86735o, jVar7.f86724d, jVar7.f86677z);
                        j.this.c();
                        j.this.a(WindMillError.ERROR_LOAD_AD_TIME_OUT, (com.windmill.sdk.strategy.a) null, str);
                    }
                }
            };
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClick(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        com.windmill.sdk.utils.m.a("click", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.6
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    j.this.a(adapter, pointEntityWind);
                }
            }
        });
        a(new Runnable() { // from class: com.windmill.sdk.common.j.7
            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                jVar.a(jVar.f86735o, strategy);
                if (j.this.f86674w != null) {
                    j.this.f86674w.onAdClicked(j.this.f86737q);
                }
            }
        });
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClickDownload(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidCloseAd(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy) {
        com.windmill.sdk.utils.m.a("close", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.8
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    j.this.a(adapter, pointEntityWind);
                }
            }
        });
        a(new Runnable() { // from class: com.windmill.sdk.common.j.9
            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                jVar.a(jVar.f86735o, strategy);
                if (j.this.f86674w != null) {
                    j.this.f86674w.onAdClosed(j.this.f86737q);
                }
            }
        });
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToLoadAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        com.windmill.sdk.strategy.l.a aVar;
        WMLogUtil.e("adapterDidFailToLoadAd() called with: strategy = [" + strategy.aP() + "], error = [" + error + "]");
        if (!this.f86726f) {
            if (strategy.F()) {
                com.windmill.sdk.strategy.s.b bVar = this.F;
                if (bVar != null) {
                    bVar.a(strategy, error);
                }
            } else if (strategy.C() && (aVar = this.G) != null) {
                aVar.a(strategy, error, "ready");
            }
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG == null || !strategy.U() || strategy.n() || error.getErrorCode() == WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT.getErrorCode()) {
                return;
            }
            strategy.d(true);
            AdInfo adInfo = new AdInfo(strategy);
            adInfo.fillData(this.f86735o);
            wMAdSourceStatusListenerG.onAdSourceLoadFailed(adInfo, error);
            return;
        }
        WMAdSourceStatusListener wMAdSourceStatusListenerG2 = g();
        if (wMAdSourceStatusListenerG2 != null && strategy.U() && !strategy.n() && error.getErrorCode() != WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT.getErrorCode()) {
            strategy.d(true);
            AdInfo adInfo2 = new AdInfo(strategy);
            adInfo2.fillData(this.f86735o);
            wMAdSourceStatusListenerG2.onAdSourceLoadFailed(adInfo2, error);
        }
        if (!strategy.w()) {
            a(strategy, "ready", error.getErrorCode(), error.getExternalErrorCode(), error.getMessage());
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null && !list.contains(strategy)) {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidFailToLoadAd but is not current stage");
            return;
        }
        this.f86675x.removeMessages(2000, strategy);
        this.f86734n.put(strategy.aP() + "-" + strategy.aW(), error);
        strategy.a(true, error);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.G;
            if (aVar2 != null) {
                aVar2.a(strategy);
            }
            if (strategy.B()) {
                strategy.i(false);
                return;
            }
        }
        com.windmill.sdk.strategy.a aVarB = b(this.f86727g, strategy);
        if (aVarB != null) {
            adapterDidLoadAdSuccessAd(f(aVarB), aVarB);
            return;
        }
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.b(strategy);
        }
        if (this.f86734n.keySet().size() == this.f86724d.size() && this.f86721a == AdStatus.AdStatusLoading) {
            c();
            this.f86675x.removeMessages(2000);
            a(this.f86675x);
            a(WindMillError.ERROR_AD_NO_FILL.copy(), strategy, (String) null);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdReady(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy) {
        try {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadAdReady() called with: strategy = [" + strategy.aP() + "] ");
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG != null && strategy.U() && !strategy.n()) {
                strategy.d(true);
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(this.f86735o);
                wMAdSourceStatusListenerG.onAdSourceLoadSuccess(adInfo);
            }
            com.windmill.sdk.utils.m.a("ready", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.2
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(strategy.aJ());
                        pointEntityWind.setExecution_scene(j.this.f86726f ? "0" : "1");
                        com.windmill.sdk.strategy.q qVar = j.this.f86722b;
                        if (qVar != null) {
                            pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                            pointEntityWind.setConcurrent_count(String.valueOf(j.this.f86722b.f87239a));
                        }
                        j.this.a(adapter, pointEntityWind);
                    }
                }
            });
            com.windmill.sdk.strategy.d.a().a(0, this.f86735o.getPlacementId(), strategy, b(adapter));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdSuccessAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        WMLogUtil.i("adapterDidLoadAdSuccessAd() called with: strategy = [" + strategy.aP() + "] " + this.f86726f);
        if (!this.f86726f) {
            com.windmill.sdk.strategy.l.a aVar = this.G;
            if (aVar != null) {
                aVar.a(strategy, adapter);
                return;
            }
            return;
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null && !list.contains(strategy)) {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadAdSuccessAd but is not current stage");
            return;
        }
        this.f86675x.removeMessages(2000, strategy);
        strategy.g(true);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.G;
            if (aVar2 != null) {
                aVar2.a(strategy);
            }
            if (strategy.B()) {
                strategy.i(false);
                return;
            }
        }
        if (adapter != null) {
            strategy.a(adapter.getAdapterReadyTime());
        }
        if (this.f86725e != null) {
            if (strategy.i() == null && adapter != null) {
                strategy.a(adapter.getChannelObject());
            }
            this.f86725e.put(strategy.aD(), strategy);
        }
        if (a(this.f86727g, strategy)) {
            a(adapter, strategy);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidLoadBiddingPriceSuccess(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, String price) {
        if (strategy != null) {
            WMLogUtil.i("adapterDidLoadBiddingPriceSuccess() called with: strategy = [" + strategy.aP() + "], price = [" + price + "]");
            strategy.f(price);
            strategy.h(price);
            com.windmill.sdk.strategy.s.b bVar = this.F;
            if (bVar != null) {
                bVar.a(strategy, price);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidPlayEndAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidRewardAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, boolean isReward) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidShowLangPageAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, Map extra) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidSkipAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidStartPlayingAd(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        com.windmill.sdk.strategy.i.a().a(new FreEntity(strategy.aN(), this.f86735o.getPlacementId(), strategy.aW()));
        a("start", strategy, this.f86735o);
        com.windmill.sdk.utils.m.a("start", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.4
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    pointEntityWind.setEcpm(String.valueOf(strategy.V()));
                    pointEntityWind.setSub_category(String.valueOf(strategy.T()));
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    com.windmill.sdk.strategy.q qVar = j.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(j.this.f86722b.f87239a));
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    j.this.a(adapter, pointEntityWind);
                }
            }
        });
        com.windmill.sdk.strategy.d.a().a(1, this.f86735o.getPlacementId(), strategy, b(adapter));
        a(new Runnable() { // from class: com.windmill.sdk.common.j.5
            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                jVar.a(jVar.f86735o, strategy);
                if (j.this.f86674w != null) {
                    j.this.f86674w.onAdShown(j.this.f86737q);
                }
            }
        });
    }

    private void g(com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.utils.m.a("load", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.14
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(j.this.f86677z);
                    pointEntityWind.setIs_out_sdk("1");
                    pointEntityWind.setExecution_scene(j.this.f86726f ? "0" : "1");
                    com.windmill.sdk.strategy.q qVar = j.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(j.this.f86722b.f87239a));
                    }
                    HashMap map = new HashMap();
                    map.put(PointParamKey.IS_MINOR, c.a().e() ? "0" : "1");
                    map.put(PointParamKey.IS_UNPERSONALIZED, c.a().f() ? "0" : "1");
                    map.put("active_id", o.d().c());
                    pointEntityWind.setOptions(map);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(com.windmill.sdk.strategy.a strategy) {
        if (strategy.v()) {
            adapterDidLoadAdSuccessAd(f(strategy), strategy);
            return;
        }
        if (strategy.w()) {
            WMAdapterError wMAdapterErrorZ = strategy.z();
            if (wMAdapterErrorZ == null) {
                wMAdapterErrorZ = new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "getPreloadAdapterError is null");
            }
            adapterDidFailToLoadAd(f(strategy), strategy, wMAdapterErrorZ);
            return;
        }
        WMLogUtil.i(WMLogUtil.TAG, "------------checkLoadStatus------------isLoading------------" + strategy.aP());
    }

    public void b() throws Throwable {
        if (this.C <= 0) {
            return;
        }
        WindMillAdRequest windMillAdRequest = this.f86735o;
        if (windMillAdRequest != null) {
            windMillAdRequest.setRefreshRequest(true);
            a(this.f86735o);
        }
        this.B = false;
        Handler handler = this.f86675x;
        if (handler != null) {
            handler.removeMessages(3000);
            this.f86675x.sendEmptyMessageDelayed(3000, this.C);
        }
    }

    protected void c() {
        this.f86721a = AdStatus.AdStatusNone;
        this.f86725e.clear();
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null) {
            Iterator<com.windmill.sdk.strategy.a> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().aF();
            }
        }
    }

    public boolean d() {
        WMAdBaseAdapter wMAdBaseAdapterF;
        try {
            if (this.f86721a != AdStatus.AdStatusReady) {
                return false;
            }
            for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
                if (this.f86725e.containsValue(aVar) && !aVar.aG() && (wMAdBaseAdapterF = f(aVar)) != null && wMAdBaseAdapterF.isReady(aVar)) {
                    WMLogUtil.i(WMLogUtil.TAG, "isReady true " + aVar.aP() + " load Id " + this.f86677z);
                    this.f86739s = true;
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    @Override // com.windmill.sdk.common.l
    public List<AdInfo> e() {
        try {
            Map<String, com.windmill.sdk.strategy.a> map = this.f86725e;
            if (map == null || map.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, com.windmill.sdk.strategy.a>> it2 = this.f86725e.entrySet().iterator();
            while (it2.hasNext()) {
                AdInfo adInfo = new AdInfo(it2.next().getValue());
                adInfo.fillData(this.f86735o);
                arrayList.add(adInfo);
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void d(final WindMillAdRequest request) throws Throwable {
        String string = UUID.randomUUID().toString();
        this.f86677z = string;
        this.f86735o = request;
        request.setLoadId(string);
        this.f86726f = false;
        this.G = null;
        this.f86730j = false;
        WMLogUtil.i("internalLoadAd loadStrategies loadId " + this.f86677z);
        if (this.f86727g == null) {
            this.f86727g = new com.windmill.sdk.strategy.s(this, new com.windmill.sdk.strategy.s.d() { // from class: com.windmill.sdk.common.j.17
                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.l.a listener) {
                    j.this.G = listener;
                    WMLogUtil.i(j.this.E + "---adapterPreloadAd: " + j.this.c(strategy) + " " + strategy.aP());
                    if (j.this.c(strategy)) {
                        j.this.b(1, strategy);
                    } else {
                        j.this.a(strategy, false);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void b(com.windmill.sdk.strategy.a strategy) {
                    WMLogUtil.i(j.this.E + "-----adapterLoadPassFilterBackup--" + strategy.aP());
                    if (strategy.D() || strategy.C()) {
                        j.this.h(strategy);
                    } else if (j.this.c(strategy)) {
                        j.this.b(3, strategy);
                    } else {
                        j.this.a(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.b listener) {
                    WMLogUtil.i(j.this.E + "----adapterLoadBiddingPrice--");
                    j.this.F = listener;
                    if (j.this.c(strategy)) {
                        j.this.b(2, strategy);
                    } else {
                        j.this.a(strategy, true);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.a biddingListener) {
                    WMLogUtil.i(j.this.E + "----adapterLoadBiddingParameter--");
                    j.this.a(strategy, biddingListener);
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy) {
                    WMLogUtil.i(j.this.E + "----adapterLoadPassFilter--" + strategy.aP() + strategy.C());
                    if (strategy.C()) {
                        j.this.h(strategy);
                    } else if (j.this.c(strategy)) {
                        j.this.b(3, strategy);
                    } else {
                        j.this.a(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, WindMillError windMillError) {
                    WMLogUtil.i(j.this.E + "----adapterLoadNoPassFilter--");
                    j.this.adapterDidFailToLoadAd(null, strategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(List<com.windmill.sdk.strategy.a> adStrategyList, com.windmill.sdk.strategy.q config) {
                    WMLogUtil.i(j.this.E + "----onStrategySuccess--");
                    j jVar = j.this;
                    jVar.f86726f = true;
                    jVar.f86724d = adStrategyList;
                    jVar.f86722b = config;
                    int i10 = config.f87246h;
                    if (i10 < 0) {
                        jVar.C = -1L;
                        j.this.f86675x.removeMessages(3000);
                        return;
                    }
                    int i11 = config.f87259u;
                    if ((i11 != 0 || i10 <= 5) && (i11 != 1 || i10 <= 5000)) {
                        jVar.C = 5000L;
                        return;
                    }
                    if (jVar.C != -1) {
                        long j10 = j.this.C;
                        j jVar2 = j.this;
                        if (j10 != jVar2.f86722b.f87246h) {
                            jVar2.f86675x.removeMessages(3000);
                            j.this.f86675x.sendEmptyMessageDelayed(3000, j.this.f86722b.f87246h);
                        }
                    }
                    j jVar3 = j.this;
                    jVar3.C = jVar3.f86722b.f87246h;
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(WindMillError error, String placementId, List<com.windmill.sdk.strategy.a> failList) {
                    j jVar = j.this;
                    jVar.f86726f = true;
                    if (jVar.F != null) {
                        j.this.F = null;
                    }
                    j jVar2 = j.this;
                    if (jVar2.f86730j) {
                        return;
                    }
                    jVar2.c();
                    j.this.a(failList, request);
                    j.this.a(error, (com.windmill.sdk.strategy.a) null, (String) null);
                }
            });
        }
        this.f86727g.a(this.f86735o, this, this.f86675x);
    }

    public void a(boolean isHideToShow, final View bannerView) throws Throwable {
        final com.windmill.sdk.strategy.a aVar;
        WMLogUtil.d(isHideToShow + "-------------visibleChange------------" + bannerView.hashCode() + ":" + bannerView.getTag());
        if (isHideToShow && this.B) {
            b();
        }
        try {
            aVar = (com.windmill.sdk.strategy.a) bannerView.getTag();
        } catch (Exception e10) {
            e10.printStackTrace();
            aVar = null;
        }
        com.windmill.sdk.utils.m.a(isHideToShow ? "ad_show" : "ad_hide", this.f86735o, aVar, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.11
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setOffer_id(String.valueOf(bannerView.hashCode()));
                    com.windmill.sdk.strategy.a aVar2 = aVar;
                    if (aVar2 != null) {
                        pointEntityWind.setLoad_id(aVar2.aJ());
                        pointEntityWind.setEcpm(String.valueOf(aVar.V()));
                    }
                    com.windmill.sdk.strategy.q qVar = j.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(j.this.f86722b.f87239a));
                    }
                }
            }
        });
    }

    public void b(WindMillAdRequest request) throws Throwable {
        this.f86735o = request;
        this.f86672u = request.getPlacementId();
        this.f86721a = AdStatus.AdStatusLoading;
        ClientMetadata.setUserId(request.getUserId());
        this.f86734n.clear();
        this.f86724d.clear();
        this.f86725e.clear();
        d(request);
    }

    @Override // com.windmill.sdk.common.l
    public boolean a() {
        return this.C > 0;
    }

    public void a(WindMillAdRequest request) throws Throwable {
        WMLogUtil.i(this.E + "------loadAd");
        this.f86739s = false;
        l.b bVarA = a(request.isRefreshRequest(), request);
        this.f86731k = false;
        request.isLoadToOut = false;
        switch (AnonymousClass10.f86679a[bVarA.ordinal()]) {
            case 1:
                WMLogUtil.i(this.E + "------WindFilterKeepGoing");
                b(request);
                break;
            case 2:
                WMLogUtil.e("WindFilterInit");
                if (TextUtils.isEmpty(WindMillAd.mAppId)) {
                    a(WindMillError.ERROR_NOT_INIT);
                } else {
                    a(WindMillError.ERROR_INIT_EXCEPTION);
                }
                break;
            case 3:
                WMLogUtil.e("WindFilterParameter");
                a(WindMillError.ERROR_PLACEMENT_ID_IS_EMPTY);
                break;
            case 4:
                WMLogUtil.e("WindFilterGdpr");
                a(WindMillError.ERROR_GDPR_DENIED);
                break;
            case 5:
                WMLogUtil.e("WindFilterLoadingBreak");
                a(WindMillError.ERROR_AD_LOAD_FAIL_LOADING);
                break;
            case 6:
                WMLogUtil.e("WindFilterLoadInterval");
                a(WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL);
                break;
        }
    }

    private void b(final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adAdapter) {
        this.f86675x.removeMessages(2000, adStrategy);
        Message messageObtain = Message.obtain(this.f86675x, 2000, adStrategy);
        if (adStrategy.ab() != 0) {
            this.f86675x.sendMessageDelayed(messageObtain, adStrategy.ab());
        } else {
            this.f86675x.sendMessageDelayed(messageObtain, this.f86676y);
        }
        adStrategy.l(true);
        WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
        if (wMAdSourceStatusListenerG != null) {
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (adStrategy.F()) {
                if (!this.f86732l.contains(adStrategy.aD())) {
                    wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
                    wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
                }
            } else {
                wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
            }
        }
        com.windmill.sdk.utils.a.a().a(adAdapter);
        a(new Runnable() { // from class: com.windmill.sdk.common.j.15
            @Override // java.lang.Runnable
            public void run() {
                adAdapter.loadInnerAd(j.this.a(adStrategy.aN()), null, j.this.f86735o, adStrategy, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int type, com.windmill.sdk.strategy.a strategy) {
        try {
            WeakReference<ExecutorService> weakReference = D;
            if (weakReference == null || weakReference.get() == null || D.get().isShutdown()) {
                D = new WeakReference<>(a("tobid_banner"));
            }
            a(D.get(), type, strategy, this.f86735o);
        } catch (Exception unused) {
        }
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final com.windmill.sdk.strategy.s.a biddingListener) {
        WMAdBaseAdapter wMAdBaseAdapterA;
        try {
            WMLogUtil.i("------------adapterLoadBidToken------------" + adStrategy.aP());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA) || (wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this)) == null) {
                return;
            }
            this.f86735o.setLoadId(this.f86677z);
            adStrategy.l(true);
            adStrategy.n(this.f86677z);
            final WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (wMAdSourceStatusListenerG != null) {
                wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
            }
            wMAdBaseAdapterA.loadBidding(adInfo, a(adStrategy.aN()), this.f86735o, adStrategy, new com.windmill.sdk.strategy.s.a() { // from class: com.windmill.sdk.common.j.12
                @Override // com.windmill.sdk.strategy.s.a
                public void a(AdInfo adInfo2, com.windmill.sdk.strategy.a strategy, Map<String, String> headerBiddingParams) {
                    if (headerBiddingParams != null) {
                        com.windmill.sdk.strategy.s.a aVar = biddingListener;
                        if (aVar != null) {
                            aVar.a(adInfo2, strategy, headerBiddingParams);
                            return;
                        }
                        return;
                    }
                    com.windmill.sdk.strategy.s.a aVar2 = biddingListener;
                    if (aVar2 != null) {
                        aVar2.a(adInfo2, strategy, 1, "adapterLoadBidToken is null");
                    }
                    WMAdSourceStatusListener wMAdSourceStatusListener = wMAdSourceStatusListenerG;
                    if (wMAdSourceStatusListener != null) {
                        wMAdSourceStatusListener.onAdSourceBiddingFailed(adInfo2, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adapterLoadBidToken is null"));
                    }
                }

                @Override // com.windmill.sdk.strategy.s.a
                public void a(AdInfo adInfo2, com.windmill.sdk.strategy.a strategy, int code, String message) {
                    com.windmill.sdk.strategy.s.a aVar = biddingListener;
                    if (aVar != null) {
                        aVar.a(adInfo2, strategy, code, message);
                    }
                    WMAdSourceStatusListener wMAdSourceStatusListener = wMAdSourceStatusListenerG;
                    if (wMAdSourceStatusListener != null) {
                        wMAdSourceStatusListener.onAdSourceBiddingFailed(adInfo2, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "adapterLoadBidToken is null"));
                    }
                }
            });
        } catch (Throwable th) {
            WMLogUtil.e(th.getMessage());
        }
    }

    private void a(boolean isLoadAdPrice, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        if (isLoadAdPrice) {
            com.windmill.sdk.strategy.s.b bVar = this.F;
            if (bVar != null) {
                bVar.a(adStrategy, error);
                return;
            }
            return;
        }
        com.windmill.sdk.strategy.l.a aVar = this.G;
        if (aVar != null) {
            aVar.a(adStrategy, error, "ready");
        }
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final boolean isLoadAdPrice) {
        try {
            WMLogUtil.i("-------------adapterLoadBiddingPrice------------" + adStrategy.aP() + ":" + isLoadAdPrice);
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return;
            }
            final WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                g(adStrategy);
                this.f86735o.setLoadId(this.f86677z);
                adStrategy.n(this.f86677z);
                adStrategy.l(true);
                this.f86732l.add(adStrategy.aD());
                WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
                if (wMAdSourceStatusListenerG != null) {
                    AdInfo adInfo = new AdInfo(adStrategy);
                    adInfo.fillData(this.f86735o);
                    if (isLoadAdPrice) {
                        wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
                    }
                    wMAdSourceStatusListenerG.onAdSourceLoadStart(adInfo);
                }
                if (d(adStrategy)) {
                    a(new Runnable() { // from class: com.windmill.sdk.common.j.13
                        @Override // java.lang.Runnable
                        public void run() {
                            wMAdBaseAdapterA.loadInnerAd(j.this.a(adStrategy.aN()), null, j.this.f86735o, adStrategy, isLoadAdPrice);
                            j.this.a(adStrategy, wMAdBaseAdapterA);
                        }
                    });
                    return;
                } else {
                    wMAdBaseAdapterA.loadInnerAd(a(adStrategy.aN()), null, this.f86735o, adStrategy, isLoadAdPrice);
                    a(adStrategy, wMAdBaseAdapterA);
                    return;
                }
            }
            WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
            a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
        } catch (Throwable th) {
            a(isLoadAdPrice, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    public boolean a(com.windmill.sdk.strategy.a adStrategy) {
        try {
            WMLogUtil.i("------------adapterInitAndLoad------------" + adStrategy.aP());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return false;
            }
            WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                WMAdapterError wMAdapterErrorB = b(wMAdBaseAdapterA, adStrategy);
                if (wMAdapterErrorB != null) {
                    adapterDidFailToLoadAd(wMAdBaseAdapterA, adStrategy, wMAdapterErrorB);
                    return false;
                }
                this.f86735o.setLoadId(this.f86677z);
                adStrategy.n(this.f86677z);
                g(adStrategy);
                b(this.f86735o, adStrategy, this.f86677z);
                if (adStrategy.F()) {
                    if (!wMAdBaseAdapterA.isLoadSuccess()) {
                        if (!b(adStrategy)) {
                            b(adStrategy, wMAdBaseAdapterA);
                        }
                    } else {
                        WMLogUtil.i("Load复用已经Load成功的的adapter:" + adStrategy.aP() + ":" + adStrategy.aW());
                        adapterDidLoadAdSuccessAd(wMAdBaseAdapterA, adStrategy);
                        return true;
                    }
                } else {
                    b(adStrategy, wMAdBaseAdapterA);
                }
            } else {
                WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
            }
            return false;
        } catch (Throwable th) {
            adapterDidFailToLoadAd(null, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    private void a(final com.windmill.sdk.strategy.a strategy, String event_type, int errorCode, String externalErrorCode, String msg) {
        com.windmill.sdk.utils.m.a("error", event_type, this.f86735o, strategy, this.f86727g, errorCode, externalErrorCode, msg, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.j.16
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setExecution_scene(j.this.f86726f ? "0" : "1");
                    com.windmill.sdk.strategy.a aVar = strategy;
                    if (aVar == null || TextUtils.isEmpty(aVar.aJ())) {
                        pointEntityWind.setLoad_id(j.this.f86677z);
                    } else {
                        pointEntityWind.setLoad_id(strategy.aJ());
                    }
                }
            }
        });
    }

    @Override // com.windmill.sdk.common.l
    protected void a(int type, com.windmill.sdk.strategy.a strategy) {
        if (type == 1) {
            a(strategy, false);
        } else if (type == 2) {
            a(strategy, true);
        } else if (type == 3) {
            a(strategy);
        }
    }

    @Override // com.windmill.sdk.common.l
    public void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        WMLogUtil.i(WMLogUtil.TAG, "------------notifyPreloadTimeOut------------" + strategy.aP());
        adapterDidFailToLoadAd(f(strategy), strategy, error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WindMillError error, com.windmill.sdk.strategy.a strategy, String timerStage) {
        try {
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            a(strategy, sVar != null ? sVar.l() : null, this.f86677z, this.f86735o, error, timerStage);
            a(error);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WindMillError error) {
        if (this.f86675x != null) {
            a(new Runnable() { // from class: com.windmill.sdk.common.j.18
                @Override // java.lang.Runnable
                public void run() {
                    WindMillError windMillError;
                    if (j.this.f86674w != null) {
                        WindMillAdRequest windMillAdRequest = j.this.f86735o;
                        if (windMillAdRequest != null && windMillAdRequest.isRefreshRequest()) {
                            j.this.f86674w.onAdAutoRefreshFail(error, j.this.f86672u);
                            return;
                        }
                        j jVar = j.this;
                        if (!jVar.f86731k) {
                            jVar.f86731k = true;
                            jVar.f86674w.onAdLoadError(error, j.this.f86672u);
                        }
                        WindMillError windMillError2 = error;
                        if ((windMillError2 != null && windMillError2.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_LOADING.getErrorCode()) || ((windMillError = error) != null && windMillError.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL.getErrorCode())) {
                            j.this.f86731k = false;
                        } else {
                            j jVar2 = j.this;
                            jVar2.a(jVar2.f86675x);
                        }
                    }
                }
            });
        }
    }

    public void a(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy) {
        a(this.f86735o, this.f86724d, strategy, this.f86677z);
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.j();
        }
        AdStatus adStatus = this.f86721a;
        AdStatus adStatus2 = AdStatus.AdStatusReady;
        if (adStatus == adStatus2) {
            WMLogUtil.d("has send notify videoAd load success, don't do again");
            WMAdBaseAdapter wMAdBaseAdapterF = f(strategy);
            if (wMAdBaseAdapterF == null || wMAdBaseAdapterF == adapter) {
                return;
            }
            WMLogUtil.i("controller destroy ready adAdapter " + wMAdBaseAdapterF.getClass().getSimpleName());
            com.windmill.sdk.utils.a.a().b(wMAdBaseAdapterF);
            wMAdBaseAdapterF.destroy();
            return;
        }
        if (adStatus != AdStatus.AdStatusLoading) {
            WMLogUtil.d("not do videoAd load ad");
            return;
        }
        this.f86721a = adStatus2;
        a(this.f86675x);
        a(adapter, strategy, strategy.aJ(), this.f86735o);
        a(new Runnable() { // from class: com.windmill.sdk.common.j.3
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f86674w != null) {
                    j jVar = j.this;
                    jVar.b(jVar.f86735o, strategy);
                    View bannerView = adapter.getBannerView();
                    if (bannerView == null) {
                        WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
                        windMillError.setMessage("adapterDidLoadAdSuccessAd but adapter getBannerView is null");
                        j.this.a(windMillError);
                        return;
                    }
                    bannerView.setTag(strategy);
                    adapter.updateAdStrategy(strategy);
                    WindMillAdRequest windMillAdRequest = j.this.f86735o;
                    if (windMillAdRequest != null && windMillAdRequest.isRefreshRequest()) {
                        j.this.f86674w.onAdAutoRefreshed(j.this.f86737q, bannerView);
                        return;
                    }
                    j.this.f86674w.onAdLoadSuccess(bannerView, j.this.f86672u);
                    if (j.this.A != null) {
                        j.this.A.checkVisibleStart();
                    }
                    if (j.this.f86675x == null || j.this.C <= 0) {
                        return;
                    }
                    j.this.f86675x.removeMessages(3000);
                    j.this.f86675x.sendEmptyMessageDelayed(3000, j.this.C);
                }
            }
        });
    }

    public void a(boolean isOut) {
        Handler handler = this.f86675x;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null) {
            Iterator<com.windmill.sdk.strategy.a> it2 = list.iterator();
            while (it2.hasNext()) {
                WMAdBaseAdapter wMAdBaseAdapterF = f(it2.next());
                if (wMAdBaseAdapterF != null) {
                    WMLogUtil.i("controller destroy adAdapter " + wMAdBaseAdapterF.getClass().getSimpleName());
                    com.windmill.sdk.utils.a.a().b(wMAdBaseAdapterF);
                    wMAdBaseAdapterF.destroy();
                }
            }
        }
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.m();
        }
        this.f86731k = false;
        this.f86674w = null;
        a(isOut, this.f86677z, this.f86735o, (com.windmill.sdk.strategy.a) null);
        h();
    }
}
