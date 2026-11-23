package com.windmill.sdk.utils;

import android.text.TextUtils;
import com.czhj.sdk.common.json.JSONSerializer;
import com.windmill.sdk.WMAdConfig;
import com.windmill.sdk.WMCustomController;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWMError;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.point.PointType;
import com.windmill.sdk.strategy.s;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<Integer> f87407a = Arrays.asList(700000, 700100, 700200, 700300, 700400, 700410, 700600, 700610, 700630, 700640, 700650, 700660, 700670, 700680, 700690, 700700, 700800);

    public interface a {
        void onAddExtra(Object pointEntityBase);
    }

    public static void a(String placemetID, com.windmill.sdk.strategy.a strategy, a onPointEntityExtraInfo) {
        if (TextUtils.isEmpty(placemetID) || strategy == null) {
            return;
        }
        PointEntityWind pointEntityWindWindTracking = PointEntityWind.WindTracking("s2s_no_token", placemetID, String.valueOf(strategy.aK()));
        pointEntityWindWindTracking.setAc_type(PointType.WIND_MILL_ADAPTER);
        if (onPointEntityExtraInfo != null) {
            onPointEntityExtraInfo.onAddExtra(pointEntityWindWindTracking);
        }
        pointEntityWindWindTracking.commit();
    }

    public static void a(String category, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a st, s strategyManager, a onPointEntityExtraInfo) {
        PointEntityWind pointEntityWindWindTracking;
        if (adRequest == null) {
            pointEntityWindWindTracking = PointEntityWind.WindTracking(category, "", "");
        } else {
            pointEntityWindWindTracking = PointEntityWind.WindTracking(category, adRequest.getPlacementId(), String.valueOf(adRequest.getAdType()));
        }
        if (st != null) {
            pointEntityWindWindTracking.setPlatform(st.aP());
            int iAN = st.aN();
            pointEntityWindWindTracking.setAggr_channel_id(String.valueOf(iAN));
            pointEntityWindWindTracking.setAggr_appid(st.aV());
            pointEntityWindWindTracking.setAggr_placement_id(st.aW());
            pointEntityWindWindTracking.setAggr_waterfall_id(String.valueOf(st.aE()));
            pointEntityWindWindTracking.setGroup_id(String.valueOf(st.aY()));
            pointEntityWindWindTracking.setRule_id(st.ag());
            if ("reward".equals(category)) {
                pointEntityWindWindTracking.setReward(st.e() ? "1" : "0");
            }
            if ("load".equals(category) && iAN == 22) {
                pointEntityWindWindTracking.getOptions().put("gm_plugin_version", st.a());
            }
            if ("ready".equals(category) && iAN == 22 && st.F()) {
                pointEntityWindWindTracking.getOptions().put("gm_plugin_version", st.aA());
                pointEntityWindWindTracking.getOptions().put("gm_version", st.az());
                pointEntityWindWindTracking.getOptions().put("gm_price_source", st.aB());
                pointEntityWindWindTracking.getOptions().put("gm_pkgname", st.aw());
                pointEntityWindWindTracking.getOptions().put("gm_ad_root_object_classpath", st.ax());
            }
            pointEntityWindWindTracking.setAb_test(String.valueOf(st.aZ()));
            pointEntityWindWindTracking.setTraffic_weight(String.valueOf(st.ak()));
            pointEntityWindWindTracking.setExperiment_id(String.valueOf(st.bb()));
            pointEntityWindWindTracking.setSub_experiment_id(String.valueOf(st.bc()));
            pointEntityWindWindTracking.setHb(String.valueOf(st.Y()));
            pointEntityWindWindTracking.setCurrency(st.Q());
            pointEntityWindWindTracking.setEcpm(String.valueOf(st.V()));
            pointEntityWindWindTracking.setSubType(st.aT());
            pointEntityWindWindTracking.setIs_pdb(st.f87098h);
            pointEntityWindWindTracking.setPdb_priority(st.f87099i);
            if (!TextUtils.isEmpty(st.f87105p)) {
                WMLogUtil.i("-------Groecpm: " + st.f87105p + " category: " + category);
                pointEntityWindWindTracking.setexpress_ecpm(st.f87105p);
            }
            pointEntityWindWindTracking.setWeight(st.G() ? "1" : "0");
            pointEntityWindWindTracking.setSdk_operation_bid_type(String.valueOf(st.k()));
            pointEntityWindWindTracking.setTemplate_id(st.aS());
            pointEntityWindWindTracking.setIs_native(st.r() == 0 ? "0" : "1");
            pointEntityWindWindTracking.setElement_ad_type(String.valueOf(st.s()));
            pointEntityWindWindTracking.setGuaranteed_ad(String.valueOf(st.K()));
            if (st.Y() == 1) {
                pointEntityWindWindTracking.setBidding_type(String.valueOf(st.Z()));
            }
            if (st.aj() != null) {
                Map<String, String> options = pointEntityWindWindTracking.getOptions();
                if (options != null) {
                    options.putAll(st.aj());
                    pointEntityWindWindTracking.setOptions(options);
                } else {
                    pointEntityWindWindTracking.setOptions(st.aj());
                }
            }
            pointEntityWindWindTracking.setAuto_load(st.f87102l ? "1" : "0");
            pointEntityWindWindTracking.setTimeOut(st.f87103m ? "1" : "0");
        }
        a(pointEntityWindWindTracking, st, category);
        WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
        if (adConfig != null && adConfig.getCustomController() != null) {
            WMCustomController customController = adConfig.getCustomController();
            pointEntityWindWindTracking.setIs_custom_imei(customController.isCanUsePhoneState() ? "0" : "1");
            pointEntityWindWindTracking.setIs_custom_android_id(customController.isCanUseAndroidId() ? "0" : "1");
            pointEntityWindWindTracking.setIs_custom_oaid(TextUtils.isEmpty(customController.getDevOaid()) ? "0" : "1");
        } else {
            pointEntityWindWindTracking.setIs_custom_imei("0");
            pointEntityWindWindTracking.setIs_custom_android_id("0");
            pointEntityWindWindTracking.setIs_custom_oaid("0");
        }
        try {
            if (com.windmill.sdk.strategy.d.a().b() != null) {
                String strSerialize = JSONSerializer.Serialize(com.windmill.sdk.strategy.d.a().b());
                if (!TextUtils.isEmpty(strSerialize)) {
                    pointEntityWindWindTracking.setCustom_info(strSerialize);
                }
            }
            String placementId = (adRequest == null || TextUtils.isEmpty(adRequest.getPlacementId())) ? null : adRequest.getPlacementId();
            if (placementId == null && st != null && !TextUtils.isEmpty(st.aL())) {
                placementId = st.aL();
            }
            Map<String, String> mapN = strategyManager != null ? strategyManager.n() : null;
            if ((mapN == null || mapN.isEmpty()) && !TextUtils.isEmpty(placementId) && com.windmill.sdk.strategy.d.a().a(placementId) != null) {
                mapN = com.windmill.sdk.strategy.d.a().a(placementId);
            }
            if (mapN != null) {
                pointEntityWindWindTracking.setAd_position_custom_info(JSONSerializer.Serialize(mapN));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (onPointEntityExtraInfo != null) {
            try {
                onPointEntityExtraInfo.onAddExtra(pointEntityWindWindTracking);
            } catch (Throwable unused) {
            }
        }
        pointEntityWindWindTracking.commit();
    }

    private static void a(PointEntityWind entityWind, com.windmill.sdk.strategy.a st, String category) {
        if (TextUtils.isEmpty(category) || entityWind == null || st == null || st.aK() != 5) {
            return;
        }
        if (TextUtils.equals(category, "load") || TextUtils.equals(category, PointCategory.BID_C2C) || TextUtils.equals(category, "ready") || TextUtils.equals(category, PointCategory.HB_WIN) || TextUtils.equals(category, PointCategory.HB_LOSE) || TextUtils.equals(category, PointCategory.CALLBACK_READY) || TextUtils.equals(category, "start") || TextUtils.equals(category, "click")) {
            entityWind.setTemplate_type(String.valueOf(st.I()));
        }
    }

    public static void a(String category, String event_type, WindMillAdRequest adRequest, com.windmill.sdk.strategy.a st, s strategyManager, int error_code, String externalErrorCode, String error_msg, a onPointEntityExtraInfo) {
        PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError(category, event_type, error_code, error_msg);
        if (!TextUtils.isEmpty(externalErrorCode)) {
            pointEntityWMErrorWindError.setExternal_error_code(externalErrorCode);
        } else {
            pointEntityWMErrorWindError.setExternal_error_code(String.valueOf(error_code));
        }
        if (adRequest != null) {
            pointEntityWMErrorWindError.setAdtype(String.valueOf(adRequest.getAdType()));
            pointEntityWMErrorWindError.setPlacement_id(adRequest.getPlacementId());
            if (TextUtils.isEmpty(pointEntityWMErrorWindError.getLoad_id()) && !TextUtils.isEmpty(adRequest.getLoadId())) {
                pointEntityWMErrorWindError.setLoad_id(adRequest.getLoadId());
            }
            if (st != null) {
                pointEntityWMErrorWindError.setAuto_load(st.f87102l ? "1" : "0");
            }
        }
        if (st != null) {
            if (!f87407a.contains(Integer.valueOf(error_code))) {
                pointEntityWMErrorWindError.setPlatform(st.aP());
                pointEntityWMErrorWindError.setAggr_channel_id(String.valueOf(st.aN()));
                pointEntityWMErrorWindError.setAggr_placement_id(st.aW());
                pointEntityWMErrorWindError.setHb(String.valueOf(st.Y()));
                pointEntityWMErrorWindError.setEcpm(String.valueOf(st.V()));
            }
            pointEntityWMErrorWindError.setAggr_appid(st.aV());
            pointEntityWMErrorWindError.setAggr_waterfall_id(String.valueOf(st.aE()));
            pointEntityWMErrorWindError.setGroup_id(String.valueOf(st.aY()));
            pointEntityWMErrorWindError.setRule_id(st.ag());
            pointEntityWMErrorWindError.setAb_test(String.valueOf(st.aZ()));
            pointEntityWMErrorWindError.setTraffic_weight(String.valueOf(st.ak()));
            pointEntityWMErrorWindError.setExperiment_id(String.valueOf(st.bb()));
            pointEntityWMErrorWindError.setSub_experiment_id(String.valueOf(st.bc()));
            pointEntityWMErrorWindError.setIs_pdb(st.f87098h);
            pointEntityWMErrorWindError.setPdb_priority(st.f87099i);
            pointEntityWMErrorWindError.setSubType(st.aT());
            pointEntityWMErrorWindError.setWeight(st.G() ? "1" : "0");
            pointEntityWMErrorWindError.setSdk_operation_bid_type(String.valueOf(st.k()));
            pointEntityWMErrorWindError.setElement_ad_type(String.valueOf(st.s()));
            pointEntityWMErrorWindError.setGuaranteed_ad(String.valueOf(st.K()));
            if (st.Y() == 1) {
                pointEntityWMErrorWindError.setBidding_type(String.valueOf(st.Z()));
            }
            if (st.aj() != null) {
                Map<String, String> options = pointEntityWMErrorWindError.getOptions();
                if (options != null) {
                    options.putAll(st.aj());
                    pointEntityWMErrorWindError.setOptions(options);
                } else {
                    pointEntityWMErrorWindError.setOptions(st.aj());
                }
            }
        }
        WMAdConfig adConfig = WindMillAd.sharedAds().getAdConfig();
        if (adConfig != null && adConfig.getCustomController() != null) {
            WMCustomController customController = adConfig.getCustomController();
            pointEntityWMErrorWindError.setIs_custom_imei(customController.isCanUsePhoneState() ? "0" : "1");
            pointEntityWMErrorWindError.setIs_custom_android_id(customController.isCanUseAndroidId() ? "0" : "1");
            pointEntityWMErrorWindError.setIs_custom_oaid(TextUtils.isEmpty(customController.getDevOaid()) ? "0" : "1");
        } else {
            pointEntityWMErrorWindError.setIs_custom_imei("0");
            pointEntityWMErrorWindError.setIs_custom_android_id("0");
            pointEntityWMErrorWindError.setIs_custom_oaid("0");
        }
        try {
            if (com.windmill.sdk.strategy.d.a().b() != null) {
                String strSerialize = JSONSerializer.Serialize(com.windmill.sdk.strategy.d.a().b());
                if (!TextUtils.isEmpty(strSerialize)) {
                    pointEntityWMErrorWindError.setCustom_info(strSerialize);
                }
            }
            String placementId = (adRequest == null || TextUtils.isEmpty(adRequest.getPlacementId())) ? null : adRequest.getPlacementId();
            if (placementId == null && st != null && !TextUtils.isEmpty(st.aL())) {
                placementId = st.aL();
            }
            Map<String, String> mapN = strategyManager != null ? strategyManager.n() : null;
            if ((mapN == null || mapN.isEmpty()) && !TextUtils.isEmpty(placementId) && com.windmill.sdk.strategy.d.a().a(placementId) != null) {
                mapN = com.windmill.sdk.strategy.d.a().a(placementId);
            }
            if (mapN != null) {
                pointEntityWMErrorWindError.setAd_position_custom_info(JSONSerializer.Serialize(mapN));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (onPointEntityExtraInfo != null) {
            try {
                onPointEntityExtraInfo.onAddExtra(pointEntityWMErrorWindError);
            } catch (Throwable unused) {
            }
        }
        pointEntityWMErrorWindError.commit();
    }

    public static void a(String category, WindMillAdRequest adRequest, a onPointEntityExtraInfo) {
        PointEntityWind pointEntityWind = new PointEntityWind();
        pointEntityWind.setAc_type(PointType.WIND_MILL_COMMON);
        if (adRequest != null) {
            pointEntityWind.setAdtype(String.valueOf(adRequest.getAdType()));
            pointEntityWind.setLoad_id(String.valueOf(adRequest.getLoadId()));
            pointEntityWind.setPlacement_id(adRequest.getPlacementId());
            pointEntityWind.setAuto_load(adRequest.isRefreshRequest() ? "1" : "0");
        }
        pointEntityWind.setCategory(category);
        if (onPointEntityExtraInfo != null) {
            onPointEntityExtraInfo.onAddExtra(pointEntityWind);
        }
        pointEntityWind.commit();
    }
}
