package com.windmill.sdk.common;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.mta.PointParamKey;
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
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.FreEntity;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.point.PointEntityWMError;
import com.windmill.sdk.point.PointEntityWind;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class p extends l implements WMAdConnector {
    private static WeakReference<ExecutorService> G;
    private List<WMNativeAdData> A;
    private com.windmill.sdk.strategy.a C;
    private com.windmill.sdk.strategy.s.b E;
    private com.windmill.sdk.strategy.l.a F;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f86815u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f86816v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Handler f86817w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Map<String, List<WMNativeAdData>> f86820z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f86818x = 15000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f86819y = "";
    private int B = 0;
    private int D = 0;
    private List<String> H = new ArrayList();

    /* JADX INFO: renamed from: com.windmill.sdk.common.p$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86846a;

        static {
            int[] iArr = new int[l.b.values().length];
            f86846a = iArr;
            try {
                iArr[l.b.WindFilterKeepGoing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86846a[l.b.WindFilterInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86846a[l.b.WindFilterParameter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86846a[l.b.WindFilterAdCount.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86846a[l.b.WindFilterGdpr.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86846a[l.b.WindFilterLoadingBreak.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f86846a[l.b.WindFilterLoadInterval.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public interface a {
        void onNativeAdFirstPlay();

        void onVideoAdLoadFail(WindMillError error, String placementId);

        void onVideoAdLoadSuccess(List<WMNativeAdData> adDataList, String placementId);
    }

    public p(WindMillAdRequest request, a windAdRequestLoadLister) {
        this.f86816v = windAdRequestLoadLister;
        this.f86724d = new ArrayList();
        this.f86820z = new HashMap();
        this.A = new ArrayList();
        this.f86734n = new HashMap();
        this.f86735o = request;
        this.f86815u = request.getPlacementId();
        try {
            this.f86817w = new Handler(WindMillAd.sharedAds().getTobidHandlerLooper()) { // from class: com.windmill.sdk.common.p.1
                @Override // android.os.Handler
                public void handleMessage(Message msg) {
                    WMAdBaseAdapter wMAdBaseAdapterF;
                    WMAdBaseAdapter wMAdBaseAdapterF2;
                    int i10 = msg.what;
                    if (i10 != 1000 && i10 != 1001) {
                        if (i10 == 1003) {
                            p pVar = p.this;
                            pVar.a(pVar.f86817w, msg.arg1);
                            return;
                        }
                        if (i10 == 1004) {
                            p pVar2 = p.this;
                            pVar2.b(pVar2.f86817w, msg.arg1);
                            return;
                        }
                        if (i10 != 2000) {
                            return;
                        }
                        try {
                            Object obj = msg.obj;
                            if (obj instanceof com.windmill.sdk.strategy.a) {
                                WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                                p.this.adapterDidFailToLoadAd(null, (com.windmill.sdk.strategy.a) obj, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            return;
                        }
                    }
                    WMLogUtil.e("----loadAd---动态总超时---超时阶段：" + p.this.f86729i + "  thread:：" + Thread.currentThread() + " loadId：" + p.this.f86819y);
                    p pVar3 = p.this;
                    String str = pVar3.f86729i;
                    pVar3.a(pVar3.f86817w);
                    if (p.this.f86721a == AdStatus.AdStatusLoading) {
                        WMLogUtil.e("------------loadAd------------Timeout------------" + p.this.f86819y);
                        p pVar4 = p.this;
                        pVar4.a(pVar4.f86727g);
                        com.windmill.sdk.strategy.a aVarJ = p.this.j();
                        if (aVarJ != null) {
                            aVarJ.h(1);
                            if (aVarJ.Y() == 1) {
                                if (aVarJ.Z() == 1) {
                                    if (p.this.a(aVarJ)) {
                                        return;
                                    }
                                } else if (aVarJ.Z() == 0 && aVarJ.v() && (wMAdBaseAdapterF2 = p.this.f(aVarJ)) != null) {
                                    p.this.adapterDidLoadAdSuccessAd(wMAdBaseAdapterF2, aVarJ);
                                    return;
                                }
                            } else if (!aVarJ.C()) {
                                WMAdBaseAdapter wMAdBaseAdapterF3 = p.this.f(aVarJ);
                                if (wMAdBaseAdapterF3 != null && wMAdBaseAdapterF3.isLoadSuccess()) {
                                    p.this.a(wMAdBaseAdapterF3, aVarJ, wMAdBaseAdapterF3.getNativeAdDataList());
                                    return;
                                }
                            } else if (aVarJ.v() && (wMAdBaseAdapterF = p.this.f(aVarJ)) != null) {
                                aVarJ.i(false);
                                p.this.adapterDidLoadAdSuccessAd(wMAdBaseAdapterF, aVarJ);
                                return;
                            }
                        }
                        p.this.c();
                        com.windmill.sdk.strategy.s sVar = p.this.f86727g;
                        if (sVar != null) {
                            sVar.j();
                        }
                        p pVar5 = p.this;
                        pVar5.a(pVar5.f86735o, pVar5.f86724d, pVar5.f86819y);
                        p.this.a(WindMillError.ERROR_LOAD_AD_TIME_OUT, (com.windmill.sdk.strategy.a) null, str);
                    }
                }
            };
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(com.windmill.sdk.strategy.a strategy) {
        if (strategy.v()) {
            WMAdBaseAdapter wMAdBaseAdapterF = f(strategy);
            if (wMAdBaseAdapterF != null) {
                adapterDidLoadAdSuccessAd(wMAdBaseAdapterF, strategy);
                return;
            } else {
                adapterDidFailToLoadAd(f(strategy), strategy, new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "sts is not find adapter"));
                return;
            }
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

    private void h(com.windmill.sdk.strategy.a adStrategy) {
        com.windmill.sdk.utils.m.a("load", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.10
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(p.this.f86819y);
                    pointEntityWind.setIs_out_sdk("1");
                    pointEntityWind.setExecution_scene(p.this.f86726f ? "0" : "1");
                    com.windmill.sdk.strategy.q qVar = p.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(p.this.f86722b.f87239a));
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

    private void q() throws Throwable {
        String string = UUID.randomUUID().toString();
        this.f86819y = string;
        this.f86735o.setLoadId(string);
        this.f86726f = false;
        this.F = null;
        this.f86730j = false;
        if (this.f86727g == null) {
            this.f86727g = new com.windmill.sdk.strategy.s(this, new com.windmill.sdk.strategy.s.d() { // from class: com.windmill.sdk.common.p.7
                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.l.a listener) {
                    p pVar = p.this;
                    strategy.f87102l = pVar.f86723c;
                    pVar.F = listener;
                    if (p.this.c(strategy)) {
                        p.this.b(1, strategy);
                    } else {
                        p.this.a(strategy, false);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void b(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = p.this.f86723c;
                    WMLogUtil.i(WMLogUtil.TAG, "------------adapterLoadPassFilterBackup------------" + strategy.aP());
                    if (strategy.D() || strategy.C()) {
                        p.this.g(strategy);
                    } else if (p.this.c(strategy)) {
                        p.this.b(3, strategy);
                    } else {
                        p.this.a(strategy);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.b listener) {
                    p pVar = p.this;
                    strategy.f87102l = pVar.f86723c;
                    pVar.E = listener;
                    if (p.this.c(strategy)) {
                        p.this.b(2, strategy);
                    } else {
                        p.this.a(strategy, true);
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.s.a biddingListener) {
                    p pVar = p.this;
                    strategy.f87102l = pVar.f86723c;
                    pVar.a(strategy, biddingListener);
                }

                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy) {
                    strategy.f87102l = p.this.f86723c;
                    try {
                        WMLogUtil.i("----WMSController--adapterLoadPassFilter: " + p.this.c(strategy) + " " + strategy.aP());
                        if (strategy.C()) {
                            p.this.g(strategy);
                        } else {
                            String strA = com.windmill.sdk.utils.l.a(strategy);
                            p pVar = p.this;
                            WMAdBaseAdapter wMAdBaseAdapterA = pVar.a(pVar.f86735o, strategy, strA, pVar);
                            if (p.this.c(strategy) && wMAdBaseAdapterA != null && !wMAdBaseAdapterA.isLoadSuccess()) {
                                p.this.b(3, strategy);
                            } else {
                                p.this.a(strategy);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(com.windmill.sdk.strategy.a strategy, WindMillError windMillError) {
                    p pVar = p.this;
                    strategy.f87102l = pVar.f86723c;
                    pVar.adapterDidFailToLoadAd(null, strategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(List<com.windmill.sdk.strategy.a> adStrategyList, com.windmill.sdk.strategy.q config) {
                    p pVar = p.this;
                    pVar.f86726f = true;
                    pVar.f86724d = adStrategyList;
                    pVar.f86722b = config;
                }

                @Override // com.windmill.sdk.strategy.s.d
                public void a(WindMillError error, String placementId, List<com.windmill.sdk.strategy.a> failList) {
                    p pVar = p.this;
                    pVar.f86726f = true;
                    if (pVar.E != null) {
                        p.this.E = null;
                    }
                    p pVar2 = p.this;
                    if (pVar2.f86730j) {
                        return;
                    }
                    pVar2.c();
                    p pVar3 = p.this;
                    pVar3.a(failList, pVar3.f86735o);
                    p.this.a(error, (com.windmill.sdk.strategy.a) null, (String) null);
                }
            });
        }
        this.f86727g.a(this.f86735o, this, this.f86817w);
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClick(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, final Map<String, String> extra) {
        com.windmill.sdk.utils.m.a("click", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.4
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    Map map = extra;
                    if (map != null) {
                        pointEntityWind.setOffer_id((String) map.get(WMConstants.OFFER_ID));
                    }
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(p.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    p.this.a(adapter, pointEntityWind);
                }
            }
        });
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidAdClickDownload(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidCloseAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToLoadAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        WMAdBaseAdapter wMAdBaseAdapterF;
        com.windmill.sdk.strategy.l.a aVar;
        WMLogUtil.e("adapterDidFailToLoadAd() called with: strategy = [" + strategy.aP() + "], error = [" + error + "]");
        if (!this.f86726f) {
            if (strategy.F()) {
                com.windmill.sdk.strategy.s.b bVar = this.E;
                if (bVar != null) {
                    bVar.a(strategy, error);
                }
            } else if (strategy.C() && (aVar = this.F) != null) {
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
        this.f86817w.removeMessages(2000, strategy);
        this.f86734n.put(strategy.aP() + "-" + strategy.aW(), error);
        strategy.a(true, error);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.F;
            if (aVar2 != null) {
                aVar2.a(strategy);
            }
            if (strategy.B()) {
                strategy.i(false);
                return;
            }
        }
        com.windmill.sdk.strategy.a aVarB = b(this.f86727g, strategy);
        if (aVarB != null && (wMAdBaseAdapterF = f(aVarB)) != null && wMAdBaseAdapterF.getNativeAdDataList() != null && wMAdBaseAdapterF.getNativeAdDataList().size() > 0 && this.D < 10) {
            adapterDidLoadAdSuccessAd(wMAdBaseAdapterF, aVarB);
            this.D++;
            return;
        }
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.b(strategy);
        }
        if (this.f86734n.keySet().size() == this.f86724d.size() && this.f86721a == AdStatus.AdStatusLoading) {
            c();
            this.f86817w.removeMessages(2000);
            a(this.f86817w);
            a(WindMillError.ERROR_AD_NO_FILL.copy(), strategy, (String) null);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidFailToPlayingAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        try {
            WMLogUtil.d(WMLogUtil.TAG, "adapterDidFailToPlayingAd() called with: strategy = [" + adStrategy.aP() + "] " + error.toString());
            WindMillError windMillError = WindMillError.ERROR_AD_PLAY;
            HashMap map = new HashMap();
            map.put(adStrategy.aP(), error);
            windMillError.setMessage(JSONSerializer.Serialize(map));
            a(adStrategy, "play", error.getErrorCode(), error.getExternalErrorCode(), error.getMessage());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidLoadAdReady(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy) {
        try {
            WMLogUtil.i(WMLogUtil.TAG, "adapterDidLoadNativeAdReady() called with: strategy = [" + strategy.aP() + "] ");
            WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            if (wMAdSourceStatusListenerG != null && strategy.U() && !strategy.n()) {
                strategy.d(true);
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(this.f86735o);
                wMAdSourceStatusListenerG.onAdSourceLoadSuccess(adInfo);
            }
            com.windmill.sdk.utils.m.a("ready", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.13
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    List<WMNativeAdData> nativeAdDataList;
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(strategy.aJ());
                        WMAdBaseAdapter wMAdBaseAdapter = adapter;
                        if ((wMAdBaseAdapter instanceof WMCustomNativeAdapter) && (nativeAdDataList = ((WMCustomNativeAdapter) wMAdBaseAdapter).getNativeAdDataList()) != null) {
                            pointEntityWind.setAd_cnt(String.valueOf(nativeAdDataList.size()));
                        }
                        pointEntityWind.setExecution_scene(p.this.f86726f ? "0" : "1");
                        com.windmill.sdk.strategy.q qVar = p.this.f86722b;
                        if (qVar != null) {
                            pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                            pointEntityWind.setConcurrent_count(String.valueOf(p.this.f86722b.f87239a));
                        }
                        p.this.a(adapter, pointEntityWind);
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
        WMLogUtil.i("adapterDidLoadNativeAdSuccessAd() called with: strategy = [" + strategy.aP() + "] " + this.f86726f);
        if (!this.f86726f) {
            com.windmill.sdk.strategy.l.a aVar = this.F;
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
        List<WMNativeAdData> nativeAdDataList = adapter instanceof WMCustomNativeAdapter ? ((WMCustomNativeAdapter) adapter).getNativeAdDataList() : null;
        this.f86817w.removeMessages(2000, strategy);
        strategy.g(true);
        if (strategy.D()) {
            if (strategy.A()) {
                strategy.h(false);
                return;
            }
        } else if (strategy.C()) {
            com.windmill.sdk.strategy.l.a aVar2 = this.F;
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
        Map<String, List<WMNativeAdData>> map = this.f86820z;
        if (map != null) {
            map.put(strategy.aD(), nativeAdDataList);
        }
        if (a(this.f86727g, strategy)) {
            a(adapter, strategy, nativeAdDataList);
        }
    }

    @Override // com.windmill.sdk.base.WMAdBaseConnector
    public void adapterDidLoadBiddingPriceSuccess(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy, String price) {
        if (adStrategy != null) {
            WMLogUtil.i("adapterDidLoadBiddingPriceSuccess() called with: strategy = [" + adStrategy.aP() + "], price = [" + price + "]");
            adStrategy.f(price);
            adStrategy.h(price);
            com.windmill.sdk.strategy.s.b bVar = this.E;
            if (bVar != null) {
                bVar.a(adStrategy, price);
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
    public void adapterDidShowLangPageAd(WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a adStrategy, Map<String, String> extra) {
        WMLogUtil.i(WMLogUtil.TAG, "adapterDidShowLangPageAd() called with: strategy = [" + adStrategy.aP() + "]");
        final String str = extra != null ? extra.get(WMConstants.OFFER_ID) : null;
        com.windmill.sdk.utils.m.a("landing_page_show", this.f86735o, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.3
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(adStrategy.aJ());
                    pointEntityWind.setOffer_id(str);
                }
            }
        });
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidSkipAd(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a adStrategy) {
    }

    @Override // com.windmill.sdk.base.WMAdConnector
    public void adapterDidStartPlayingAd(final WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, Map<String, String> extra) {
        this.B = 2;
        WMLogUtil.i(getClass().getSimpleName() + "----adapterDidStartPlayingAd() called with: strategy = [" + strategy.aP() + "]");
        final String str = extra != null ? extra.get(WMConstants.OFFER_ID) : null;
        if (!TextUtils.isEmpty(str) && !this.H.contains(str)) {
            this.H.add(str);
            com.windmill.sdk.strategy.i.a().a(new FreEntity(strategy.aN(), this.f86735o.getPlacementId(), strategy.aW()));
        }
        List<WMNativeAdData> listD = d();
        if (listD != null && listD.size() > 0) {
            WMNativeAdData wMNativeAdData = listD.get(0);
            if (!TextUtils.isEmpty(str) && str.equals(String.valueOf(wMNativeAdData.hashCode())) && !strategy.u()) {
                strategy.f(true);
                a aVar = this.f86816v;
                if (aVar != null) {
                    aVar.onNativeAdFirstPlay();
                }
            }
        }
        if (adapter != null) {
            strategy.b(adapter.getGroEcpm());
        }
        a("start", strategy, this.f86735o);
        com.windmill.sdk.utils.m.a("start", this.f86735o, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.5
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(strategy.aJ());
                    pointEntityWind.setEcpm(String.valueOf(strategy.V()));
                    pointEntityWind.setSub_category(String.valueOf(strategy.T()));
                    pointEntityWind.setOffer_id(str);
                    pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                    Float fL = strategy.l();
                    if (fL != null) {
                        pointEntityWind.setExchange_rate(String.valueOf(fL));
                    }
                    try {
                        pointEntityWind.getOptions().put("request_options", new JSONObject(p.this.f86735o.getOptions()).toString());
                    } catch (Throwable unused) {
                    }
                    com.windmill.sdk.strategy.q qVar = p.this.f86722b;
                    if (qVar != null) {
                        pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                        pointEntityWind.setConcurrent_count(String.valueOf(p.this.f86722b.f87239a));
                    }
                    pointEntityWind.getOptions().put("active_id", o.d().c());
                    p.this.a(adapter, pointEntityWind);
                }
            }
        });
        com.windmill.sdk.strategy.d.a().a(1, this.f86735o.getPlacementId(), strategy, b(adapter));
    }

    public AdInfo p() {
        try {
            if (this.f86724d == null || this.f86820z == null) {
                return null;
            }
            for (int i10 = 0; i10 < this.f86724d.size(); i10++) {
                com.windmill.sdk.strategy.a aVar = this.f86724d.get(i10);
                Iterator<Map.Entry<String, List<WMNativeAdData>>> it2 = this.f86820z.entrySet().iterator();
                while (it2.hasNext()) {
                    String key = it2.next().getKey();
                    if (!TextUtils.isEmpty(aVar.aD()) && aVar.aD().equals(key)) {
                        AdInfo adInfo = new AdInfo(aVar);
                        adInfo.fillData(this.f86735o);
                        return adInfo;
                    }
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    protected void b() {
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null) {
            sVar.h();
            return;
        }
        WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
        PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), "useLastStrategy and mStrategyManager is null");
        pointEntityWMErrorWindError.setAdtype(String.valueOf(5));
        pointEntityWMErrorWindError.commit();
        windMillError.setMessage("useLastStrategy and mStrategyManager is null");
        a(windMillError);
    }

    protected void c() {
        this.f86721a = AdStatus.AdStatusNone;
        this.f86820z.clear();
        Iterator<com.windmill.sdk.strategy.a> it2 = this.f86724d.iterator();
        while (it2.hasNext()) {
            it2.next().aF();
        }
    }

    public List<WMNativeAdData> d() {
        Map<String, List<WMNativeAdData>> map;
        List<WMNativeAdData> list;
        try {
            List<WMNativeAdData> list2 = this.A;
            int i10 = 0;
            if (list2 != null && !list2.isEmpty()) {
                while (i10 < this.A.size()) {
                    WMNativeAdData wMNativeAdData = this.A.get(i10);
                    if (wMNativeAdData != null) {
                        wMNativeAdData.setExpired_time(this.C.aM());
                        if (wMNativeAdData.getReadTime() == 0) {
                            wMNativeAdData.setReadyTime(System.currentTimeMillis());
                        }
                    }
                    i10++;
                }
                return this.A;
            }
            List<com.windmill.sdk.strategy.a> list3 = this.f86724d;
            if (list3 == null || list3.isEmpty()) {
                return null;
            }
            this.A = new ArrayList();
            for (int i11 = 0; i11 < this.f86724d.size(); i11++) {
                com.windmill.sdk.strategy.a aVar = this.f86724d.get(i11);
                if (aVar != null && (map = this.f86820z) != null && map.containsKey(aVar.aD()) && (list = this.f86820z.get(aVar.aD())) != null) {
                    while (i10 < list.size()) {
                        WMNativeAdData wMNativeAdData2 = list.get(i10);
                        wMNativeAdData2.setExpired_time(aVar.aM());
                        wMNativeAdData2.setReadyTime(System.currentTimeMillis());
                        this.A.add(wMNativeAdData2);
                        i10++;
                    }
                    return this.A;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.windmill.sdk.common.l
    public List<AdInfo> e() {
        try {
            Map<String, List<WMNativeAdData>> map = this.f86820z;
            if (map == null || map.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, List<WMNativeAdData>>> it2 = this.f86820z.entrySet().iterator();
            while (it2.hasNext()) {
                String key = it2.next().getKey();
                List<com.windmill.sdk.strategy.a> list = this.f86724d;
                if (list != null && list.size() > 0) {
                    for (int i10 = 0; i10 < this.f86724d.size(); i10++) {
                        com.windmill.sdk.strategy.a aVar = this.f86724d.get(i10);
                        if (!TextUtils.isEmpty(aVar.aD()) && aVar.aD().equals(key)) {
                            AdInfo adInfo = new AdInfo(aVar);
                            adInfo.fillData(this.f86735o);
                            arrayList.add(adInfo);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void a(WindMillAdRequest request, boolean isAutoLoad) throws Throwable {
        this.D = 0;
        this.f86739s = false;
        this.f86723c = isAutoLoad;
        this.B = 0;
        l.b bVarA = a(isAutoLoad, request);
        WMLogUtil.i("-------loadAd:--status " + this.B);
        this.f86731k = false;
        this.f86735o.isLoadToOut = false;
        switch (AnonymousClass6.f86846a[bVarA.ordinal()]) {
            case 1:
                WMLogUtil.i("WindFilterKeepGoing");
                a(request, false, isAutoLoad);
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
                WMLogUtil.e("WindFilterAdCount");
                a(WindMillError.ERROR_AD_COUNT_IS_EMPTY);
                break;
            case 5:
                WMLogUtil.e("WindFilterGdpr");
                a(WindMillError.ERROR_GDPR_DENIED);
                break;
            case 6:
                WMLogUtil.e("WindFilterLoadingBreak");
                a(WindMillError.ERROR_AD_LOAD_FAIL_LOADING);
                break;
            case 7:
                WMLogUtil.e("WindFilterLoadInterval");
                a(WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int type, com.windmill.sdk.strategy.a strategy) {
        try {
            WeakReference<ExecutorService> weakReference = G;
            if (weakReference == null || weakReference.get() == null || G.get().isShutdown()) {
                G = new WeakReference<>(a("tobid_native"));
            }
            a(G.get(), type, strategy, this.f86735o);
        } catch (Exception unused) {
        }
    }

    private void b(final com.windmill.sdk.strategy.a adStrategy, final WMAdBaseAdapter adAdapter) {
        this.f86817w.removeMessages(2000, adStrategy);
        Message messageObtain = Message.obtain(this.f86817w, 2000, adStrategy);
        if (adStrategy.ab() != 0) {
            this.f86817w.sendMessageDelayed(messageObtain, adStrategy.ab());
        } else {
            this.f86817w.sendMessageDelayed(messageObtain, this.f86818x);
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
        com.windmill.sdk.utils.a.a().a(adAdapter);
        a(new Runnable() { // from class: com.windmill.sdk.common.p.11
            @Override // java.lang.Runnable
            public void run() {
                adAdapter.loadInnerAd(p.this.a(adStrategy.aN()), null, p.this.f86735o, adStrategy, false);
                p.this.a(adStrategy, adAdapter);
            }
        });
    }

    public void a(WindMillAdRequest request, boolean useLastStrategy, boolean isAutoLoad) throws Throwable {
        this.f86721a = AdStatus.AdStatusLoading;
        ClientMetadata.setUserId(request.getUserId());
        this.f86734n.clear();
        this.f86820z.clear();
        this.A.clear();
        this.f86723c = isAutoLoad;
        WindMillAdRequest windMillAdRequest = this.f86735o;
        if (windMillAdRequest != null) {
            windMillAdRequest.setRefreshRequest(isAutoLoad);
        }
        if (!useLastStrategy) {
            WMLogUtil.i(WMLogUtil.TAG, "load ad not use lastStrategy loadId " + this.f86819y);
            this.f86724d.clear();
            q();
            return;
        }
        WMLogUtil.i(WMLogUtil.TAG, "load ad use lastStrategy loadId " + this.f86819y);
        b();
    }

    @Override // com.windmill.sdk.common.l
    public void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        WMLogUtil.i(WMLogUtil.TAG, "------------notifyPreloadTimeOut------------" + strategy.aP());
        adapterDidFailToLoadAd(f(strategy), strategy, error);
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, final com.windmill.sdk.strategy.s.a biddingListener) {
        WMAdBaseAdapter wMAdBaseAdapterA;
        try {
            WMLogUtil.i("------------adapterLoadBidToken------------" + adStrategy.aP());
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA) || (wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this)) == null) {
                return;
            }
            this.f86735o.setLoadId(this.f86819y);
            adStrategy.l(true);
            adStrategy.n(this.f86819y);
            final WMAdSourceStatusListener wMAdSourceStatusListenerG = g();
            AdInfo adInfo = new AdInfo(adStrategy);
            adInfo.fillData(this.f86735o);
            if (wMAdSourceStatusListenerG != null) {
                wMAdSourceStatusListenerG.onAdSourceBiddingStart(adInfo);
            }
            wMAdBaseAdapterA.loadBidding(adInfo, a(adStrategy.aN()), this.f86735o, adStrategy, new com.windmill.sdk.strategy.s.a() { // from class: com.windmill.sdk.common.p.8
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

    private void a(boolean isLoadAdPrice, com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
        if (isLoadAdPrice) {
            com.windmill.sdk.strategy.s.b bVar = this.E;
            if (bVar != null) {
                bVar.a(adStrategy, error);
                return;
            }
            return;
        }
        com.windmill.sdk.strategy.l.a aVar = this.F;
        if (aVar != null) {
            aVar.a(adStrategy, error, "ready");
        }
    }

    public void a(final com.windmill.sdk.strategy.a adStrategy, boolean isLoadAdPrice) {
        try {
            WMLogUtil.i("------adapterLoadBiddingPrice--c2c-" + adStrategy.aP() + ":" + isLoadAdPrice);
            String strA = com.windmill.sdk.utils.l.a(adStrategy);
            if (TextUtils.isEmpty(strA)) {
                WindMillError windMillError = WindMillError.ERROR_NOT_FOUND_ADAPTER;
                a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                return;
            }
            final WMAdBaseAdapter wMAdBaseAdapterA = a(this.f86735o, adStrategy, strA, this);
            if (wMAdBaseAdapterA != null) {
                h(adStrategy);
                this.f86735o.setLoadId(this.f86819y);
                adStrategy.l(true);
                adStrategy.n(this.f86819y);
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
                com.windmill.sdk.utils.a.a().a(wMAdBaseAdapterA);
                if (d(adStrategy)) {
                    a(new Runnable() { // from class: com.windmill.sdk.common.p.9
                        @Override // java.lang.Runnable
                        public void run() {
                            wMAdBaseAdapterA.loadInnerAd(p.this.a(adStrategy.aN()), null, p.this.f86735o, adStrategy, true);
                        }
                    });
                    return;
                } else {
                    wMAdBaseAdapterA.loadInnerAd(a(adStrategy.aN()), null, this.f86735o, adStrategy, true);
                    return;
                }
            }
            WindMillError windMillError2 = WindMillError.ERROR_NOT_FOUND_ADAPTER;
            a(isLoadAdPrice, adStrategy, new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage()));
        } catch (Throwable th) {
            a(isLoadAdPrice, adStrategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), th.getMessage()));
        }
    }

    public boolean a(final com.windmill.sdk.strategy.a adStrategy) {
        try {
            WMLogUtil.i("-----adapterInitAndLoad--getName: " + adStrategy.aP());
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
                this.f86735o.setLoadId(this.f86819y);
                adStrategy.n(this.f86819y);
                h(adStrategy);
                b(this.f86735o, adStrategy, this.f86819y);
                if (adStrategy.F()) {
                    if (!wMAdBaseAdapterA.isLoadSuccess()) {
                        if (!b(adStrategy)) {
                            b(adStrategy, wMAdBaseAdapterA);
                        }
                    } else {
                        WMLogUtil.i("Load复用已经Load成功的的adapter:" + adStrategy.aP() + ":" + adStrategy.aW());
                        wMAdBaseAdapterA.updateAdStrategy(adStrategy);
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
        WMLogUtil.i("-------show " + event_type);
        com.windmill.sdk.utils.m.a("error", event_type, this.f86735o, strategy, this.f86727g, errorCode, externalErrorCode, msg, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.p.12
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setExecution_scene(p.this.f86726f ? "0" : "1");
                    com.windmill.sdk.strategy.a aVar = strategy;
                    if (aVar != null) {
                        pointEntityWind.setLoad_id(aVar.aJ());
                    } else {
                        pointEntityWind.setLoad_id(p.this.f86819y);
                    }
                }
            }
        });
    }

    public void a(WMAdBaseAdapter adapter, com.windmill.sdk.strategy.a strategy, final List nativeADDataList) {
        if (nativeADDataList != null) {
            try {
                if (nativeADDataList.size() != 0) {
                    a(this.f86735o, this.f86724d, strategy, this.f86819y);
                    boolean z10 = true;
                    this.B = 1;
                    com.windmill.sdk.strategy.s sVar = this.f86727g;
                    if (sVar != null) {
                        sVar.j();
                    }
                    AdStatus adStatus = this.f86721a;
                    AdStatus adStatus2 = AdStatus.AdStatusReady;
                    if (adStatus == adStatus2) {
                        WMLogUtil.d("has send notify nativeAd load success, don't do again");
                        return;
                    }
                    if (adStatus != AdStatus.AdStatusLoading) {
                        WMLogUtil.d("not do nativeAd load ad");
                        return;
                    }
                    this.f86721a = adStatus2;
                    a(this.f86817w);
                    a(adapter, strategy, strategy.aJ(), this.f86735o);
                    this.C = strategy;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("----onLoadSuccess--mIsAutoLoad: ");
                    sb2.append(this.f86723c);
                    sb2.append(" autoListener:");
                    if (this.f86733m == null) {
                        z10 = false;
                    }
                    sb2.append(z10);
                    sb2.append(" ");
                    sb2.append(this.f86815u);
                    sb2.append(" ");
                    sb2.append(this.C.aP());
                    SigmobLog.i(sb2.toString());
                    if (!this.f86723c) {
                        a(new Runnable() { // from class: com.windmill.sdk.common.p.14
                            @Override // java.lang.Runnable
                            public void run() {
                                if (p.this.f86816v != null) {
                                    p.this.f86816v.onVideoAdLoadSuccess(nativeADDataList, p.this.f86815u);
                                }
                            }
                        });
                        return;
                    }
                    AutoAdLoadListener autoAdLoadListener = this.f86733m;
                    if (autoAdLoadListener != null) {
                        autoAdLoadListener.onAutoAdLoadSuccess(this.f86815u);
                        return;
                    }
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        adapterDidFailToLoadAd(adapter, strategy, new WMAdapterError(WindMillError.ERROR_AD_REQUEST.getErrorCode(), "adapterDidLoadNativeAdSuccessAd but nativeADDataList size is null"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final WindMillError error, com.windmill.sdk.strategy.a strategy, String timerStage) {
        try {
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            a(strategy, sVar != null ? sVar.l() : null, this.f86819y, this.f86735o, error, timerStage);
            a(error);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(final WindMillError error) {
        AutoAdLoadListener autoAdLoadListener;
        try {
            if (this.f86731k) {
                return;
            }
            this.f86731k = true;
            if (this.f86817w != null && !this.f86723c) {
                if ((error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_LOADING.getErrorCode()) || (error != null && error.getErrorCode() == WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL.getErrorCode())) {
                    this.f86731k = false;
                } else {
                    a(this.f86817w);
                }
                a(new Runnable() { // from class: com.windmill.sdk.common.p.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (p.this.f86816v != null) {
                            p.this.B = 0;
                            p.this.f86816v.onVideoAdLoadFail(error, p.this.f86815u);
                        }
                    }
                });
                return;
            }
            if (!this.f86723c || (autoAdLoadListener = this.f86733m) == null) {
                return;
            }
            autoAdLoadListener.onAutoAdLoadFail(error, this.f86815u);
        } catch (Exception unused) {
        }
    }

    public void a(boolean isOut) {
        try {
            Handler handler = this.f86817w;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            List<com.windmill.sdk.strategy.a> list = this.f86724d;
            if (list != null) {
                Iterator<com.windmill.sdk.strategy.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    WMAdBaseAdapter wMAdBaseAdapterF = f(it2.next());
                    if (wMAdBaseAdapterF != null) {
                        WMLogUtil.i(WMLogUtil.TAG, "controller destroy adAdapter " + wMAdBaseAdapterF.getClass().getSimpleName());
                        com.windmill.sdk.utils.a.a().b(wMAdBaseAdapterF);
                        wMAdBaseAdapterF.destroy();
                    }
                }
            }
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            if (sVar != null) {
                sVar.m();
            }
            this.H.clear();
            this.f86816v = null;
            this.f86731k = false;
            a(isOut, this.f86819y, this.f86735o, (com.windmill.sdk.strategy.a) null);
            h();
        } catch (Exception unused) {
        }
    }
}
