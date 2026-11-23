package com.sigmob.sdk.manager;

import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80865a = "WindAdFCManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile e f80866b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f80867c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f80868d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, List<SoftReference<b>>> f80869e = new ConcurrentHashMap();

    private e() {
    }

    public static e a() {
        if (f80866b == null) {
            synchronized (e.class) {
                if (f80866b == null) {
                    f80866b = new e();
                }
            }
        }
        return f80866b;
    }

    public String a(String strategyId, String fcEvent, Integer adType) {
        return strategyId + "-" + fcEvent + "-" + adType;
    }

    public synchronized void a(b manager) {
        if (manager == null) {
            return;
        }
        if (w.b(Boolean.valueOf(com.sigmob.sdk.base.o.a().l()))) {
            return;
        }
        BaseAdUnit baseAdUnitE = manager.e();
        if (baseAdUnitE == null) {
            return;
        }
        List<FrequencyControl> frequencyControl = baseAdUnitE.getFrequencyControl();
        if (com.sigmob.sdk.base.utils.e.a(frequencyControl)) {
            return;
        }
        int ad_type = baseAdUnitE.getAd_type();
        for (FrequencyControl frequencyControl2 : frequencyControl) {
            String str = frequencyControl2.strategy_id;
            String str2 = frequencyControl2.frequency_control_event;
            Integer num = frequencyControl2.frequency_control_count;
            List<Integer> list = frequencyControl2.ad_expire_type;
            if (t.b(str) && t.b(str2) && w.a((Number) num) && com.sigmob.sdk.base.utils.e.b(list)) {
                Integer num2 = this.f80868d.get(str);
                if (num2 == null || num2.intValue() == -1) {
                    this.f80868d.put(str, num);
                }
                String strA = a(str, str2, Integer.valueOf(ad_type));
                List<SoftReference<b>> list2 = this.f80869e.get(strA);
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f80869e.put(strA, arrayList);
                    arrayList.add(new SoftReference(manager));
                    SigmobLogger.d(f80865a, "addAdManager: add", new Object[0]);
                } else {
                    boolean zA = a(list2, manager);
                    SigmobLogger.d(f80865a, "addAdManager: contains = " + zA, new Object[0]);
                    if (w.b(Boolean.valueOf(zA))) {
                        list2.add(new SoftReference<>(manager));
                    }
                }
            }
        }
    }

    private void a(b manager, final String strategyId) {
        manager.a(AdStatus.AdStatusNone);
        d.a().c(manager);
        String strH = manager.h();
        final BaseAdUnit baseAdUnitE = manager.e();
        if (baseAdUnitE == null) {
            SigmobLogger.e(f80865a, "setInvalidManager: adUnit is unavailable.", new Object[0]);
            return;
        }
        final String requestId = baseAdUnitE.getRequestId();
        SigmobLogger.i(f80865a, "setInvalidManager: requestId = " + requestId + ", requestSceneType = " + baseAdUnitE.getRequestSceneType() + ", placementId = " + strH + ", simpleName = " + manager.getClass().getSimpleName(), new Object[0]);
        ad.a(PointCategory.SUBJECT_EXPIRE, (String) null, baseAdUnitE, new ad.a() { // from class: com.sigmob.sdk.manager.n
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                e.a(strategyId, baseAdUnitE, requestId, obj);
            }
        });
    }

    public synchronized void a(String event, BaseAdUnit adUnit, b currentManager) {
        SigmobLogger.d(f80865a, "checkFrequencyControl: event = " + event, new Object[0]);
        if (!t.a((CharSequence) event) && adUnit != null) {
            List<FrequencyControl> frequencyControl = adUnit.getFrequencyControl();
            if (com.sigmob.sdk.base.utils.e.a(frequencyControl)) {
                SigmobLogger.e(f80865a, "checkFrequencyControl: frequency is unavailable.", new Object[0]);
                return;
            }
            for (FrequencyControl frequencyControl2 : frequencyControl) {
                String str = frequencyControl2.strategy_id;
                String str2 = frequencyControl2.frequency_control_event;
                Integer num = frequencyControl2.frequency_control_count;
                List<Integer> list = frequencyControl2.ad_expire_type;
                Integer numValueOf = this.f80868d.get(str);
                boolean z10 = w.b(numValueOf) && t.a((CharSequence) event, (CharSequence) str2) && w.a((Number) num) && com.sigmob.sdk.base.utils.e.b(list);
                SigmobLogger.d(f80865a, "checkFrequencyControl: num = " + numValueOf + ", canCheck = " + z10 + ", strategyId = " + str + ", strategyEvent = " + str2 + ", strategyCount = " + num, new Object[0]);
                if (z10) {
                    if (numValueOf.intValue() > 0) {
                        numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                        this.f80868d.put(str, numValueOf);
                    }
                    if (numValueOf.intValue() <= 0) {
                        ArrayList<b> arrayList = new ArrayList();
                        Iterator<Integer> it2 = list.iterator();
                        while (it2.hasNext()) {
                            String strA = a(str, str2, it2.next());
                            List<SoftReference<b>> list2 = this.f80869e.get(strA);
                            if (com.sigmob.sdk.base.utils.e.b(list2)) {
                                for (SoftReference<b> softReference : list2) {
                                    if (softReference != null && softReference.get() != null) {
                                        arrayList.add(softReference.get());
                                    }
                                }
                            }
                            this.f80869e.remove(strA);
                        }
                        boolean zRemove = arrayList.remove(currentManager);
                        int size = arrayList.size();
                        SigmobLogger.d(f80865a, "checkFrequencyControl: result = " + zRemove + ", simpleName = " + currentManager.getClass().getSimpleName() + ", size = " + size, new Object[0]);
                        int i10 = 0;
                        for (b bVar : arrayList) {
                            BaseAdUnit baseAdUnitE = bVar.e();
                            if (baseAdUnitE == null) {
                                SigmobLogger.e(f80865a, "checkFrequencyControl: baseAdUnit is unavailable.", new Object[0]);
                            } else if (b.b(Integer.valueOf(baseAdUnitE.getRequestSceneType()))) {
                                SigmobLogger.e(f80865a, "checkFrequencyControl: unavailable requestSceneType.", new Object[0]);
                            } else {
                                a(bVar, str);
                                i10++;
                            }
                        }
                        SigmobLogger.d(f80865a, "checkFrequencyControl: strategyId = " + str + ", expiredAdNum = " + i10, new Object[0]);
                        if (i10 > 0) {
                            this.f80868d.put(str, -1);
                        }
                    }
                }
            }
            return;
        }
        SigmobLogger.e(f80865a, "checkFrequencyControl: event or adUnit is unavailable.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, BaseAdUnit baseAdUnit, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.STRATEGY_ID, str);
            options.put(PointParamKey.EXPIRE_RELOAD_COUNT, String.valueOf(baseAdUnit.expiredAdReloadNum()));
            String vid = baseAdUnit.getVid();
            String originVid = baseAdUnit.getOriginVid();
            if (t.b(originVid)) {
                vid = originVid;
            }
            options.put(PointParamKey.ORIGIN_VID, vid);
            String adxEncPrice = baseAdUnit.getAdxEncPrice();
            if (t.b(adxEncPrice)) {
                options.put(PointParamKey.ORIGIN_PRICE, adxEncPrice);
            }
            options.put("request_id", str2);
            pointEntitySigmob.setOptions(options);
        }
    }

    private boolean a(List<SoftReference<b>> softRefs, b manager) {
        if (!com.sigmob.sdk.base.utils.e.a(softRefs) && manager != null) {
            for (SoftReference<b> softReference : softRefs) {
                if (softReference != null && softReference.get() != null && softReference.get().equals(manager)) {
                    return true;
                }
            }
        }
        return false;
    }
}
