package com.windmill.sdk.strategy;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.models.HeaderBidding;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMNetworkConfig;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.models.WMFilter;
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.models.WaterfallResponse;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWind;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<String, String> f87260a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f87261b = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static Map<String, Boolean> f87262x = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.windmill.sdk.common.l f87264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f87265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f87266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q f87267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WindMillAdRequest f87268h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<com.windmill.sdk.strategy.a> f87274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Waterfall f87275o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f87278r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f87282v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private l f87284y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Handler f87285z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final CopyOnWriteArrayList<HeaderBidding> f87269i = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final CopyOnWriteArrayList<com.windmill.sdk.strategy.a> f87270j = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final CopyOnWriteArrayList<com.windmill.sdk.strategy.a> f87271k = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final CopyOnWriteArrayList<com.windmill.sdk.strategy.a> f87272l = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<com.windmill.sdk.strategy.a, Boolean> f87273m = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f87276p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map<String, WMAdapterError> f87277q = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    HashMap<String, String> f87263c = new HashMap<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Handler f87279s = new Handler(Looper.getMainLooper()) { // from class: com.windmill.sdk.strategy.s.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 != 1) {
                if (i10 == 2 && s.this.f87280t != null) {
                    b bVar = s.this.f87280t;
                    WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                    bVar.a(new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()));
                    return;
                }
                return;
            }
            int i11 = (s.this.f87267g == null || s.this.f87267g.f87249k == 0) ? 3000 : s.this.f87267g.f87249k;
            if (s.this.f87270j == null || s.this.f87270j.size() <= 0) {
                s.this.f87279s.sendEmptyMessage(2);
                return;
            }
            s.this.f87276p = false;
            s.this.f87279s.removeMessages(2);
            s.this.f87279s.sendEmptyMessageDelayed(2, i11);
            s.this.f87273m.clear();
            for (int i12 = 0; i12 < s.this.f87270j.size(); i12++) {
                com.windmill.sdk.strategy.a aVar = (com.windmill.sdk.strategy.a) s.this.f87270j.get(i12);
                if (s.this.f87265e != null && aVar != null) {
                    s.this.f87265e.a(aVar, s.this.f87280t);
                }
            }
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final b f87280t = new b() { // from class: com.windmill.sdk.strategy.s.2
        @Override // com.windmill.sdk.strategy.s.b
        public void a(final com.windmill.sdk.strategy.a strategy, String price) {
            WMAdSourceStatusListener wMAdSourceStatusListenerG;
            WMLogUtil.d(WMLogUtil.TAG, s.this.f87276p + "--------PriceSuccess---------" + price + "strategy_stage:" + s.this.f87282v);
            if (strategy == null) {
                return;
            }
            if (s.this.f87276p && "2".equals(s.this.f87282v)) {
                if (s.this.f87264d == null || s.this.f87264d.f86724d == null || s.this.f87264d.f86724d.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList(s.this.f87264d.f86724d);
                boolean z10 = false;
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    com.windmill.sdk.strategy.a aVar = (com.windmill.sdk.strategy.a) arrayList.get(i10);
                    String strAW = aVar.aW();
                    if (!TextUtils.isEmpty(strAW) && !TextUtils.isEmpty(strategy.aW()) && strAW.equals(strategy.aW())) {
                        aVar.f(price);
                        aVar.h(price);
                        s.this.a(aVar);
                        z10 = true;
                        break;
                    }
                }
                if (z10) {
                    s.this.f87264d.f86724d = arrayList;
                    return;
                }
                strategy.f(price);
                strategy.h(price);
                s.this.a(strategy);
                s.this.f87264d.f86724d.add(strategy);
                return;
            }
            if (s.this.f87276p) {
                return;
            }
            strategy.f(price);
            strategy.h(price);
            if (s.this.f87264d != null && (wMAdSourceStatusListenerG = s.this.f87264d.g()) != null && !strategy.n()) {
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(s.this.f87268h);
                wMAdSourceStatusListenerG.onAdSourceBiddingSuccess(adInfo);
            }
            s.this.a(strategy);
            if (s.this.f87268h != null) {
                com.windmill.sdk.utils.m.a(PointCategory.BID_C2C, s.this.f87268h, strategy, s.this, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.2.1
                    @Override // com.windmill.sdk.utils.m.a
                    public void onAddExtra(Object pointEntityBase) {
                        if (pointEntityBase instanceof PointEntityWind) {
                            PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                            pointEntityWind.setLoad_id(s.this.f87268h.getLoadId());
                            pointEntityWind.setHb_response("1");
                            pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                            Float fL = strategy.l();
                            if (fL != null) {
                                pointEntityWind.setExchange_rate(String.valueOf(fL));
                            }
                            if (strategy.af() != null) {
                                pointEntityWind.setHb_id(strategy.af().d());
                            }
                        }
                    }
                });
            }
            if (s.this.f87284y != null) {
                s.this.f87284y.a(strategy);
            }
            s.this.f87273m.put(strategy, Boolean.TRUE);
            HashMap map = new HashMap();
            map.put("price", price);
            HeaderBidding.Builder builder = new HeaderBidding.Builder();
            builder.channel_id(Integer.valueOf(strategy.aN()));
            builder.options(map);
            builder.cur(strategy.Q());
            builder.p_id(strategy.aW());
            builder.is_pdb(Boolean.valueOf(strategy.f87098h));
            builder.pdb_priority(Integer.valueOf(strategy.f87099i));
            s.this.f87269i.add(builder.build());
            s.this.r();
        }

        @Override // com.windmill.sdk.strategy.s.b
        public void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
            WMAdSourceStatusListener wMAdSourceStatusListenerG;
            WMLogUtil.d(WMLogUtil.TAG, s.this.f87276p + "--------PriceFail---------" + error.toString());
            if (s.this.f87264d != null && (wMAdSourceStatusListenerG = s.this.f87264d.g()) != null && !strategy.n()) {
                AdInfo adInfo = new AdInfo(strategy);
                adInfo.fillData(s.this.f87268h);
                wMAdSourceStatusListenerG.onAdSourceBiddingFailed(adInfo, error);
            }
            strategy.f87083a = true;
            if (s.this.f87276p) {
                return;
            }
            s.this.a(strategy, error);
            if (s.this.f87284y != null) {
                s.this.f87284y.a(strategy);
            }
            s.this.f87273m.put(strategy, Boolean.FALSE);
            s.this.f87277q.put(strategy.aP() + "-" + strategy.aW(), error);
            s.this.r();
        }

        @Override // com.windmill.sdk.strategy.s.b
        public void a(WMAdapterError error) {
            WMLogUtil.d(WMLogUtil.TAG, s.this.f87270j.size() + "--------PriceTimeOut---------" + s.this.f87273m.size() + " isPriceTimeOut:" + s.this.f87276p);
            if (s.this.f87276p) {
                return;
            }
            s.this.f87276p = true;
            if (s.this.f87273m.size() < s.this.f87270j.size()) {
                for (int i10 = 0; i10 < s.this.f87270j.size(); i10++) {
                    com.windmill.sdk.strategy.a aVar = (com.windmill.sdk.strategy.a) s.this.f87270j.get(i10);
                    aVar.f87103m = true;
                    if (!s.this.f87273m.keySet().contains(aVar)) {
                        s.this.f87277q.put(aVar.aP() + "-" + aVar.aW(), error);
                        s.this.a(aVar, error);
                        if (s.this.f87284y != null) {
                            s.this.f87284y.a(aVar);
                        }
                    }
                }
            }
            s.this.p();
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final List<com.windmill.sdk.strategy.a> f87281u = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final c f87283w = new c() { // from class: com.windmill.sdk.strategy.s.6
        @Override // com.windmill.sdk.strategy.s.c
        public void a(int type, List<com.windmill.sdk.strategy.a> strategyList, q config, Waterfall water) {
            int i10;
            com.windmill.sdk.strategy.a aVar;
            WMAdSourceStatusListener wMAdSourceStatusListenerG;
            WMLogUtil.d(WMLogUtil.TAG, "----StrategyRequest--onSuccess--type--" + type);
            s.this.f87282v = String.valueOf(type);
            s.this.f87267g = config;
            s.this.f87274n = strategyList;
            s.this.f87275o = water;
            if (s.this.f87273m != null && !s.this.f87273m.isEmpty() && type == 2) {
                for (com.windmill.sdk.strategy.a aVar2 : s.this.f87273m.keySet()) {
                    for (int i11 = 0; i11 < strategyList.size(); i11++) {
                        if (aVar2.aW().equals(strategyList.get(i11).aW())) {
                            strategyList.get(i11).g(aVar2.W());
                            if (config.f87244f > 0) {
                                strategyList.get(i11).aR().put(WMConstants.LOAD_TIMEOUT, Integer.valueOf(config.f87244f));
                            }
                        }
                    }
                }
            }
            if (config != null) {
                for (com.windmill.sdk.strategy.a aVar3 : config.a()) {
                    if (aVar3.D() && aVar3.L() == 1 && s.this.f87264d != null && (wMAdSourceStatusListenerG = s.this.f87264d.g()) != null) {
                        com.windmill.sdk.strategy.a.C1081a c1081aAf = aVar3.af();
                        WMAdapterError wMAdapterError = new WMAdapterError(0, "获取价格失败，未知错误");
                        if (c1081aAf != null) {
                            wMAdapterError.setErrorCode(c1081aAf.f87121f);
                            wMAdapterError.setMessage(c1081aAf.f87122g);
                        }
                        AdInfo adInfo = new AdInfo(aVar3);
                        adInfo.fillData(s.this.f87268h);
                        wMAdSourceStatusListenerG.onAdSourceBiddingFailed(adInfo, wMAdapterError);
                    }
                }
            }
            s.f87261b = true;
            if (config != null && !TextUtils.isEmpty(config.f87240b)) {
                s.f87260a.put(s.this.f87268h.getPlacementId(), config.f87240b);
            }
            if (config != null && config.f87244f > 0) {
                com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).edit().putInt(s.this.f87268h.getPlacementId() + WMSdkConfig._TIMEOUT, config.f87244f).apply();
            }
            if (type != 0 && type != 1) {
                if (s.this.f87284y != null) {
                    s.this.f87284y.b();
                    Map<String, com.windmill.sdk.strategy.a> mapC = s.this.f87284y.c();
                    if (mapC != null && mapC.size() > 0) {
                        ArrayList arrayList = new ArrayList(s.this.f87274n);
                        for (int i12 = 0; i12 < arrayList.size(); i12++) {
                            com.windmill.sdk.strategy.a aVar4 = (com.windmill.sdk.strategy.a) arrayList.get(i12);
                            if (mapC.containsKey(aVar4.aD()) && (aVar = mapC.get(aVar4.aD())) != null) {
                                aVar.f(aVar4.V());
                                aVar.h(aVar4.X());
                                aVar.g(aVar4.W());
                                if (s.this.f87274n.contains(aVar4)) {
                                    s.this.f87274n.remove(aVar4);
                                    s.this.f87274n.add(i12, aVar);
                                }
                            }
                        }
                    }
                }
                if (s.this.f87270j != null && s.this.f87270j.size() > 0) {
                    for (int i13 = 0; i13 < s.this.f87274n.size(); i13++) {
                        com.windmill.sdk.strategy.a aVar5 = (com.windmill.sdk.strategy.a) s.this.f87274n.get(i13);
                        for (com.windmill.sdk.strategy.a aVar6 : s.this.f87270j) {
                            if (aVar6.aD().equals(aVar5.aD())) {
                                aVar5.b(aVar6.j());
                                aVar5.l(aVar6.au());
                                aVar5.m(aVar6.av());
                                if (aVar6.aN() == 22) {
                                    aVar5.a(aVar6.ay(), aVar6.az(), aVar6.aA(), aVar6.aB(), aVar6.ax(), aVar6.aw());
                                }
                            }
                        }
                    }
                }
                s sVar = s.this;
                sVar.a((List<com.windmill.sdk.strategy.a>) sVar.f87274n, false);
                return;
            }
            if (s.this.f87285z != null && config != null && (i10 = config.f87244f) > 0) {
                s.this.b(i10);
            }
            if (s.this.f87274n != null) {
                Iterator it2 = s.this.f87274n.iterator();
                while (it2.hasNext()) {
                    com.windmill.sdk.strategy.a aVar7 = (com.windmill.sdk.strategy.a) it2.next();
                    if (aVar7.Y() == 1) {
                        com.windmill.sdk.common.u uVarM = s.this.f87264d == null ? null : s.this.f87264d.m();
                        WindMillError windMillErrorA = r.a(aVar7, uVarM != null ? uVarM.a() : null);
                        if (windMillErrorA != null) {
                            com.windmill.sdk.utils.m.a("error", "load", s.this.f87268h, aVar7, s.this, windMillErrorA.getErrorCode(), "", windMillErrorA.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.6.1
                                @Override // com.windmill.sdk.utils.m.a
                                public void onAddExtra(Object pointEntityBase) {
                                    if (pointEntityBase instanceof PointEntityWind) {
                                        ((PointEntityWind) pointEntityBase).setExecution_scene("1");
                                    }
                                }
                            });
                            it2.remove();
                            WMAdapterError wMAdapterError2 = new WMAdapterError(windMillErrorA.getErrorCode(), windMillErrorA.getMessage());
                            s.this.f87277q.put(aVar7.aP() + "-" + aVar7.aW(), wMAdapterError2);
                            if (aVar7.D()) {
                                HeaderBidding.Builder builder = new HeaderBidding.Builder();
                                builder.channel_id(Integer.valueOf(aVar7.aN()));
                                builder.p_id(aVar7.aW());
                                builder.tag(1);
                                s.this.f87269i.add(builder.build());
                            }
                        } else if (aVar7.Z() == 1) {
                            s.this.f87270j.add(aVar7);
                        } else {
                            s.this.f87271k.add(aVar7);
                        }
                    } else {
                        s.this.f87272l.add(aVar7);
                    }
                }
                if (s.this.f87271k != null && s.this.f87271k.size() > 0) {
                    Iterator it3 = s.this.f87271k.iterator();
                    while (it3.hasNext()) {
                        s.this.c((com.windmill.sdk.strategy.a) it3.next());
                    }
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, "ctcStrategyList:" + s.this.f87270j.size() + ":stsStrategyList:" + s.this.f87271k.size() + ":normalStrategyList:" + s.this.f87272l.size() + ":biddingList:" + s.this.f87269i.size());
            if (s.this.f87274n != null) {
                for (int i14 = 0; i14 < s.this.f87274n.size(); i14++) {
                    com.windmill.sdk.strategy.a aVar8 = (com.windmill.sdk.strategy.a) s.this.f87274n.get(i14);
                    if (aVar8 != null) {
                        aVar8.b(s.this.f());
                    }
                }
            }
            if (s.this.f87270j.size() == 0 && s.this.f87271k.size() == 0) {
                s sVar2 = s.this;
                sVar2.a((List<com.windmill.sdk.strategy.a>) sVar2.f87274n, true);
                return;
            }
            s.this.f87279s.sendEmptyMessage(1);
            if (!s.this.f87267g.f87253o || s.this.f87272l.size() <= 0) {
                return;
            }
            s sVar3 = s.this;
            sVar3.f87284y = new l(sVar3.f87264d, s.this.f87272l, s.this.f87270j, s.this.f87267g.f87254p, s.this.f87265e, s.this.f87268h);
            s.this.f87284y.a();
        }

        @Override // com.windmill.sdk.strategy.s.c
        public void a(List<com.windmill.sdk.strategy.a> failList, com.windmill.sdk.strategy.a strategy, int error_code, String error_msg) {
            WMAdSourceStatusListener wMAdSourceStatusListenerG;
            WMLogUtil.e("----StrategyRequest-----onErrorResponse---:" + error_code + " msg: " + error_msg + " ");
            ArrayList arrayList = new ArrayList();
            try {
                if (!failList.isEmpty()) {
                    for (int i10 = 0; i10 < failList.size(); i10++) {
                        com.windmill.sdk.strategy.a aVar = failList.get(i10);
                        if (com.windmill.sdk.utils.l.c(aVar.aN()) && aVar.af() != null) {
                            arrayList.add(aVar);
                        }
                    }
                }
            } catch (Exception unused) {
            }
            WindMillError windMillError = WindMillError.ERROR_STRATEGY_REQUEST;
            windMillError.setMessage("error_code:" + error_code + " msg:" + error_msg);
            com.windmill.sdk.utils.m.a("error", "load", s.this.f87268h, strategy, s.this, error_code, "", error_msg, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.6.2
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setIs_success("0");
                        pointEntityWind.setIs_out_sdk("0");
                    }
                }
            });
            if (failList != null && failList.size() > 0) {
                for (int i11 = 0; i11 < failList.size(); i11++) {
                    com.windmill.sdk.strategy.a aVar2 = failList.get(i11);
                    if (aVar2 != null && aVar2.D()) {
                        if (s.this.f87264d != null && aVar2.L() == 1 && (wMAdSourceStatusListenerG = s.this.f87264d.g()) != null) {
                            com.windmill.sdk.strategy.a.C1081a c1081aAf = aVar2.af();
                            WMAdapterError wMAdapterError = new WMAdapterError(0, "获取价格失败，未知错误");
                            if (c1081aAf != null) {
                                wMAdapterError.setErrorCode(c1081aAf.f87121f);
                                wMAdapterError.setMessage(c1081aAf.f87122g);
                            }
                            AdInfo adInfo = new AdInfo(aVar2);
                            adInfo.fillData(s.this.f87268h);
                            wMAdSourceStatusListenerG.onAdSourceBiddingFailed(adInfo, wMAdapterError);
                        }
                        if (aVar2.af() != null && !com.windmill.sdk.utils.l.c(aVar2.aN())) {
                            WMLogUtil.i("--------WMStrategyManager---sendTracking ");
                            u.a(aVar2.af().b(), "lose", aVar2, s.this.f87268h);
                        }
                    }
                }
            }
            if (s.this.f87284y != null) {
                s.this.f87284y.b();
            }
            if (s.this.f87265e != null) {
                s.this.f87265e.a(windMillError, s.this.f87268h.getPlacementId(), failList);
            }
        }
    };
    private volatile boolean A = false;

    public interface a {
        void a(AdInfo adInfo, com.windmill.sdk.strategy.a strategy, int code, String message);

        void a(AdInfo adInfo, com.windmill.sdk.strategy.a strategy, Map<String, String> headerBiddingParams);
    }

    public interface b {
        void a(WMAdapterError error);

        void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error);

        void a(com.windmill.sdk.strategy.a strategy, String price);
    }

    public interface c {
        void a(int type, List<com.windmill.sdk.strategy.a> adStrategyList, q config, Waterfall waterfall);

        void a(List<com.windmill.sdk.strategy.a> failList, com.windmill.sdk.strategy.a strategy, int error_code, String error_msg);
    }

    public interface d {
        void a(WindMillError error, String placementId, List<com.windmill.sdk.strategy.a> failList);

        void a(com.windmill.sdk.strategy.a strategy);

        void a(com.windmill.sdk.strategy.a strategy, WindMillError windMillError);

        void a(com.windmill.sdk.strategy.a strategy, l.a listener);

        void a(com.windmill.sdk.strategy.a strategy, a biddingListener);

        void a(com.windmill.sdk.strategy.a strategy, b listener);

        void a(List<com.windmill.sdk.strategy.a> adStrategyList, q config);

        void b(com.windmill.sdk.strategy.a strategy);
    }

    public s(com.windmill.sdk.common.l baseAdController, d strategyListener) {
        this.f87278r = false;
        this.f87264d = baseAdController;
        this.f87265e = strategyListener;
        this.f87278r = false;
    }

    private boolean o() {
        try {
            if (this.f87271k.size() == 0) {
                q qVar = this.f87267g;
                if (qVar.f87257s && qVar.f87258t.size() > 0 && this.f87273m.size() > 0) {
                    Map<String, List<com.windmill.sdk.strategy.a>> mapE = e();
                    List<com.windmill.sdk.strategy.a> list = mapE.get("success");
                    List<com.windmill.sdk.strategy.a> list2 = mapE.get("fail");
                    WMLogUtil.d(WMLogUtil.TAG, "-------------isInterruptNextStrategyRequest---------------" + list + ":" + list2);
                    if (list == null || list.size() <= 0) {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f87272l);
                        for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
                            copyOnWriteArrayList.get(i10).i(0);
                        }
                        a((List<com.windmill.sdk.strategy.a>) copyOnWriteArrayList, true);
                        return true;
                    }
                    com.windmill.sdk.strategy.a aVar = list.get(0);
                    if (list.remove(aVar) && list2 != null) {
                        list2.addAll(list);
                        for (int i11 = 0; i11 < list2.size(); i11++) {
                            list2.get(i11).i(1);
                        }
                    }
                    if (this.f87272l.size() > 0) {
                        CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList(this.f87272l);
                        copyOnWriteArrayList2.add(a(aVar, copyOnWriteArrayList2), aVar);
                        for (int i12 = 0; i12 < copyOnWriteArrayList2.size(); i12++) {
                            copyOnWriteArrayList2.get(i12).i(0);
                        }
                        if (this.f87283w != null) {
                            this.f87267g.a(list2);
                            this.f87283w.a(2, copyOnWriteArrayList2, this.f87267g, this.f87275o);
                            return true;
                        }
                    } else if (this.f87283w != null) {
                        ArrayList arrayList = new ArrayList();
                        aVar.i(0);
                        arrayList.add(aVar);
                        this.f87267g.a(list2);
                        this.f87283w.a(2, arrayList, this.f87267g, this.f87275o);
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.A) {
            WMLogUtil.d(WMLogUtil.TAG, "isRequestNextStrategy true");
            return;
        }
        this.A = true;
        WMLogUtil.d(WMLogUtil.TAG, "---------------sendNextStrategyRequest---------" + this.f87269i.size() + ":" + this.f87273m.size() + ":" + this.f87271k.size());
        if (this.f87269i.size() > 0) {
            if (o()) {
                return;
            }
            com.windmill.sdk.strategy.c.a().a(this.f87268h);
            try {
                if (Networking.getRequestQueue() == null) {
                    this.f87283w.a((List<com.windmill.sdk.strategy.a>) null, (com.windmill.sdk.strategy.a) null, WindMillError.ERROR_NETWORK.getErrorCode(), "RequestQueue is null");
                    return;
                }
                v vVar = new v(WMSdkConfig.sharedInstance().getBiddingUrl(), this.f87275o, this.f87268h, this.f87283w);
                for (com.windmill.sdk.strategy.a aVar : this.f87271k) {
                    if (aVar.c() == 1) {
                        this.f87269i.add(new HeaderBidding.Builder().channel_id(Integer.valueOf(aVar.aN())).p_id(aVar.aW()).tag(2).no_token_reason(1).build());
                        com.windmill.sdk.utils.m.a(aVar.aW(), aVar, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.5
                            @Override // com.windmill.sdk.utils.m.a
                            public void onAddExtra(Object pointEntityBase) {
                                if (pointEntityBase instanceof PointEntityWind) {
                                    HashMap map = new HashMap();
                                    map.put(MediationConstant.KEY_REASON, "1");
                                    ((PointEntityWind) pointEntityBase).setOptions(map);
                                }
                            }
                        });
                    }
                }
                vVar.a(this.f87269i);
                Networking.getRequestQueue().add(vVar);
                return;
            } catch (Throwable th) {
                this.f87283w.a((List<com.windmill.sdk.strategy.a>) null, (com.windmill.sdk.strategy.a) null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), th.getMessage());
                return;
            }
        }
        if (this.f87274n != null) {
            WMLogUtil.d(WMLogUtil.TAG, "---------------sendNextStrategyRequest-----before----" + this.f87274n.size());
            Iterator<com.windmill.sdk.strategy.a> it2 = this.f87274n.iterator();
            while (it2.hasNext()) {
                com.windmill.sdk.strategy.a next = it2.next();
                if (next.Y() == 1) {
                    if ((c() == null || c().f87248j) && !next.f87083a) {
                        next.f87101k = true;
                    } else {
                        if (com.windmill.sdk.utils.l.c(next.aN())) {
                            this.f87281u.add(next);
                        }
                        it2.remove();
                    }
                }
            }
            WMLogUtil.d(WMLogUtil.TAG, "------sendNextStrategyRequest-----after----" + this.f87274n.size() + " ----hash: " + this.f87274n.hashCode());
            a(this.f87274n, true);
        }
    }

    private String q() {
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : new CopyOnWriteArraySet(this.f87277q.keySet())) {
                WMAdapterError wMAdapterError = this.f87277q.get(str);
                if (wMAdapterError != null) {
                    HashMap map = new HashMap();
                    map.put(str, wMAdapterError.toString());
                    arrayList.add(map);
                }
            }
            return JSONSerializer.Serialize(arrayList);
        } catch (Exception e10) {
            SigmobLog.e("WMStrategyManager", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        CopyOnWriteArrayList<HeaderBidding> copyOnWriteArrayList = this.f87269i;
        int size = copyOnWriteArrayList == null ? 0 : copyOnWriteArrayList.size();
        CopyOnWriteArrayList<com.windmill.sdk.strategy.a> copyOnWriteArrayList2 = this.f87271k;
        int size2 = copyOnWriteArrayList2 == null ? 0 : copyOnWriteArrayList2.size();
        CopyOnWriteArrayList<com.windmill.sdk.strategy.a> copyOnWriteArrayList3 = this.f87270j;
        int size3 = copyOnWriteArrayList3 == null ? 0 : copyOnWriteArrayList3.size();
        Map<com.windmill.sdk.strategy.a, Boolean> map = this.f87273m;
        int size4 = map != null ? map.size() : 0;
        if (size == size2 + size3) {
            CopyOnWriteArrayList<com.windmill.sdk.strategy.a> copyOnWriteArrayList4 = this.f87270j;
            if (copyOnWriteArrayList4 == null || copyOnWriteArrayList4.isEmpty() || size3 == size4) {
                this.f87279s.removeMessages(2);
                p();
            }
        }
    }

    public List<com.windmill.sdk.strategy.a> b() {
        return this.f87272l;
    }

    public Map<String, List<com.windmill.sdk.strategy.a>> e() {
        Map<String, Float> map;
        String str = ":";
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        map2.put("success", arrayList);
        map2.put("fail", arrayList2);
        q qVar = this.f87267g;
        if (qVar != null && (map = qVar.f87258t) != null && map.size() > 0) {
            try {
                for (Map.Entry<com.windmill.sdk.strategy.a, Boolean> entry : this.f87273m.entrySet()) {
                    if (entry.getValue().booleanValue()) {
                        com.windmill.sdk.strategy.a key = entry.getKey();
                        Float fL = key.l();
                        double dM = key.m();
                        WMLogUtil.d(WMLogUtil.TAG, "--------getCtcBidSuccessList----------" + fL + str + dM + str + key.X());
                        if (fL == null || fL.floatValue() == 0.0f) {
                            arrayList2.add(key);
                            WindMillError windMillError = WindMillError.ERROR_AD_BID_CURRENCY_FILTER;
                            com.windmill.sdk.utils.m.a("error", "load", this.f87268h, key, this, windMillError.getErrorCode(), "", windMillError.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.x
                                @Override // com.windmill.sdk.utils.m.a
                                public final void onAddExtra(Object obj) {
                                    s.a(obj);
                                }
                            });
                            WMAdapterError wMAdapterError = new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage());
                            this.f87277q.put(key.aP() + "-" + key.aW(), wMAdapterError);
                        } else {
                            Double dValueOf = Double.valueOf(Double.parseDouble(key.X()) * ((double) fL.floatValue()) * dM);
                            key.h(String.valueOf(dValueOf));
                            key.f(String.valueOf(dValueOf));
                            key.f87112w = true;
                            if (dValueOf.doubleValue() < key.ah() || dValueOf.doubleValue() == 0.0d) {
                                arrayList2.add(key);
                                WindMillError windMillError2 = WindMillError.ERROR_AD_BID_PRICE_FILTER;
                                com.windmill.sdk.utils.m.a("error", "load", this.f87268h, key, this, windMillError2.getErrorCode(), "", windMillError2.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.w
                                    @Override // com.windmill.sdk.utils.m.a
                                    public final void onAddExtra(Object obj) {
                                        s.b(obj);
                                    }
                                });
                                WMAdapterError wMAdapterError2 = new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage());
                                this.f87277q.put(key.aP() + "-" + key.aW(), wMAdapterError2);
                            } else {
                                arrayList.add(key);
                            }
                        }
                    }
                    str = str;
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList, new Comparator<com.windmill.sdk.strategy.a>() { // from class: com.windmill.sdk.strategy.s.4
                        @Override // java.util.Comparator
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public int compare(com.windmill.sdk.strategy.a o10, com.windmill.sdk.strategy.a o11) {
                            return s.a(o10, o11);
                        }
                    });
                    if (WMLogUtil.isEnableLog) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            WMLogUtil.i("sort ctcBidSuccessList " + ((com.windmill.sdk.strategy.a) it2.next()));
                        }
                    }
                }
            } catch (Exception e10) {
                SigmobLog.e("WMStrategyManager", e10);
            }
        }
        return map2;
    }

    public int f() {
        q qVar;
        Map<String, Float> map;
        CopyOnWriteArrayList<com.windmill.sdk.strategy.a> copyOnWriteArrayList;
        try {
            CopyOnWriteArrayList<com.windmill.sdk.strategy.a> copyOnWriteArrayList2 = this.f87271k;
            return (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.size() != 0 || this.f87268h == null || (qVar = this.f87267g) == null || !qVar.f87257s || (map = qVar.f87258t) == null || map.size() <= 0 || (copyOnWriteArrayList = this.f87270j) == null || copyOnWriteArrayList.size() <= 0) ? 0 : 1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public List<com.windmill.sdk.strategy.a> g() {
        return this.f87281u;
    }

    public void h() {
        r rVar = this.f87266f;
        if (rVar != null) {
            rVar.a();
        }
    }

    public List<com.windmill.sdk.strategy.a> i() {
        r rVar = this.f87266f;
        if (rVar != null) {
            return rVar.b();
        }
        return null;
    }

    public void j() {
        r rVar = this.f87266f;
        if (rVar != null) {
            rVar.c();
        }
    }

    public Map<String, WMAdapterError> k() {
        return this.f87277q;
    }

    public Waterfall l() {
        return this.f87275o;
    }

    public void m() {
        l lVar = this.f87284y;
        if (lVar != null) {
            lVar.e();
        }
    }

    public HashMap<String, String> n() {
        return this.f87263c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Object obj) {
        if (obj instanceof PointEntityWind) {
            ((PointEntityWind) obj).setExecution_scene("1");
        }
    }

    public q c() {
        return this.f87267g;
    }

    public d d() {
        return this.f87265e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.windmill.sdk.strategy.a adStrategy) {
        WMLogUtil.d(WMLogUtil.TAG, "onBiddingStart for " + adStrategy.aP() + " channel = " + adStrategy.aN() + " placementID = " + adStrategy.aW());
        this.f87265e.a(adStrategy, new a() { // from class: com.windmill.sdk.strategy.s.7
            @Override // com.windmill.sdk.strategy.s.a
            public void a(AdInfo adInfo, com.windmill.sdk.strategy.a strategy, Map<String, String> headerBiddingParams) {
                Map<String, String> mapX;
                if (strategy == null || !s.this.f87271k.contains(strategy)) {
                    return;
                }
                WMLogUtil.d(WMLogUtil.TAG, "onBiddingSuccess for " + strategy.aP() + " channel = " + strategy.aN() + " placementID = " + strategy.aW());
                adStrategy.a(0);
                HeaderBidding.Builder builder = new HeaderBidding.Builder();
                builder.channel_id(Integer.valueOf(adStrategy.aN()));
                builder.p_id(adStrategy.aW());
                if (headerBiddingParams != null) {
                    builder.options(headerBiddingParams);
                }
                if ((strategy.at().booleanValue() || strategy.aN() == 998) && (mapX = strategy.x()) != null) {
                    builder.options.putAll(mapX);
                }
                s.this.f87269i.add(builder.build());
                s.this.r();
            }

            @Override // com.windmill.sdk.strategy.s.a
            public void a(AdInfo adInfo, com.windmill.sdk.strategy.a strategy, final int code, String message) {
                if (strategy == null || !s.this.f87271k.contains(strategy)) {
                    return;
                }
                WMLogUtil.d(WMLogUtil.TAG, "onBiddingFailed for " + strategy.aP() + " channel = " + strategy.aN() + " placementID = " + strategy.aW() + " code = " + code + " message = " + message);
                adStrategy.a(code);
                HeaderBidding.Builder builder = new HeaderBidding.Builder();
                builder.channel_id(Integer.valueOf(adStrategy.aN()));
                builder.p_id(adStrategy.aW());
                builder.no_token_reason = Integer.valueOf(code);
                builder.tag(2);
                s.this.f87269i.add(builder.build());
                s.this.r();
                com.windmill.sdk.utils.m.a(strategy.aW(), strategy, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.7.1
                    @Override // com.windmill.sdk.utils.m.a
                    public void onAddExtra(Object pointEntityBase) {
                        if (pointEntityBase instanceof PointEntityWind) {
                            HashMap map = new HashMap();
                            map.put(MediationConstant.KEY_REASON, String.valueOf(code));
                            ((PointEntityWind) pointEntityBase).setOptions(map);
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int timeout) {
        a(1004, timeout);
    }

    public void b(com.windmill.sdk.strategy.a adStrategy) {
        r rVar = this.f87266f;
        if (rVar != null) {
            rVar.a(adStrategy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.windmill.sdk.strategy.a strategy, final WMAdapterError error) {
        a(strategy);
        WindMillAdRequest windMillAdRequest = this.f87268h;
        if (windMillAdRequest != null) {
            com.windmill.sdk.utils.m.a(PointCategory.BID_C2C, windMillAdRequest, strategy, this, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.3
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(s.this.f87268h.getLoadId());
                        pointEntityWind.setHb_response("0");
                        pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                        Float fL = strategy.l();
                        if (fL != null) {
                            pointEntityWind.setExchange_rate(String.valueOf(fL));
                        }
                        if (error != null) {
                            HashMap map = new HashMap();
                            map.put("error_code", String.valueOf(error.getErrorCode()));
                            map.put("error_message", error.getMessage());
                            pointEntityWind.setOptions(map);
                        }
                    }
                }
            });
        }
    }

    public Map<com.windmill.sdk.strategy.a, Boolean> a() {
        return this.f87273m;
    }

    private void a(String sign) {
        try {
            WMLogUtil.d(WMLogUtil.TAG, "---------------sendBackStrategyRequest---------" + sign);
            if (Networking.getRequestQueue() == null) {
                return;
            }
            f fVar = new f(WMSdkConfig.sharedInstance().getStrategyUrl(), sign, this.f87268h, 1, null);
            fVar.a(this.f87263c);
            Networking.getRequestQueue().add(fVar);
        } catch (Throwable th) {
            SigmobLog.e("WMStrategyManager", th);
        }
    }

    private void a(String sign, com.windmill.sdk.common.l adController) {
        try {
            a(this.f87268h.getAdType() == 2, false, 0L);
            t tVar = new t(WMSdkConfig.sharedInstance().getStrategyUrl(), sign, this.f87268h, this.f87283w);
            tVar.a(this.f87263c);
            if (adController != null) {
                adController.a(this.f87268h, "1");
            }
            WMLogUtil.d(WMLogUtil.TAG, "---------------sendFirstStrategyRequest---------" + sign);
            if (Networking.getRequestQueue() == null) {
                this.f87283w.a((List<com.windmill.sdk.strategy.a>) null, (com.windmill.sdk.strategy.a) null, WindMillError.ERROR_NETWORK.getErrorCode(), "RequestQueue is null");
            } else {
                Networking.getRequestQueue().add(tVar);
            }
        } catch (Throwable th) {
            this.f87283w.a((List<com.windmill.sdk.strategy.a>) null, (com.windmill.sdk.strategy.a) null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), th.getMessage());
        }
    }

    public int a(com.windmill.sdk.strategy.a strategy, List<com.windmill.sdk.strategy.a> strategyList) {
        int i10 = -1;
        try {
            int i11 = 0;
            if (strategy.f87098h) {
                return 0;
            }
            while (i11 < strategyList.size()) {
                com.windmill.sdk.strategy.a aVar = strategyList.get(i11);
                if (i11 == strategyList.size() - 1) {
                    if (Double.parseDouble(strategy.X()) >= Double.parseDouble(aVar.X())) {
                        break;
                    }
                    break;
                }
                int i12 = i11 + 1;
                com.windmill.sdk.strategy.a aVar2 = strategyList.get(i12);
                if (Double.parseDouble(strategy.X()) >= Double.parseDouble(aVar.X()) || Double.parseDouble(strategy.X()) < Double.parseDouble(aVar2.X())) {
                    i11 = i12;
                }
                i10 = i11;
            }
        } catch (Exception e10) {
            SigmobLog.e("WMStrategyManager", e10);
        }
        return i10 + 1;
    }

    public void a(com.windmill.sdk.strategy.a strategy) {
        if (strategy != null) {
            try {
                double dO = strategy.o();
                double d10 = 1.0d;
                if (dO != 0.0d && dO < 0.0d) {
                    dO = 1.0d / Math.abs(dO);
                }
                if (strategy.aN() != 1 && strategy.aN() != 37) {
                    if (strategy.aN() == 31) {
                        if (TextUtils.isEmpty(strategy.Q())) {
                            strategy.e(BidPrice.USD);
                        }
                        strategy.a(this.f87267g.f87258t.get(strategy.Q()));
                        if (dO == 0.0d) {
                            dO = 100000.0d;
                        }
                        strategy.a(dO);
                        return;
                    }
                    if (TextUtils.isEmpty(strategy.Q())) {
                        strategy.e(BidPrice.CNY);
                    }
                    Float f10 = this.f87267g.f87258t.get(strategy.Q());
                    if (f10 != null && f10.floatValue() != 0.0f) {
                        strategy.a(f10);
                    } else {
                        strategy.a(Float.valueOf(1.0f));
                    }
                    if (dO != 0.0d) {
                        d10 = dO;
                    }
                    strategy.a(d10);
                    return;
                }
                if (TextUtils.isEmpty(strategy.Q())) {
                    strategy.e(BidPrice.USD);
                }
                strategy.a(this.f87267g.f87258t.get(strategy.Q()));
                if (dO == 0.0d) {
                    dO = 100.0d;
                }
                strategy.a(dO);
            } catch (Exception e10) {
                SigmobLog.e("WMStrategyManager", e10);
            }
        }
    }

    public static int a(com.windmill.sdk.strategy.a t10, com.windmill.sdk.strategy.a t11) {
        boolean z10 = t10.f87098h;
        if (z10 && t11.f87098h) {
            int iA = com.windmill.sdk.common.l.a(t10.f87099i, t11.f87099i);
            if (iA == 0 && (iA = com.windmill.sdk.common.l.a(WMBidUtil.parseInt(t10.V()).intValue(), WMBidUtil.parseInt(t11.V()).intValue())) == 0) {
                if (t11.aN() == 9) {
                    return 1;
                }
                if (t10.aN() == 9) {
                    return -1;
                }
            }
            return iA;
        }
        if (z10) {
            return -1;
        }
        if (t11.f87098h) {
            return 1;
        }
        int iA2 = com.windmill.sdk.common.l.a(WMBidUtil.parseInt(t10.V()).intValue(), WMBidUtil.parseInt(t11.V()).intValue());
        if (iA2 == 0) {
            if (t11.aN() == 9) {
                return 1;
            }
            if (t10.aN() == 9) {
                return -1;
            }
        }
        return iA2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntityWind) {
            ((PointEntityWind) obj).setExecution_scene("1");
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:68:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:69:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:81:0x0203  */
    /* JADX WARN: Code duplicated, block: B:89:0x022b  */
    /* JADX WARN: Code duplicated, block: B:91:0x022e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0232  */
    /* JADX WARN: Code duplicated, block: B:98:0x0249  */
    /* JADX WARN: Code duplicated, block: B:99:0x024d  */
    public void a(WindMillAdRequest adRequest, com.windmill.sdk.common.l adController, Handler handler) throws Throwable {
        Map<String, Object> mapA;
        WaterfallResponse waterfallResponse;
        Boolean bool;
        q qVarA;
        long j10;
        Waterfall waterfall;
        Throwable th;
        InputStream inputStreamOpen;
        long j11;
        HashMap<String, String> mapA2;
        this.f87285z = handler;
        this.f87268h = adRequest;
        this.f87269i.clear();
        this.f87273m.clear();
        this.f87270j.clear();
        this.f87271k.clear();
        this.f87272l.clear();
        this.f87277q.clear();
        this.f87276p = false;
        q qVarA2 = null;
        this.f87275o = null;
        this.f87284y = null;
        this.f87278r = false;
        this.A = false;
        if (this.f87268h != null) {
            com.windmill.sdk.strategy.d.a().b(this.f87268h.getPlacementId());
        }
        a(this.f87268h);
        Map<String, String> mapA3 = com.windmill.sdk.strategy.d.a().a(this.f87268h.getPlacementId());
        this.f87263c.clear();
        if (mapA3 != null) {
            this.f87263c.putAll(mapA3);
        }
        com.windmill.sdk.common.m mVarL = adController.l();
        if (mVarL != null && (mapA2 = mVarL.a()) != null) {
            this.f87263c.putAll(mapA2);
        }
        if (com.windmill.sdk.strategy.d.a().c() != null && com.windmill.sdk.strategy.d.a().c().size() > 0) {
            String string = com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).getString(WMConstants.INIT_STATUS, "");
            if (!TextUtils.isEmpty(string) && string.equals("1") && f87262x.get(adRequest.getPlacementId()) == null) {
                if (com.windmill.sdk.strategy.d.a().c().contains(adRequest.getPlacementId() + ".pb")) {
                    try {
                        adController.a(adRequest, "0");
                        inputStreamOpen = ClientMetadata.getInstance().getContext().getAssets().open(com.windmill.sdk.strategy.d.a().d() + File.separator + adRequest.getPlacementId() + ".pb");
                        try {
                            try {
                                WaterfallResponse waterfallResponseBuild = new WaterfallResponse.Builder().code(0).error_message("").uid(ClientMetadata.getUid()).sign("").waterfall(Waterfall.ADAPTER.decode(inputStreamOpen)).build();
                                qVarA2 = k.a(0, waterfallResponseBuild, adRequest, this.f87283w);
                                f87262x.put(adRequest.getPlacementId(), Boolean.TRUE);
                                if (waterfallResponseBuild.waterfall.strategy_realtime_refresh.booleanValue()) {
                                    a(waterfallResponseBuild.sign);
                                }
                                WMLogUtil.i(WMLogUtil.TAG, "-----LoadStrategy--finally--");
                                a(this.f87268h.getAdType() == 2, true, qVarA2 != null ? qVarA2.f87244f : 0L);
                                if (inputStreamOpen != null) {
                                    try {
                                        inputStreamOpen.close();
                                        return;
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                        return;
                                    }
                                }
                                return;
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                WMLogUtil.i(WMLogUtil.TAG, "-----LoadStrategy--finally--");
                                a(this.f87268h.getAdType() == 2, true, qVarA2 != null ? qVarA2.f87244f : 0L);
                                if (inputStreamOpen != null) {
                                    try {
                                        inputStreamOpen.close();
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                mapA = com.windmill.sdk.strategy.b.a().a(this.f87268h.getPlacementId());
                                if (mapA != null) {
                                    waterfallResponse = (WaterfallResponse) mapA.get(HmInputMappingContent.FIELD_VALUE);
                                    if (waterfallResponse != null) {
                                        bool = (Boolean) mapA.get("key");
                                        if (bool == null) {
                                        }
                                        adController.a(adRequest, "0");
                                        qVarA = k.a(0, waterfallResponse, adRequest, this.f87283w);
                                        boolean z10 = this.f87268h.getAdType() == 2;
                                        if (qVarA != null) {
                                            j10 = qVarA.f87244f;
                                        } else {
                                            j10 = 0;
                                        }
                                        a(z10, false, j10);
                                        waterfall = waterfallResponse.waterfall;
                                        if (waterfall == null) {
                                            return;
                                        } else {
                                            return;
                                        }
                                    }
                                    a("", adController);
                                    return;
                                }
                                a("", adController);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            WMLogUtil.i(WMLogUtil.TAG, "-----LoadStrategy--finally--");
                            boolean z11 = this.f87268h.getAdType() == 2;
                            if (qVarA2 != null) {
                                j11 = qVarA2.f87244f;
                            } else {
                                j11 = 0;
                            }
                            a(z11, true, j11);
                            if (inputStreamOpen != null) {
                                try {
                                    inputStreamOpen.close();
                                    throw th;
                                } catch (Exception e13) {
                                    e13.printStackTrace();
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e14) {
                        e = e14;
                        inputStreamOpen = null;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamOpen = null;
                        WMLogUtil.i(WMLogUtil.TAG, "-----LoadStrategy--finally--");
                        if (this.f87268h.getAdType() == 2) {
                        }
                        if (qVarA2 != null) {
                            j11 = qVarA2.f87244f;
                        } else {
                            j11 = 0;
                        }
                        a(z11, true, j11);
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                            throw th;
                        }
                        throw th;
                    }
                }
            }
        }
        mapA = com.windmill.sdk.strategy.b.a().a(this.f87268h.getPlacementId());
        if (mapA != null) {
            waterfallResponse = (WaterfallResponse) mapA.get(HmInputMappingContent.FIELD_VALUE);
            if (waterfallResponse != null) {
                bool = (Boolean) mapA.get("key");
                if (bool == null && bool.booleanValue()) {
                    a(waterfallResponse.sign, adController);
                    return;
                }
                adController.a(adRequest, "0");
                qVarA = k.a(0, waterfallResponse, adRequest, this.f87283w);
                if (this.f87268h.getAdType() == 2) {
                }
                if (qVarA != null) {
                    j10 = qVarA.f87244f;
                } else {
                    j10 = 0;
                }
                a(z10, false, j10);
                waterfall = waterfallResponse.waterfall;
                if (waterfall == null && waterfall.strategy_realtime_refresh.booleanValue()) {
                    a(waterfallResponse.sign);
                    return;
                }
                return;
            }
            a("", adController);
            return;
        }
        a("", adController);
    }

    private void a(final WindMillAdRequest adRequest) {
        try {
            List<WMNetworkConfig.WMInnerAdnInit> list = com.windmill.sdk.common.h.f86659c;
            if (list == null || list.size() <= 0) {
                return;
            }
            List<WMNetworkConfig.WMInnerAdnInit> list2 = com.windmill.sdk.common.h.f86659c;
            for (int i10 = 0; i10 < list2.size(); i10++) {
                final WMNetworkConfig.WMInnerAdnInit wMInnerAdnInit = list2.get(i10);
                com.windmill.sdk.utils.m.a(PointCategory.PLATFORM_AGGRE_INIT, adRequest, null, this, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.8
                    @Override // com.windmill.sdk.utils.m.a
                    public void onAddExtra(Object pointEntityBase) {
                        if (pointEntityBase instanceof PointEntityWind) {
                            PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                            pointEntityWind.setAggr_channel_id(String.valueOf(wMInnerAdnInit.getAdnId()));
                            pointEntityWind.setLoad_id(adRequest.getLoadId());
                            pointEntityWind.setAggr_appid(wMInnerAdnInit.getAppId());
                            pointEntityWind.setNetwork_version(wMInnerAdnInit.getVersion());
                        }
                    }
                });
            }
            list2.clear();
        } catch (Throwable unused) {
        }
    }

    private void a(boolean isSplash, boolean isPre, long timeDelay) {
        Handler handler = this.f87285z;
        if (handler == null) {
            return;
        }
        if (handler.hasMessages(1003)) {
            WMLogUtil.e("----loadAd---动态总超时---第一阶段超时消息已存在，跳过重复设置");
            return;
        }
        WMLogUtil.d(WMLogUtil.TAG, "-----LoadStrategy--sendEmptyMessageDelayed-- isSplash: " + isSplash + " " + timeDelay);
        long jLoadAdTimeout = WMSdkConfig.sharedInstance().loadAdTimeout(this.f87268h.getPlacementId());
        int i10 = isSplash ? 5000 : WMConstants.OTHERS_DEFAULT_TIMEOUT;
        if (isPre) {
            if (timeDelay > 0) {
                WMLogUtil.d("----loadAd---动态总超时(预置)---设置第一阶段超时---" + timeDelay);
                a((int) timeDelay);
                return;
            }
            WMLogUtil.d("----loadAd---动态总超时（预置获取为0走默认）---设置第一阶段超时---" + i10);
            a(i10);
            return;
        }
        if (timeDelay > 0) {
            WMLogUtil.d("----loadAd---动态总超时（缓存）---设置第一阶段超时---" + timeDelay);
            a((int) timeDelay);
            return;
        }
        if (jLoadAdTimeout == 0) {
            WMLogUtil.d("----loadAd---动态总超时（默认）---设置第一阶段超时---" + i10);
            a(i10);
            return;
        }
        WMLogUtil.d("----loadAd---动态总超时（上次）---设置第一阶段超时---" + jLoadAdTimeout);
        a((int) jLoadAdTimeout);
    }

    private void a(int timeout) {
        a(1003, timeout);
    }

    private void a(int what, int timeout) {
        if (this.f87285z == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = what;
        messageObtain.arg1 = timeout;
        this.f87285z.sendMessage(messageObtain);
    }

    public void a(boolean isRecord) {
        try {
            WMLogUtil.d("------recodeRespondAggreStrategy: " + this.f87278r);
            if (this.f87278r) {
                return;
            }
            if (isRecord) {
                com.windmill.sdk.strategy.c.a().a(this.f87268h);
            }
            com.windmill.sdk.utils.m.a(PointCategory.RESPOND_AGGRE_STRATEGY, this.f87268h, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.s.9
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    Map<String, String> mapA;
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        if (s.this.f87267g != null) {
                            pointEntityWind.setGroup_id(s.this.f87267g.f87240b);
                            pointEntityWind.setTraffic_weight(String.valueOf(s.this.f87267g.f87242d));
                            if (s.this.f87267g.f87243e) {
                                pointEntityWind.setAb_test(String.valueOf(s.this.f87267g.f87241c));
                            }
                        }
                        pointEntityWind.setIs_success("1");
                        pointEntityWind.setLoad_id(s.this.f87268h.getLoadId());
                        pointEntityWind.setSdk_operation_bid_type(String.valueOf(s.this.f()));
                        if (!TextUtils.isEmpty(s.this.f87282v)) {
                            pointEntityWind.setStrategy_stage(s.this.f87282v);
                        }
                        if (s.this.f87267g != null && s.this.f87267g.f87252n != null) {
                            Map<String, String> options = pointEntityWind.getOptions();
                            if (options != null) {
                                options.putAll(s.this.f87267g.f87252n);
                                pointEntityWind.setOptions(options);
                            } else {
                                pointEntityWind.setOptions(s.this.f87267g.f87252n);
                            }
                        }
                        try {
                            if (com.windmill.sdk.strategy.d.a().b() != null) {
                                String strSerialize = JSONSerializer.Serialize(com.windmill.sdk.strategy.d.a().b());
                                if (!TextUtils.isEmpty(strSerialize)) {
                                    pointEntityWind.setCustom_info(strSerialize);
                                }
                            }
                            String placementId = s.this.f87268h.getPlacementId();
                            if (s.this.f87263c.isEmpty()) {
                                mapA = (TextUtils.isEmpty(placementId) || com.windmill.sdk.strategy.d.a().a(placementId) == null) ? null : com.windmill.sdk.strategy.d.a().a(placementId);
                            } else {
                                mapA = s.this.f87263c;
                            }
                            if (mapA != null) {
                                pointEntityWind.setAd_position_custom_info(JSONSerializer.Serialize(mapA));
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            });
            this.f87278r = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.windmill.sdk.strategy.a> adStrategyList, boolean isRecord) {
        WMAdSourceStatusListener wMAdSourceStatusListenerG;
        a(isRecord);
        if (adStrategyList != null && adStrategyList.size() > 0) {
            ArrayList arrayList = new ArrayList(adStrategyList);
            Iterator<com.windmill.sdk.strategy.a> it2 = adStrategyList.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                com.windmill.sdk.strategy.a next = it2.next();
                if (next.L() == 1 && next.F()) {
                    it2.remove();
                } else {
                    int i11 = i10 + 1;
                    next.m(i10);
                    if (this.f87264d != null && next.D() && (wMAdSourceStatusListenerG = this.f87264d.g()) != null) {
                        AdInfo adInfo = new AdInfo(next);
                        adInfo.fillData(this.f87268h);
                        wMAdSourceStatusListenerG.onAdSourceBiddingSuccess(adInfo);
                    }
                    i10 = i11;
                }
            }
            d dVar = this.f87265e;
            if (dVar != null) {
                dVar.a(arrayList, this.f87267g);
            }
            com.windmill.sdk.common.l lVar = this.f87264d;
            com.windmill.sdk.common.u uVarM = lVar == null ? null : lVar.m();
            WMFilter wMFilterA = uVarM != null ? uVarM.a() : null;
            q qVar = this.f87267g;
            int i12 = qVar.f87245g;
            if (i12 == 0) {
                this.f87266f = new n(this.f87265e, adStrategyList, qVar.f87239a, wMFilterA);
            } else if (i12 == 1) {
                this.f87266f = new o(this.f87265e, adStrategyList, qVar.f87239a, wMFilterA);
            } else if (i12 == 2) {
                this.f87266f = new p(this.f87265e, adStrategyList, wMFilterA);
            }
            h();
            return;
        }
        WindMillError windMillErrorCopy = WindMillError.ERROR_AD_NO_FILL.copy();
        d dVar2 = this.f87265e;
        if (dVar2 != null) {
            dVar2.a(windMillErrorCopy, this.f87268h.getPlacementId(), null);
        }
    }
}
