package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.Networking;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.models.WaterfallResponse;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.splash.WMSplashAdRequest;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f87149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<String, a> f87150b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f87151c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f87157a = 0;

        a() {
        }

        public void a() {
            this.f87157a = System.currentTimeMillis();
        }
    }

    private e() {
    }

    public static e a() {
        if (f87149a == null) {
            synchronized (e.class) {
                if (f87149a == null) {
                    f87149a = new e();
                }
            }
        }
        return f87149a;
    }

    private void b() {
        a aVar = this.f87151c;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(WMSplashAdRequest request, com.windmill.sdk.common.l wmBaseAdController) {
        WaterfallResponse waterfallResponse;
        if (request != null) {
            try {
                if (!TextUtils.isEmpty(request.getPlacementId())) {
                    if (!WindMillAd.sharedAds().isInit()) {
                        WMLogUtil.e("---------loadWaterfall------init---filter---");
                        return;
                    }
                    if (!com.windmill.sdk.common.c.b()) {
                        WMLogUtil.e("---------loadWaterfall------gdpr---filter---");
                        return;
                    }
                    a aVar = f87150b.get(request.getPlacementId());
                    this.f87151c = aVar;
                    if (aVar == null) {
                        this.f87151c = new a();
                        f87150b.put(request.getPlacementId(), this.f87151c);
                    }
                    if (WMSdkConfig.sharedInstance().getLoadPeriodTime() + this.f87151c.f87157a > System.currentTimeMillis()) {
                        WMLogUtil.e("---------loadWaterfall------interval---filter---");
                        return;
                    }
                    Map<String, Object> mapA = b.a().a(request.getPlacementId());
                    WMLogUtil.d(WMLogUtil.TAG, "---------------loadWaterfall----catchResponseMap---------" + mapA);
                    if (mapA != null && (waterfallResponse = (WaterfallResponse) mapA.get(HmInputMappingContent.FIELD_VALUE)) != null) {
                        a(waterfallResponse.sign, request, wmBaseAdController);
                    } else {
                        a("", request, wmBaseAdController);
                    }
                    com.windmill.sdk.utils.m.a(PointCategory.PULL_WATERFALL, request, null, null, null);
                    b();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        WMLogUtil.e("---------loadWaterfall------placementId---filter---");
    }

    private void a(String sign, final WindMillAdRequest request, com.windmill.sdk.common.l baseAdController) {
        com.windmill.sdk.common.m mVarL;
        HashMap<String, String> mapA;
        try {
            WMLogUtil.d(WMLogUtil.TAG, "-----------loadWaterfall----sendBackStrategyRequest---------" + sign);
            if (Networking.getRequestQueue() == null) {
                return;
            }
            final HashMap<String, String> map = new HashMap<>();
            Map<String, String> mapA2 = d.a().a(request.getPlacementId());
            if (mapA2 != null) {
                map.putAll(mapA2);
            }
            if (baseAdController != null && (mVarL = baseAdController.l()) != null && (mapA = mVarL.a()) != null) {
                map.putAll(mapA);
            }
            f fVar = new f(WMSdkConfig.sharedInstance().getStrategyUrl(), sign, request, 2, new f.a() { // from class: com.windmill.sdk.strategy.e.1
                @Override // com.windmill.sdk.strategy.f.a
                public void a(Waterfall waterfall) {
                    com.windmill.sdk.utils.m.a(PointCategory.PULL_RESPOND, request, null, null, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.e.1.1
                        @Override // com.windmill.sdk.utils.m.a
                        public void onAddExtra(Object pointEntityBase) {
                            if (pointEntityBase instanceof PointEntityWind) {
                                PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                                HashMap map2 = new HashMap();
                                map2.put(com.sigmob.sdk.base.mta.PointCategory.RESPOND, "1");
                                pointEntityWind.setOptions(map2);
                                try {
                                    pointEntityWind.setAd_position_custom_info(JSONSerializer.Serialize(map));
                                } catch (Throwable unused) {
                                }
                            }
                        }
                    });
                }

                @Override // com.windmill.sdk.strategy.f.a
                public void a(int error_code, String error_msg) {
                    com.windmill.sdk.utils.m.a(PointCategory.PULL_RESPOND, request, null, null, new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.e.1.2
                        @Override // com.windmill.sdk.utils.m.a
                        public void onAddExtra(Object pointEntityBase) {
                            if (pointEntityBase instanceof PointEntityWind) {
                                PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                                HashMap map2 = new HashMap();
                                map2.put(com.sigmob.sdk.base.mta.PointCategory.RESPOND, "0");
                                pointEntityWind.setOptions(map2);
                                try {
                                    pointEntityWind.setAd_position_custom_info(JSONSerializer.Serialize(map));
                                } catch (Throwable unused) {
                                }
                            }
                        }
                    });
                }
            });
            fVar.a(map);
            Networking.getRequestQueue().add(fVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
