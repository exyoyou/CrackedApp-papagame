package com.windmill.sdk.common;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.WindowInsets;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.volley.VolleyError;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.umcrash.UMCrash;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;
import com.windmill.sdk.base.WMAdConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.models.A1bC2d;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.FreEntity;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.reward.WMRewardInfo;
import com.windmill.sdk.strategy.WMSdkConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class t extends l implements WMAdConnector {
    private static WeakReference<ExecutorService> E;
    private long A = 15000;
    private String B = "";
    private String C = "WMVideoAdController";
    private boolean D = false;
    private com.windmill.sdk.common.a F = null;
    private long G;
    private com.windmill.sdk.strategy.s.b H;
    private com.windmill.sdk.strategy.l.a I;
    private boolean J;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f86908u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f86909v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f86910w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f86911x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f86912y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f86913z;

    /* JADX INFO: renamed from: com.windmill.sdk.common.t$14, reason: invalid class name */
    class AnonymousClass14 implements com.windmill.sdk.strategy.j.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.windmill.sdk.strategy.a f86928a;

        AnonymousClass14(final com.windmill.sdk.strategy.a val$adStrategy) {
            this.f86928a = val$adStrategy;
        }

        @Override // com.windmill.sdk.strategy.j.a
        public void a() {
            WMLogUtil.d("WMJsonRequest------------onSuccess");
            t tVar = t.this;
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_REWARD_RESPONSE, tVar.f86735o, this.f86928a, tVar.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.b0
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86640a.a(obj);
                }
            });
            r.a().a(t.this.B);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            if (obj instanceof PointEntityWind) {
                PointEntityWind pointEntityWind = (PointEntityWind) obj;
                pointEntityWind.setLoad_id(t.this.B);
                HashMap map = new HashMap();
                map.put("result", "1");
                pointEntityWind.setOptions(map);
            }
        }

        @Override // com.windmill.sdk.strategy.j.a
        public void a(final VolleyError error) {
            WMLogUtil.d("WMJsonRequest------------onErrorResponse:" + error.toString());
            t tVar = t.this;
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_REWARD_RESPONSE, tVar.f86735o, this.f86928a, tVar.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.c0
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86650a.a(error, obj);
                }
            });
            r.a().a(t.this.B);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(VolleyError volleyError, Object obj) {
            if (obj instanceof PointEntityWind) {
                PointEntityWind pointEntityWind = (PointEntityWind) obj;
                pointEntityWind.setLoad_id(t.this.B);
                HashMap map = new HashMap();
                map.put("result", "0");
                map.put("failure_reasons", volleyError.toString());
                pointEntityWind.setOptions(map);
            }
        }
    }

    /* JADX INFO: renamed from: com.windmill.sdk.common.t$18, reason: invalid class name */
    static /* synthetic */ class AnonymousClass18 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86937a;

        static {
            int[] iArr = new int[l.b.values().length];
            f86937a = iArr;
            try {
                iArr[l.b.WindFilterKeepGoing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86937a[l.b.WindFilterInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86937a[l.b.WindFilterParameter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86937a[l.b.WindFilterGdpr.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86937a[l.b.WindFilterLoadingBreak.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86937a[l.b.WindFilterLoadInterval.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: renamed from: com.windmill.sdk.common.t$7, reason: invalid class name */
    class AnonymousClass7 implements com.windmill.sdk.strategy.j.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.windmill.sdk.strategy.a f86966a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q f86967b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WMAdBaseAdapter f86968c;

        AnonymousClass7(final com.windmill.sdk.strategy.a val$adStrategy, final q val$item, final WMAdBaseAdapter val$adapter) {
            this.f86966a = val$adStrategy;
            this.f86967b = val$item;
            this.f86968c = val$adapter;
        }

        @Override // com.windmill.sdk.strategy.j.a
        public void a() {
            WMLogUtil.d("WMJsonRequest------------onSuccess");
            t tVar = t.this;
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_SHOW_RESPONSE, tVar.f86735o, this.f86966a, tVar.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.d0
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86652a.a(obj);
                }
            });
            this.f86967b.a(1);
            if (t.this.J) {
                t.this.b(this.f86967b, this.f86966a, this.f86968c);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj) {
            if (obj instanceof PointEntityWind) {
                PointEntityWind pointEntityWind = (PointEntityWind) obj;
                pointEntityWind.setLoad_id(t.this.B);
                HashMap map = new HashMap();
                map.put("result", "1");
                pointEntityWind.setOptions(map);
            }
        }

        @Override // com.windmill.sdk.strategy.j.a
        public void a(final VolleyError error) {
            WMLogUtil.d("WMJsonRequest------------onErrorResponse:" + error.toString());
            t tVar = t.this;
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_SHOW_RESPONSE, tVar.f86735o, this.f86966a, tVar.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.e0
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86654a.a(error, obj);
                }
            });
            this.f86967b.a(1);
            if (t.this.J) {
                t.this.b(this.f86967b, this.f86966a, this.f86968c);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(VolleyError volleyError, Object obj) {
            if (obj instanceof PointEntityWind) {
                PointEntityWind pointEntityWind = (PointEntityWind) obj;
                pointEntityWind.setLoad_id(t.this.B);
                HashMap map = new HashMap();
                map.put("result", "0");
                map.put("failure_reasons", volleyError.toString());
                pointEntityWind.setOptions(map);
            }
        }
    }

    public interface a {
        void onVideoAdLoadFail(WindMillError error, String placementId);

        void onVideoAdLoadSuccess(String placementId);
    }

    public interface b {
        void onVideoAdClicked(AdInfo adInfo);

        void onVideoAdClosed(AdInfo adInfo);

        void onVideoAdPlayEnd(AdInfo adInfo);

        void onVideoAdPlayError(WindMillError error, String placementId);

        void onVideoAdPlayStart(AdInfo adInfo, boolean hasAdShow);

        void onVideoAdReward(AdInfo adInfo, WMRewardInfo rewardInfo);
    }

    interface c {
        void a(WindMillError error);

        boolean a(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy);
    }

    public t(WindMillAdRequest request, a windAdRequestLoadLister, b windAdRequestShowLister) {
        this.f86909v = windAdRequestLoadLister;
        this.f86910w = windAdRequestShowLister;
        this.f86724d = new ArrayList();
        this.f86725e = new HashMap();
        this.f86734n = new HashMap();
        this.f86735o = request;
        this.f86908u = request.getPlacementId();
        this.G = 0L;
        try {
            this.f86911x = new Handler(WindMillAd.sharedAds().getTobidHandlerLooper()) { // from class: com.windmill.sdk.common.t.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    int i10 = msg.what;
                    if (i10 != 1000 && i10 != 1001) {
                        if (i10 == 1003) {
                            t tVar = t.this;
                            tVar.a(tVar.f86911x, msg.arg1);
                            return;
                        }
                        if (i10 == 1004) {
                            t tVar2 = t.this;
                            tVar2.b(tVar2.f86911x, msg.arg1);
                            return;
                        }
                        if (i10 != 2000) {
                            return;
                        }
                        try {
                            Object obj = msg.obj;
                            if (obj instanceof com.windmill.sdk.strategy.a) {
                                WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                                t.this.adapterDidFailToLoadAd(null, (com.windmill.sdk.strategy.a) obj, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            WMLogUtil.e("loadAd strategy name" + th.getMessage());
                            return;
                        }
                    }
                    WMLogUtil.e("----loadAd---动态总超时---超时阶段：" + t.this.f86729i + "  thread:：" + Thread.currentThread() + " loadId：" + t.this.B);
                    t tVar3 = t.this;
                    String str = tVar3.f86729i;
                    tVar3.a(tVar3.f86911x);
                    if (t.this.f86721a == AdStatus.AdStatusLoading) {
                        WMLogUtil.e("-----loadAd--Timeout----" + t.this.B);
                        t tVar4 = t.this;
                        tVar4.a(tVar4.f86727g);
                        com.windmill.sdk.strategy.a aVarJ = t.this.j();
                        if (aVarJ != null) {
                            aVarJ.h(1);
                            if (aVarJ.Y() == 1) {
                                if (aVarJ.Z() == 1) {
                                    if (t.this.a(aVarJ)) {
                                        return;
                                    }
                                } else if (aVarJ.Z() == 0 && aVarJ.v()) {
                                    t tVar5 = t.this;
                                    tVar5.adapterDidLoadAdSuccessAd(tVar5.f(aVarJ), aVarJ);
                                    return;
                                }
                            } else if (!aVarJ.C()) {
                                WMAdBaseAdapter wMAdBaseAdapterF = t.this.f(aVarJ);
                                if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isLoadSuccess()) {
                                    t.this.a(wMAdBaseAdapterF, aVarJ);
                                    return;
                                }
                            } else if (aVarJ.v()) {
                                aVarJ.i(false);
                                t tVar6 = t.this;
                                tVar6.adapterDidLoadAdSuccessAd(tVar6.f(aVarJ), aVarJ);
                                return;
                            }
                        }
                        com.windmill.sdk.strategy.s sVar = t.this.f86727g;
                        if (sVar != null) {
                            sVar.j();
                        }
                        t tVar7 = t.this;
                        tVar7.a(tVar7.f86735o, tVar7.f86724d, tVar7.B);
                        t.this.b();
                        t.this.a(WindMillError.ERROR_LOAD_AD_TIME_OUT, (com.windmill.sdk.strategy.a) null, str);
                    }
                }
            };
        } catch (Exception unused) {
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClick(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        com.windmill.sdk.common.a aVar = this.F;
        if (aVar != null) {
            aVar.b();
        }
        com.windmill.sdk.utils.m.a("click", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.4
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setScene_id(t.this.f86912y);
                    pointEntityWind.setScene_desc(t.this.f86913z);
                    pointEntityWind.setLoad_id(t.this.B);
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(t.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    t.this.a(adapter, pointEntityWind);
                }
            }
        });
        a(this.f86735o, strategy);
        if (this.f86910w != null) {
            if (f() != null) {
                f().runOnUiThread(new Runnable() { // from class: com.windmill.sdk.common.t.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (t.this.f86910w != null) {
                            t.this.f86910w.onVideoAdClicked(t.this.f86737q);
                        }
                    }
                });
            } else {
                this.f86910w.onVideoAdClicked(this.f86737q);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClickDownload(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.common.a aVar = this.F;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidCloseAd(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy) {
        A1bC2d.addEvent(1000, this.f86735o, strategy, com.windmill.sdk.utils.a.c.f87350b);
        com.windmill.sdk.utils.a.a().b(adapter);
        com.windmill.sdk.common.a aVar = this.F;
        if (aVar != null) {
            if (aVar.a(adapter.getChannelId(), this.B)) {
                return;
            } else {
                this.F.c();
            }
        }
        this.G = 0L;
        com.windmill.sdk.utils.m.a("close", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.15
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(t.this.B);
                    pointEntityWind.setScene_id(t.this.f86912y);
                    pointEntityWind.setScene_desc(t.this.f86913z);
                    if (strategy.aK() == 4) {
                        pointEntityWind.getOptions().put("auto_close", (t.this.F == null || !t.this.F.e()) ? "0" : "1");
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    t.this.a(adapter, pointEntityWind);
                }
            }
        });
        a(new Runnable() { // from class: com.windmill.sdk.common.t.16
            @Override // java.lang.Runnable
            public void run() {
                t tVar = t.this;
                tVar.a(tVar.f86735o, strategy);
                if (t.this.f86910w != null) {
                    t.this.f86910w.onVideoAdClosed(t.this.f86737q);
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
                com.windmill.sdk.strategy.s.b bVar = this.H;
                if (bVar != null) {
                    bVar.a(strategy, error);
                }
            } else if (strategy.C() && (aVar = this.I) != null) {
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
        this.f86911x.removeMessages(2000, strategy);
        this.f86734n.put(strategy.aP() + "-" + strategy.aW(), error);
        strategy.a(true, error);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.I;
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
            this.G = 0L;
            b();
            this.f86911x.removeMessages(2000);
            a(this.f86911x);
            a(WindMillError.ERROR_AD_NO_FILL.copy(), strategy, (String) null);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        try {
            WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
            HashMap map = new HashMap();
            map.put(adStrategy.aP(), error);
            windMillError.setMessage(JSONSerializer.Serialize(map));
            a(adStrategy, "play", error.getErrorCode(), error.getExternalErrorCode(), error.getMessage());
            b(windMillError);
        } catch (Exception e10) {
            WindMillError windMillError2 = WindMillError.ERROR_AD_PLAY;
            windMillError2.setMessage(e10.getMessage());
            b(windMillError2);
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdReady(final WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        try {
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG != null && strategy.U() && !strategy.n()) {
                strategy.d(true);
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(this.f86735o);
                wMAdSourceStatusListenerG.onAdSourceLoadSuccess(adInfo);
            }
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadAdReady() called with: strategy = [" + strategy.aP() + "] ");
            com.windmill.sdk.utils.m.a("ready", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.6
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(t.this.B);
                        pointEntityWind.setExecution_scene(t.this.f86726f ? "0" : "1");
                        com.windmill.sdk.strategy.q qVar = t.this.f86722b;
                        if (qVar != null) {
                            pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                            pointEntityWind.setConcurrent_count(String.valueOf(t.this.f86722b.f87239a));
                        }
                        t.this.a(adapter, pointEntityWind);
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
        WMLogUtil.i("---adapterDidLoadAdSuccessAd() called with: strategy = [" + strategy.aP() + "] " + this.f86726f);
        if (!this.f86726f) {
            com.windmill.sdk.strategy.l.a aVar = this.I;
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
        this.f86911x.removeMessages(2000, strategy);
        strategy.g(true);
        WMLogUtil.i(this.C + "---adapterDidLoadAdSuccessAd isParallelType " + strategy.D() + " " + strategy.C());
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.I;
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
                strategy.a(adapter.getChannelObject(), com.windmill.sdk.strategy.a.f87082o.contains(Integer.valueOf(strategy.aN())));
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
            com.windmill.sdk.strategy.s.b bVar = this.H;
            if (bVar != null) {
                bVar.a(strategy, price);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidPlayEndAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.C);
            sb2.append("---PlayEnd strategy = ");
            sb2.append(adStrategy);
            boolean z10 = true;
            sb2.append(this.f86910w != null);
            sb2.append(" ");
            if (f() == null) {
                z10 = false;
            }
            sb2.append(z10);
            WMLogUtil.i(sb2.toString());
            a(this.f86735o, adStrategy);
            if (this.f86910w != null) {
                if (f() != null) {
                    f().runOnUiThread(new Runnable() { // from class: com.windmill.sdk.common.t.10
                        @Override // java.lang.Runnable
                        public void run() {
                            WMLogUtil.i(t.this.C + "---PlayEnd onVideoAdPlayEnd getActivity ");
                            if (t.this.f86910w != null) {
                                t.this.f86910w.onVideoAdPlayEnd(t.this.f86737q);
                            }
                        }
                    });
                } else {
                    WMLogUtil.i(this.C + "---PlayEnd onVideoAdPlayEnd ");
                    this.f86910w.onVideoAdPlayEnd(this.f86737q);
                }
            }
        } catch (Exception e10) {
            WMLogUtil.i(this.C + "---PlayEnd  e " + e10.getMessage());
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidRewardAd(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a adStrategy, boolean isReward) {
        WMLogUtil.d("---adapterDidRewardAd() called with: strategy = [" + adStrategy.aP() + "], isReward = [" + isReward + "]" + adStrategy.J());
        final String strA = a(adapter);
        if (TextUtils.isEmpty(strA) && adStrategy.J() != null && adStrategy.J().containsKey("transId")) {
            strA = (String) adStrategy.J().get("transId");
        }
        adStrategy.c(isReward);
        A1bC2d.addEvent(800, this.f86735o, adStrategy, com.windmill.sdk.utils.a.c.f87350b);
        com.windmill.sdk.utils.m.a("reward", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.12
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setScene_id(t.this.f86912y);
                    pointEntityWind.setScene_desc(t.this.f86913z);
                    pointEntityWind.setLoad_id(t.this.B);
                    if (!TextUtils.isEmpty(strA)) {
                        pointEntityWind.setPlatform_trans_id(strA);
                    }
                    if (t.this.f86735o != null) {
                        pointEntityWind.getOptions().put("request_options", pointEntityWind.toJsonString(t.this.f86735o.getOptions()));
                    }
                    if (com.windmill.sdk.utils.l.c(adStrategy.aN()) && adStrategy.J() != null) {
                        Object obj = adStrategy.J().get(ServerSideVerificationOptions.ACTION);
                        if (obj != null) {
                            pointEntityWind.setReward_action(String.valueOf(obj));
                        } else {
                            pointEntityWind.setReward_action("0");
                        }
                    }
                    t.this.a(adapter, pointEntityWind);
                }
            }
        });
        if (!this.J) {
            this.J = true;
            q qVarB = r.a().b(this.B);
            if (qVarB == null) {
                qVarB = j(adStrategy);
            }
            this.f86735o.ischeckCheat(this.B);
            if (qVarB != null && (qVarB.e() == 1 || adStrategy.ao() == 0)) {
                b(qVarB, adStrategy, adapter);
            }
        }
        a(this.f86735o, adStrategy);
        if (this.f86910w != null) {
            final WMRewardInfo wMRewardInfo = new WMRewardInfo(true, this.B, strA, this.f86735o.getUserId());
            if (adStrategy.J() != null) {
                wMRewardInfo.setCustomData(adStrategy.J());
            }
            if (f() != null) {
                f().runOnUiThread(new Runnable() { // from class: com.windmill.sdk.common.t.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (t.this.f86910w != null) {
                            t.this.f86910w.onVideoAdReward(t.this.f86737q, wMRewardInfo);
                        }
                    }
                });
            } else {
                this.f86910w.onVideoAdReward(this.f86737q, wMRewardInfo);
            }
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidShowLangPageAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, Map extra) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidSkipAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidStartPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        if (extra != null) {
            try {
                extra.get(WMConstants.OFFER_ID);
            } catch (Exception e10) {
                WMLogUtil.i(this.C + "---StartPlay e = " + e10.getMessage());
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.C);
        sb2.append("---StartPlay strategy = ");
        sb2.append(strategy);
        sb2.append(this.f86910w != null);
        sb2.append(" ");
        sb2.append(f() != null);
        WMLogUtil.i(sb2.toString());
        com.windmill.sdk.strategy.i.a().a(new FreEntity(strategy.aN(), this.f86735o.getPlacementId(), strategy.aW()));
        a("start", strategy, this.f86735o);
        if (this.D) {
            A1bC2d.addEvent(600, this.f86735o, strategy, com.windmill.sdk.utils.a.c.f87350b);
        }
        A1bC2d.addEvent(700, this.f86735o, strategy, com.windmill.sdk.utils.a.c.f87350b);
        q qVarJ = j(strategy);
        if (strategy.ao() != 0 && qVarJ != null && !TextUtils.isEmpty(qVarJ.a())) {
            this.f86735o.ischeckCheat(this.B);
            a(qVarJ, strategy, adapter);
        }
        if (this.f86725e.containsKey(strategy.aD())) {
            this.f86725e.remove(strategy.aD());
        }
        a(adapter, "start", strategy, extra);
        com.windmill.sdk.strategy.d.a().a(1, this.f86735o.getPlacementId(), strategy, b(adapter));
        b(this.f86735o, strategy);
        WMLogUtil.i(this.C + "---StartPlay onVideoAdPlayStart 000 ");
        if (this.f86910w != null) {
            final boolean zU = strategy.u();
            if (!zU) {
                strategy.f(true);
            }
            if (f() != null) {
                f().runOnUiThread(new Runnable() { // from class: com.windmill.sdk.common.t.9
                    @Override // java.lang.Runnable
                    public void run() {
                        WMLogUtil.i(t.this.C + "---StartPlay onVideoAdPlayStart getActivity ");
                        if (t.this.f86910w != null) {
                            t.this.f86910w.onVideoAdPlayStart(t.this.f86737q, zU);
                        }
                    }
                });
                return;
            }
            WMLogUtil.i(this.C + "---StartPlay onVideoAdPlayStart  ");
            this.f86910w.onVideoAdPlayStart(this.f86737q, zU);
        }
    }

    private void c(WindMillAdRequest request, boolean isAutoLoad) throws Throwable {
        l.b bVarA = a(isAutoLoad, request);
        this.f86723c = isAutoLoad;
        this.f86731k = false;
        switch (AnonymousClass18.f86937a[bVarA.ordinal()]) {
            case 1:
                WMLogUtil.i("WindFilterKeepGoing");
                b(request, isAutoLoad);
                break;
            case 2:
                WMLogUtil.e("WindFilterInit");
                if (!TextUtils.isEmpty(WindMillAd.mAppId)) {
                    a(WindMillError.ERROR_INIT_EXCEPTION);
                } else {
                    a(WindMillError.ERROR_NOT_INIT);
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

    private void g(com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.utils.m.a("load", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.23
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(t.this.B);
                    pointEntityWind.setIs_out_sdk("1");
                    pointEntityWind.setExecution_scene(t.this.f86726f ? "0" : "1");
                    com.windmill.sdk.strategy.q qVar = t.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(t.this.f86722b.f87239a));
                    }
                    HashMap map = new HashMap();
                    map.put(PointParamKey.IS_MINOR, com.windmill.sdk.common.c.a().e() ? "0" : "1");
                    map.put(PointParamKey.IS_UNPERSONALIZED, com.windmill.sdk.common.c.a().f() ? "0" : "1");
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

    private JSONObject i(com.windmill.sdk.strategy.a adStrategy) {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("userId", this.f86735o.getUserId());
            jSONObject.put("placementId", this.f86735o.getPlacementId());
            jSONObject.put("ecpm", adStrategy.V());
            jSONObject.put("loadId", adStrategy.aJ());
            jSONObject.put("channelId", adStrategy.aN());
            jSONObject.put("thirdAppId", adStrategy.aV());
            jSONObject.put("thirdPlacementId", adStrategy.aW());
            jSONObject.put("sdkVersion", WMConstants.SDK_VERSION);
            jSONObject.put("gameVersion", ClientMetadata.getInstance().getAppVersion());
            jSONObject.put("mask", adStrategy.am());
            jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, adStrategy.an());
            jSONObject.put("checkMask", adStrategy.ao());
            jSONObject.put("uid", ClientMetadata.getUid());
            if (!TextUtils.isEmpty(adStrategy.W())) {
                jSONObject.put("thirdCodePrice", adStrategy.W());
                WMLogUtil.d("WMJsonRequest-----pecm- " + adStrategy.W());
            }
            jSONObject.put("custom", JSONSerializer.Serialize(this.f86735o.getOptions()));
            if (adStrategy.aN() == 22 && adStrategy.H() != null && (obj = adStrategy.H().get("adnNetworkRitId")) != null) {
                jSONObject.put("thirdRealPlacementId", String.valueOf(obj));
            }
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    private q j(com.windmill.sdk.strategy.a strategy) {
        WindMillAdRequest windMillAdRequest;
        if (strategy == null || (windMillAdRequest = this.f86735o) == null || windMillAdRequest.getAdType() != 1) {
            return null;
        }
        q qVar = new q(i(strategy), strategy.ai(), strategy.al());
        qVar.a(strategy.aq());
        r.a().a(strategy.aJ(), qVar);
        return qVar;
    }

    public AdInfo d() {
        WMAdBaseAdapter wMAdBaseAdapterF;
        if (this.f86721a != AdStatus.AdStatusReady) {
            WMLogUtil.i(this.C + " getAdInfo: adStatus is not ready, current status: " + this.f86721a);
            return null;
        }
        Map<String, com.windmill.sdk.strategy.a> map = this.f86725e;
        if (map == null || map.isEmpty()) {
            WMLogUtil.i(this.C + " getAdInfo: readyList is empty");
            return null;
        }
        try {
            for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
                u uVarM = m();
                if (com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null) == null && aVar != null && this.f86725e.containsValue(aVar) && !aVar.aG() && (wMAdBaseAdapterF = f(aVar)) != null && wMAdBaseAdapterF.isReady(aVar)) {
                    AdInfo adInfo = new AdInfo(aVar);
                    adInfo.fillData(this.f86735o);
                    WMLogUtil.i(this.C + " getAdInfo: found ready ad - " + aVar.aP());
                    return adInfo;
                }
            }
            WMLogUtil.i(this.C + " getAdInfo: no valid ready adapter found");
        } catch (Exception e10) {
            WMLogUtil.e(this.C + " getAdInfo error: " + e10.getMessage());
            e10.printStackTrace();
        }
        return null;
    }

    @Override // com.windmill.sdk.common.l
    protected boolean e(com.windmill.sdk.strategy.a strategy) {
        return this.f86735o.getAdType() == 1 && TextUtils.isEmpty(strategy.am()) && !TextUtils.isEmpty(strategy.ai());
    }

    public void b(WindMillAdRequest request, boolean isAutoLoad) throws Throwable {
        this.f86721a = AdStatus.AdStatusLoading;
        ClientMetadata.setUserId(request.getUserId());
        this.f86734n.clear();
        this.f86724d.clear();
        this.G = 0L;
        this.f86723c = isAutoLoad;
        this.J = false;
        WindMillAdRequest windMillAdRequest = this.f86735o;
        if (windMillAdRequest != null) {
            windMillAdRequest.setRefreshRequest(isAutoLoad);
        }
        a(request);
    }

    @Override // com.windmill.sdk.common.l
    public List<AdInfo> e() {
        Map<String, com.windmill.sdk.strategy.a> map;
        try {
            if (this.f86721a == AdStatus.AdStatusReady && (map = this.f86725e) != null && map.size() > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, com.windmill.sdk.strategy.a>> it2 = this.f86725e.entrySet().iterator();
                while (it2.hasNext()) {
                    com.windmill.sdk.strategy.a value = it2.next().getValue();
                    if (!value.aG()) {
                        AdInfo adInfo = new AdInfo(value);
                        adInfo.fillData(this.f86735o);
                        arrayList.add(adInfo);
                    }
                }
                return arrayList;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    protected void b() {
        this.f86721a = AdStatus.AdStatusNone;
        this.f86725e.clear();
        this.G = 0L;
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null) {
            Iterator<com.windmill.sdk.strategy.a> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().aF();
            }
        }
    }

    public void a(final Activity activity, final HashMap<String, String> options) {
        WindowInsets rootWindowInsets;
        if (activity != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23 && (rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets()) != null) {
                    ClientMetadata.getInstance().setWindInsets(rootWindowInsets);
                }
            } catch (Exception unused) {
                return;
            }
        }
        ConcurrentHashMap<String, WMAdBaseAdapter> concurrentHashMapK = k();
        if (concurrentHashMapK != null) {
            Iterator<WMAdBaseAdapter> it2 = concurrentHashMapK.values().iterator();
            while (it2.hasNext()) {
                com.windmill.sdk.utils.a.a().a(it2.next());
            }
        }
        a(new c() { // from class: com.windmill.sdk.common.t.11

            /* JADX INFO: renamed from: com.windmill.sdk.common.t$11$1, reason: invalid class name */
            class AnonymousClass1 implements Runnable {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ com.windmill.sdk.strategy.a f86919a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ WMAdBaseAdapter f86920b;

                AnonymousClass1(final com.windmill.sdk.strategy.a val$adStrategy, final WMAdBaseAdapter val$adAdapter) {
                    this.f86919a = val$adStrategy;
                    this.f86920b = val$adAdapter;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.f86919a.aK() == 4) {
                        t.this.F = new com.windmill.sdk.common.a(this.f86920b.getChannelId(), t.this.B);
                        com.windmill.sdk.common.a aVar = t.this.F;
                        long jP = this.f86919a.p();
                        boolean zQ = this.f86919a.q();
                        final WMAdBaseAdapter wMAdBaseAdapter = this.f86920b;
                        final com.windmill.sdk.strategy.a aVar2 = this.f86919a;
                        aVar.a(jP, zQ, new com.windmill.sdk.common.a.InterfaceC1079a() { // from class: com.windmill.sdk.common.a0
                            @Override // com.windmill.sdk.common.a.InterfaceC1079a
                            public final void onFinish() {
                                this.f86637a.a(wMAdBaseAdapter, aVar2);
                            }
                        });
                    }
                    this.f86920b.showInnerAd(activity, null, this.f86919a);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void a(WMAdBaseAdapter wMAdBaseAdapter, com.windmill.sdk.strategy.a aVar) {
                    t.this.adapterDidCloseAd(wMAdBaseAdapter, aVar);
                }
            }

            @Override // com.windmill.sdk.common.t.c
            public boolean a(final WMAdBaseAdapter adAdapter, final com.windmill.sdk.strategy.a adStrategy) {
                if (adStrategy != null) {
                    try {
                        if (adStrategy.s() == 5) {
                            return false;
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (adAdapter == null || adStrategy == null) {
                    t tVar = t.this;
                    WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                    tVar.a((com.windmill.sdk.strategy.a) null, "play", windMillError.getErrorCode(), "", windMillError.getMessage());
                    t.this.b(windMillError);
                    return false;
                }
                t tVar2 = t.this;
                tVar2.f86721a = AdStatus.AdStatusPlaying;
                tVar2.G = 0L;
                adStrategy.aF();
                HashMap map = options;
                if (map != null) {
                    t.this.f86912y = (String) map.get("scene_id");
                    t.this.f86913z = (String) options.get("scene_desc");
                    adStrategy.a(options);
                    try {
                        WindMillAdRequest windMillAdRequest = t.this.f86735o;
                        if (windMillAdRequest != null && windMillAdRequest.getOptions() != null) {
                            t.this.f86735o.getOptions().putAll(options);
                        }
                    } catch (Exception e10) {
                        WMLogUtil.i("------getReadyAdapter--putAll: " + e10);
                    }
                }
                t.this.a((WMAdBaseAdapter) null, "vopen", adStrategy, (Map<String, String>) null);
                t.this.a((Runnable) new AnonymousClass1(adStrategy, adAdapter));
                return true;
            }

            @Override // com.windmill.sdk.common.t.c
            public void a(WindMillError error) {
                t.this.b(error);
            }
        });
    }

    private void b(final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adAdapter) {
        this.f86911x.removeMessages(2000, adStrategy);
        Message messageObtain = Message.obtain(this.f86911x, 2000, adStrategy);
        if (adStrategy.ab() != 0) {
            this.f86911x.sendMessageDelayed(messageObtain, adStrategy.ab());
        } else {
            this.f86911x.sendMessageDelayed(messageObtain, this.A);
        }
        WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
        adStrategy.l(true);
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
        a(new Runnable() { // from class: com.windmill.sdk.common.t.24
            @Override // java.lang.Runnable
            public void run() {
                WMLogUtil.i("------loadInnerAd: " + adStrategy.f87111v + " " + adStrategy.aW());
                com.windmill.sdk.strategy.a aVar = adStrategy;
                aVar.f87111v = false;
                adAdapter.loadInnerAd(t.this.a(aVar.aN()), null, t.this.f86735o, adStrategy, false);
                t.this.a(adStrategy, adAdapter);
            }
        });
    }

    public boolean c() {
        WMAdBaseAdapter wMAdBaseAdapterF;
        try {
            if (this.f86721a != AdStatus.AdStatusReady) {
                return false;
            }
            for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
                u uVarM = m();
                WindMillError windMillErrorB = com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null);
                if (this.f86725e.containsValue(aVar) && !aVar.aG() && windMillErrorB == null && (wMAdBaseAdapterF = f(aVar)) != null && wMAdBaseAdapterF.isReady(aVar)) {
                    this.f86739s = true;
                    return true;
                }
            }
            a((com.windmill.sdk.strategy.a) null, "ready", WindMillError.ERROR_ALLAD_NOT_READY.getErrorCode(), "", WindMillError.ERROR_AD_PLAY_NETWORK_NOT_READY.getMessage());
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WMAdBaseAdapter adapter, final String category, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        final String str = extra != null ? extra.get(WMConstants.OFFER_ID) : null;
        com.windmill.sdk.utils.m.a(category, this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.19
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    pointEntityWind.setScene_id(t.this.f86912y);
                    pointEntityWind.setScene_desc(t.this.f86913z);
                    pointEntityWind.setEcpm(String.valueOf(strategy.V()));
                    pointEntityWind.setSub_category(String.valueOf(strategy.T()));
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    pointEntityWind.setOffer_id(str);
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(t.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    com.windmill.sdk.strategy.q qVar = t.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(t.this.f86722b.f87239a));
                    }
                    if ("start".equals(category)) {
                        pointEntityWind.getOptions().put("active_id", o.d().c());
                    }
                    t.this.a(adapter, pointEntityWind);
                }
            }
        });
    }

    public void a(WindMillAdRequest request, boolean isAutoLoad) throws Throwable {
        boolean zC = c();
        this.D = false;
        WMLogUtil.i(this.C + "------loadAd--是否存在ready广告:" + zC);
        this.f86739s = false;
        WMLogUtil.i(WMLogUtil.TAG, "------------loadAd------------是否存在ready广告:" + zC);
        if (zC) {
            long readyExpired = WMSdkConfig.sharedInstance().getReadyExpired();
            boolean z10 = System.currentTimeMillis() - this.G < readyExpired;
            WMLogUtil.i(WMLogUtil.TAG, "------------loadAd------------已ready广告是否在有效期:" + readyExpired);
            if (z10) {
                c(request);
                a(new Runnable() { // from class: com.windmill.sdk.common.t.20
                    @Override // java.lang.Runnable
                    public void run() {
                        if (t.this.f86909v != null) {
                            t.this.f86909v.onVideoAdLoadSuccess(t.this.f86908u);
                        }
                    }
                });
                return;
            } else {
                c(request, isAutoLoad);
                return;
            }
        }
        c(request, isAutoLoad);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int type, com.windmill.sdk.strategy.a strategy) {
        try {
            WeakReference<ExecutorService> weakReference = E;
            if (weakReference == null || weakReference.get() == null || E.get().isShutdown() || E.get().isShutdown()) {
                E = new WeakReference<>(a("tobid_video"));
            }
            a(E.get(), type, strategy, this.f86735o);
        } catch (Exception unused) {
        }
    }

    public void a(final c readyAdapterLister) {
        if (this.f86721a != AdStatus.AdStatusReady) {
            WMLogUtil.e("adStatus not ready  is " + this.f86721a);
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
                return;
            }
            return;
        }
        if (this.f86724d.isEmpty()) {
            WMLogUtil.e("strategies is empty");
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_NULL_STRATEGY);
                return;
            }
            return;
        }
        if (this.f86725e.isEmpty()) {
            WMLogUtil.e("readyList is empty");
            if (readyAdapterLister != null) {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
                return;
            }
            return;
        }
        WindMillError windMillErrorB = null;
        for (com.windmill.sdk.strategy.a aVar : this.f86724d) {
            u uVarM = m();
            windMillErrorB = com.windmill.sdk.strategy.r.b(aVar, uVarM != null ? uVarM.a() : null);
            if (this.f86725e.containsValue(aVar)) {
                if (!aVar.aG() && windMillErrorB == null) {
                    WMAdBaseAdapter wMAdBaseAdapterF = f(aVar);
                    if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isReady(aVar)) {
                        WMLogUtil.i(WMLogUtil.TAG, "getReadyAdapter isReady true " + aVar.aP() + " load Id " + this.B);
                        if (readyAdapterLister != null && readyAdapterLister.a(wMAdBaseAdapterF, aVar)) {
                            return;
                        }
                    } else {
                        WindMillError windMillError = WindMillError.ERROR_AD_PLAY_NETWORK_NOT_READY;
                        a(aVar, "play", windMillError.getErrorCode(), "", windMillError.getMessage());
                    }
                } else {
                    WindMillError windMillError2 = windMillErrorB != null ? windMillErrorB : WindMillError.ERROR_AD_PLAY_NETWORK_EXPIRED;
                    a(aVar, "play", windMillError2.getErrorCode(), "", windMillError2.getMessage());
                }
            }
        }
        if (readyAdapterLister != null) {
            if (windMillErrorB != null) {
                readyAdapterLister.a(windMillErrorB);
            } else {
                readyAdapterLister.a(WindMillError.ERROR_AD_NOT_READY);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Object obj) {
        if (obj instanceof PointEntityWind) {
            PointEntityWind pointEntityWind = (PointEntityWind) obj;
            pointEntityWind.setLoad_id(this.B);
            pointEntityWind.setOptions(new HashMap());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final q item, final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adapter) {
        String str;
        String strB = com.windmill.sdk.utils.a.c.b(this.f86735o, adStrategy.aJ(), item.b());
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        JSONObject jSONObjectI = i(adStrategy);
        try {
            String str2 = "1";
            if (adStrategy.r() == 1) {
                str2 = "5";
            } else if (adStrategy.s() == 2) {
                str2 = "2";
            } else if (adStrategy.s() == 4) {
                str2 = "4";
            }
            jSONObjectI.put("networkAdType", str2);
            String strA = a(adapter);
            if (!TextUtils.isEmpty(strA)) {
                try {
                    jSONObjectI.put("thirdTransId", strA);
                    jSONObjectI.put("rewardTimestamp", String.valueOf(System.currentTimeMillis()));
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception unused) {
        }
        String string = jSONObjectI != null ? jSONObjectI.toString() : "";
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            if (strB.indexOf(63) == -1) {
                str = strB + "?" + WMSdkConfig.getServerQueryString();
            } else {
                str = strB + x.a.f97576d + WMSdkConfig.getServerQueryString();
            }
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_REWARD_REQUEST, this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.y
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86978a.a(obj);
                }
            });
            com.windmill.sdk.strategy.j.a(str, string, 2, item.c(), this.f86735o, new AnonymousClass14(adStrategy));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.windmill.sdk.strategy.a adStrategy, final com.windmill.sdk.strategy.s.a biddingListener) {
        WMAdBaseAdapter wMAdBaseAdapterA;
        try {
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            WMLogUtil.i("---adapterLoadBidToken- " + adStrategy.aP() + " " + strA);
            if (TextUtils.isEmpty(strA) || (wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this)) == null) {
                return;
            }
            this.f86735o.setLoadId(this.B);
            adStrategy.n(this.B);
            adStrategy.l(true);
            final WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (wMAdSourceStatusListenerG != null) {
                wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
            }
            wMAdBaseAdapterA.loadBidding(adInfo, a(adStrategy.aN()), this.f86735o, adStrategy, new com.windmill.sdk.strategy.s.a() { // from class: com.windmill.sdk.common.t.21
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final WindMillError error) {
        a(new Runnable() { // from class: com.windmill.sdk.common.t.17
            @Override // java.lang.Runnable
            public void run() {
                if (t.this.f86910w != null) {
                    t.this.f86910w.onVideoAdPlayError(error, t.this.f86908u);
                }
            }
        });
    }

    private void a(boolean isLoadAdPrice, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        if (isLoadAdPrice) {
            com.windmill.sdk.strategy.s.b bVar = this.H;
            if (bVar != null) {
                bVar.a(adStrategy, error);
                return;
            }
            return;
        }
        com.windmill.sdk.strategy.l.a aVar = this.I;
        if (aVar != null) {
            aVar.a(adStrategy, error, "ready");
        }
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final boolean isLoadAdPrice) {
        try {
            WMLogUtil.i("-------------adapterLoadBiddingPrice------------" + adStrategy.aP() + " " + adStrategy.aN() + ":" + isLoadAdPrice);
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return;
            }
            final WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                g(adStrategy);
                this.f86735o.setLoadId(this.B);
                adStrategy.n(this.B);
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
                a(new Runnable() { // from class: com.windmill.sdk.common.t.22
                    @Override // java.lang.Runnable
                    public void run() {
                        wMAdBaseAdapterA.loadInnerAd(t.this.a(adStrategy.aN()), null, t.this.f86735o, adStrategy, isLoadAdPrice);
                    }
                });
                return;
            }
            WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
            a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
        } catch (Throwable th) {
            a(isLoadAdPrice, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    public boolean a(com.windmill.sdk.strategy.a adStrategy) {
        try {
            WMLogUtil.i("-----adapterInitAndLoad------" + adStrategy.aP() + " id: " + adStrategy.aN() + " ");
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
                this.f86735o.setLoadId(this.B);
                adStrategy.n(this.B);
                g(adStrategy);
                b(this.f86735o, adStrategy, this.B);
                boolean z10 = adStrategy.aM() > 0 && System.currentTimeMillis() - wMAdBaseAdapterA.getAdapterReadyTime() > ((long) adStrategy.aM());
                WMLogUtil.i(this.C + (System.currentTimeMillis() - wMAdBaseAdapterA.getAdapterReadyTime()) + "-----adapterInitAndLoad---" + adStrategy.aM());
                if (adStrategy.F()) {
                    if (!wMAdBaseAdapterA.isLoadSuccess()) {
                        WMLogUtil.i("HB广告源加载后但是不是Ready状态:" + adStrategy.aP() + ":" + adStrategy.aW());
                        if (!b(adStrategy)) {
                            b(adStrategy, wMAdBaseAdapterA);
                        }
                    } else if (z10) {
                        adapterDidFailToLoadAd(wMAdBaseAdapterA, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), "HB广告源加载后虽然处于Ready状态,但是已过期"));
                    } else {
                        com.windmill.sdk.utils.l.c(adStrategy.aN());
                        WMLogUtil.i("---HB广告源Load复用已经ready的adapter:" + adStrategy.aP() + ":" + adStrategy.aW());
                        adapterDidLoadAdSuccessAd(wMAdBaseAdapterA, adStrategy);
                        return true;
                    }
                } else {
                    if (wMAdBaseAdapterA.isLoadSuccess() && !z10) {
                        if (com.windmill.sdk.utils.l.c(adStrategy.aN())) {
                            adStrategy.f87111v = true;
                            wMAdBaseAdapterA.isGdtLoadSuc = true;
                        }
                        WMLogUtil.i("Load复用已经ready的adapter:" + adStrategy.aP() + ":" + adStrategy.aW());
                        adapterDidLoadAdReady(wMAdBaseAdapterA, adStrategy);
                        adapterDidLoadAdSuccessAd(wMAdBaseAdapterA, adStrategy);
                        return true;
                    }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.windmill.sdk.strategy.a strategy, String event_type, int errorCode, String externalErrorCode, String msg) {
        com.windmill.sdk.utils.m.a("error", event_type, this.f86735o, strategy, this.f86727g, errorCode, externalErrorCode, msg, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.t.25
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(t.this.B);
                    pointEntityWind.setExecution_scene(t.this.f86726f ? "0" : "1");
                }
            }
        });
    }

    private void a(final WindMillAdRequest request) throws Throwable {
        if (!TextUtils.isEmpty(this.f86735o.getLoadId())) {
            WindMillAdRequest windMillAdRequest = this.f86735o;
            windMillAdRequest.orginLoadId = windMillAdRequest.getLoadId();
        }
        String string = UUID.randomUUID().toString();
        this.B = string;
        this.f86735o = request;
        request.setLoadId(string);
        this.f86726f = false;
        this.I = null;
        this.f86730j = false;
        WMLogUtil.i("internalLoadAd loadStrategies loadId " + this.B);
        if (this.f86727g == null) {
            this.f86727g = new com.windmill.sdk.strategy.s(this, new com.windmill.sdk.strategy.s.d() { // from class: com.windmill.sdk.common.t.2
                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.l.a listener) {
                    strategy.f87102l = t.this.f86723c;
                    WMLogUtil.i(t.this.C + "-------adapterPreloadAd-");
                    t.this.I = listener;
                    if (t.this.c(strategy)) {
                        t.this.b(1, strategy);
                    } else {
                        t.this.a(strategy, false);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void b(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = t.this.f86723c;
                    if (WMLogUtil.isEnableLog) {
                        WMLogUtil.i(t.this.C + "-------adapterLoadPassFilterBackup--: " + strategy.aP());
                    }
                    if (strategy.D() || strategy.C()) {
                        t.this.h(strategy);
                    } else if (t.this.c(strategy)) {
                        t.this.b(3, strategy);
                    } else {
                        t.this.a(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.b listener) {
                    WMLogUtil.i(t.this.C + "-------adapterLoadBiddingPrice-");
                    t tVar = t.this;
                    strategy.f87102l = tVar.f86723c;
                    tVar.H = listener;
                    if (t.this.c(strategy)) {
                        t.this.b(2, strategy);
                    } else {
                        t.this.a(strategy, true);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.a biddingListener) {
                    strategy.f87102l = t.this.f86723c;
                    if (WMLogUtil.isEnableLog) {
                        WMLogUtil.i(t.this.C + "-----adapterLoadBiddingParameter--" + strategy.aP());
                    }
                    t.this.a(strategy, biddingListener);
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = t.this.f86723c;
                    if (WMLogUtil.isEnableLog) {
                        WMLogUtil.i(t.this.C + "---adapterLoadPassFilter: " + strategy.aP() + " id: " + strategy.aW() + strategy.C() + " " + t.this.c(strategy));
                    }
                    if (strategy.C()) {
                        t.this.h(strategy);
                    } else if (t.this.c(strategy)) {
                        t.this.b(3, strategy);
                    } else {
                        t.this.a(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, WindMillError windMillError) {
                    WMLogUtil.i(t.this.C + "-------adapterLoadNoPassFilter--");
                    t.this.adapterDidFailToLoadAd(null, strategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(List<com.windmill.sdk.strategy.a> adStrategyList, com.windmill.sdk.strategy.q config) {
                    WMLogUtil.i(t.this.C + "-------onStrategySuccess-");
                    t tVar = t.this;
                    tVar.f86726f = true;
                    tVar.f86724d = adStrategyList;
                    tVar.f86722b = config;
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(WindMillError error, String placementId, List<com.windmill.sdk.strategy.a> failList) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(t.this.C);
                    sb2.append("------onStrategyFail ");
                    sb2.append(failList != null ? failList.size() : 0);
                    WMLogUtil.i(sb2.toString());
                    t tVar = t.this;
                    tVar.f86726f = true;
                    if (tVar.H != null) {
                        t.this.H = null;
                    }
                    t tVar2 = t.this;
                    if (tVar2.f86730j) {
                        return;
                    }
                    tVar2.b();
                    t.this.a(failList, request);
                    t.this.a(error, (com.windmill.sdk.strategy.a) null, (String) null);
                }
            });
        }
        this.f86727g.a(this.f86735o, this, this.f86911x);
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
            a(strategy, sVar != null ? sVar.l() : null, this.B, this.f86735o, error, timerStage);
            a(error);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(final WindMillError error) {
        AutoAdLoadListener autoAdLoadListener;
        if (error != null) {
            WMLogUtil.i("---LoadFail--mIsAutoLoad " + this.f86731k + error.getErrorCode() + " " + error.getMessage());
        }
        if (this.f86731k) {
            return;
        }
        this.f86731k = true;
        if (this.f86911x != null && !this.f86723c) {
            if ((error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_LOADING.getErrorCode()) || (error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL.getErrorCode())) {
                this.f86731k = false;
            } else {
                a(this.f86911x);
            }
            a(new Runnable() { // from class: com.windmill.sdk.common.t.3
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f86909v != null) {
                        t.this.f86909v.onVideoAdLoadFail(error, t.this.f86908u);
                    }
                }
            });
            return;
        }
        if (!this.f86723c || (autoAdLoadListener = this.f86733m) == null) {
            return;
        }
        autoAdLoadListener.onAutoAdLoadFail(error, this.f86908u);
    }

    private void a(final q item, final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adapter) {
        WindMillAdRequest windMillAdRequest;
        String str;
        if (item == null || (windMillAdRequest = this.f86735o) == null || windMillAdRequest.getAdType() != 1) {
            return;
        }
        try {
            JSONObject jSONObjectD = item.d();
            String strA = com.windmill.sdk.utils.a.c.a(this.f86735o, adStrategy.aJ(), item.a());
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            String string = "";
            if (jSONObjectD != null) {
                String strA2 = a(adapter);
                if (!TextUtils.isEmpty(strA2)) {
                    jSONObjectD.put("thirdTransId", strA2);
                }
                string = jSONObjectD.toString();
            }
            String str2 = string;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (strA.indexOf(63) == -1) {
                str = strA + "?" + WMSdkConfig.getServerQueryString();
            } else {
                str = strA + x.a.f97576d + WMSdkConfig.getServerQueryString();
            }
            com.windmill.sdk.utils.m.a(PointCategory.SERVER_SHOW_REQUEST, this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.z
                @Override // com.windmill.sdk.utils.m.a
                public final void onAddExtra(Object obj) {
                    this.f86979a.b(obj);
                }
            });
            com.windmill.sdk.strategy.j.a(str, str2, 1, item.c(), this.f86735o, new AnonymousClass7(adStrategy, item, adapter));
        } catch (Exception unused) {
        }
    }

    public void a(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy) {
        a(this.f86735o, this.f86724d, strategy, this.B);
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.j();
        }
        AdStatus adStatus = this.f86721a;
        AdStatus adStatus2 = AdStatus.AdStatusReady;
        if (adStatus == adStatus2) {
            WMLogUtil.d("has send notify videoAd load success, don't do again");
            return;
        }
        if (adStatus != AdStatus.AdStatusLoading) {
            WMLogUtil.d("not do videoAd load ad");
            return;
        }
        this.f86721a = adStatus2;
        a(this.f86911x);
        this.G = System.currentTimeMillis();
        A1bC2d.addEvent(400, this.f86735o, strategy, com.windmill.sdk.utils.a.c.f87350b);
        a(adapter, strategy, this.B, this.f86735o);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.C);
        sb2.append("--mIsAutoLoad:LoadAdSuccess ");
        sb2.append(this.f86723c);
        sb2.append(" ");
        sb2.append(this.f86733m != null);
        WMLogUtil.i(sb2.toString());
        if (!this.f86723c) {
            a(new Runnable() { // from class: com.windmill.sdk.common.t.8
                @Override // java.lang.Runnable
                public void run() {
                    if (t.this.f86909v != null) {
                        t.this.f86909v.onVideoAdLoadSuccess(t.this.f86908u);
                    }
                }
            });
            return;
        }
        AutoAdLoadListener autoAdLoadListener = this.f86733m;
        if (autoAdLoadListener != null) {
            autoAdLoadListener.onAutoAdLoadSuccess(this.f86908u);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntityWind) {
            PointEntityWind pointEntityWind = (PointEntityWind) obj;
            pointEntityWind.setLoad_id(this.B);
            pointEntityWind.setOptions(new HashMap());
        }
    }

    public void a(boolean isOut) {
        Handler handler = this.f86911x;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null) {
            Iterator<com.windmill.sdk.strategy.a> it2 = list.iterator();
            while (it2.hasNext()) {
                WMAdBaseAdapter wMAdBaseAdapterF = f(it2.next());
                if (wMAdBaseAdapterF != null) {
                    WMLogUtil.i("---controller destroy adAdapter " + wMAdBaseAdapterF.getClass().getSimpleName());
                    com.windmill.sdk.utils.a.a().b(wMAdBaseAdapterF);
                    wMAdBaseAdapterF.destroy();
                }
            }
        }
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.m();
        }
        this.f86909v = null;
        this.f86910w = null;
        a((WMAdSourceStatusListener) null);
        this.f86731k = false;
        a(isOut, this.B, this.f86735o, (com.windmill.sdk.strategy.a) null);
        h();
    }
}
