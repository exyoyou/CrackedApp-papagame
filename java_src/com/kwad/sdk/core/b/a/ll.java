package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ll implements com.kwad.sdk.core.d<com.kwad.sdk.monitor.b.C0956b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.monitor.b.C0956b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.monitor.b.C0956b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.monitor.b.C0956b c0956b, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0956b.bjh = jSONObject.optInt("enable_monitor");
        c0956b.bji = jSONObject.optString("c_sc_name");
        if (JSONObject.NULL.toString().equals(c0956b.bji)) {
            c0956b.bji = "";
        }
        c0956b.bjj = jSONObject.optString("c_pcl_name");
        if (JSONObject.NULL.toString().equals(c0956b.bjj)) {
            c0956b.bjj = "";
        }
        c0956b.bjk = jSONObject.optString("m_gam_name");
        if (JSONObject.NULL.toString().equals(c0956b.bjk)) {
            c0956b.bjk = "";
        }
        c0956b.bjl = jSONObject.optString("m_gsv_name");
        if (JSONObject.NULL.toString().equals(c0956b.bjl)) {
            c0956b.bjl = "";
        }
        c0956b.bjm = jSONObject.optString("m_gpv_name");
        if (JSONObject.NULL.toString().equals(c0956b.bjm)) {
            c0956b.bjm = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.monitor.b.C0956b c0956b, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = c0956b.bjh;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enable_monitor", i10);
        }
        String str = c0956b.bji;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "c_sc_name", c0956b.bji);
        }
        String str2 = c0956b.bjj;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "c_pcl_name", c0956b.bjj);
        }
        String str3 = c0956b.bjk;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gam_name", c0956b.bjk);
        }
        String str4 = c0956b.bjl;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gsv_name", c0956b.bjl);
        }
        String str5 = c0956b.bjm;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "m_gpv_name", c0956b.bjm);
        }
        return jSONObject;
    }
}
