package com.windmill.gromore;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationBaseManager;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.strategy.WMSdkConfig;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f86220b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Set<String> f86221e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f86224d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f86225f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f86226g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f86227h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f86228i = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, List<q.a>> f86222a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f86223c = b.a();

    static {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        f86221e = copyOnWriteArraySet;
        copyOnWriteArraySet.add("com.bytedance");
        copyOnWriteArraySet.add("com.byazt");
    }

    private a() {
        d();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.windmill.gromore.a.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final AtomicInteger f86230b = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "GmPricePathThread-" + this.f86230b.getAndIncrement());
                thread.setDaemon(true);
                return thread;
            }
        });
        this.f86224d = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        Future<?> futureSubmit = threadPoolExecutor.submit(new Runnable() { // from class: com.windmill.gromore.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f86365b.c();
            }
        });
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            futureSubmit.get(500L, TimeUnit.MILLISECONDS);
            WMLogUtil.d("GmPricePathsManager initPricePathsFromSp cost practical time : " + (System.currentTimeMillis() - jCurrentTimeMillis));
        } catch (Exception unused) {
            WMLogUtil.e("GmPricePathsManager initPricePathsFromSp timeout, continuing with partial data");
            futureSubmit.cancel(true);
        }
    }

    private q c(Object obj, String str) {
        String str2;
        if (!this.f86227h) {
            return null;
        }
        try {
            p pVar = new p();
            WMLogUtil.d("GroUtils4 =============================================Start get price=============================================");
            long jCurrentTimeMillis = System.currentTimeMillis();
            final q qVar = new q();
            if (obj == null || TextUtils.isEmpty(str)) {
                str2 = "GroUtils4 input parameters are invalid: instance=" + obj + ", targetSlotId=" + str;
            } else {
                p.a();
                qVar.f86348c = str;
                qVar.f86351f = obj.getClass().getName();
                qVar.f86349d = GroAdapterProxy.getPluginVersion();
                WMLogUtil.d("GroUtils4 start analyzing the object: " + obj.getClass().getName() + ", TargetPlacementID: " + str);
                pVar.a(obj, str, qVar, new ArrayList(), new HashSet(), 0);
                str2 = "GroUtils4 The analysis is complete, found " + qVar.f86347b.size() + " price paths that meet the conditions";
            }
            WMLogUtil.d(str2);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            qVar.f86352g = jCurrentTimeMillis2;
            WMLogUtil.d("GroUtils4 result\n          target placement id: " + str + "\n          gm version：" + qVar.f86350e + "\n          gm plugin version：" + qVar.f86349d + "\n          number of path strips：" + qVar.f86347b.size() + "\n          cost: " + jCurrentTimeMillis2 + "ms  \n          max price: " + qVar.f86346a + "\n          all links: " + qVar);
            List<q.a> list = qVar.f86347b;
            if (list != null && !list.isEmpty() && qVar.f86346a >= 0.0d) {
                final a aVarA = a();
                aVarA.f86224d.submit(new Runnable() { // from class: com.windmill.gromore.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f86363b.b(qVar);
                    }
                });
            }
            return qVar;
        } catch (Throwable th) {
            WMLogUtil.e("GmPricePathsManager getBestPriceUseGroUtils4 error: placementId = " + str + ", t = " + th);
            return null;
        }
    }

    private static void d() {
        try {
            List<String> gMPricePackages = WMSdkConfig.sharedInstance().getGMPricePackages();
            if (gMPricePackages == null || gMPricePackages.isEmpty()) {
                return;
            }
            WMLogUtil.d("GmPricePathsManager ssp configured gmPricePackages: ".concat(String.valueOf(gMPricePackages)));
            Set<String> set = f86221e;
            set.clear();
            set.addAll(gMPricePackages);
        } catch (Exception e10) {
            WMLogUtil.e("GmPricePathsManager addPackageNamesFromConfig error: ".concat(String.valueOf(e10)));
            Set<String> set2 = f86221e;
            if (set2.isEmpty()) {
                set2.add("com.bytedance");
                set2.add("com.byazt");
            }
        }
    }

    private static double a(Object obj, q.a aVar) {
        List<q.b> list;
        if (obj != null && aVar != null && (list = aVar.f86356b) != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < aVar.f86356b.size(); i10++) {
                try {
                    q.b bVar = aVar.f86356b.get(i10);
                    if (obj == null) {
                        return -1.0d;
                    }
                    Class<?> superclass = obj.getClass();
                    if (bVar.f86362f > 0) {
                        for (int i11 = 0; i11 < bVar.f86362f && superclass != null && superclass != Object.class; i11++) {
                            superclass = superclass.getSuperclass();
                        }
                        if (superclass == null || superclass == Object.class) {
                            return -1.0d;
                        }
                    }
                    Field fieldA = a(superclass, bVar.f86359c);
                    if (fieldA == null) {
                        return -1.0d;
                    }
                    fieldA.setAccessible(true);
                    Integer num = bVar.f86360d;
                    if (num == null || num.intValue() < 0) {
                        obj = fieldA.get(obj);
                    } else {
                        Object obj2 = fieldA.get(obj);
                        if (!(obj2 instanceof List)) {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (bVar.f86360d.intValue() < objArr.length) {
                                    obj = objArr[bVar.f86360d.intValue()];
                                }
                            }
                            return -1.0d;
                        }
                        List list2 = (List) obj2;
                        if (bVar.f86360d.intValue() >= list2.size()) {
                            return -1.0d;
                        }
                        obj = list2.get(bVar.f86360d.intValue());
                    }
                } catch (Exception e10) {
                    WMLogUtil.e("GmPricePathsManager restore exception: " + e10.getMessage());
                }
            }
            if (obj instanceof Number) {
                return ((Number) obj).doubleValue();
            }
            return -1.0d;
        }
        return -1.0d;
    }

    private q b(Object obj, String str) {
        if (!this.f86228i) {
            return null;
        }
        try {
            o oVar = new o();
            q qVar = new q();
            if (obj != null && !TextUtils.isEmpty(str)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                qVar.f86346a = oVar.a(obj, str, qVar).doubleValue();
                qVar.f86352g = System.currentTimeMillis() - jCurrentTimeMillis;
                qVar.f86348c = str;
                qVar.f86349d = GroAdapterProxy.getPluginVersion();
                qVar.f86351f = obj.getClass().getName();
                WMLogUtil.d("GroUtils3 全部链路: ".concat(String.valueOf(qVar)));
            }
            return qVar;
        } catch (Throwable th) {
            WMLogUtil.e("GmPricePathsManager getBestPriceUseGroUtils3 error: placementId = " + str + ", t = " + th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Map<String, String> mapB = this.f86223c.b();
        if (!mapB.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList();
            int i10 = 0;
            for (Map.Entry<String, String> entry : mapB.entrySet()) {
                if (Thread.currentThread().isInterrupted()) {
                    WMLogUtil.e("GmPricePathsManager initPricePathsFromSp interrupted, exiting");
                    break;
                }
                String key = entry.getKey();
                String value = entry.getValue();
                if (!TextUtils.isEmpty(value)) {
                    List<q.a> listA = a(value);
                    if (!listA.isEmpty()) {
                        if (key.startsWith(TTAdSdk.getAdManager().getSDKVersion() + "_")) {
                            concurrentHashMap.put(key, listA);
                            i10++;
                        } else {
                            WMLogUtil.e("GmPricePathsManager initPricePathsFromSp: key = " + key + " is invalid");
                            arrayList.add(key);
                        }
                    }
                }
            }
            this.f86222a.putAll(concurrentHashMap);
            WMLogUtil.d("GmPricePathsManager initPricePathsFromSp success: loadedCount = " + i10 + ", totalCount = " + mapB.size() + ", cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (!arrayList.isEmpty()) {
                for (String str : arrayList) {
                    if (Thread.currentThread().isInterrupted()) {
                        WMLogUtil.e("GmPricePathsManager initPricePathsFromSp interrupted, exiting");
                        break;
                    }
                    this.f86223c.a(str);
                }
            }
        }
        WMLogUtil.d("GmPricePathsManager initPricePathsFromSp cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public static a a() {
        if (f86220b == null) {
            synchronized (a.class) {
                if (f86220b == null) {
                    f86220b = new a();
                }
            }
        }
        return f86220b;
    }

    public static Set<String> b() {
        d();
        return f86221e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(q qVar) {
        boolean z10;
        try {
            String str = qVar.f86350e + "_" + qVar.f86349d + "_" + qVar.f86351f;
            List<q.a> arrayList = this.f86222a.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            Iterator<q.a> it2 = qVar.f86347b.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                }
                q.a next = it2.next();
                if (next != null && Math.abs(qVar.f86346a - next.f86355a) < 0.001d && next.f86355a >= 0.0d) {
                    q.a aVar = new q.a(next.f86356b);
                    if (!arrayList.contains(aVar)) {
                        arrayList.add(aVar);
                        z10 = true;
                        break;
                    }
                }
            }
            if (!z10) {
                WMLogUtil.d("GmPricePathsManager savePricePath: no new path, not update key = ".concat(String.valueOf(str)));
                return;
            }
            this.f86222a.put(str, arrayList);
            String strA = a(arrayList);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            this.f86223c.a(str, strA);
        } catch (Exception e10) {
            WMLogUtil.e("GmPricePathsManager savePricePath task error: ".concat(String.valueOf(e10)));
        }
    }

    public final q a(Object obj, String str) {
        if (obj == null || str == null) {
            WMLogUtil.e("GmPricePathsManager getBestPrice: adObject or placementId is null");
            return null;
        }
        String sDKVersion = TTAdSdk.getAdManager().getSDKVersion();
        String pluginVersion = GroAdapterProxy.getPluginVersion();
        String name = obj.getClass().getName();
        String str2 = sDKVersion + "_" + pluginVersion + "_" + name;
        q qVar = new q();
        qVar.f86349d = pluginVersion;
        qVar.f86351f = name;
        qVar.f86348c = str;
        qVar.f86346a = -1.0d;
        try {
            if (this.f86225f) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strA = a(obj);
                if (!TextUtils.isEmpty(strA)) {
                    try {
                        double d10 = Double.parseDouble(strA);
                        if (d10 > 0.0d) {
                            qVar.f86352g = System.currentTimeMillis() - jCurrentTimeMillis;
                            qVar.f86346a = d10;
                        }
                    } catch (NumberFormatException unused) {
                        WMLogUtil.e("GmPricePathsManager getBestPrice: ecpmStr is not a number, ecpmStr = ".concat(String.valueOf(strA)));
                    }
                }
            }
            if (qVar.f86346a > 0.0d) {
                qVar.f86353h = "1";
                WMLogUtil.d("GmPricePathsManager getBestPrice from api: highestPrice = " + qVar.f86346a + ",    placementId = " + str + ",    costTime = " + qVar.f86352g);
                return qVar;
            }
            a(obj, str2, qVar);
            if (qVar.f86346a > 0.0d) {
                qVar.f86353h = "2";
                a(qVar);
                WMLogUtil.d("GmPricePathsManager getBestPrice from memory: key = " + str2 + ",    highestPrice = " + qVar.f86346a + ",    placementId = " + str + ",    costTime = " + qVar.f86352g + ",    priceSourcePkg = " + qVar.f86354i + ",    result = " + qVar);
                return qVar;
            }
            q qVarC = c(obj, str);
            if (qVarC != null && qVarC.f86346a > 0.0d) {
                qVarC.f86353h = "3";
                a(qVarC);
                WMLogUtil.d("GmPricePathsManager getBestPrice from groUtils4: key = " + str2 + ",    highestPrice = " + qVarC.f86346a + ",    placementId = " + str + ",    costTime = " + qVarC.f86352g + ",    priceSourcePkg = " + qVarC.f86354i + ",    result = " + qVarC);
                return qVarC;
            }
            q qVarB = b(obj, str);
            if (qVarB != null && qVarB.f86346a > 0.0d) {
                qVarB.f86353h = "4";
                a(qVarB);
                WMLogUtil.d("GmPricePathsManager getBestPrice from groUtils3: key = " + str2 + ",    highestPrice = " + qVarB.f86346a + ",    placementId = " + str + ",    costTime = " + qVarB.f86352g + ",    priceSourcePkg = " + qVarB.f86354i + ",    result = " + qVarB);
                return qVarB;
            }
            return qVar;
        } catch (Exception e10) {
            WMLogUtil.e("GmPricePathsManager getBestPrice exception: ".concat(String.valueOf(e10)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0048 A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:6:0x000a, B:8:0x000e, B:9:0x0014, B:24:0x0048, B:25:0x004d, B:10:0x0019, B:12:0x001d, B:13:0x0024, B:15:0x0028, B:16:0x002f, B:18:0x0033, B:19:0x003a, B:21:0x003e), top: B:30:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:25:0x004d A[Catch: all -> 0x0053, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:6:0x000a, B:8:0x000e, B:9:0x0014, B:24:0x0048, B:25:0x004d, B:10:0x0019, B:12:0x001d, B:13:0x0024, B:15:0x0028, B:16:0x002f, B:18:0x0033, B:19:0x003a, B:21:0x003e), top: B:30:0x000a }] */
    private static String a(Object obj) {
        MediationAdEcpmInfo bestEcpm;
        MediationBaseManager mediationManager;
        if (obj == null) {
            WMLogUtil.e("GmPricePathsManager getBestEcpm Failed to get the eCPM value of the ad placement, and the obj is empty");
            return WMConstants.TIMER_STAGE_NONE;
        }
        try {
            if (obj instanceof TTRewardVideoAd) {
                mediationManager = ((TTRewardVideoAd) obj).getMediationManager();
            } else if (obj instanceof TTFullScreenVideoAd) {
                mediationManager = ((TTFullScreenVideoAd) obj).getMediationManager();
            } else if (obj instanceof CSJSplashAd) {
                mediationManager = ((CSJSplashAd) obj).getMediationManager();
            } else {
                if (!(obj instanceof TTNativeExpressAd)) {
                    if (obj instanceof TTFeedAd) {
                        mediationManager = ((TTFeedAd) obj).getMediationManager();
                    } else {
                        bestEcpm = null;
                    }
                    if (bestEcpm != null) {
                        return bestEcpm.getEcpm();
                    }
                    WMLogUtil.e("GmPricePathsManager getBestEcpm mediationAdEcpmInfo is null");
                    return WMConstants.TIMER_STAGE_NONE;
                }
                mediationManager = ((TTNativeExpressAd) obj).getMediationManager();
            }
            bestEcpm = mediationManager.getBestEcpm();
            if (bestEcpm != null) {
                return bestEcpm.getEcpm();
            }
            WMLogUtil.e("GmPricePathsManager getBestEcpm mediationAdEcpmInfo is null");
            return WMConstants.TIMER_STAGE_NONE;
        } catch (Throwable th) {
            WMLogUtil.e("GmPricePathsManager getBestEcpm exception: ".concat(String.valueOf(th)));
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    public static String a(List<q.a> list) {
        StringBuilder sb2;
        if (list == null || list.isEmpty()) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<q.a> it2 = list.iterator();
            while (it2.hasNext()) {
                JSONObject jSONObjectA = a(it2.next());
                if (jSONObjectA != null) {
                    jSONArray.put(jSONObjectA);
                }
            }
            return jSONArray.toString();
        } catch (JSONException e10) {
            e = e10;
            sb2 = new StringBuilder("GmPricePathsManager pathChainsToJsonString exception: ");
            sb2.append(e.getMessage());
            WMLogUtil.e(sb2.toString());
            return null;
        } catch (Exception e11) {
            e = e11;
            sb2 = new StringBuilder("GmPricePathsManager pathChainsToJsonString unexpected exception: ");
            sb2.append(e.getMessage());
            WMLogUtil.e(sb2.toString());
            return null;
        }
    }

    private static Field a(Class<?> cls, String str) {
        while (cls != null) {
            try {
                return cls.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static List<q.a> a(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONArray jSONArray2 = jSONArray.getJSONObject(i10).getJSONArray("path");
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                        JSONObject jSONObject = jSONArray2.getJSONObject(i11);
                        arrayList2.add(new q.b(jSONObject.optString("classPath", ""), jSONObject.optString("fieldType", ""), jSONObject.optString("fieldName", ""), Integer.valueOf((!jSONObject.has("index") || jSONObject.isNull("index")) ? -1 : jSONObject.optInt("index")), "", (!jSONObject.has("level") || jSONObject.isNull("level")) ? 0 : jSONObject.optInt("level")));
                    }
                    arrayList.add(new q.a(arrayList2));
                }
            } catch (JSONException e10) {
                WMLogUtil.e("GmPricePathsManager ReflectionGetPriceEntity jsonStringToPathChains:".concat(String.valueOf(e10)));
            }
        }
        return arrayList;
    }

    private static JSONObject a(q.a aVar) throws JSONException {
        if (aVar == null || aVar.f86356b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (q.b bVar : aVar.f86356b) {
            if (bVar != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("classPath", bVar.f86357a);
                jSONObject2.put("fieldType", bVar.f86358b);
                jSONObject2.put("fieldName", bVar.f86359c);
                jSONObject2.put("level", bVar.f86362f);
                jSONObject2.put("index", bVar.f86360d);
                jSONArray.put(jSONObject2);
            }
        }
        jSONObject.put("path", jSONArray);
        return jSONObject;
    }

    private static void a(q qVar) {
        List<q.a> list;
        List<q.b> list2;
        if (qVar == null || !TextUtils.isEmpty(qVar.f86354i) || (list = qVar.f86347b) == null || list.isEmpty() || (list2 = list.get(0).f86356b) == null || list2.isEmpty()) {
            return;
        }
        String str = list2.get(list2.size() - 1).f86357a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : f86221e) {
            if (str.startsWith(str2)) {
                qVar.f86354i = str2;
                return;
            }
        }
    }

    private void a(Object obj, String str, q qVar) {
        if (this.f86226g && WMSdkConfig.sharedInstance().isEnableGmPriceCache()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            List<q.a> list = this.f86222a.get(str);
            double d10 = -1.0d;
            if (list != null && !list.isEmpty()) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    q.a aVar = list.get(i10);
                    double dA = a(obj, aVar);
                    qVar.a(aVar.f86356b, dA);
                    if (dA > d10) {
                        d10 = dA;
                    }
                }
            }
            if (d10 >= 0.0d) {
                qVar.f86352g = System.currentTimeMillis() - jCurrentTimeMillis;
                qVar.f86346a = d10;
            }
        }
    }
}
