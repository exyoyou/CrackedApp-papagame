package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.kwad.components.ad.splashscreen.monitor.SplashMonitorInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class mh implements com.kwad.sdk.core.d<SplashMonitorInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((SplashMonitorInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((SplashMonitorInfo) bVar, jSONObject);
    }

    private static void a(SplashMonitorInfo splashMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        splashMonitorInfo.status = jSONObject.optInt("status");
        splashMonitorInfo.type = jSONObject.optInt("type");
        splashMonitorInfo.preloadId = jSONObject.optString("preload_id");
        if (JSONObject.NULL.toString().equals(splashMonitorInfo.preloadId)) {
            splashMonitorInfo.preloadId = "";
        }
        splashMonitorInfo.checkStatus = jSONObject.optInt("check_status");
        splashMonitorInfo.loadDataTime = jSONObject.optLong("load_data_duration_ms");
        splashMonitorInfo.beforeLoadDataTime = jSONObject.optLong("before_load_data_duration_ms");
        splashMonitorInfo.checkDataTime = jSONObject.optLong("check_data_duration_ms");
        splashMonitorInfo.loadAndCheckDataTime = jSONObject.optLong("load_and_check_data_duration_ms");
        splashMonitorInfo.costTime = jSONObject.optLong("duration_ms");
        splashMonitorInfo.ids = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ids");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                splashMonitorInfo.ids.add((String) jSONArrayOptJSONArray.opt(i10));
            }
        }
        splashMonitorInfo.count = jSONObject.optInt(QuarkInstallAppActivity_.COUNT_EXTRA);
        splashMonitorInfo.cacheValidTime = jSONObject.optLong("validity_period_ms");
        splashMonitorInfo.size = jSONObject.optLong("size");
        splashMonitorInfo.url = jSONObject.optString("url");
        if (JSONObject.NULL.toString().equals(splashMonitorInfo.url)) {
            splashMonitorInfo.url = "";
        }
        splashMonitorInfo.creativeId = jSONObject.optLong("creative_id");
        splashMonitorInfo.materialType = jSONObject.optInt("material_type");
        splashMonitorInfo.totalCount = jSONObject.optInt("total_count");
        splashMonitorInfo.creativeIds = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("creative_ids");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                splashMonitorInfo.creativeIds.add((String) jSONArrayOptJSONArray2.opt(i11));
            }
        }
        splashMonitorInfo.preloadIds = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("preload_ids");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                splashMonitorInfo.preloadIds.add((String) jSONArrayOptJSONArray3.opt(i12));
            }
        }
        splashMonitorInfo.materialTypes = new ArrayList();
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("material_types");
        if (jSONArrayOptJSONArray4 != null) {
            for (int i13 = 0; i13 < jSONArrayOptJSONArray4.length(); i13++) {
                splashMonitorInfo.materialTypes.add((Integer) jSONArrayOptJSONArray4.opt(i13));
            }
        }
        splashMonitorInfo.updateType = jSONObject.optInt("update_type");
        splashMonitorInfo.clearCount = jSONObject.optInt("clear_count");
        splashMonitorInfo.clearImageCount = jSONObject.optInt("clear_image_count");
        splashMonitorInfo.clearVideoCount = jSONObject.optInt("clear_video_count");
        splashMonitorInfo.requestType = jSONObject.optInt("request_type");
        splashMonitorInfo.loadType = jSONObject.optInt("load_type");
        splashMonitorInfo.posId = jSONObject.optLong("pos_Id");
        splashMonitorInfo.viewSource = jSONObject.optInt("view_source");
        splashMonitorInfo.elementTypes = new ArrayList();
        JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("element_types");
        if (jSONArrayOptJSONArray5 != null) {
            for (int i14 = 0; i14 < jSONArrayOptJSONArray5.length(); i14++) {
                splashMonitorInfo.elementTypes.add((Integer) jSONArrayOptJSONArray5.opt(i14));
            }
        }
        splashMonitorInfo.interactiveStyle = jSONObject.optString("interactive_style");
        if (JSONObject.NULL.toString().equals(splashMonitorInfo.interactiveStyle)) {
            splashMonitorInfo.interactiveStyle = "";
        }
        splashMonitorInfo.interactivityDefaultStyle = jSONObject.optString("interactivity_default_style");
        if (JSONObject.NULL.toString().equals(splashMonitorInfo.interactivityDefaultStyle)) {
            splashMonitorInfo.interactivityDefaultStyle = "";
        }
        splashMonitorInfo.showEndTime = jSONObject.optLong("show_end_time");
        splashMonitorInfo.isRotateComposeTimeout = jSONObject.optBoolean("is_rotate_compose_timeout");
        splashMonitorInfo.tkDefaultTimeout = jSONObject.optLong("tk_default_timeout");
        splashMonitorInfo.soSource = jSONObject.optInt("so_source");
        splashMonitorInfo.soLoadTime = jSONObject.optLong("so_load_time");
        splashMonitorInfo.offlineSource = jSONObject.optInt("offline_source");
        splashMonitorInfo.offlineLoadTime = jSONObject.optLong("offline_load_time");
        splashMonitorInfo.tkFileLoadTime = jSONObject.optLong("tk_file_load_time");
        splashMonitorInfo.tkInitTime = jSONObject.optLong("tk_init_time");
        splashMonitorInfo.tkRenderTime = jSONObject.optLong("tk_render_time");
        splashMonitorInfo.nativeLoadTime = jSONObject.optLong("native_load_time");
        splashMonitorInfo.isWebTimeout = jSONObject.optBoolean("is_web_timeout");
        splashMonitorInfo.webLoadTime = jSONObject.optLong("web_load_time");
        splashMonitorInfo.templateId = jSONObject.optString("template_id");
        if (JSONObject.NULL.toString().equals(splashMonitorInfo.templateId)) {
            splashMonitorInfo.templateId = "";
        }
        splashMonitorInfo.templateVersionCode = jSONObject.optInt("template_version_code");
        splashMonitorInfo.tkTotalTime = jSONObject.optLong("tk_total_time");
        splashMonitorInfo.actionType = jSONObject.optInt("action_type");
        splashMonitorInfo.callbackType = jSONObject.optInt("callback_type");
        splashMonitorInfo.tkRenderType = jSONObject.optLong("tk_render_type");
        splashMonitorInfo.loadProcessType = jSONObject.optLong("load_process_type");
        splashMonitorInfo.rootVisible = jSONObject.optBoolean("root_visible");
        splashMonitorInfo.parentVisible = jSONObject.optBoolean("parent_visible");
        splashMonitorInfo.addLoadTime = jSONObject.optLong("add_load_time");
        splashMonitorInfo.buriedPointOptimizeType = jSONObject.optInt("buried_point_optimize_type");
        splashMonitorInfo.visibleCheckDelayTime = jSONObject.optLong("visible_check_delay_time");
        splashMonitorInfo.requestLoadTime = jSONObject.optLong("request_load_Time");
        splashMonitorInfo.showType = jSONObject.optInt("show_type");
        splashMonitorInfo.showDurationMs = jSONObject.optLong("show_duration_ms");
        splashMonitorInfo.hasUnbind = jSONObject.optBoolean("has_unbind");
    }

    private static JSONObject b(SplashMonitorInfo splashMonitorInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = splashMonitorInfo.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = splashMonitorInfo.type;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i11);
        }
        String str = splashMonitorInfo.preloadId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "preload_id", splashMonitorInfo.preloadId);
        }
        int i12 = splashMonitorInfo.checkStatus;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "check_status", i12);
        }
        long j10 = splashMonitorInfo.loadDataTime;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_data_duration_ms", j10);
        }
        long j11 = splashMonitorInfo.beforeLoadDataTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "before_load_data_duration_ms", j11);
        }
        long j12 = splashMonitorInfo.checkDataTime;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "check_data_duration_ms", j12);
        }
        long j13 = splashMonitorInfo.loadAndCheckDataTime;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_and_check_data_duration_ms", j13);
        }
        long j14 = splashMonitorInfo.costTime;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "duration_ms", j14);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "ids", splashMonitorInfo.ids);
        int i13 = splashMonitorInfo.count;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, QuarkInstallAppActivity_.COUNT_EXTRA, i13);
        }
        long j15 = splashMonitorInfo.cacheValidTime;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "validity_period_ms", j15);
        }
        long j16 = splashMonitorInfo.size;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "size", j16);
        }
        String str2 = splashMonitorInfo.url;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", splashMonitorInfo.url);
        }
        long j17 = splashMonitorInfo.creativeId;
        if (j17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j17);
        }
        int i14 = splashMonitorInfo.materialType;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i14);
        }
        int i15 = splashMonitorInfo.totalCount;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "total_count", i15);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_ids", splashMonitorInfo.creativeIds);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "preload_ids", splashMonitorInfo.preloadIds);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "material_types", splashMonitorInfo.materialTypes);
        int i16 = splashMonitorInfo.updateType;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "update_type", i16);
        }
        int i17 = splashMonitorInfo.clearCount;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clear_count", i17);
        }
        int i18 = splashMonitorInfo.clearImageCount;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clear_image_count", i18);
        }
        int i19 = splashMonitorInfo.clearVideoCount;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clear_video_count", i19);
        }
        int i20 = splashMonitorInfo.requestType;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_type", i20);
        }
        int i21 = splashMonitorInfo.loadType;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_type", i21);
        }
        long j18 = splashMonitorInfo.posId;
        if (j18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pos_Id", j18);
        }
        int i22 = splashMonitorInfo.viewSource;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "view_source", i22);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "element_types", splashMonitorInfo.elementTypes);
        String str3 = splashMonitorInfo.interactiveStyle;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interactive_style", splashMonitorInfo.interactiveStyle);
        }
        String str4 = splashMonitorInfo.interactivityDefaultStyle;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interactivity_default_style", splashMonitorInfo.interactivityDefaultStyle);
        }
        long j19 = splashMonitorInfo.showEndTime;
        if (j19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "show_end_time", j19);
        }
        boolean z10 = splashMonitorInfo.isRotateComposeTimeout;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_rotate_compose_timeout", z10);
        }
        long j20 = splashMonitorInfo.tkDefaultTimeout;
        if (j20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_default_timeout", j20);
        }
        int i23 = splashMonitorInfo.soSource;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "so_source", i23);
        }
        long j21 = splashMonitorInfo.soLoadTime;
        if (j21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "so_load_time", j21);
        }
        int i24 = splashMonitorInfo.offlineSource;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "offline_source", i24);
        }
        long j22 = splashMonitorInfo.offlineLoadTime;
        if (j22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "offline_load_time", j22);
        }
        long j23 = splashMonitorInfo.tkFileLoadTime;
        if (j23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_file_load_time", j23);
        }
        long j24 = splashMonitorInfo.tkInitTime;
        if (j24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_init_time", j24);
        }
        long j25 = splashMonitorInfo.tkRenderTime;
        if (j25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_render_time", j25);
        }
        long j26 = splashMonitorInfo.nativeLoadTime;
        if (j26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "native_load_time", j26);
        }
        boolean z11 = splashMonitorInfo.isWebTimeout;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_web_timeout", z11);
        }
        long j27 = splashMonitorInfo.webLoadTime;
        if (j27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "web_load_time", j27);
        }
        String str5 = splashMonitorInfo.templateId;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", splashMonitorInfo.templateId);
        }
        int i25 = splashMonitorInfo.templateVersionCode;
        if (i25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_version_code", i25);
        }
        long j28 = splashMonitorInfo.tkTotalTime;
        if (j28 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_total_time", j28);
        }
        int i26 = splashMonitorInfo.actionType;
        if (i26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "action_type", i26);
        }
        int i27 = splashMonitorInfo.callbackType;
        if (i27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callback_type", i27);
        }
        long j29 = splashMonitorInfo.tkRenderType;
        if (j29 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_render_type", j29);
        }
        long j30 = splashMonitorInfo.loadProcessType;
        if (j30 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_process_type", j30);
        }
        boolean z12 = splashMonitorInfo.rootVisible;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "root_visible", z12);
        }
        boolean z13 = splashMonitorInfo.parentVisible;
        if (z13) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "parent_visible", z13);
        }
        long j31 = splashMonitorInfo.addLoadTime;
        if (j31 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "add_load_time", j31);
        }
        int i28 = splashMonitorInfo.buriedPointOptimizeType;
        if (i28 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "buried_point_optimize_type", i28);
        }
        long j32 = splashMonitorInfo.visibleCheckDelayTime;
        if (j32 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "visible_check_delay_time", j32);
        }
        long j33 = splashMonitorInfo.requestLoadTime;
        if (j33 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_load_Time", j33);
        }
        int i29 = splashMonitorInfo.showType;
        if (i29 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "show_type", i29);
        }
        long j34 = splashMonitorInfo.showDurationMs;
        if (j34 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "show_duration_ms", j34);
        }
        boolean z14 = splashMonitorInfo.hasUnbind;
        if (z14) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "has_unbind", z14);
        }
        return jSONObject;
    }
}
