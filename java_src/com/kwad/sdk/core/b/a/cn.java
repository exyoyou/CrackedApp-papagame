package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cn implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.a.C0924a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.a.C0924a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.a.C0924a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.a.C0924a c0924a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0924a.aLf = jSONObject.optInt("ad_retry_type");
        c0924a.templateId = jSONObject.optString("template_id");
        if (JSONObject.NULL.toString().equals(c0924a.templateId)) {
            c0924a.templateId = "";
        }
        c0924a.aLg = jSONObject.optString("template_sub_id");
        if (JSONObject.NULL.toString().equals(c0924a.aLg)) {
            c0924a.aLg = "";
        }
        c0924a.aLh = jSONObject.optString("default_type");
        if (JSONObject.NULL.toString().equals(c0924a.aLh)) {
            c0924a.aLh = "";
        }
        c0924a.aLi = jSONObject.optString("tk_template_id");
        if (JSONObject.NULL.toString().equals(c0924a.aLi)) {
            c0924a.aLi = "";
        }
        c0924a.aLj = jSONObject.optString("tk_template_version");
        if (JSONObject.NULL.toString().equals(c0924a.aLj)) {
            c0924a.aLj = "";
        }
        c0924a.tkPublishType = jSONObject.optInt("tk_publish_type", new Integer("0").intValue());
        c0924a.aLl = jSONObject.optString("template_show_type");
        if (JSONObject.NULL.toString().equals(c0924a.aLl)) {
            c0924a.aLl = "";
        }
        c0924a.aLm = jSONObject.optInt("network_download_status", new Integer("3").intValue());
        c0924a.aLn = jSONObject.optInt("award_task_name");
        c0924a.aLo = jSONObject.optInt("jumps_liveroom_type");
        c0924a.aLp = jSONObject.optInt("universe_feature_freg");
        c0924a.aLq = jSONObject.optInt("replace_url_succ");
        c0924a.aLr = jSONObject.optBoolean("is_dp_opt");
        c0924a.aLs = jSONObject.optString("component_module");
        if (JSONObject.NULL.toString().equals(c0924a.aLs)) {
            c0924a.aLs = "";
        }
        c0924a.aLu = jSONObject.optInt("is_carousel");
        c0924a.aLv = jSONObject.optInt("is_special_preload");
        c0924a.aLw = jSONObject.optInt("card_type");
        c0924a.aLx = jSONObject.optInt("is_closure");
        c0924a.aLy = jSONObject.optInt("is_click_invoked");
        c0924a.aLz = jSONObject.optString("authorization_status");
        if (JSONObject.NULL.toString().equals(c0924a.aLz)) {
            c0924a.aLz = "";
        }
        c0924a.aLA = jSONObject.optString("login_source");
        if (JSONObject.NULL.toString().equals(c0924a.aLA)) {
            c0924a.aLA = "";
        }
        c0924a.aLB = jSONObject.optInt("is_login");
        c0924a.aLC = jSONObject.optInt("interception_time");
        c0924a.aLD = jSONObject.optInt("interception_reason");
        c0924a.aLE = jSONObject.optInt("coupon_receive_status");
        c0924a.aLG = jSONObject.optInt("deeplink_evocation_source");
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.a.C0924a c0924a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = c0924a.aLf;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_retry_type", i10);
        }
        String str = c0924a.templateId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_id", c0924a.templateId);
        }
        String str2 = c0924a.aLg;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_sub_id", c0924a.aLg);
        }
        String str3 = c0924a.aLh;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "default_type", c0924a.aLh);
        }
        String str4 = c0924a.aLi;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_template_id", c0924a.aLi);
        }
        String str5 = c0924a.aLj;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_template_version", c0924a.aLj);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "tk_publish_type", c0924a.tkPublishType);
        String str6 = c0924a.aLl;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "template_show_type", c0924a.aLl);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "network_download_status", c0924a.aLm);
        int i11 = c0924a.aLn;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "award_task_name", i11);
        }
        int i12 = c0924a.aLo;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jumps_liveroom_type", i12);
        }
        int i13 = c0924a.aLp;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "universe_feature_freg", i13);
        }
        int i14 = c0924a.aLq;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "replace_url_succ", i14);
        }
        boolean z10 = c0924a.aLr;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_dp_opt", z10);
        }
        String str7 = c0924a.aLs;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "component_module", c0924a.aLs);
        }
        int i15 = c0924a.aLu;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_carousel", i15);
        }
        int i16 = c0924a.aLv;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_special_preload", i16);
        }
        int i17 = c0924a.aLw;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "card_type", i17);
        }
        int i18 = c0924a.aLx;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_closure", i18);
        }
        int i19 = c0924a.aLy;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_click_invoked", i19);
        }
        String str8 = c0924a.aLz;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "authorization_status", c0924a.aLz);
        }
        String str9 = c0924a.aLA;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "login_source", c0924a.aLA);
        }
        int i20 = c0924a.aLB;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_login", i20);
        }
        int i21 = c0924a.aLC;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interception_time", i21);
        }
        int i22 = c0924a.aLD;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interception_reason", i22);
        }
        int i23 = c0924a.aLE;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "coupon_receive_status", i23);
        }
        int i24 = c0924a.aLG;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplink_evocation_source", i24);
        }
        return jSONObject;
    }
}
