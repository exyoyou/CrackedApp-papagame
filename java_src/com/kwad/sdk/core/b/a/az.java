package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.track.AdTrackLog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class az implements com.kwad.sdk.core.d<AdTrackLog> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdTrackLog) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdTrackLog) bVar, jSONObject);
    }

    private static void a(AdTrackLog adTrackLog, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adTrackLog.templateId = jSONObject.optString("template_id");
        if (JSONObject.NULL.toString().equals(adTrackLog.templateId)) {
            adTrackLog.templateId = "";
        }
        adTrackLog.sceneId = jSONObject.optString("scene_id");
        if (JSONObject.NULL.toString().equals(adTrackLog.sceneId)) {
            adTrackLog.sceneId = "";
        }
        adTrackLog.preLandingPageSwitch = jSONObject.optInt("pre_landing_page_switch");
        adTrackLog.preLandingPageShowType = jSONObject.optInt("pre_landing_page_show_type");
        adTrackLog.adLiveSwitch = jSONObject.optInt("ad_live_switch");
        adTrackLog.adTkLiveSwitch = jSONObject.optInt("ad_tk_live_switch");
        adTrackLog.adLiveComponentReady = jSONObject.optInt("ad_live_component_ready");
        adTrackLog.serverCheckSwitch = jSONObject.optInt("server_check_switch");
        adTrackLog.rewardAdvanceSwitch = jSONObject.optInt("reward_advance_switch");
        adTrackLog.rewardSkipShowTime = jSONObject.optInt("reward_skip_show_time");
        adTrackLog.isPlugin = jSONObject.optInt("is_plugin");
        adTrackLog.apiSdkVersion = jSONObject.optString("api_sdk_version");
        if (JSONObject.NULL.toString().equals(adTrackLog.apiSdkVersion)) {
            adTrackLog.apiSdkVersion = "";
        }
        adTrackLog.rewardDetailStatusBarHeight = jSONObject.optInt("reward_detail_status_bar_height");
        adTrackLog.rewardDetailCallPositionY = jSONObject.optInt("reward_detail_call_position_y");
        adTrackLog.screenOrientation = jSONObject.optInt("screen_orientation");
        adTrackLog.ksUaPattern = jSONObject.optInt("ks_ua_pattern");
        adTrackLog.unionMark = jSONObject.optInt("union_mark");
    }

    private static JSONObject b(AdTrackLog adTrackLog, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = adTrackLog.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", adTrackLog.templateId);
        }
        String str2 = adTrackLog.sceneId;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "scene_id", adTrackLog.sceneId);
        }
        int i10 = adTrackLog.preLandingPageSwitch;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pre_landing_page_switch", i10);
        }
        int i11 = adTrackLog.preLandingPageShowType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pre_landing_page_show_type", i11);
        }
        int i12 = adTrackLog.adLiveSwitch;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_live_switch", i12);
        }
        int i13 = adTrackLog.adTkLiveSwitch;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_tk_live_switch", i13);
        }
        int i14 = adTrackLog.adLiveComponentReady;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_live_component_ready", i14);
        }
        int i15 = adTrackLog.serverCheckSwitch;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "server_check_switch", i15);
        }
        int i16 = adTrackLog.rewardAdvanceSwitch;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "reward_advance_switch", i16);
        }
        int i17 = adTrackLog.rewardSkipShowTime;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "reward_skip_show_time", i17);
        }
        int i18 = adTrackLog.isPlugin;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_plugin", i18);
        }
        String str3 = adTrackLog.apiSdkVersion;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "api_sdk_version", adTrackLog.apiSdkVersion);
        }
        int i19 = adTrackLog.rewardDetailStatusBarHeight;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "reward_detail_status_bar_height", i19);
        }
        int i20 = adTrackLog.rewardDetailCallPositionY;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "reward_detail_call_position_y", i20);
        }
        int i21 = adTrackLog.screenOrientation;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screen_orientation", i21);
        }
        int i22 = adTrackLog.ksUaPattern;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ks_ua_pattern", i22);
        }
        int i23 = adTrackLog.unionMark;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "union_mark", i23);
        }
        return jSONObject;
    }
}
