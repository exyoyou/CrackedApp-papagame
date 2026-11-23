package com.sigmob.sdk.manager;

import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f80845a = "WindAdExpirationManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile d f80846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f80847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f80848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Timer f80849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<SoftReference<b>, a> f80850f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f80851g = false;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Boolean f80853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f80854b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f80855c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f80856d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f80857e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f80858f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f80859g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f80860h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Long f80861i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Integer f80862j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f80863k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f80864l;

        public a(BaseAdUnit baseAdUnit, boolean activeExpiration) {
            if (baseAdUnit == null) {
                return;
            }
            this.f80856d = baseAdUnit.getVid();
            this.f80857e = baseAdUnit.getOriginVid();
            this.f80858f = baseAdUnit.getRequestId();
            this.f80860h = baseAdUnit.getAdslot_id();
            this.f80859g = baseAdUnit.getAdxEncPrice();
            this.f80862j = baseAdUnit.getAdExpiredTime();
            this.f80861i = Long.valueOf(baseAdUnit.getCreate_time());
            this.f80853a = Boolean.valueOf(baseAdUnit.expiredAdCanReload());
            int iExpiredAdReloadNum = baseAdUnit.expiredAdReloadNum();
            this.f80854b = iExpiredAdReloadNum;
            this.f80855c = iExpiredAdReloadNum;
            this.f80864l = activeExpiration;
        }

        public boolean a() {
            return (this.f80861i.longValue() == 0 || this.f80862j.intValue() == 0 || System.currentTimeMillis() - this.f80861i.longValue() < ((long) this.f80862j.intValue())) ? false : true;
        }

        public Map<String, String> b() {
            HashMap map = new HashMap();
            map.put(PointParamKey.EXPIRE_RELOAD_COUNT, String.valueOf(this.f80855c));
            map.put(PointParamKey.ORIGIN_VID, t.b(this.f80857e) ? this.f80857e : this.f80856d);
            if (t.b(this.f80859g)) {
                map.put(PointParamKey.ORIGIN_PRICE, this.f80859g);
            }
            map.put("request_id", this.f80858f);
            return map;
        }
    }

    private d() {
    }

    public static d a() {
        if (f80846b == null) {
            synchronized (d.class) {
                if (f80846b == null) {
                    f80846b = new d();
                }
            }
        }
        return f80846b;
    }

    private a e(b adManager) {
        if (adManager == null) {
            return null;
        }
        for (Map.Entry<SoftReference<b>, a> entry : this.f80850f.entrySet()) {
            b bVar = entry.getKey().get();
            a value = entry.getValue();
            if (bVar != null && value != null && bVar.equals(adManager)) {
                return value;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f80851g) {
            SigmobLogger.e(f80845a, "checkAdExpiration: The screen is locked.", new Object[0]);
            return;
        }
        if (this.f80850f.isEmpty()) {
            SigmobLogger.e(f80845a, "checkAdExpiration: adManagerMap is unavailable.", new Object[0]);
            return;
        }
        if (!com.sigmob.sdk.manager.a.c()) {
            SigmobLogger.e(f80845a, "checkAdExpiration: The app is on background.", new Object[0]);
            return;
        }
        Iterator<Map.Entry<SoftReference<b>, a>> it2 = this.f80850f.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<SoftReference<b>, a> next = it2.next();
            SoftReference<b> key = next.getKey();
            final a value = next.getValue();
            if (key == null || value == null) {
                SigmobLogger.e(f80845a, "checkAdExpiration: entry is unavailable, remove entry.", new Object[0]);
                it2.remove();
            } else {
                b bVar = key.get();
                if (bVar == null) {
                    SigmobLogger.e(f80845a, "checkAdExpiration: manager is unavailable, remove entry.", new Object[0]);
                } else if (!value.f80853a.booleanValue() || value.f80855c <= 0) {
                    SigmobLogger.e(f80845a, "checkAdExpiration: retry not available.", new Object[0]);
                } else if (value.f80863k) {
                    SigmobLogger.e(f80845a, "checkAdExpiration: reloading.", new Object[0]);
                } else {
                    boolean zA = value.a();
                    com.sigmob.sdk.base.j jVar = value.f80864l ? com.sigmob.sdk.base.j.ActiveFailureReload : com.sigmob.sdk.base.j.ReloadAfterExpiration;
                    SigmobLogger.d(f80845a, "checkAdExpiration: expiredAd = " + zA + ", requestId = " + value.f80858f + ", placementId = " + value.f80860h + ", reloadLeftNum = " + value.f80855c + ", requestSceneType = " + jVar.a(), new Object[0]);
                    boolean z10 = zA && w.b(Boolean.valueOf(value.f80864l));
                    if (z10 || w.a(Boolean.valueOf(value.f80864l))) {
                        if (z10) {
                            BaseAdUnit baseAdUnitE = bVar.e();
                            if (value.f80854b == value.f80855c) {
                                ad.a(PointCategory.OBJECT_EXPIRE, (String) null, baseAdUnitE, new ad.a() { // from class: com.sigmob.sdk.manager.m
                                    @Override // com.sigmob.sdk.base.common.ad.a
                                    public final void onAddExtra(Object obj) {
                                        d.a(value, obj);
                                    }
                                });
                            }
                        }
                        value.f80863k = true;
                        bVar.a(value.f80856d, value.f80859g, jVar);
                        value.f80855c--;
                    }
                }
                it2.remove();
            }
        }
    }

    public synchronized void c() {
        SigmobLogger.d(f80845a, "stopExpirationCheck: running = " + this.f80847c, new Object[0]);
        if (this.f80847c) {
            e();
            this.f80847c = false;
        }
    }

    public void d() {
        c();
        b();
        f80846b = null;
    }

    private void d(b adManager) {
        Iterator<Map.Entry<SoftReference<b>, a>> it2 = this.f80850f.entrySet().iterator();
        while (it2.hasNext()) {
            b bVar = it2.next().getKey().get();
            if (bVar != null && bVar.equals(adManager)) {
                it2.remove();
                SigmobLogger.i(f80845a, "removeAdManager", new Object[0]);
                return;
            }
        }
    }

    private synchronized void e() {
        SigmobLogger.d(f80845a, "cancelTimer", new Object[0]);
        Timer timer = this.f80849e;
        if (timer == null) {
            return;
        }
        timer.cancel();
        this.f80849e = null;
    }

    public Map<String, String> a(b adManager, Integer sceneTypeValue) {
        a aVarE;
        HashMap map = new HashMap();
        return (b.a(sceneTypeValue) && (aVarE = e(adManager)) != null) ? aVarE.b() : map;
    }

    public void b() {
        if (this.f80850f.isEmpty()) {
            return;
        }
        this.f80850f.clear();
    }

    public void c(b adManager) {
        if (adManager == null) {
            SigmobLogger.e(f80845a, "resetAdManager: adManager is unavailable.", new Object[0]);
        } else {
            d(adManager);
            a(adManager, true);
        }
    }

    public synchronized void a(long interval) {
        try {
            if (interval <= 0) {
                SigmobLogger.e(f80845a, "startExpirationCheck: interval is unavailable.", new Object[0]);
                return;
            }
            boolean z10 = interval == this.f80848d;
            SigmobLogger.d(f80845a, "startExpirationCheck: status = " + this.f80847c + ", interval = " + interval + ", result = " + z10, new Object[0]);
            if (this.f80847c && z10) {
                return;
            }
            e();
            long j10 = interval * 1000;
            Timer timer = new Timer();
            this.f80849e = timer;
            timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.manager.d.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    d.this.f();
                }
            }, j10, j10);
            this.f80847c = true;
            this.f80848d = interval;
            SigmobLogger.d(f80845a, "startExpirationCheck: status = " + this.f80847c, new Object[0]);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void b(b adManager) {
        if (adManager == null) {
            SigmobLogger.e(f80845a, "removeAdManager: adManager is unavailable.", new Object[0]);
            return;
        }
        d(adManager);
        if (com.sigmob.sdk.base.utils.e.a(this.f80850f)) {
            c();
        }
    }

    public void a(LoadAdRequest loadAdRequest) {
        if (loadAdRequest != null && b.a(Integer.valueOf(loadAdRequest.getRequest_scene_type()))) {
            String originVid = loadAdRequest.getOriginVid();
            loadAdRequest.getOriginPrice();
            Iterator<Map.Entry<SoftReference<b>, a>> it2 = this.f80850f.entrySet().iterator();
            while (it2.hasNext()) {
                a value = it2.next().getValue();
                if (value != null && t.a((CharSequence) originVid, (CharSequence) value.f80856d)) {
                    value.f80863k = false;
                    SigmobLogger.d(f80845a, "loadEnd: originVid = " + originVid, new Object[0]);
                    return;
                }
            }
        }
    }

    public void a(b adManager) {
        a(adManager, false);
    }

    public void a(b adManager, boolean activeExpiration) {
        if (adManager == null) {
            SigmobLogger.e(f80845a, "addAdManager: adManager is unavailable.", new Object[0]);
            return;
        }
        BaseAdUnit baseAdUnitE = adManager.e();
        if (baseAdUnitE == null) {
            SigmobLogger.e(f80845a, "addAdManager: baseAdUnit is unavailable.", new Object[0]);
            return;
        }
        if (t.b(baseAdUnitE.getBid_token())) {
            return;
        }
        if (w.b(e(adManager))) {
            b(adManager);
        }
        if (b.b(Integer.valueOf(baseAdUnitE.getRequestSceneType()))) {
            return;
        }
        a aVar = new a(baseAdUnitE, activeExpiration);
        this.f80850f.put(new SoftReference<>(adManager), aVar);
        int size = this.f80850f.size();
        if (size == 1) {
            a(this.f80848d);
        }
        SigmobLogger.i(f80845a, "addAdManager: vid = " + aVar.f80856d + ", size = " + size + ", activeExpiration = " + aVar.f80864l, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> mapB = aVar.b();
            if (com.sigmob.sdk.base.utils.e.b(mapB)) {
                pointEntitySigmob.getOptions().putAll(mapB);
            }
        }
    }

    public void a(boolean lockScreenStatus) {
        this.f80851g = lockScreenStatus;
    }
}
