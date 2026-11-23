package com.windmill.sdk.common;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.BaseMacroCommon;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.AutoAdLoadListener;
import com.windmill.sdk.base.BiddingConstant;
import com.windmill.sdk.base.WMAdBaseConnector;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.StrategyWaterFall;
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWMTrack;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.point.PointType;
import com.windmill.sdk.strategy.WMSdkConfig;
import com.windmill.sdk.utils.EncodeUtil;
import com.windmill.sdk.utils.MUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public abstract class l {
    private static HashMap<String, a> D = new HashMap<>();
    private Handler E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.windmill.sdk.strategy.q f86722b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<com.windmill.sdk.strategy.a> f86724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, com.windmill.sdk.strategy.a> f86725e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected com.windmill.sdk.strategy.s f86727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected long f86728h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AutoAdLoadListener f86733m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, WMAdapterError> f86734n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected WindMillAdRequest f86735o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public AdInfo f86737q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public a f86738r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected com.windmill.sdk.strategy.a f86740t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WMAdSourceStatusListener f86742v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private WeakReference<Activity> f86743w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WeakReference<m> f86744x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private WeakReference<u> f86745y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private WeakReference<d> f86746z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AdStatus f86721a = AdStatus.AdStatusNone;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f86723c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f86726f = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f86729i = WMConstants.TIMER_STAGE_NONE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f86730j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f86731k = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ConcurrentHashMap<String, WMAdBaseAdapter> f86741u = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected HashSet<String> f86732l = new HashSet<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List<com.windmill.sdk.strategy.a> f86736p = new ArrayList();
    private List<com.windmill.sdk.strategy.a> A = new ArrayList();
    private final Set<String> B = new HashSet();
    private int C = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f86739s = false;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f86790a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f86791b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f86792c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f86793d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f86794e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f86795f = 0;

        a() {
        }

        public void a() {
            this.f86790a = 0;
            this.f86791b = 0;
            this.f86792c = 0;
            this.f86793d = 0;
            this.f86794e = 0;
            this.f86795f = System.currentTimeMillis();
        }
    }

    public enum b {
        WindFilterInit,
        WindFilterParameter,
        WindFilterAdCount,
        WindFilterGdpr,
        WindFilterKeepGoing,
        WindFilterLoadingBreak,
        WindFilterLoadInterval
    }

    public static int a(int x10, int y10) {
        if (x10 < y10) {
            return 1;
        }
        return x10 == y10 ? 0 : -1;
    }

    protected boolean c(com.windmill.sdk.strategy.a strategy) {
        if (!WindMillAd.sharedAds().isNeedInit(Integer.valueOf(strategy.aN())) || 27 == strategy.aN()) {
            return false;
        }
        return strategy.aN() <= 44 || strategy.aN() == 999;
    }

    protected boolean d(com.windmill.sdk.strategy.a strategy) {
        if (strategy == null) {
            return false;
        }
        int iAN = strategy.aN();
        return com.windmill.sdk.utils.l.d(iAN) || iAN == 22 || iAN == 35 || com.windmill.sdk.utils.l.c(iAN) || iAN == 21 || iAN == 27 || iAN == 1;
    }

    public abstract List<AdInfo> e();

    protected boolean e(com.windmill.sdk.strategy.a strategy) {
        return false;
    }

    public Activity f() {
        WeakReference<Activity> weakReference = this.f86743w;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public WMAdSourceStatusListener g() {
        return this.f86742v;
    }

    public void h() {
        ConcurrentHashMap<String, WMAdBaseAdapter> concurrentHashMap = this.f86741u;
        if (concurrentHashMap != null) {
            Iterator<WMAdBaseAdapter> it2 = concurrentHashMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.f86741u.clear();
        }
    }

    public boolean i() {
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar != null) {
            return qVar.f87247i;
        }
        return false;
    }

    public com.windmill.sdk.strategy.a j() {
        List<com.windmill.sdk.strategy.a> list;
        com.windmill.sdk.strategy.a aVar;
        int i10;
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar != null && qVar.f87248j && (list = this.f86724d) != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < this.f86724d.size(); i11++) {
                com.windmill.sdk.strategy.a aVar2 = this.f86724d.get(i11);
                if (!e(aVar2)) {
                    WMAdBaseAdapter wMAdBaseAdapterF = f(aVar2);
                    try {
                        i10 = (int) Double.parseDouble(aVar2.V());
                    } catch (Exception unused) {
                        i10 = 0;
                    }
                    if (wMAdBaseAdapterF != null && wMAdBaseAdapterF.isLoadSuccess() && i10 >= aVar2.ah() && i10 > 0) {
                        try {
                            Float fL = aVar2.l();
                            double dM = aVar2.m();
                            if (fL != null && fL.floatValue() != 0.0f && dM != 0.0d && !aVar2.f87112w) {
                                Double dValueOf = Double.valueOf(Double.parseDouble(aVar2.X()) * ((double) fL.floatValue()) * dM);
                                aVar2.h(String.valueOf(dValueOf));
                                aVar2.f(String.valueOf(dValueOf));
                            }
                        } catch (Exception unused2) {
                        }
                        arrayList.add(aVar2);
                    }
                }
            }
            WMLogUtil.d("超时复用信息: readyList " + arrayList.size());
            Collections.sort(arrayList, new Comparator<com.windmill.sdk.strategy.a>() { // from class: com.windmill.sdk.common.l.9
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(com.windmill.sdk.strategy.a o10, com.windmill.sdk.strategy.a o11) {
                    return com.windmill.sdk.strategy.s.a(o10, o11);
                }
            });
            if (arrayList.size() > 0) {
                aVar = (com.windmill.sdk.strategy.a) arrayList.get(0);
                aVar.h(1);
            } else {
                aVar = null;
            }
            if (aVar != null && aVar.Y() == 1) {
                WMAdBaseAdapter wMAdBaseAdapterF2 = f(aVar);
                if (wMAdBaseAdapterF2 != null && wMAdBaseAdapterF2.isLoadSuccess()) {
                    this.f86727g.a(true);
                    b(this.f86735o, aVar, aVar.aJ());
                    WMLogUtil.d("超时复用已经Bidding成功的的adapter:" + aVar.aP() + ":" + aVar.aW());
                    return aVar;
                }
            } else if (aVar != null && aVar.v()) {
                this.f86727g.a(true);
                return aVar;
            }
        }
        return null;
    }

    public ConcurrentHashMap<String, WMAdBaseAdapter> k() {
        return this.f86741u;
    }

    public m l() {
        WeakReference<m> weakReference = this.f86744x;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public u m() {
        WeakReference<u> weakReference = this.f86745y;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public com.windmill.sdk.strategy.s n() {
        return this.f86727g;
    }

    public String o() {
        Map<String, WMAdapterError> mapK;
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : new CopyOnWriteArraySet(this.f86734n.keySet())) {
                WMAdapterError wMAdapterError = this.f86734n.get(str);
                if (wMAdapterError != null) {
                    HashMap map = new HashMap();
                    map.put(str, wMAdapterError.toString());
                    arrayList.add(map);
                }
            }
            com.windmill.sdk.strategy.s sVar = this.f86727g;
            if (sVar != null && (mapK = sVar.k()) != null && !mapK.isEmpty()) {
                for (String str2 : new CopyOnWriteArraySet(mapK.keySet())) {
                    WMAdapterError wMAdapterError2 = mapK.get(str2);
                    if (wMAdapterError2 != null) {
                        HashMap map2 = new HashMap();
                        map2.put(str2, wMAdapterError2.toString());
                        arrayList.add(map2);
                    }
                }
            }
            return JSONSerializer.Serialize(arrayList);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    protected void a(int type, com.windmill.sdk.strategy.a strategy) {
    }

    protected boolean b(com.windmill.sdk.strategy.a strategy) {
        com.windmill.sdk.strategy.s sVar;
        if (strategy.Y() != 1 || (sVar = this.f86727g) == null || sVar.c() == null || !this.f86727g.c().f87248j || !strategy.U()) {
            return false;
        }
        strategy.n();
        return false;
    }

    public void a(com.windmill.sdk.strategy.a adStrategy, WMAdapterError error) {
    }

    public WMAdBaseAdapter f(com.windmill.sdk.strategy.a adStrategy) {
        ConcurrentHashMap<String, WMAdBaseAdapter> concurrentHashMap;
        if (adStrategy == null || (concurrentHashMap = this.f86741u) == null) {
            return null;
        }
        return concurrentHashMap.get(adStrategy.aD());
    }

    public boolean a() {
        return false;
    }

    public void c(WindMillAdRequest request) {
        if (request != null) {
            a aVar = D.get(request.getPlacementId());
            this.f86738r = aVar;
            if (aVar != null) {
                aVar.f86790a++;
            }
        }
    }

    public void b(String key) {
        if (this.f86741u == null || TextUtils.isEmpty(key)) {
            return;
        }
        WMLogUtil.d(WMLogUtil.TAG, "clearInitFailAdapter:" + key);
        this.f86741u.remove(key);
    }

    public void a(WMAdSourceStatusListener adSourceStatusListener) {
        this.f86742v = adSourceStatusListener;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a6 A[Catch: Exception -> 0x00c7, TRY_LEAVE, TryCatch #4 {Exception -> 0x00c7, blocks: (B:11:0x0043, B:13:0x0052, B:15:0x0058, B:26:0x009e, B:28:0x00a6), top: B:53:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c8 A[PHI: r4
      0x00c8: PHI (r4v3 int) = (r4v2 int), (r4v4 int), (r4v5 int), (r4v7 int) binds: [B:44:0x00c8, B:37:0x00c7, B:30:0x00b5, B:22:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void c(WindMillAdRequest adRequest, com.windmill.sdk.strategy.a adStrategy) {
        int random95;
        Map<String, Object> mapA = a(adStrategy);
        if (adStrategy.af() != null) {
            String strA = adStrategy.af().a();
            if (com.windmill.sdk.utils.l.c(adStrategy.aN())) {
                int i10 = 0;
                try {
                    random95 = (int) Double.parseDouble(mapA.get("waterfall_ecpm").toString());
                    int i11 = (int) Double.parseDouble(mapA.get("waterfall_channel").toString());
                    if (random95 <= 0 || random95 == 0) {
                        random95 = 0;
                    } else {
                        try {
                            i11 = (int) Double.parseDouble(mapA.get("waterfall_channel").toString());
                        } catch (Exception unused) {
                            i10 = random95;
                        }
                    }
                    int i12 = mapA.containsKey("bidding_ecpm") ? (int) Double.parseDouble(mapA.get("bidding_ecpm").toString()) : 0;
                    if (random95 < i12 && i12 != 0) {
                        try {
                            i11 = (int) Double.parseDouble(mapA.get("bidding_channel").toString());
                            random95 = i12;
                            if (random95 == 0) {
                                random95 = (int) Double.parseDouble(mapA.get("winner_ecpm").toString());
                                i11 = (int) Double.parseDouble(mapA.get("winner_channel").toString());
                            }
                            if (mapA.containsKey(WMBidUtil.WINNER_BIDFLOOR)) {
                            }
                            if (i10 > random95) {
                                random95 = i10;
                            } else if (random95 != 0) {
                                random95 = (MUtil.getRandom95() * random95) / 100;
                            }
                        } catch (Exception unused2) {
                            i10 = i12;
                        }
                    } else {
                        if (random95 == 0) {
                            try {
                                random95 = (int) Double.parseDouble(mapA.get("winner_ecpm").toString());
                                i11 = (int) Double.parseDouble(mapA.get("winner_channel").toString());
                            } catch (Exception unused3) {
                            }
                        }
                        i10 = mapA.containsKey(WMBidUtil.WINNER_BIDFLOOR) ? (int) Double.parseDouble(mapA.get(WMBidUtil.WINNER_BIDFLOOR).toString()) : 0;
                        if (i10 > random95) {
                            random95 = i10;
                        } else if (random95 != 0 && i11 != 16) {
                            try {
                                random95 = (MUtil.getRandom95() * random95) / 100;
                            } catch (Exception unused4) {
                            }
                        }
                    }
                } catch (Exception unused5) {
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(EncodeUtil.getEncodePrice(random95 + ""));
                sb2.append("");
                strA = strA.replace("__HIGHEST_LOSS_PRICE__", sb2.toString());
            }
            adStrategy.f87111v = true;
            WMLogUtil.i("----------s2sWinSendUrl winUrl: " + adStrategy.aW() + " " + strA);
            com.windmill.sdk.strategy.u.a(strA, "win", adStrategy, adRequest);
            adStrategy.af().a("");
        }
    }

    public void a(Activity activity) {
        if (activity != null) {
            this.f86743w = new WeakReference<>(activity);
        }
    }

    protected Activity a(int channel_id) {
        d dVar;
        WeakReference<d> weakReference = this.f86746z;
        if (weakReference == null || (dVar = weakReference.get()) == null || !dVar.a(channel_id)) {
            return f();
        }
        return null;
    }

    public void b(WindMillAdRequest windAdRequest, com.windmill.sdk.strategy.a strategy) {
        AdInfo adInfo = new AdInfo(strategy);
        this.f86737q = adInfo;
        adInfo.fillData(windAdRequest);
    }

    private void b() {
        this.C = 0;
        this.f86732l.clear();
        a aVar = this.f86738r;
        if (aVar != null) {
            aVar.a();
        }
    }

    protected ExecutorService a(final String threadPoolName) {
        return new ThreadPoolExecutor(0, 40, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.windmill.sdk.common.l.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable r10) {
                return new Thread(r10, threadPoolName);
            }
        });
    }

    protected void a(List<com.windmill.sdk.strategy.a> failList, WindMillAdRequest request) {
        if (failList != null) {
            for (int i10 = 0; i10 < failList.size(); i10++) {
                try {
                    com.windmill.sdk.strategy.a aVar = failList.get(i10);
                    if (!TextUtils.isEmpty(aVar.V()) && ((int) Double.parseDouble(aVar.V())) > 0) {
                        this.A.add(aVar);
                    } else {
                        this.f86736p.add(aVar);
                    }
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }

    public void b(WindMillAdRequest adRequest, List<com.windmill.sdk.strategy.a> currentStrategies, com.windmill.sdk.strategy.a readyStrategy, String loadId) {
        int random;
        int iIndexOf;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        boolean z11 = true;
        if (currentStrategies != null && currentStrategies.size() > 0 && (iIndexOf = currentStrategies.indexOf(readyStrategy)) != -1) {
            for (int i10 = iIndexOf + 1; i10 < currentStrategies.size(); i10++) {
                com.windmill.sdk.strategy.a aVar = currentStrategies.get(i10);
                try {
                    z10 = Double.parseDouble(aVar.X()) < Double.parseDouble(readyStrategy.X());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (aVar.Y() == 1 && z10) {
                    arrayList.add(aVar);
                }
            }
        }
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar != null && qVar.a() != null) {
            arrayList.addAll(this.f86722b.a());
        }
        if (readyStrategy == null) {
            arrayList.addAll(currentStrategies);
        }
        if (arrayList.size() > 0) {
            int i11 = 0;
            while (i11 < arrayList.size()) {
                com.windmill.sdk.strategy.a aVar2 = (com.windmill.sdk.strategy.a) arrayList.get(i11);
                if (aVar2.Y() == z11 && !aVar2.f87093c) {
                    aVar2.f87093c = z11;
                    if (TextUtils.isEmpty(aVar2.aJ())) {
                        aVar2.n(loadId);
                    }
                    if (aVar2.D() && readyStrategy != null && !aVar2.aW().equals(readyStrategy.aW())) {
                        if (aVar2.af() != null) {
                            String strB = aVar2.af().b();
                            if (!TextUtils.isEmpty(strB)) {
                                if (com.windmill.sdk.utils.l.c(aVar2.aN())) {
                                    if (com.windmill.sdk.utils.l.c(readyStrategy.aN())) {
                                        strB = strB.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(readyStrategy.V()));
                                    } else {
                                        try {
                                            strB = strB.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(((MUtil.getRandom() * ((int) Double.parseDouble(readyStrategy.V()))) / 100) + ""));
                                        } catch (Exception unused) {
                                        }
                                    }
                                } else {
                                    strB = strB.replace("__AUCTION_PRICE__", readyStrategy.V());
                                }
                            }
                            HashMap<String, String> map = new HashMap<>();
                            map.put(WMBidUtil.ECPM, readyStrategy.V());
                            map.put(WMBidUtil.WINNER_CHANNEL, readyStrategy.aN() + "");
                            if (com.windmill.sdk.utils.l.c(aVar2.aN()) && f(aVar2) != null) {
                                strB = f(aVar2).getS2sResultUrl(false, strB, map);
                            }
                            if (!TextUtils.isEmpty(strB)) {
                                com.windmill.sdk.strategy.u.a(strB, "lose", aVar2, adRequest);
                                aVar2.af().b("");
                            } else if (f(aVar2) != null && !f(aVar2).isReady() && com.windmill.sdk.utils.l.c(aVar2.aN())) {
                                HashMap<String, Object> map2 = new HashMap<>();
                                map2.putAll(map);
                                map2.put("placementId", aVar2.aW());
                                map2.put(loadId, aVar2.aJ());
                                map2.putAll(aVar2.aR());
                                if (aVar2.D()) {
                                    map2.put(BiddingConstant.sBidType, "1");
                                }
                                f(aVar2).gdtNoadNotify(aVar2.f87106q, map2);
                            }
                        }
                    } else if (aVar2.af() != null) {
                        String strB2 = aVar2.af().b();
                        if (!TextUtils.isEmpty(strB2)) {
                            if (com.windmill.sdk.utils.l.c(aVar2.aN())) {
                                if (readyStrategy != null && com.windmill.sdk.utils.l.c(readyStrategy.aN())) {
                                    strB2 = strB2.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(readyStrategy.V()));
                                } else {
                                    if (readyStrategy != null) {
                                        try {
                                            random = (MUtil.getRandom() * ((int) Double.parseDouble(readyStrategy.V()))) / 100;
                                        } catch (Exception unused2) {
                                        }
                                    } else {
                                        random = 0;
                                    }
                                    strB2 = strB2.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(random + ""));
                                }
                            } else {
                                strB2 = strB2.replace("__AUCTION_PRICE__", readyStrategy.V());
                            }
                        }
                        HashMap<String, String> map3 = new HashMap<>();
                        if (readyStrategy != null) {
                            map3.put(WMBidUtil.WINNER_CHANNEL, readyStrategy.aN() + "");
                            map3.put(WMBidUtil.ECPM, readyStrategy.V());
                        } else {
                            map3.put(WMBidUtil.WINNER_CHANNEL, "0");
                            map3.put(WMBidUtil.ECPM, aVar2.V());
                        }
                        if (com.windmill.sdk.utils.l.c(aVar2.aN()) && f(aVar2) != null) {
                            strB2 = f(aVar2).getS2sResultUrl(false, strB2, map3);
                        }
                        com.windmill.sdk.strategy.u.a(strB2, "lose", aVar2, adRequest);
                        aVar2.af().b("");
                    }
                }
                i11++;
                z11 = true;
            }
        }
        List<com.windmill.sdk.strategy.a> list = this.f86736p;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i12 = 0; i12 < this.f86736p.size(); i12++) {
            com.windmill.sdk.strategy.a aVar3 = this.f86736p.get(i12);
            if (!aVar3.f87093c) {
                aVar3.f87093c = true;
                WMAdBaseAdapter wMAdBaseAdapterF = f(aVar3);
                Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(readyStrategy, null, aVar3);
                lossOriginalBidInfo.put("placementId", aVar3.aW());
                lossOriginalBidInfo.put(loadId, aVar3.aJ());
                lossOriginalBidInfo.putAll(aVar3.aR());
                wMAdBaseAdapterF.gdtNoadNotify(aVar3.f87106q, (HashMap) lossOriginalBidInfo);
            }
        }
    }

    protected void a(ExecutorService executorService, final int type, final com.windmill.sdk.strategy.a strategy, final WindMillAdRequest adRequest) {
        if (executorService != null) {
            try {
                executorService.submit(new Callable<String>() { // from class: com.windmill.sdk.common.l.7
                    @Override // java.util.concurrent.Callable
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public String call() {
                        try {
                            WindMillAdRequest windMillAdRequest = adRequest;
                            if (windMillAdRequest != null && !windMillAdRequest.isLoadToOut) {
                                l.this.a(type, strategy);
                            }
                        } catch (Exception unused) {
                        }
                        return "完成FutureTask " + strategy.aP();
                    }
                });
            } catch (Throwable th) {
                WMLogUtil.e("------initThreadPoolAndRun e: " + th);
            }
        }
    }

    public void a(final boolean isOut, final String loadId, WindMillAdRequest request, com.windmill.sdk.strategy.a strategy) {
        if (strategy == null) {
            try {
                List<com.windmill.sdk.strategy.a> list = this.f86724d;
                if (list != null && list.size() > 0) {
                    strategy = this.f86724d.get(0);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        com.windmill.sdk.utils.m.a("destroy", request, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.8
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(loadId);
                    pointEntityWind.setCall_source(isOut ? "1" : "0");
                }
            }
        });
    }

    public void a(AutoAdLoadListener loadListener) {
        this.f86733m = loadListener;
    }

    public void a(com.windmill.sdk.strategy.s strategyManager) {
        List<com.windmill.sdk.strategy.a> arrayList;
        try {
            if (this.f86726f || strategyManager == null) {
                return;
            }
            if (this.f86722b == null) {
                this.f86722b = strategyManager.c();
            }
            if (this.f86722b.f87248j) {
                if (strategyManager.a().size() > 0) {
                    Map<String, List<com.windmill.sdk.strategy.a>> mapE = strategyManager.e();
                    List<com.windmill.sdk.strategy.a> list = mapE.get("success");
                    List<com.windmill.sdk.strategy.a> list2 = mapE.get("fail");
                    if (list != null && list.size() > 0) {
                        com.windmill.sdk.strategy.a aVar = list.get(0);
                        if (list.remove(aVar) && list2 != null) {
                            list2.addAll(list);
                            for (int i10 = 0; i10 < list2.size(); i10++) {
                                list2.get(i10).i(1);
                            }
                        }
                        if (strategyManager.b().size() > 0) {
                            arrayList = new CopyOnWriteArrayList<>(strategyManager.b());
                            arrayList.add(strategyManager.a(aVar, arrayList), aVar);
                        } else {
                            arrayList = new ArrayList<>();
                            arrayList.add(aVar);
                        }
                        for (int i11 = 0; i11 < arrayList.size(); i11++) {
                            arrayList.get(i11).i(0);
                        }
                        if (strategyManager.c() != null) {
                            strategyManager.c().a(list2);
                        }
                        if (strategyManager.d() != null) {
                            strategyManager.d().a(arrayList, strategyManager.c());
                            return;
                        }
                        return;
                    }
                    if (strategyManager.b().size() > 0) {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(strategyManager.b());
                        for (int i12 = 0; i12 < copyOnWriteArrayList.size(); i12++) {
                            copyOnWriteArrayList.get(i12).i(0);
                        }
                        if (strategyManager.d() != null) {
                            strategyManager.d().a(copyOnWriteArrayList, strategyManager.c());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (strategyManager.b().size() > 0) {
                    CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList(strategyManager.b());
                    for (int i13 = 0; i13 < copyOnWriteArrayList2.size(); i13++) {
                        copyOnWriteArrayList2.get(i13).i(0);
                    }
                    if (strategyManager.d() != null) {
                        strategyManager.d().a(copyOnWriteArrayList2, strategyManager.c());
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        com.windmill.sdk.strategy.a aVar;
        WMAdBaseAdapter wMAdBaseAdapterF;
        try {
            List<com.windmill.sdk.strategy.a> list = this.f86724d;
            if (list == null || list.size() <= 0) {
                aVar = null;
            } else {
                aVar = null;
                for (int i10 = 0; i10 < this.f86724d.size(); i10++) {
                    com.windmill.sdk.strategy.a aVar2 = this.f86724d.get(i10);
                    WMLogUtil.i("--------reportBidResultFail: lossStrategy " + this.f86724d.size() + aVar2);
                    if (aVar2.F()) {
                        WMAdBaseAdapter wMAdBaseAdapterF2 = f(aVar2);
                        if (wMAdBaseAdapterF2 != null) {
                            WMLogUtil.i("----------notifyAdapterBiddingResult 4444");
                            if (wMAdBaseAdapterF2.isReady()) {
                                wMAdBaseAdapterF2.notifyAdapterBiddingResult(false, "0", WMBidUtil.getLossOriginalBidInfo(null, aVar2, aVar2));
                            } else {
                                Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(null, aVar2, aVar2);
                                lossOriginalBidInfo.put("placementId", aVar2.aW());
                                lossOriginalBidInfo.putAll(aVar2.aR());
                                lossOriginalBidInfo.put("loadId", aVar2.aJ());
                                wMAdBaseAdapterF2.gdtNoadNotify(aVar2.f87106q, (HashMap) lossOriginalBidInfo);
                            }
                        }
                        aVar = aVar2;
                    } else if (f(aVar2) != null && f(aVar2).isReady()) {
                        a((com.windmill.sdk.strategy.a) null, aVar, aVar2);
                    } else {
                        try {
                            Map<String, Object> lossOriginalBidInfo2 = WMBidUtil.getLossOriginalBidInfo(null, aVar, aVar2);
                            lossOriginalBidInfo2.put("placementId", aVar2.aW());
                            lossOriginalBidInfo2.put("loadId", aVar2.aJ());
                            lossOriginalBidInfo2.putAll(aVar2.aR());
                            f(aVar2).gdtNoadNotify(aVar2.f87106q, (HashMap) lossOriginalBidInfo2);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            com.windmill.sdk.strategy.q qVar = this.f86722b;
            if (qVar == null || qVar.a() == null) {
                return;
            }
            List<com.windmill.sdk.strategy.a> listA = this.f86722b.a();
            if (listA.size() > 0) {
                for (int i11 = 0; i11 < listA.size(); i11++) {
                    com.windmill.sdk.strategy.a aVar3 = listA.get(i11);
                    if (aVar3.F() && (wMAdBaseAdapterF = f(aVar3)) != null) {
                        Map<String, Object> lossOriginalBidInfo3 = WMBidUtil.getLossOriginalBidInfo(null, aVar, aVar3);
                        WMLogUtil.i("----------notifyAdapterBiddingResult 555");
                        wMAdBaseAdapterF.notifyAdapterBiddingResult(false, "0", lossOriginalBidInfo3);
                    }
                }
            }
        } catch (Exception e10) {
            WMLogUtil.i("-------reportBidResultFail: e:" + e10.getMessage());
            e10.printStackTrace();
        }
    }

    public void a(WindMillAdRequest windAdRequest, com.windmill.sdk.strategy.a strategy) {
        AdInfo adInfo = this.f86737q;
        if (adInfo == null) {
            AdInfo adInfo2 = new AdInfo(strategy);
            this.f86737q = adInfo2;
            adInfo2.fillData(windAdRequest);
            return;
        }
        adInfo.fillNetWorkOption(strategy.H());
    }

    public WMAdBaseAdapter a(final WindMillAdRequest windAdRequest, final com.windmill.sdk.strategy.a strategy, String adapterClsName, WMAdBaseConnector adConnector) {
        WMAdBaseAdapter wMAdBaseAdapterF = f(strategy);
        WMCustomAdapterProxy wMCustomAdapterProxyA = h.a().a(strategy);
        if (wMCustomAdapterProxyA == null) {
            return null;
        }
        final String strAV = strategy.aV();
        int iAN = strategy.aN();
        if (wMAdBaseAdapterF != null) {
            if (iAN == 22) {
                strategy.a(wMAdBaseAdapterF.getAdapterPluginVersion());
            }
            WMLogUtil.d(WMLogUtil.TAG, "---initializeChannelAdapter--find already initialize Adapter: " + strategy.aP() + " " + strAV + " " + wMCustomAdapterProxyA.getInitStatus());
            if (!wMAdBaseAdapterF.isSupportRepeatInit(iAN)) {
                return wMAdBaseAdapterF;
            }
        }
        try {
            Class<?> cls = Class.forName(adapterClsName);
            if (cls.getSuperclass().getSuperclass() == WMAdBaseAdapter.class) {
                if (wMAdBaseAdapterF == null) {
                    wMAdBaseAdapterF = (WMAdBaseAdapter) cls.newInstance();
                }
                wMAdBaseAdapterF.initWithAdConnector(wMCustomAdapterProxyA, adConnector);
                if (iAN == 22) {
                    strategy.a(wMAdBaseAdapterF.getAdapterPluginVersion());
                }
                final boolean zIsSupportRepeatInit = wMAdBaseAdapterF.isSupportRepeatInit(iAN);
                if (zIsSupportRepeatInit) {
                    a(windAdRequest, strategy, wMAdBaseAdapterF, wMCustomAdapterProxyA);
                }
                final WMAdBaseAdapter wMAdBaseAdapter = wMAdBaseAdapterF;
                wMAdBaseAdapterF.initializeSdk(WindMillAd.sharedAds().getContext(), strategy, new WMCustomAdapterProxy.a() { // from class: com.windmill.sdk.common.l.10
                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public /* synthetic */ void a(int i10, String str) {
                        com.windmill.sdk.custom.b.b(this, i10, str);
                    }

                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public /* synthetic */ void b() {
                        com.windmill.sdk.custom.b.c(this);
                    }

                    @Override // com.windmill.sdk.custom.WMCustomAdapterProxy.a
                    public void a() {
                        final String loadId = windAdRequest.getLoadId();
                        String strAL = strategy.aL();
                        if (zIsSupportRepeatInit) {
                            l.this.B.add(strAL + "_" + strAV + "_" + loadId);
                        }
                        WMLogUtil.d("---initializeChannelAdapter--point start " + strategy.aP());
                        com.windmill.sdk.utils.m.a(PointCategory.PLATFORM_AGGRE_INIT, windAdRequest, strategy, l.this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.10.1
                            @Override // com.windmill.sdk.utils.m.a
                            public void onAddExtra(Object pointEntityBase) {
                                if (pointEntityBase instanceof PointEntityWind) {
                                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                                    pointEntityWind.setLoad_id(loadId);
                                    pointEntityWind.setAdapter_version(String.valueOf(wMAdBaseAdapter.getAdapterVersion()));
                                    pointEntityWind.setNetwork_version(String.valueOf(wMAdBaseAdapter.getChannelSdkVersion()));
                                }
                            }
                        });
                    }
                });
                ConcurrentHashMap<String, WMAdBaseAdapter> concurrentHashMap = this.f86741u;
                if (concurrentHashMap != null) {
                    concurrentHashMap.put(strategy.aD(), wMAdBaseAdapterF);
                }
                return wMAdBaseAdapterF;
            }
        } catch (Exception e10) {
            WMLogUtil.e("---initializeChannelAdapter--Exception " + e10.getMessage());
        }
        WMLogUtil.d("initializeChannelAdapter: " + strategy.aP() + " cls: " + adapterClsName + " failed!");
        return null;
    }

    private void a(WindMillAdRequest windAdRequest, com.windmill.sdk.strategy.a strategy, WMAdBaseAdapter adAdapter, WMCustomAdapterProxy adapterProxy) {
        int iAN = strategy.aN();
        String strAL = strategy.aL();
        String channelAppId = adapterProxy.getChannelAppId();
        String strAV = strategy.aV();
        String loadId = windAdRequest.getLoadId();
        if (iAN == 21 || com.windmill.sdk.utils.l.d(iAN)) {
            if (this.B.contains(strAL + "_" + strAV + "_" + loadId)) {
                return;
            }
        }
        if (iAN == 21) {
            if (adAdapter.isInitializing()) {
                return;
            }
            WMLogUtil.d("---initializeChannelAdapter--InitStatus1 " + adapterProxy.getInitStatus() + " " + channelAppId + " " + strAV);
            adapterProxy.reSetInitStatus();
            return;
        }
        if (com.windmill.sdk.utils.l.d(iAN)) {
            if (!TextUtils.isEmpty(channelAppId) && !TextUtils.isEmpty(strAV) && !channelAppId.equals(strAV)) {
                boolean zIsInitializing = adAdapter.isInitializing();
                WMLogUtil.d("---initializeChannelAdapter--InitStatus2 快手两次appId不一致" + adapterProxy.getInitStatus() + " " + channelAppId + " " + strAV);
                if (zIsInitializing) {
                    return;
                }
                adapterProxy.reSetInitStatus();
                return;
            }
            WMLogUtil.d("---initializeChannelAdapter--InitStatus3 快手两次appid一致，不重新初始化 ");
        }
    }

    public void b(WindMillAdRequest adRequest, final com.windmill.sdk.strategy.a adStrategy, final String loadId) {
        if (adStrategy.Y() != 1 || adStrategy.f87088b) {
            return;
        }
        adStrategy.f87088b = true;
        WMLogUtil.i("-------s2sWinTracking " + adStrategy.aW());
        if (adStrategy.b()) {
            return;
        }
        if (com.windmill.sdk.common.b.a(adStrategy.V())) {
            adStrategy.a(true);
        }
        com.windmill.sdk.utils.m.a(PointCategory.HB_WIN, adRequest, adStrategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.2
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setSub_category("start");
                    pointEntityWind.setLoad_id(loadId);
                    if (adStrategy.af() != null) {
                        pointEntityWind.setHb_id(adStrategy.af().d());
                    }
                }
            }
        });
    }

    private void b(com.windmill.sdk.strategy.a strategy, WMAdBaseAdapter adapter) {
        com.windmill.sdk.strategy.a aVar;
        com.windmill.sdk.strategy.q qVar;
        Map<String, Object> mapA = a(strategy);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(e());
        Collections.sort(arrayList, new Comparator<AdInfo>() { // from class: com.windmill.sdk.common.l.4
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(AdInfo o10, AdInfo o11) {
                return l.a((int) Double.parseDouble(o10.geteCPM()), (int) Double.parseDouble(o11.geteCPM()));
            }
        });
        if (arrayList.size() <= 1) {
            aVar = null;
            break;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= this.f86724d.size()) {
                aVar = null;
                break;
            }
            aVar = this.f86724d.get(i10);
            if (((AdInfo) arrayList.get(1)).getNetworkPlacementId().equals(aVar.aW())) {
                break;
            } else {
                i10++;
            }
        }
        if (aVar == null && (qVar = this.f86722b) != null && qVar.a() != null) {
            List<com.windmill.sdk.strategy.a> listA = this.f86722b.a();
            if (listA.size() > 0) {
                aVar = listA.get(0);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-----winNotify:");
        sb2.append(strategy.aW());
        sb2.append(" ");
        sb2.append(aVar != null);
        WMLogUtil.i(sb2.toString());
        a(strategy, mapA, aVar);
        adapter.notifyAdapterBiddingResult(true, strategy.V(), mapA);
    }

    public b a(boolean isAutoLoad, WindMillAdRequest request) {
        if (request != null && !TextUtils.isEmpty(request.getPlacementId())) {
            a aVar = D.get(request.getPlacementId());
            this.f86738r = aVar;
            if (aVar == null) {
                this.f86738r = new a();
                D.put(request.getPlacementId(), this.f86738r);
            }
            int i10 = this.C;
            if (i10 > 0) {
                this.f86738r.f86790a += i10;
            }
            if (!WindMillAd.sharedAds().isInit()) {
                a aVar2 = this.f86738r;
                aVar2.f86793d++;
                aVar2.f86790a++;
                if (TextUtils.isEmpty(WindMillAd.mAppId)) {
                    a(request, WindMillError.ERROR_NOT_INIT);
                } else {
                    a(request, WindMillError.ERROR_INIT_EXCEPTION);
                }
                return b.WindFilterInit;
            }
            if (!c.b()) {
                a aVar3 = this.f86738r;
                aVar3.f86791b++;
                aVar3.f86790a++;
                a(request, WindMillError.ERROR_GDPR_DENIED);
                return b.WindFilterGdpr;
            }
            if (!isAutoLoad && WMSdkConfig.sharedInstance().getLoadPeriodTime() + this.f86738r.f86795f > System.currentTimeMillis()) {
                a aVar4 = this.f86738r;
                aVar4.f86790a++;
                aVar4.f86794e++;
                a(request, WindMillError.ERROR_AD_LOAD_FAIL_INTERVAL);
                return b.WindFilterLoadInterval;
            }
            if (this.f86721a == AdStatus.AdStatusLoading) {
                a aVar5 = this.f86738r;
                aVar5.f86790a++;
                aVar5.f86792c++;
                a(request, WindMillError.ERROR_AD_LOAD_FAIL_LOADING);
                return b.WindFilterLoadingBreak;
            }
            if (request.getAdType() == 5 && request.getAdCount() <= 0) {
                a(request, WindMillError.ERROR_AD_COUNT_IS_EMPTY);
                return b.WindFilterAdCount;
            }
            return b.WindFilterKeepGoing;
        }
        this.C++;
        a(request, WindMillError.ERROR_PLACEMENT_ID_IS_EMPTY);
        return b.WindFilterParameter;
    }

    public WMAdapterError b(WMAdBaseAdapter adAdapter, com.windmill.sdk.strategy.a adStrategy) {
        if (adStrategy.M().booleanValue()) {
            if (adAdapter.getBaseOnToBidCustomVersion() >= com.windmill.sdk.utils.l.b()) {
                return null;
            }
            WMLogUtil.e(adStrategy.aP() + "custom adapter version is error!");
            WindMillError windMillError = WindMillError.ERROR_AD_CUSTOM_ADAPTER_VERSION_ERROR;
            return new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage());
        }
        if (adAdapter.getAdapterVersion() >= com.windmill.sdk.utils.l.b(adStrategy.aN())) {
            return null;
        }
        WMLogUtil.e(adStrategy.aP() + "adapter version is error!");
        WindMillError windMillError2 = WindMillError.ERROR_AD_ADAPTER_VERSION_ERROR;
        return new WMAdapterError(windMillError2.getErrorCode(), windMillError2.getMessage());
    }

    public String b(WMAdBaseAdapter adapter) {
        Object obj;
        if (adapter == null) {
            return "";
        }
        try {
            Map<String, Object> extraOption = adapter.getExtraOption();
            return (extraOption == null || (obj = extraOption.get("request_id")) == null) ? "" : String.valueOf(obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public com.windmill.sdk.strategy.a b(com.windmill.sdk.strategy.s strategyManager, com.windmill.sdk.strategy.a strategy) {
        List<com.windmill.sdk.strategy.a> listI;
        com.windmill.sdk.strategy.a aVar = null;
        try {
            if (strategy.G()) {
                ArrayList arrayList = new ArrayList();
                if (strategyManager != null && (listI = strategyManager.i()) != null && listI.contains(strategy)) {
                    for (int i10 = 0; i10 < listI.size(); i10++) {
                        com.windmill.sdk.strategy.a aVar2 = listI.get(i10);
                        if (aVar2.v()) {
                            arrayList.add(aVar2);
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    aVar = (com.windmill.sdk.strategy.a) arrayList.get(0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        WMLogUtil.i("-----isWhenFailCanReadyToOut---" + aVar);
        return aVar;
    }

    public void a(final WindMillAdRequest request, final String strategy_stage) {
        com.windmill.sdk.utils.m.a(PointCategory.REQUEST_AGGRE_STRATEGY, request, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.11
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                Map<String, String> mapA;
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_count(String.valueOf(l.this.f86738r.f86790a + 1));
                    pointEntityWind.setLoading_filters(String.valueOf(l.this.f86738r.f86792c));
                    pointEntityWind.setGdpr_filters(String.valueOf(l.this.f86738r.f86791b));
                    pointEntityWind.setInterval_filters(String.valueOf(l.this.f86738r.f86794e));
                    pointEntityWind.setPldempty_filters(String.valueOf(l.this.C));
                    pointEntityWind.setInit_filters(String.valueOf(l.this.f86738r.f86793d));
                    pointEntityWind.setLoad_id(request.getLoadId());
                    pointEntityWind.setIs_enter_sdk("1");
                    pointEntityWind.getOptions().put("request_options", pointEntityWind.toJsonString(request.getOptions()));
                    if (!TextUtils.isEmpty(strategy_stage)) {
                        pointEntityWind.setStrategy_stage(strategy_stage);
                    }
                    if (request.getAdType() == 5) {
                        pointEntityWind.setFeed_cnt(String.valueOf(request.getAdCount()));
                    }
                    try {
                        if (com.windmill.sdk.strategy.d.a().b() != null) {
                            String strSerialize = JSONSerializer.Serialize(com.windmill.sdk.strategy.d.a().b());
                            if (!TextUtils.isEmpty(strSerialize)) {
                                pointEntityWind.setCustom_info(strSerialize);
                            }
                        }
                        String placementId = request.getPlacementId();
                        com.windmill.sdk.strategy.s sVarN = l.this.n();
                        if (sVarN != null) {
                            mapA = sVarN.n();
                        } else {
                            mapA = (TextUtils.isEmpty(placementId) || com.windmill.sdk.strategy.d.a().a(placementId) == null) ? null : com.windmill.sdk.strategy.d.a().a(placementId);
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
        b();
    }

    private void a(WindMillAdRequest request, WindMillError error) {
        com.windmill.sdk.utils.m.a("error", "load", request, null, this.f86727g, error.getErrorCode(), "", error.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.12
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    ((PointEntityWind) pointEntityBase).setExecution_scene(l.this.f86726f ? "0" : "1");
                }
            }
        });
    }

    protected void b(Handler handler, int timeout) {
        if (handler != null && timeout > 0 && !"2".equals(this.f86729i)) {
            if (!handler.hasMessages(1000)) {
                this.f86729i = WMConstants.TIMER_STAGE_NONE;
                WMLogUtil.d("----loadAd---动态总超时---第一阶段超时消息不存在（未设置第一阶段超时/第一阶段超时已触发/使用预置分组/缓存超时/广告已加载完成），跳过设置第二阶段超时");
                return;
            }
            if (this.f86728h > 0) {
                this.f86729i = "2";
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() - this.f86728h);
                int i10 = timeout - iCurrentTimeMillis;
                handler.removeMessages(1000);
                if (i10 > 0) {
                    handler.sendEmptyMessageDelayed(1001, i10);
                    WMLogUtil.d("----loadAd---动态总超时---设置第二阶段超时,移除第一阶段超时---timeout2: " + i10 + " 第一阶段消费时间: " + iCurrentTimeMillis + " 第二阶段实时总超时时间: " + timeout);
                    return;
                }
                this.f86729i = "1";
                WMLogUtil.e("----loadAd---动态总超时---不设置第二阶段超时,移除第一阶段延迟超时消息，手动发送第一阶段实时超时消息---timeout2: " + i10 + " 第一阶段消费时间: " + iCurrentTimeMillis + " 第二阶段实时总超时时间: " + timeout);
                handler.sendEmptyMessage(1000);
                return;
            }
            WMLogUtil.e("----loadAd---动态总超时---未设置第一阶段超时/第一阶段超时已触发/使用预置分组超时/缓存超时/广告已加载完成，不设置第二次超时");
            return;
        }
        WMLogUtil.e("----loadAd---动态总超时---设置第二阶段超时失败---timeout: " + timeout);
    }

    public void a(d channelFilterListener) {
        if (channelFilterListener != null) {
            this.f86746z = new WeakReference<>(channelFilterListener);
        } else {
            this.f86746z = null;
        }
    }

    public void a(m listener) {
        if (listener != null) {
            this.f86744x = new WeakReference<>(listener);
        } else {
            this.f86744x = null;
        }
    }

    public void a(u waterfallFilterListener) {
        if (waterfallFilterListener != null) {
            this.f86745y = new WeakReference<>(waterfallFilterListener);
        } else {
            this.f86745y = null;
        }
    }

    public void a(WindMillAdRequest adRequest, List<com.windmill.sdk.strategy.a> mStrategies, final String loadId) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(mStrategies);
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar != null && qVar.a() != null) {
            arrayList.addAll(this.f86722b.a());
        }
        if (arrayList.size() > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                final com.windmill.sdk.strategy.a aVar = (com.windmill.sdk.strategy.a) arrayList.get(i10);
                if (aVar.Y() == 1 && !aVar.f87093c) {
                    aVar.f87093c = true;
                    if (TextUtils.isEmpty(aVar.aJ())) {
                        aVar.n(loadId);
                    }
                    if (aVar.L() == 0 && !aVar.b()) {
                        if (com.windmill.sdk.common.b.a(aVar.V())) {
                            aVar.a(true);
                        }
                        com.windmill.sdk.utils.m.a(PointCategory.HB_LOSE, adRequest, aVar, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.13
                            @Override // com.windmill.sdk.utils.m.a
                            public void onAddExtra(Object pointEntityBase) {
                                if (pointEntityBase instanceof PointEntityWind) {
                                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                                    pointEntityWind.setSub_category(PointCategory.TIME_OUT);
                                    pointEntityWind.setLoad_id(loadId);
                                    if (aVar.af() != null) {
                                        pointEntityWind.setHb_id(aVar.af().d());
                                    }
                                }
                            }
                        });
                    }
                    if (aVar.D() && aVar.af() != null) {
                        String strB = aVar.af().b();
                        WMLogUtil.d("----------getHbResponse loseUrl " + strB + " ");
                        com.windmill.sdk.utils.l.c(aVar.aN());
                        com.windmill.sdk.strategy.u.a(strB, "lose", aVar, adRequest);
                        aVar.af().b("");
                    }
                }
            }
        }
    }

    private void b(Handler handler) {
        if (handler == null) {
            return;
        }
        handler.removeMessages(1003);
        handler.removeMessages(1004);
        handler.removeMessages(1000);
        handler.removeMessages(1001);
    }

    public void a(WindMillAdRequest adRequest, List<com.windmill.sdk.strategy.a> currentStrategies, final com.windmill.sdk.strategy.a readyStrategy, final String loadId) {
        int iIndexOf;
        boolean z10;
        WMLogUtil.i("-------s2sLossTracking " + readyStrategy.aW());
        ArrayList arrayList = new ArrayList();
        if (currentStrategies != null && currentStrategies.size() > 0 && (iIndexOf = currentStrategies.indexOf(readyStrategy)) != -1) {
            for (int i10 = iIndexOf + 1; i10 < currentStrategies.size(); i10++) {
                com.windmill.sdk.strategy.a aVar = currentStrategies.get(i10);
                try {
                    z10 = Double.parseDouble(aVar.X()) < Double.parseDouble(readyStrategy.X());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (aVar.Y() == 1 && z10) {
                    arrayList.add(aVar);
                }
            }
        }
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar != null && qVar.a() != null) {
            arrayList.addAll(this.f86722b.a());
        }
        if (arrayList.size() > 0) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                final com.windmill.sdk.strategy.a aVar2 = (com.windmill.sdk.strategy.a) arrayList.get(i11);
                if (aVar2.Y() == 1 && !aVar2.f87093c) {
                    if (TextUtils.isEmpty(aVar2.aJ())) {
                        aVar2.n(loadId);
                    }
                    if (aVar2.L() == 0 && !aVar2.b()) {
                        if (com.windmill.sdk.common.b.a(aVar2.V())) {
                            aVar2.a(true);
                        }
                        com.windmill.sdk.utils.m.a(PointCategory.HB_LOSE, adRequest, aVar2, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.14
                            @Override // com.windmill.sdk.utils.m.a
                            public void onAddExtra(Object pointEntityBase) {
                                if (pointEntityBase instanceof PointEntityWind) {
                                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                                    pointEntityWind.setSub_category(PointCategory.LOW_PRICE);
                                    pointEntityWind.setLoad_id(loadId);
                                    pointEntityWind.setWin_platform(readyStrategy.aP());
                                    pointEntityWind.setHigher_price(String.valueOf(readyStrategy.V()));
                                    if (aVar2.af() != null) {
                                        pointEntityWind.setHb_id(aVar2.af().d());
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    private void a(com.windmill.sdk.strategy.a notifyAStrategy, Map<String, Object> map, com.windmill.sdk.strategy.a adStrategy) {
        List<WMNativeAdData> nativeAdDataList;
        if (notifyAStrategy != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("---NotifyAdapterResult--fillHBAdInfo- ");
            sb2.append(notifyAStrategy.aW());
            sb2.append(" ");
            sb2.append(notifyAStrategy.aO());
            sb2.append(" ");
            sb2.append(notifyAStrategy.E());
            sb2.append(notifyAStrategy.aK());
            sb2.append(" ");
            sb2.append(notifyAStrategy.I());
            sb2.append(" ");
            sb2.append(adStrategy != null);
            WMLogUtil.i(sb2.toString());
        }
        if (WMBidUtil.getXBiddingInfo() != null && notifyAStrategy != null && notifyAStrategy.aO() && notifyAStrategy.E() && notifyAStrategy.aK() == 5 && notifyAStrategy.I() == 1 && adStrategy != null) {
            WMAdBaseAdapter wMAdBaseAdapterF = f(adStrategy);
            if (!(wMAdBaseAdapterF instanceof WMCustomNativeAdapter) || (nativeAdDataList = ((WMCustomNativeAdapter) wMAdBaseAdapterF).getNativeAdDataList()) == null || nativeAdDataList.size() <= 0) {
                return;
            }
            WMNativeAdData wMNativeAdData = nativeAdDataList.get(0);
            WMNativeAdData.AppInfo appInfo = wMNativeAdData.getAppInfo();
            if (appInfo != null && !TextUtils.isEmpty(appInfo.getAppName())) {
                map.put(WMBidUtil.AD_USERNAME, appInfo.getAppName());
                WMLogUtil.d("----WMBaseAdController--AdInfo: downloadInfo getAppName " + appInfo.getAppName());
            } else {
                map.put(WMBidUtil.AD_USERNAME, wMNativeAdData.getTitle());
            }
            WMLogUtil.d("----WMBaseAdController--AdInfo: getDesc: " + wMNativeAdData.getDesc() + " getTitle： " + wMNativeAdData.getTitle());
            map.put(WMBidUtil.AD_TITLE, wMNativeAdData.getDesc());
            int adPatternType = wMNativeAdData.getAdPatternType();
            if (adPatternType == 1 || adPatternType == 2) {
                map.put(WMBidUtil.MATERIAL_TYPE, "1");
                return;
            }
            if (adPatternType == 3) {
                map.put(WMBidUtil.MATERIAL_TYPE, "5");
            } else if (adPatternType != 4) {
                map.put(WMBidUtil.MATERIAL_TYPE, "7");
            } else {
                map.put(WMBidUtil.MATERIAL_TYPE, "3");
            }
        }
    }

    public void a(WindMillAdRequest adRequest, com.windmill.sdk.strategy.a strategy, String loadId) {
        int random;
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar != null && sVar.g() != null) {
            List<com.windmill.sdk.strategy.a> listG = this.f86727g.g();
            for (int i10 = 0; i10 < listG.size(); i10++) {
                if (!this.A.contains(listG.get(i10))) {
                    this.A.add(listG.get(i10));
                }
            }
        }
        if (!this.A.isEmpty()) {
            for (int i11 = 0; i11 < this.A.size(); i11++) {
                com.windmill.sdk.strategy.a aVar = this.A.get(i11);
                if (aVar.Y() == 1 && !aVar.f87093c) {
                    aVar.f87093c = true;
                    if (TextUtils.isEmpty(aVar.aJ())) {
                        aVar.n(loadId);
                    }
                    if (aVar.D() && strategy != null && !aVar.aW().equals(strategy.aW())) {
                        if (aVar.af() != null) {
                            String strB = aVar.af().b();
                            if (!TextUtils.isEmpty(strB)) {
                                if (com.windmill.sdk.utils.l.c(strategy.aN())) {
                                    strB = strB.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(strategy.V()));
                                } else {
                                    try {
                                        strB = strB.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(((MUtil.getRandom() * ((int) Double.parseDouble(strategy.V()))) / 100) + ""));
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                            HashMap<String, String> map = new HashMap<>();
                            map.put(WMBidUtil.ECPM, strategy.V());
                            if (strategy.D()) {
                                map.put(BiddingConstant.sBidType, "1");
                            }
                            map.put(WMBidUtil.WINNER_CHANNEL, strategy.aN() + "");
                            if (f(aVar) != null) {
                                strB = f(aVar).getS2sResultUrl(false, strB, map);
                            }
                            if (TextUtils.isEmpty(strB)) {
                                com.windmill.sdk.strategy.u.a(strB, "lose", aVar, adRequest);
                                aVar.af().b("");
                            }
                        }
                    } else if (aVar.af() != null) {
                        if (aVar.D()) {
                            String strB2 = aVar.af().b();
                            if (!TextUtils.isEmpty(strB2)) {
                                if (strategy != null && com.windmill.sdk.utils.l.c(strategy.aN())) {
                                    strB2 = strB2.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(strategy.V()));
                                } else {
                                    if (strategy != null) {
                                        try {
                                            random = (MUtil.getRandom() * ((int) Double.parseDouble(strategy.V()))) / 100;
                                        } catch (Exception unused2) {
                                        }
                                    } else {
                                        random = 0;
                                    }
                                    if (aVar.ah() > 0 && strategy == null) {
                                        random = aVar.ah();
                                    }
                                    strB2 = strB2.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(random + ""));
                                }
                            }
                            HashMap<String, String> map2 = new HashMap<>();
                            if (strategy != null) {
                                map2.put(WMBidUtil.WINNER_CHANNEL, strategy.aN() + "");
                                map2.put(WMBidUtil.ECPM, strategy.V());
                            } else {
                                map2.put(WMBidUtil.WINNER_CHANNEL, "0");
                                map2.put(WMBidUtil.ECPM, aVar.V());
                                if (aVar.ah() > 0) {
                                    map2.put(WMBidUtil.WINNER_ECPM, aVar.ah() + "");
                                }
                            }
                            if (f(aVar) != null) {
                                strB2 = f(aVar).getS2sResultUrl(false, strB2, map2);
                            }
                            com.windmill.sdk.strategy.u.a(strB2, "lose", aVar, adRequest);
                            aVar.af().b("");
                        } else {
                            Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(strategy, null, aVar);
                            String strV = aVar.V();
                            try {
                                if (aVar.ah() > 0 && !TextUtils.isEmpty(strV) && aVar.ah() > ((int) Double.parseDouble(strV))) {
                                    strV = aVar.ah() + "";
                                }
                                lossOriginalBidInfo.put(WMBidUtil.ECPM, strV);
                                if (strategy == null) {
                                    lossOriginalBidInfo.put(WMBidUtil.WIN_ECPM, strV);
                                }
                                f(aVar).notifyAdapterBiddingResult(false, strV, lossOriginalBidInfo);
                            } catch (Exception unused3) {
                            }
                        }
                    }
                }
            }
        }
        List<com.windmill.sdk.strategy.a> list = this.f86736p;
        if (list != null && !list.isEmpty()) {
            for (int i12 = 0; i12 < this.f86736p.size(); i12++) {
                com.windmill.sdk.strategy.a aVar2 = this.f86736p.get(i12);
                if (!aVar2.f87093c) {
                    aVar2.f87093c = true;
                    WMAdBaseAdapter wMAdBaseAdapterF = f(aVar2);
                    if (wMAdBaseAdapterF != null) {
                        Map<String, Object> lossOriginalBidInfo2 = WMBidUtil.getLossOriginalBidInfo(strategy, null, aVar2);
                        lossOriginalBidInfo2.put("placementId", aVar2.aW());
                        lossOriginalBidInfo2.put("loadId", adRequest.getLoadId());
                        wMAdBaseAdapterF.gdtNoadNotify(aVar2.f87106q, (HashMap) lossOriginalBidInfo2);
                    }
                }
            }
        }
        for (int i13 = 0; i13 < this.A.size(); i13++) {
            this.f86724d.remove(this.A.get(i13));
        }
        for (int i14 = 0; i14 < this.f86736p.size(); i14++) {
            this.f86724d.remove(this.f86736p.get(i14));
        }
        this.A.clear();
        this.f86736p.clear();
    }

    public void a(WMAdBaseAdapter adapter, final com.windmill.sdk.strategy.a strategy, final String loadId, WindMillAdRequest adRequest) {
        com.windmill.sdk.strategy.a aVar;
        WMAdBaseAdapter wMAdBaseAdapterF;
        try {
            this.f86730j = true;
            com.windmill.sdk.utils.m.a(PointCategory.CALLBACK_READY, adRequest, strategy, this.f86727g, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.3
                @Override // com.windmill.sdk.utils.m.a
                public void onAddExtra(Object pointEntityBase) {
                    if (pointEntityBase instanceof PointEntityWind) {
                        PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                        pointEntityWind.setLoad_id(loadId);
                        pointEntityWind.setCurrency_coefficient(String.valueOf(strategy.m()));
                        Float fL = strategy.l();
                        if (fL != null) {
                            pointEntityWind.setExchange_rate(String.valueOf(fL));
                        }
                        com.windmill.sdk.strategy.q qVar = l.this.f86722b;
                        if (qVar != null) {
                            pointEntityWind.setLoad_model(String.valueOf(qVar.f87245g));
                            pointEntityWind.setConcurrent_count(String.valueOf(l.this.f86722b.f87239a));
                        }
                    }
                }
            });
            com.windmill.sdk.strategy.q qVar = this.f86722b;
            if (qVar == null || qVar.f87255q) {
                this.f86739s = true;
                this.f86740t = strategy;
                if (strategy.F()) {
                    if (strategy.aN() != 16) {
                        b(strategy, adapter);
                    }
                    for (int i10 = 0; i10 < this.f86724d.size(); i10++) {
                        com.windmill.sdk.strategy.a aVar2 = this.f86724d.get(i10);
                        if (!aVar2.f87111v && com.windmill.sdk.utils.l.c(aVar2.aN())) {
                            a(strategy, strategy, aVar2);
                            if (f(aVar2) != null) {
                                aVar2.f87111v = true;
                            }
                        }
                    }
                    aVar = strategy;
                } else {
                    aVar = null;
                    if (strategy.D()) {
                        c(adRequest, strategy);
                        List<com.windmill.sdk.strategy.a> list = this.f86724d;
                        if (list != null && list.size() > 1) {
                            for (int i11 = 0; i11 < this.f86724d.size(); i11++) {
                                a(strategy, (com.windmill.sdk.strategy.a) null, this.f86724d.get(i11));
                            }
                        }
                    } else {
                        List<com.windmill.sdk.strategy.a> list2 = this.f86724d;
                        if (list2 != null && !list2.isEmpty()) {
                            for (int i12 = 0; i12 < this.f86724d.size(); i12++) {
                                com.windmill.sdk.strategy.a aVar3 = this.f86724d.get(i12);
                                if (aVar3.F()) {
                                    WMAdBaseAdapter wMAdBaseAdapterF2 = f(aVar3);
                                    if (wMAdBaseAdapterF2 != null) {
                                        if (!"0".equals(aVar3.V())) {
                                            Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(strategy, aVar3, aVar3);
                                            WMLogUtil.i("-------NotifyAdapterResult: posId " + aVar3.aW() + " " + aVar3.F() + " " + aVar3.V());
                                            a(aVar3, lossOriginalBidInfo, strategy);
                                            wMAdBaseAdapterF2.notifyAdapterBiddingResult(false, strategy.V(), lossOriginalBidInfo);
                                        } else if (com.windmill.sdk.utils.l.c(aVar3.aN())) {
                                            Map<String, Object> lossOriginalBidInfo2 = WMBidUtil.getLossOriginalBidInfo(strategy, aVar3, aVar3);
                                            lossOriginalBidInfo2.put("placementId", aVar3.aW());
                                            lossOriginalBidInfo2.put("winPrice", strategy.V());
                                            lossOriginalBidInfo2.put(loadId, strategy.aJ());
                                            lossOriginalBidInfo2.putAll(aVar3.aR());
                                            aVar3.f87111v = true;
                                            wMAdBaseAdapterF2.gdtNoadNotify(aVar3.f87106q, (HashMap) lossOriginalBidInfo2);
                                        }
                                    }
                                    aVar = aVar3;
                                } else {
                                    a(strategy, aVar, aVar3);
                                }
                            }
                        }
                    }
                }
                a(strategy, aVar);
                b(adRequest, this.f86724d, strategy, loadId);
                a(adRequest, strategy, loadId);
                com.windmill.sdk.strategy.q qVar2 = this.f86722b;
                if (qVar2 == null || qVar2.a() == null) {
                    return;
                }
                List<com.windmill.sdk.strategy.a> listA = this.f86722b.a();
                WMLogUtil.i("-------NotifyAdapterResult: size " + listA.size() + " " + strategy.aW());
                if (listA.size() > 0) {
                    for (int i13 = 0; i13 < listA.size(); i13++) {
                        com.windmill.sdk.strategy.a aVar4 = listA.get(i13);
                        WMLogUtil.i("-------NotifyAdapterResult:  " + aVar4.aW() + " " + aVar4.F());
                        if (aVar4.F() && (wMAdBaseAdapterF = f(aVar4)) != null) {
                            Map<String, Object> lossOriginalBidInfo3 = WMBidUtil.getLossOriginalBidInfo(strategy, aVar, aVar4);
                            a(aVar4, lossOriginalBidInfo3, strategy);
                            wMAdBaseAdapterF.notifyAdapterBiddingResult(false, strategy.V(), lossOriginalBidInfo3);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.a bid_strategy_height) {
        com.windmill.sdk.strategy.s sVar = this.f86727g;
        if (sVar == null || sVar.g() == null) {
            return;
        }
        List<com.windmill.sdk.strategy.a> listG = this.f86727g.g();
        listG.remove(strategy);
        for (int i10 = 0; i10 < listG.size(); i10++) {
            com.windmill.sdk.strategy.a aVar = listG.get(i10);
            if (!aVar.f87111v && com.windmill.sdk.utils.l.c(aVar.aN())) {
                a(strategy, bid_strategy_height, aVar);
                if (f(aVar) != null) {
                    aVar.f87111v = true;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001f  */
    private Map<String, Object> a(com.windmill.sdk.strategy.a strategy) {
        com.windmill.sdk.strategy.a aVar;
        int iIndexOf;
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        com.windmill.sdk.strategy.a aVar2 = null;
        if (qVar == null || qVar.a() == null) {
            aVar = null;
        } else {
            List<com.windmill.sdk.strategy.a> listA = this.f86722b.a();
            if (listA.size() > 0) {
                aVar = listA.get(0);
            } else {
                aVar = null;
            }
        }
        List<com.windmill.sdk.strategy.a> list = this.f86724d;
        if (list != null && list.contains(strategy) && (iIndexOf = this.f86724d.indexOf(strategy) + 1) < this.f86724d.size()) {
            aVar2 = this.f86724d.get(iIndexOf);
        }
        return WMBidUtil.getWinOriginalBidInfo(strategy, aVar, aVar2);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    public void a(com.windmill.sdk.strategy.a strategy, com.windmill.sdk.strategy.a strategy_height, com.windmill.sdk.strategy.a lossStrategy) {
        com.windmill.sdk.strategy.a aVar;
        int iIndexOf;
        try {
            if (strategy != null && lossStrategy != null) {
                if (lossStrategy.aN() != 16) {
                    return;
                }
                com.windmill.sdk.strategy.a aVar2 = null;
                if (strategy.aW().equals(lossStrategy.aW())) {
                    if (f(lossStrategy) != null) {
                        if (this.f86724d.size() > 1) {
                            lossStrategy = this.f86724d.get(1);
                        }
                        com.windmill.sdk.strategy.q qVar = this.f86722b;
                        if (qVar == null || qVar.a() == null) {
                            aVar = null;
                        } else {
                            List<com.windmill.sdk.strategy.a> listA = this.f86722b.a();
                            if (listA.size() > 0) {
                                aVar = listA.get(0);
                            } else {
                                aVar = null;
                            }
                        }
                        List<com.windmill.sdk.strategy.a> list = this.f86724d;
                        if (list != null && list.contains(strategy) && (iIndexOf = this.f86724d.indexOf(strategy) + 1) < this.f86724d.size()) {
                            aVar2 = this.f86724d.get(iIndexOf);
                        }
                        Map<String, Object> winOriginalBidInfo = WMBidUtil.getWinOriginalBidInfo(strategy, aVar, aVar2);
                        if (lossStrategy != null && !lossStrategy.F()) {
                            if (((int) Double.parseDouble(lossStrategy.V())) < ((int) Double.parseDouble(strategy.V()))) {
                                winOriginalBidInfo.put("waterfall_ecpm", lossStrategy.V());
                                winOriginalBidInfo.put("waterfall_channel", Integer.valueOf(lossStrategy.aN()));
                            } else {
                                winOriginalBidInfo.put("waterfall_ecpm", 0);
                                winOriginalBidInfo.put("waterfall_channel", 0);
                            }
                        }
                        if (strategy.f87111v) {
                            return;
                        }
                        winOriginalBidInfo.putAll(strategy.aR());
                        f(strategy).notifyAdapterBiddingResult(true, strategy.V(), winOriginalBidInfo);
                        return;
                    }
                    return;
                }
                if (!strategy.aJ().equals(lossStrategy.aJ())) {
                    if (lossStrategy.D() && f(lossStrategy) != null && !f(lossStrategy).isReady()) {
                        Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(strategy, strategy_height, lossStrategy);
                        lossOriginalBidInfo.put("placementId", lossStrategy.aW());
                        lossOriginalBidInfo.put("winPrice", strategy.V());
                        lossOriginalBidInfo.put("loadId", strategy.aJ());
                        lossOriginalBidInfo.putAll(lossStrategy.aR());
                        lossStrategy.f87111v = true;
                        f(lossStrategy).gdtNoadNotify(lossStrategy.f87106q, (HashMap) lossOriginalBidInfo);
                        return;
                    }
                    Map<String, Object> lossOriginalBidInfo2 = WMBidUtil.getLossOriginalBidInfo(strategy, strategy_height, lossStrategy);
                    lossOriginalBidInfo2.put("placementId", lossStrategy.aW());
                    lossOriginalBidInfo2.put("winPrice", strategy.V());
                    lossOriginalBidInfo2.put("loadId", strategy.aJ());
                    lossOriginalBidInfo2.putAll(lossStrategy.aR());
                    if (f(lossStrategy) != null) {
                        f(lossStrategy).gdtNoadNotify(lossStrategy.f87106q, (HashMap) lossOriginalBidInfo2);
                        lossStrategy.f87106q = "";
                        lossStrategy.f87111v = true;
                        return;
                    }
                    return;
                }
                if (strategy.aW().equals(lossStrategy.aW())) {
                    if (this.f86724d.size() > 1) {
                        lossStrategy = this.f86724d.get(1);
                    }
                    Map<String, Object> winOriginalBidInfo2 = WMBidUtil.getWinOriginalBidInfo(strategy, strategy_height, lossStrategy);
                    if (lossStrategy != null && !lossStrategy.F()) {
                        if (((int) Double.parseDouble(lossStrategy.V())) < ((int) Double.parseDouble(strategy.V()))) {
                            winOriginalBidInfo2.put("waterfall_ecpm", lossStrategy.V());
                            winOriginalBidInfo2.put("waterfall_channel", Integer.valueOf(lossStrategy.aN()));
                        } else {
                            winOriginalBidInfo2.put("waterfall_ecpm", 0);
                            winOriginalBidInfo2.put("waterfall_channel", 0);
                        }
                    }
                    if (f(lossStrategy) != null) {
                        f(lossStrategy).notifyAdapterBiddingResult(true, strategy.V(), winOriginalBidInfo2);
                        return;
                    }
                    return;
                }
                if (!com.windmill.sdk.utils.l.c(lossStrategy.aN()) || lossStrategy.f87111v || lossStrategy.F()) {
                    return;
                }
                Map<String, Object> lossOriginalBidInfo3 = WMBidUtil.getLossOriginalBidInfo(strategy, strategy_height, lossStrategy);
                if (f(lossStrategy) != null && f(lossStrategy).isReady()) {
                    lossOriginalBidInfo3.putAll(lossStrategy.aa());
                    f(lossStrategy).notifyAdapterBiddingResult(false, strategy.V(), lossOriginalBidInfo3);
                    return;
                }
                if (this.f86739s) {
                    if (this.f86724d.size() > 0) {
                        aVar2 = this.f86724d.get(0);
                    }
                } else if (this.f86724d.size() > 1) {
                    aVar2 = this.f86724d.get(1);
                }
                Map<String, Object> lossOriginalBidInfo4 = WMBidUtil.getLossOriginalBidInfo(aVar2, strategy_height, lossStrategy);
                lossOriginalBidInfo4.put("placementId", lossStrategy.aW());
                lossOriginalBidInfo4.putAll(lossStrategy.aR());
                lossOriginalBidInfo4.put("loadId", lossStrategy.aJ());
                f(lossStrategy).gdtNoadNotify(lossStrategy.f87106q, (HashMap) lossOriginalBidInfo4);
                return;
            }
            if (lossStrategy == null || strategy == null || !com.windmill.sdk.utils.l.c(lossStrategy.aN()) || lossStrategy.D()) {
                return;
            }
            WMAdBaseAdapter wMAdBaseAdapterF = f(lossStrategy);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-------gdtNotifyAdapterResult 111 ");
            sb2.append(lossStrategy.aW());
            sb2.append(wMAdBaseAdapterF != null);
            WMLogUtil.i(sb2.toString());
            if (wMAdBaseAdapterF != null) {
                if (wMAdBaseAdapterF.isSucWithoutLoad()) {
                    WMLogUtil.i("-------gdtNotifyAdapterResult Adapter 复用，不回调 " + lossStrategy.aW());
                    return;
                }
                if (strategy.aW().equals(lossStrategy.aW()) && !strategy.F()) {
                    WMLogUtil.i("-------gdtNotifyAdapterResult " + strategy.D() + " " + strategy.F() + " " + strategy.aW() + " " + lossStrategy.aW());
                    wMAdBaseAdapterF.notifyAdapterBiddingResult(true, strategy.V(), a(strategy));
                    return;
                }
                if (!strategy.aW().equals(lossStrategy.aW())) {
                    WMLogUtil.i("-------gdtNotifyAdapterResult ----notifyAdapterBiddingResult 333 " + lossStrategy.aW());
                    wMAdBaseAdapterF.notifyAdapterBiddingResult(false, "0", WMBidUtil.getLossOriginalBidInfo(strategy, strategy_height, lossStrategy));
                    return;
                }
                if (f(lossStrategy) == null || f(lossStrategy).isReady()) {
                    return;
                }
                Map<String, Object> lossOriginalBidInfo5 = WMBidUtil.getLossOriginalBidInfo(strategy, strategy_height, lossStrategy);
                lossOriginalBidInfo5.put("placementId", lossStrategy.aW());
                lossOriginalBidInfo5.put("loadId", lossStrategy.aJ());
                lossOriginalBidInfo5.putAll(lossStrategy.aR());
                wMAdBaseAdapterF.gdtNoadNotify(lossStrategy.f87106q, (HashMap) lossOriginalBidInfo5);
            }
        } catch (Exception unused) {
        }
    }

    public void a(final com.windmill.sdk.strategy.a strategy, final Waterfall waterfall, final String loadId, WindMillAdRequest adRequest, final WindMillError error, final String timerStage) {
        com.windmill.sdk.utils.m.a(PointCategory.CALLBACK_ERROR, "ready", adRequest, strategy, this.f86727g, error.getErrorCode(), "", error.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.common.l.5
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                com.windmill.sdk.strategy.s sVar;
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    pointEntityWind.setLoad_id(loadId);
                    if (error == WindMillError.ERROR_LOAD_AD_TIME_OUT && !TextUtils.isEmpty(timerStage)) {
                        pointEntityWind.getOptions().put("timer_stage", timerStage);
                    }
                    if (TextUtils.isEmpty(pointEntityWind.getSdk_operation_bid_type()) && (sVar = l.this.f86727g) != null) {
                        pointEntityWind.setSdk_operation_bid_type(String.valueOf(sVar.f()));
                    }
                    com.windmill.sdk.strategy.a aVar = strategy;
                    if (aVar != null) {
                        pointEntityWind.setGroup_id(String.valueOf(aVar.aY()));
                        pointEntityWind.setRule_id(strategy.ag());
                        pointEntityWind.setAb_test(String.valueOf(strategy.aZ()));
                        pointEntityWind.setTraffic_weight(String.valueOf(strategy.ak()));
                        pointEntityWind.setExperiment_id(String.valueOf(strategy.bb()));
                        pointEntityWind.setSub_experiment_id(String.valueOf(strategy.bc()));
                        if (strategy.aK() == 5) {
                            pointEntityWind.setTemplate_type(String.valueOf(strategy.I()));
                            return;
                        }
                        return;
                    }
                    Waterfall waterfall2 = waterfall;
                    if (waterfall2 != null) {
                        pointEntityWind.setGroup_id(waterfall2.strategy_id);
                        pointEntityWind.setRule_id(waterfall.rule_id);
                        StrategyWaterFall strategyWaterFall = waterfall.strategy_waterfall;
                        if (strategyWaterFall != null) {
                            pointEntityWind.setAb_test(String.valueOf(strategyWaterFall.ab_flag));
                            pointEntityWind.setExperiment_id(String.valueOf(waterfall.strategy_waterfall.experiment_id));
                            pointEntityWind.setSub_experiment_id(String.valueOf(waterfall.strategy_waterfall.sub_experiment_id));
                        }
                    }
                }
            }
        });
        com.windmill.sdk.strategy.q qVar = this.f86722b;
        if (qVar == null || qVar.f87255q) {
            WMLogUtil.i("--------logCallBackError:");
            a(adRequest, strategy, loadId);
            c();
        }
    }

    public void a(String event, com.windmill.sdk.strategy.a strategy, WindMillAdRequest adRequest) {
        List<String> list;
        try {
            com.windmill.sdk.strategy.q qVar = this.f86722b;
            if (qVar == null || (list = qVar.f87250l) == null || strategy == null || list.size() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < this.f86722b.f87250l.size(); i10++) {
                AdTracker adTracker = new AdTracker(AdTracker.MessageType.TOBID_TRACKING_URL, this.f86722b.f87250l.get(i10), event, adRequest.getLoadId());
                adTracker.setRetryNum(1);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("aggr_appid", strategy.aV());
                jSONObject.put("aggr_channel_id", strategy.aN());
                jSONObject.put("aggr_placement_id", strategy.aW());
                jSONObject.put("ad_type", String.valueOf(adRequest.getAdType()));
                jSONObject.put(PointParamKey.PLACEMENT_ID, adRequest.getPlacementId());
                adTracker.setExtInfo(jSONObject.toString());
                BaseMacroCommon baseMacroCommon = new BaseMacroCommon();
                baseMacroCommon.addMarcoKey("_EVENT_", event);
                baseMacroCommon.addMarcoKey("_THIRDAPPID_", strategy.aV());
                baseMacroCommon.addMarcoKey("_THIRDCHANNEL_", String.valueOf(strategy.aN()));
                baseMacroCommon.addMarcoKey("_AGGRPLACEMENTID_", strategy.aW());
                baseMacroCommon.addMarcoKey("_HB_", String.valueOf(strategy.Y()));
                baseMacroCommon.addMarcoKey("_ECPM_", strategy.V());
                TrackManager.sendTracking(adTracker, baseMacroCommon, true, true, new TrackManager.Listener() { // from class: com.windmill.sdk.common.l.6
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker tracker, VolleyError error) {
                        WMLogUtil.d(WMLogUtil.TAG, "------------trackingEvent------------onErrorResponse------------");
                        l.a(tracker, 0, error != null ? error.networkResponse : null);
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker tracker, NetworkResponse response) {
                        WMLogUtil.d(WMLogUtil.TAG, "----trackingEvent----onSuccess------");
                        l.a(tracker, 1, response);
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b A[Catch: all -> 0x0092, TryCatch #1 {all -> 0x0092, blocks: (B:4:0x0004, B:6:0x000e, B:7:0x0019, B:8:0x001f, B:9:0x0025, B:10:0x002b, B:25:0x0045, B:27:0x006b, B:28:0x0074, B:24:0x0042), top: B:35:0x0004 }] */
    public static void a(AdTracker adTracker, int type, NetworkResponse response) {
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        PointEntityWMTrack pointEntityWMTrackWindTracking;
        String strOptString5 = "";
        if (adTracker != null) {
            try {
                String extInfo = adTracker.getExtInfo();
                if (TextUtils.isEmpty(extInfo)) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(extInfo);
                    strOptString = jSONObject.optString("aggr_appid");
                    try {
                        strOptString2 = jSONObject.optString("aggr_channel_id");
                        try {
                            strOptString3 = jSONObject.optString("aggr_placement_id");
                            try {
                                strOptString4 = jSONObject.optString("ad_type");
                                try {
                                    strOptString5 = jSONObject.optString(PointParamKey.PLACEMENT_ID);
                                } catch (JSONException e10) {
                                    e = e10;
                                    e.printStackTrace();
                                }
                            } catch (JSONException e11) {
                                e = e11;
                                strOptString4 = "";
                            }
                        } catch (JSONException e12) {
                            e = e12;
                            strOptString3 = "";
                            strOptString4 = strOptString3;
                            e.printStackTrace();
                            pointEntityWMTrackWindTracking = PointEntityWMTrack.WindTracking(adTracker.getEvent(), PointType.WIND_MILL_TRACK, strOptString5, strOptString4);
                            pointEntityWMTrackWindTracking.setLoad_id(adTracker.getRequest_id());
                            pointEntityWMTrackWindTracking.setIs_success(String.valueOf(type));
                            pointEntityWMTrackWindTracking.setAggr_channel_id(strOptString2);
                            pointEntityWMTrackWindTracking.setAggr_appid(strOptString);
                            pointEntityWMTrackWindTracking.setAggr_placement_id(strOptString3);
                            pointEntityWMTrackWindTracking.setPlacement_id(strOptString5);
                            if (response != null) {
                                pointEntityWMTrackWindTracking.setHttp_code(String.valueOf(response.statusCode));
                            }
                            HashMap map = new HashMap();
                            map.put("tracking_url", adTracker.getUrl());
                            map.put(NotificationCompat.CATEGORY_EVENT, adTracker.getEvent());
                            pointEntityWMTrackWindTracking.setOptions(map);
                            pointEntityWMTrackWindTracking.commit();
                        }
                    } catch (JSONException e13) {
                        e = e13;
                        strOptString2 = "";
                        strOptString3 = strOptString2;
                        strOptString4 = strOptString3;
                        e.printStackTrace();
                        pointEntityWMTrackWindTracking = PointEntityWMTrack.WindTracking(adTracker.getEvent(), PointType.WIND_MILL_TRACK, strOptString5, strOptString4);
                        pointEntityWMTrackWindTracking.setLoad_id(adTracker.getRequest_id());
                        pointEntityWMTrackWindTracking.setIs_success(String.valueOf(type));
                        pointEntityWMTrackWindTracking.setAggr_channel_id(strOptString2);
                        pointEntityWMTrackWindTracking.setAggr_appid(strOptString);
                        pointEntityWMTrackWindTracking.setAggr_placement_id(strOptString3);
                        pointEntityWMTrackWindTracking.setPlacement_id(strOptString5);
                        if (response != null) {
                            pointEntityWMTrackWindTracking.setHttp_code(String.valueOf(response.statusCode));
                        }
                        HashMap map2 = new HashMap();
                        map2.put("tracking_url", adTracker.getUrl());
                        map2.put(NotificationCompat.CATEGORY_EVENT, adTracker.getEvent());
                        pointEntityWMTrackWindTracking.setOptions(map2);
                        pointEntityWMTrackWindTracking.commit();
                    }
                } catch (JSONException e14) {
                    e = e14;
                    strOptString = "";
                    strOptString2 = strOptString;
                }
                pointEntityWMTrackWindTracking = PointEntityWMTrack.WindTracking(adTracker.getEvent(), PointType.WIND_MILL_TRACK, strOptString5, strOptString4);
                pointEntityWMTrackWindTracking.setLoad_id(adTracker.getRequest_id());
                pointEntityWMTrackWindTracking.setIs_success(String.valueOf(type));
                pointEntityWMTrackWindTracking.setAggr_channel_id(strOptString2);
                pointEntityWMTrackWindTracking.setAggr_appid(strOptString);
                pointEntityWMTrackWindTracking.setAggr_placement_id(strOptString3);
                pointEntityWMTrackWindTracking.setPlacement_id(strOptString5);
                if (response != null) {
                    pointEntityWMTrackWindTracking.setHttp_code(String.valueOf(response.statusCode));
                }
                HashMap map3 = new HashMap();
                map3.put("tracking_url", adTracker.getUrl());
                map3.put(NotificationCompat.CATEGORY_EVENT, adTracker.getEvent());
                pointEntityWMTrackWindTracking.setOptions(map3);
                pointEntityWMTrackWindTracking.commit();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public String a(WMAdBaseAdapter adapter) {
        Object obj;
        if (adapter == null) {
            return "";
        }
        try {
            Map<String, Object> rewardExtraOption = adapter.getRewardExtraOption();
            return (rewardExtraOption == null || (obj = rewardExtraOption.get(WindAds.TRANS_ID)) == null) ? "" : String.valueOf(obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public void a(WMAdBaseAdapter adapter, PointEntityWind entityWind) {
        Object obj;
        if (adapter == null || entityWind == null) {
            return;
        }
        try {
            Map<String, Object> extraOption = adapter.getExtraOption();
            if (extraOption != null && (obj = extraOption.get("request_id")) != null) {
                Map<String, String> options = entityWind.getOptions();
                if (options != null) {
                    options.put("platform_request_id", String.valueOf(obj));
                } else {
                    HashMap map = new HashMap();
                    map.put("platform_request_id", (String) obj);
                    entityWind.setOptions(map);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean a(com.windmill.sdk.strategy.s strategyManager, com.windmill.sdk.strategy.a strategy) {
        List<com.windmill.sdk.strategy.a> listI;
        boolean z10 = true;
        try {
            ArrayList arrayList = new ArrayList();
            if (strategyManager != null && (listI = strategyManager.i()) != null && listI.contains(strategy)) {
                for (int i10 = 0; i10 < listI.size(); i10++) {
                    com.windmill.sdk.strategy.a aVar = listI.get(i10);
                    if (aVar.G() && Double.parseDouble(aVar.X()) > Double.parseDouble(strategy.X())) {
                        arrayList.add(aVar);
                    }
                }
            }
            if (arrayList.size() > 0) {
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    com.windmill.sdk.strategy.a aVar2 = (com.windmill.sdk.strategy.a) arrayList.get(i11);
                    if (!aVar2.w()) {
                        if (!aVar2.v()) {
                            z10 = false;
                            break;
                        }
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        WMLogUtil.i("-----isWhenSuccessCanReadyToOut----" + z10);
        return z10;
    }

    protected void a(Runnable runnable) {
        if (WindMillAd.sharedAds().getHandler() != null) {
            WindMillAd.sharedAds().getHandler().post(runnable);
            return;
        }
        if (this.E == null) {
            this.E = new Handler(Looper.getMainLooper());
        }
        this.E.post(runnable);
    }

    protected void a(com.windmill.sdk.strategy.a adStrategy, WMAdBaseAdapter adAdapter) {
        try {
            if (this.f86739s && com.windmill.sdk.utils.l.c(adStrategy.aN()) && !adStrategy.f87111v) {
                adStrategy.f87111v = true;
                com.windmill.sdk.strategy.a aVar = this.f86740t;
                Map<String, Object> lossOriginalBidInfo = WMBidUtil.getLossOriginalBidInfo(aVar, aVar, adStrategy);
                lossOriginalBidInfo.putAll(adStrategy.aR());
                adAdapter.notifyAdapterBiddingResult(false, this.f86740t.V(), lossOriginalBidInfo);
            }
        } catch (Exception unused) {
        }
    }

    protected void a(Handler handler, int timeout1) {
        if (handler != null && timeout1 > 0 && !"1".equals(this.f86729i)) {
            if (handler.hasMessages(1000)) {
                WMLogUtil.e("----loadAd---动态总超时---第一阶段超时消息已存在，跳过重复设置");
                return;
            }
            this.f86729i = "1";
            this.f86728h = System.currentTimeMillis();
            handler.removeMessages(1000);
            handler.sendEmptyMessageDelayed(1000, timeout1);
            WMLogUtil.d("----loadAd---动态总超时---设置第一阶段超时---timeout1: " + timeout1);
            return;
        }
        WMLogUtil.e("----loadAd---动态总超时-设置第一阶段超时失败---timeout1: " + timeout1);
    }

    protected void a(Handler handler) {
        WMLogUtil.d("----loadAd---动态总超时---重置超时状态（广告加载流程已完成）");
        this.f86729i = WMConstants.TIMER_STAGE_NONE;
        this.f86728h = 0L;
        b(handler);
    }
}
