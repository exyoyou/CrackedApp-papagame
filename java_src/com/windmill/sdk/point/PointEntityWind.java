package com.windmill.sdk.point;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntityBase;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.c;
import com.windmill.sdk.strategy.WMSdkConfig;
import com.windmill.sdk.utils.d;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class PointEntityWind extends PointEntityBase {
    public static int gameVersionCode;
    private String ab_test;
    private String ad_cnt;
    private String ad_position_custom_info;
    private String adapter_version;
    private String aggr_appid;
    private String aggr_channel_id;
    private String aggr_placement_id;
    private String aggr_waterfall_id;
    private String auto_load;
    private String bidding_type;
    private String call_source;
    private String concurrent_count;
    private String currency;
    public String currency_coefficient;
    private String custom_info;
    private String ecpm;
    private String element_ad_type;
    private String event_type;
    public String exchange_rate;
    private String execution_scene;
    private String experiment_id;
    public String express_ecpm;
    private String feed_cnt;
    private String gdpr_filters;
    private String group_id;
    private String guaranteed_ad;

    /* JADX INFO: renamed from: hb, reason: collision with root package name */
    private String f87079hb;
    private String hb_id;
    private String hb_response;
    private String higher_price;
    private String init_filters;
    private String interval_filters;
    private String isTimeOut;
    private String is_custom_android_id;
    private String is_custom_imei;
    private String is_custom_oaid;
    private String is_enter_sdk;
    private String is_native;
    private String is_out_sdk;
    private boolean is_pdb;
    private String is_reward;
    private String is_success;
    private String load_count;
    private String load_model;
    private String load_type;
    private String loading_filters;
    private String network_version;
    private String offer_id;
    private int pdb_priority;
    private String platform_trans_id;
    private String playing_filters;
    private String pldempty_filters;
    private String reward_action;
    private String rule_id;
    private String sdk_operation_bid_type;
    private String strategy_stage;
    private String subType;
    private String sub_experiment_id;
    private String template_id;
    public String template_type;
    private String traffic_weight;
    private String vlist_element;
    private String vlist_platform;
    private String weight;
    private String win_platform;

    public static PointEntityWind WindTracking(String category, String placement_id, String adType) {
        PointEntityWind pointEntityWind = new PointEntityWind();
        pointEntityWind.setAc_type(PointType.WIND_MILL_COMMON);
        pointEntityWind.setCategory(category);
        pointEntityWind.setAdtype(adType);
        pointEntityWind.setPlacement_id(placement_id);
        return pointEntityWind;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindMillAd.sharedAds().getAppId();
    }

    public String getAb_test() {
        return this.ab_test;
    }

    public String getAd_cnt() {
        return this.ad_cnt;
    }

    public String getAd_position_custom_info() {
        return this.ad_position_custom_info;
    }

    public String getAdapter_version() {
        return this.adapter_version;
    }

    public String getAggr_appid() {
        return this.aggr_appid;
    }

    public String getAggr_channel_id() {
        return this.aggr_channel_id;
    }

    public String getAggr_placement_id() {
        return this.aggr_placement_id;
    }

    public String getAggr_waterfall_id() {
        return this.aggr_waterfall_id;
    }

    public String getAuto_load() {
        return this.auto_load;
    }

    public String getBidding_type() {
        return this.bidding_type;
    }

    public String getCall_source() {
        return this.call_source;
    }

    public String getConcurrent_count() {
        return this.concurrent_count;
    }

    public String getCurrency() {
        return this.currency;
    }

    public String getCurrency_coefficient() {
        return this.currency_coefficient;
    }

    public String getCustom_info() {
        return this.custom_info;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return d.a().b();
    }

    public String getEcpm() {
        return this.ecpm;
    }

    public String getElement_ad_type() {
        return this.element_ad_type;
    }

    public String getEvent_type() {
        return this.event_type;
    }

    public String getExchange_rate() {
        return this.exchange_rate;
    }

    public String getExecution_scene() {
        return this.execution_scene;
    }

    public String getExperiment_id() {
        return this.experiment_id;
    }

    public String getExpress_ecpm() {
        return this.express_ecpm;
    }

    public String getFeed_cnt() {
        return this.feed_cnt;
    }

    public int getGameVersionCode() {
        int i10 = gameVersionCode;
        if (i10 > 0) {
            return i10;
        }
        try {
            Context context = WindMillAd.sharedAds().getContext();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                gameVersionCode = packageInfo.versionCode;
            }
            return gameVersionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String getGdpr_filters() {
        return this.gdpr_filters;
    }

    public String getGroup_id() {
        return this.group_id;
    }

    public String getGuaranteed_ad() {
        return this.guaranteed_ad;
    }

    public String getHb() {
        return this.f87079hb;
    }

    public String getHb_id() {
        return this.hb_id;
    }

    public String getHb_response() {
        return this.hb_response;
    }

    public String getHigher_price() {
        return this.higher_price;
    }

    public String getInit_filters() {
        return this.init_filters;
    }

    public String getInterval_filters() {
        return this.interval_filters;
    }

    public String getIs_custom_android_id() {
        return this.is_custom_android_id;
    }

    public String getIs_custom_imei() {
        return this.is_custom_imei;
    }

    public String getIs_custom_oaid() {
        return this.is_custom_oaid;
    }

    public String getIs_enter_sdk() {
        return this.is_enter_sdk;
    }

    public String getIs_native() {
        return this.is_native;
    }

    public String getIs_out_sdk() {
        return this.is_out_sdk;
    }

    public boolean getIs_pdb() {
        return this.is_pdb;
    }

    public String getIs_reward() {
        return this.is_reward;
    }

    public String getIs_success() {
        return this.is_success;
    }

    public String getIs_timeout() {
        return this.isTimeOut;
    }

    public String getLoad_count() {
        return this.load_count;
    }

    public String getLoad_model() {
        return this.load_model;
    }

    public String getLoad_type() {
        return this.load_type;
    }

    public String getLoading_filters() {
        return this.loading_filters;
    }

    public String getNetwork_version() {
        return this.network_version;
    }

    public String getOffer_id() {
        return this.offer_id;
    }

    public int getPdb_priority() {
        return this.pdb_priority;
    }

    public String getPlatform_trans_id() {
        return this.platform_trans_id;
    }

    public String getPlaying_filters() {
        return this.playing_filters;
    }

    public String getPldempty_filters() {
        return this.pldempty_filters;
    }

    public String getReward_action() {
        return this.reward_action;
    }

    public String getRule_id() {
        return this.rule_id;
    }

    public String getSdk_operation_bid_type() {
        return this.sdk_operation_bid_type;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String getSdkversion() {
        return WMConstants.SDK_VERSION;
    }

    public String getStrategy_stage() {
        return this.strategy_stage;
    }

    public String getSubType() {
        return this.subType;
    }

    public String getSub_experiment_id() {
        return this.sub_experiment_id;
    }

    public String getTemplate_id() {
        return this.template_id;
    }

    public String getTemplate_type() {
        return this.template_type;
    }

    public String getTraffic_weight() {
        return this.traffic_weight;
    }

    public String getVlist_element() {
        return this.vlist_element;
    }

    public String getVlist_platform() {
        return this.vlist_platform;
    }

    public String getWeight() {
        return this.weight;
    }

    public String getWin_platform() {
        return this.win_platform;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public boolean isAcTypeBlock() {
        if (!c.b()) {
            return true;
        }
        Iterator<Integer> it2 = WMSdkConfig.sharedInstance().getLogBlackList().iterator();
        while (it2.hasNext()) {
            if (getAc_type().equals(String.valueOf(it2.next()))) {
                WMLogUtil.e("block ac type " + getAc_type());
                return true;
            }
        }
        return false;
    }

    public void setAb_test(String ab_test) {
        this.ab_test = ab_test;
    }

    public void setAd_cnt(String ad_cnt) {
        this.ad_cnt = ad_cnt;
    }

    public void setAd_position_custom_info(String position_custom_info) {
        this.ad_position_custom_info = position_custom_info;
    }

    public void setAdapter_version(String adapter_version) {
        this.adapter_version = adapter_version;
    }

    public void setAggr_appid(String aggr_appid) {
        this.aggr_appid = aggr_appid;
    }

    public void setAggr_channel_id(String aggr_channel_id) {
        this.aggr_channel_id = aggr_channel_id;
    }

    public void setAggr_placement_id(String aggr_placement_id) {
        this.aggr_placement_id = aggr_placement_id;
    }

    public void setAggr_waterfall_id(String aggr_waterfall_id) {
        this.aggr_waterfall_id = aggr_waterfall_id;
    }

    public void setAuto_load(String auto_load) {
        this.auto_load = auto_load;
    }

    public void setBidding_type(String bidding_type) {
        this.bidding_type = bidding_type;
    }

    public void setCall_source(String call_source) {
        this.call_source = call_source;
    }

    public void setConcurrent_count(String concurrent_count) {
        this.concurrent_count = concurrent_count;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public void setCurrency_coefficient(String currency_coefficient) {
        this.currency_coefficient = currency_coefficient;
    }

    public void setCustom_info(String custom_info) {
        this.custom_info = custom_info;
    }

    public void setEcpm(String ecpm) {
        this.ecpm = ecpm;
    }

    public void setElement_ad_type(String element_ad_type) {
        this.element_ad_type = element_ad_type;
    }

    public void setEvent_type(String event_type) {
        this.event_type = event_type;
    }

    public void setExchange_rate(String exchange_rate) {
        this.exchange_rate = exchange_rate;
    }

    public void setExecution_scene(String execution_scene) {
        this.execution_scene = execution_scene;
    }

    public void setExperiment_id(String experiment_id) {
        this.experiment_id = experiment_id;
    }

    public void setFeed_cnt(String feed_cnt) {
        this.feed_cnt = feed_cnt;
    }

    public void setGdpr_filters(String gdpr_filters) {
        this.gdpr_filters = gdpr_filters;
    }

    public void setGroup_id(String group_id) {
        this.group_id = group_id;
    }

    public void setGuaranteed_ad(String guaranteed_ad) {
        this.guaranteed_ad = guaranteed_ad;
    }

    public void setHb(String hb2) {
        this.f87079hb = hb2;
    }

    public void setHb_id(String hb_id) {
        this.hb_id = hb_id;
    }

    public void setHb_response(String hb_response) {
        this.hb_response = hb_response;
    }

    public void setHigher_price(String higher_price) {
        this.higher_price = higher_price;
    }

    public void setInit_filters(String init_filters) {
        this.init_filters = init_filters;
    }

    public void setInterval_filters(String interval_filters) {
        this.interval_filters = interval_filters;
    }

    public void setIs_custom_android_id(String is_custom_android_id) {
        this.is_custom_android_id = is_custom_android_id;
    }

    public void setIs_custom_imei(String is_custom_imei) {
        this.is_custom_imei = is_custom_imei;
    }

    public void setIs_custom_oaid(String is_custom_oaid) {
        this.is_custom_oaid = is_custom_oaid;
    }

    public void setIs_enter_sdk(String is_enter_sdk) {
        this.is_enter_sdk = is_enter_sdk;
    }

    public void setIs_native(String is_native) {
        this.is_native = is_native;
    }

    public void setIs_out_sdk(String is_out_sdk) {
        this.is_out_sdk = is_out_sdk;
    }

    public void setIs_pdb(boolean isPdb) {
        this.is_pdb = isPdb;
    }

    public void setIs_success(String is_success) {
        this.is_success = is_success;
    }

    public void setLoad_count(String load_count) {
        this.load_count = load_count;
    }

    public void setLoad_model(String load_model) {
        this.load_model = load_model;
    }

    public void setLoad_type(String load_type) {
        this.load_type = load_type;
    }

    public void setLoading_filters(String loading_filters) {
        this.loading_filters = loading_filters;
    }

    public void setNetwork_version(String network_version) {
        this.network_version = network_version;
    }

    public void setOffer_id(String offer_id) {
        this.offer_id = offer_id;
    }

    public void setPdb_priority(int pdb_priority) {
        this.pdb_priority = pdb_priority;
    }

    public void setPlatform_trans_id(String platform_trans_id) {
        this.platform_trans_id = platform_trans_id;
    }

    public void setPlaying_filters(String playing_filters) {
        this.playing_filters = playing_filters;
    }

    public void setPldempty_filters(String pldempty_filters) {
        this.pldempty_filters = pldempty_filters;
    }

    public void setReward(String isReward) {
        this.is_reward = isReward;
    }

    public void setReward_action(String reward_action) {
        this.reward_action = reward_action;
    }

    public void setRule_id(String rule_id) {
        this.rule_id = rule_id;
    }

    public void setSdk_operation_bid_type(String sdk_operation_bid_type) {
        this.sdk_operation_bid_type = sdk_operation_bid_type;
    }

    public void setStrategy_stage(String strategy_stage) {
        this.strategy_stage = strategy_stage;
    }

    public void setSubType(String subType) {
        this.subType = subType;
    }

    public void setSub_experiment_id(String sub_experiment_id) {
        this.sub_experiment_id = sub_experiment_id;
    }

    public void setTemplate_id(String template_id) {
        this.template_id = template_id;
    }

    public void setTemplate_type(String template_type) {
        this.template_type = template_type;
    }

    public void setTimeOut(String timeOut) {
        this.isTimeOut = timeOut;
    }

    public void setTraffic_weight(String traffic_weight) {
        this.traffic_weight = traffic_weight;
    }

    public void setVlist_element(String vlist_element) {
        this.vlist_element = vlist_element;
    }

    public void setVlist_platform(String vlist_platform) {
        this.vlist_platform = vlist_platform;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public void setWin_platform(String win_platform) {
        this.win_platform = win_platform;
    }

    public void setexpress_ecpm(String groEcpm) {
        this.express_ecpm = groEcpm;
    }
}
