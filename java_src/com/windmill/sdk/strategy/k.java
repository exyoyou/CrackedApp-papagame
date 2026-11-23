package com.windmill.sdk.strategy;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMNetworkConfig;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.HBResponse;
import com.windmill.sdk.models.MediationApp;
import com.windmill.sdk.models.MediationChannel;
import com.windmill.sdk.models.MediationElement;
import com.windmill.sdk.models.StrategyWaterFall;
import com.windmill.sdk.models.TemplateSetting;
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.models.WaterfallResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class k {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.windmill.sdk.strategy.s$c] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.windmill.sdk.models.Waterfall] */
    public static q a(int type, WaterfallResponse waterfallResponse, WindMillAdRequest adRequest, s.c listener) {
        ?? r10;
        StrategyWaterFall strategyWaterFall;
        ArrayList arrayList;
        int i10;
        ArrayList arrayList2;
        WindMillAdRequest windMillAdRequest = adRequest;
        try {
            r10 = waterfallResponse.waterfall;
            try {
                if (r10 != 0 && (strategyWaterFall = r10.strategy_waterfall) != null) {
                    List<Integer> list = strategyWaterFall.element_ids;
                    if (list == null || list.size() <= 0) {
                        int iIntValue = waterfallResponse.code.intValue();
                        String str = waterfallResponse.error_message;
                        if (iIntValue == 0) {
                            iIntValue = WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode();
                            str = "strategyResponse element_ids is null";
                        }
                        listener.a((List<a>) null, a(windMillAdRequest, waterfallResponse), iIntValue, str);
                    } else {
                        StrategyWaterFall strategyWaterFall2 = waterfallResponse.waterfall.strategy_waterfall;
                        if (!r.a(windMillAdRequest, strategyWaterFall2)) {
                            ArrayList arrayList3 = new ArrayList();
                            ArrayList arrayList4 = new ArrayList();
                            int i11 = 0;
                            while (i11 < strategyWaterFall2.element_ids.size()) {
                                try {
                                    a aVarA = a(windMillAdRequest, waterfallResponse);
                                    HashMap map = new HashMap();
                                    map.put("useMediation", waterfallResponse.waterfall.useMediation);
                                    map.put("forbidPluginUpdate", waterfallResponse.waterfall.forbidPluginUpdate);
                                    HashMap map2 = new HashMap();
                                    map2.put("privacy_url", waterfallResponse.waterfall.privacy_url);
                                    TemplateSetting templateSetting = waterfallResponse.waterfall.template_setting;
                                    if (templateSetting != null) {
                                        map2.put("close_style", templateSetting.close_style);
                                        map2.put("close_position", waterfallResponse.waterfall.template_setting.close_position);
                                        map2.put("mistake_click_rate", waterfallResponse.waterfall.template_setting.mistake_click_rate);
                                    }
                                    aVarA.f87106q = strategyWaterFall2.notify_url;
                                    aVarA.a(waterfallResponse.waterfall.custom_setting);
                                    int iIntValue2 = strategyWaterFall2.element_ids.get(i11).intValue();
                                    List<MediationElement> list2 = waterfallResponse.waterfall.elements;
                                    if (list2 == null || list2.size() <= 0) {
                                        arrayList = arrayList3;
                                        i10 = i11;
                                        WMLogUtil.e("deliverResponse: strategyResponseV4.elements is null");
                                    } else {
                                        int i12 = 0;
                                        while (i12 < waterfallResponse.waterfall.elements.size()) {
                                            MediationElement mediationElement = waterfallResponse.waterfall.elements.get(i12);
                                            if (iIntValue2 == mediationElement.element_id.intValue()) {
                                                aVarA.t(iIntValue2);
                                                int iIntValue3 = mediationElement.mediation_app_id.intValue();
                                                Map<String, String> map3 = mediationElement.options;
                                                if (map3 != null) {
                                                    map2.putAll(map3);
                                                    aVarA.r(map3.get("placementId"));
                                                    aVarA.h(map2);
                                                }
                                                aVarA.p(mediationElement.frequency_day.intValue());
                                                aVarA.q(mediationElement.frequency_hour.intValue());
                                                aVarA.r(mediationElement.frequency_secs.intValue());
                                                aVarA.f(String.valueOf(mediationElement.ecpm));
                                                aVarA.i(mediationElement.mask);
                                                aVarA.f87098h = mediationElement.is_pdb.booleanValue();
                                                aVarA.f87099i = mediationElement.pdb_priority.intValue();
                                                aVarA.f87100j = mediationElement.reward_guide_prompt;
                                                HBResponse hBResponse = mediationElement.hb_response;
                                                if (hBResponse != null) {
                                                    aVarA.a(new a.C1081a(hBResponse.win_url, hBResponse.lose_url, hBResponse.bid_id, hBResponse.response_str, hBResponse.response_bytes, hBResponse.err_code.intValue(), hBResponse.err_msg));
                                                }
                                                aVarA.h(String.valueOf(mediationElement.price));
                                                aVarA.n(mediationElement.f87055hb.intValue());
                                                aVarA.o(mediationElement.bid_type.intValue());
                                                aVarA.i(mediationElement.tag.intValue());
                                                aVarA.a(mediationElement.single_channel_timeout.intValue(), waterfallResponse.waterfall.time_type.intValue());
                                                if (strategyWaterFall2.fill_type.intValue() == 1) {
                                                    aVarA.k(true);
                                                } else {
                                                    aVarA.k(mediationElement.weight_switch.booleanValue());
                                                }
                                                aVarA.e(mediationElement.render_type.intValue());
                                                aVarA.s(mediationElement.bid_floor.intValue());
                                                aVarA.f(mediationElement.sub_ad_type.intValue());
                                                aVarA.g(mediationElement.reward_type.intValue());
                                                aVarA.j(mediationElement.bid_floor_cur);
                                                aVarA.a(mediationElement.ban_pkg_name);
                                                aVarA.a(mediationElement.order);
                                                aVarA.k(waterfallResponse.waterfall.f87059m);
                                                aVarA.b(waterfallResponse.waterfall.strategy_waterfall.bidding_timeout);
                                                List<MediationApp> list3 = waterfallResponse.waterfall.apps;
                                                if (list3 == null || list3.size() <= 0) {
                                                    WMLogUtil.e("deliverResponse: strategyResponseV4.apps is null");
                                                } else {
                                                    for (int i13 = 0; i13 < waterfallResponse.waterfall.apps.size(); i13++) {
                                                        MediationApp mediationApp = waterfallResponse.waterfall.apps.get(i13);
                                                        if (iIntValue3 == mediationApp.app_id.intValue()) {
                                                            int iIntValue4 = mediationApp.mediation_channel_id.intValue();
                                                            Map<String, String> map4 = mediationApp.options;
                                                            if (map4 != null) {
                                                                map.putAll(map4);
                                                                aVarA.q(mediationApp.options.get("appId"));
                                                                aVarA.s(mediationApp.options.get(WMConstants.API_KEY));
                                                                aVarA.i(map);
                                                            }
                                                            List<MediationChannel> list4 = waterfallResponse.waterfall.channels;
                                                            if (list4 == null || list4.size() <= 0) {
                                                                WMLogUtil.e("deliverResponse: strategyResponseV4.channel is null");
                                                            } else {
                                                                for (int i14 = 0; i14 < waterfallResponse.waterfall.channels.size(); i14++) {
                                                                    MediationChannel mediationChannel = waterfallResponse.waterfall.channels.get(i14);
                                                                    if (iIntValue4 == mediationChannel.channel_id.intValue()) {
                                                                        if (com.windmill.sdk.common.h.f86658a.get(mediationChannel.channel_id) == null && mediationApp.options != null) {
                                                                            com.windmill.sdk.common.h.f86658a.put(mediationChannel.channel_id, Boolean.TRUE);
                                                                            a(mediationChannel.channel_id.intValue(), mediationApp.options);
                                                                        }
                                                                        aVarA.o(mediationChannel.name);
                                                                        aVarA.u(mediationChannel.ad_expire_time.intValue());
                                                                        aVarA.n(mediationChannel.enable_extra_close_callback.booleanValue());
                                                                        aVarA.v(mediationChannel.channel_id.intValue());
                                                                        aVarA.a(mediationChannel.is_custom);
                                                                        aVarA.c(mediationChannel.ad_init_class);
                                                                        aVarA.d(mediationChannel.ad_class);
                                                                        aVarA.j(mediationChannel.fill_type.intValue());
                                                                        aVarA.b(mediationChannel.is_ready.intValue() == 1);
                                                                        aVarA.e(mediationChannel.cur);
                                                                        aVarA.c(mediationChannel.ratio.intValue());
                                                                        aVarA.d(mediationChannel.countdown_auto_close_timer.intValue());
                                                                        aVarA.e(mediationChannel.enable_click_auto_close.booleanValue());
                                                                        aVarA.m(true);
                                                                        aVarA.b(Boolean.valueOf(mediationChannel.is_saas_adx.booleanValue() || iIntValue4 == 998));
                                                                        aVarA.g(mediationChannel.options);
                                                                        if (mediationChannel.is_saas_adx.booleanValue() || iIntValue4 == 998) {
                                                                            aVarA.c(waterfallResponse.saas_options);
                                                                            aVarA.c(mediationChannel.saas_options);
                                                                            aVarA.c(mediationElement.saas_options);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                arrayList3 = arrayList3;
                                                i11 = i11;
                                                map2 = map2;
                                                iIntValue2 = iIntValue2;
                                            }
                                            i12++;
                                            map2 = map2;
                                            iIntValue2 = iIntValue2;
                                            i11 = i11;
                                            arrayList3 = arrayList3;
                                        }
                                        arrayList = arrayList3;
                                        i10 = i11;
                                    }
                                    if (!aVarA.aC()) {
                                        arrayList2 = arrayList;
                                        WMLogUtil.e("This adStrategy is not pass: " + aVarA.toString());
                                    } else if (!aVarA.D() || aVarA.L() == 0) {
                                        arrayList2 = arrayList;
                                        arrayList2.add(aVarA);
                                    } else {
                                        arrayList4.add(aVarA);
                                        arrayList2 = arrayList;
                                    }
                                    i11 = i10 + 1;
                                    arrayList3 = arrayList2;
                                    windMillAdRequest = adRequest;
                                } catch (Throwable th) {
                                    th = th;
                                    r10 = listener;
                                    WMLogUtil.e("parse strategy exception " + th.getMessage());
                                    if (r10 != 0) {
                                        r10.a(null, null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), th.getMessage());
                                        return null;
                                    }
                                    return null;
                                }
                            }
                            ArrayList arrayList5 = arrayList3;
                            int iIntValue5 = waterfallResponse.waterfall.strategy_waterfall.concurrent_count.intValue();
                            Waterfall waterfall = waterfallResponse.waterfall;
                            String str2 = waterfall.strategy_id;
                            int iIntValue6 = waterfall.strategy_waterfall.ab_flag.intValue();
                            int iIntValue7 = waterfallResponse.waterfall.strategy_waterfall.traffic_weight.intValue();
                            boolean zBooleanValue = waterfallResponse.waterfall.enable_ab_test.booleanValue();
                            int iIntValue8 = waterfallResponse.waterfall.strategy_waterfall.load_timeout.intValue();
                            int iIntValue9 = waterfallResponse.waterfall.strategy_waterfall.type.intValue();
                            int iIntValue10 = waterfallResponse.waterfall.time_type.intValue();
                            int iIntValue11 = waterfallResponse.waterfall.strategy_waterfall.refresh_interval.intValue();
                            boolean zBooleanValue2 = waterfallResponse.waterfall.strategy_waterfall.playing_auto_load.booleanValue();
                            boolean zBooleanValue3 = waterfallResponse.waterfall.strategy_waterfall.bid_bottom_line_switch.booleanValue();
                            int iIntValue12 = waterfallResponse.waterfall.strategy_waterfall.bidding_timeout.intValue();
                            Waterfall waterfall2 = waterfallResponse.waterfall;
                            q qVar = new q(iIntValue5, str2, iIntValue6, iIntValue7, zBooleanValue, iIntValue8, iIntValue9, iIntValue10, iIntValue11, zBooleanValue2, zBooleanValue3, iIntValue12, waterfall2.track_url, waterfallResponse.dc_options, waterfall2.strategy_waterfall.enable_concurrency.booleanValue(), waterfallResponse.waterfall.strategy_waterfall.max_concurrent_count.intValue(), waterfallResponse.waterfall.strategy_waterfall.notify_bid_result_switch.booleanValue(), waterfallResponse.waterfall.strategy_realtime_refresh.booleanValue(), waterfallResponse.waterfall.client_bidding_switch.booleanValue(), waterfallResponse.waterfall.currency_setting);
                            if (arrayList5.size() > 0) {
                                qVar.a(arrayList4);
                                listener.a(type, arrayList5, qVar, waterfallResponse.waterfall);
                                return qVar;
                            }
                            WMLogUtil.e("----deliverResponse: error_message " + waterfallResponse.error_message);
                            int iIntValue13 = waterfallResponse.code.intValue();
                            String str3 = waterfallResponse.error_message;
                            if (iIntValue13 == 0) {
                                iIntValue13 = WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode();
                                str3 = "strategyResponse list is null";
                            }
                            ArrayList arrayList6 = new ArrayList();
                            if (waterfallResponse.code.intValue() == 500448) {
                                for (int i15 = 0; i15 < waterfallResponse.waterfall.elements.size(); i15++) {
                                    MediationElement mediationElement2 = waterfallResponse.waterfall.elements.get(i15);
                                    HBResponse hBResponse2 = mediationElement2.hb_response;
                                    if (hBResponse2 != null && !TextUtils.isEmpty(hBResponse2.lose_url)) {
                                        arrayList6.add(mediationElement2.hb_response);
                                    }
                                }
                            }
                            listener.a(arrayList4, a(adRequest, waterfallResponse), iIntValue13, str3);
                            return null;
                        }
                        listener.a((List<a>) null, a(windMillAdRequest, waterfallResponse), WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), "strategyResponse strategy_waterfall frequency is limit");
                    }
                } else if (waterfallResponse.code.intValue() == 0) {
                    listener.a((List<a>) null, (a) null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), "waterfallResponse strategy_waterfall is null");
                } else {
                    listener.a((List<a>) null, waterfallResponse.waterfall != null ? a(windMillAdRequest, waterfallResponse) : null, waterfallResponse.code.intValue(), waterfallResponse.error_message);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            r10 = listener;
        }
        return null;
    }

    private static a a(WindMillAdRequest adRequest, WaterfallResponse waterfallResponse) {
        int adType = adRequest.getAdType();
        String placementId = adRequest.getPlacementId();
        Map<String, String> map = waterfallResponse.dc_options;
        Waterfall waterfall = waterfallResponse.waterfall;
        String str = waterfall.strategy_id;
        String str2 = waterfall.rule_id;
        boolean zBooleanValue = waterfall.enable_ab_test.booleanValue();
        Waterfall waterfall2 = waterfallResponse.waterfall;
        String str3 = waterfall2.rv_callback_url;
        int iIntValue = waterfall2.strategy_waterfall.ab_flag.intValue();
        int iIntValue2 = waterfallResponse.waterfall.strategy_waterfall.experiment_id.intValue();
        int iIntValue3 = waterfallResponse.waterfall.strategy_waterfall.sub_experiment_id.intValue();
        int iIntValue4 = waterfallResponse.waterfall.strategy_waterfall.traffic_weight.intValue();
        Waterfall waterfall3 = waterfallResponse.waterfall;
        return new a(adType, placementId, map, str, str2, zBooleanValue, str3, iIntValue, iIntValue2, iIntValue3, iIntValue4, waterfall3.mabc_url, waterfall3.timestamp.longValue(), waterfallResponse.waterfall.check_mask.intValue());
    }

    private static void a(int channelId, Map<String, String> option) {
        try {
            List<WMNetworkConfig.WMAdnInit> listB = com.windmill.sdk.common.h.a().b();
            if (listB == null || listB.size() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < listB.size(); i10++) {
                WMNetworkConfig.WMAdnInit wMAdnInit = listB.get(i10);
                if (wMAdnInit != null && wMAdnInit.getAdnId() == channelId) {
                    WMLogUtil.d("strategy cacheInit:" + channelId + ":" + option.toString());
                    SharedPreferences.Editor editorEdit = com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext()).edit();
                    editorEdit.putString(String.valueOf(channelId), option.toString());
                    editorEdit.commit();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
