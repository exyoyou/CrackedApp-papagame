package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class jn implements com.kwad.sdk.core.d<com.kwad.sdk.core.network.j> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.network.j) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.network.j) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.network.j jVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        jVar.aTx = jSONObject.optLong("request_prepare_cost");
        jVar.aTy = jSONObject.optLong("request_add_params_cost");
        jVar.aTz = jSONObject.optLong("request_create_cost");
        jVar.aTA = jSONObject.optInt("keep_alive");
        jVar.aTB = jSONObject.optLong("dns_start");
        jVar.aTC = jSONObject.optLong("dns_cost");
        jVar.aTD = jSONObject.optLong("connect_establish_start");
        jVar.aTE = jSONObject.optLong("connect_establish_cost");
        jVar.aTF = jSONObject.optLong("request_start");
        jVar.aTG = jSONObject.optLong("request_cost");
        jVar.aTH = jSONObject.optLong("request_size");
        jVar.aTI = jSONObject.optLong("response_start");
        jVar.aTJ = jSONObject.optLong("response_cost");
        jVar.aTK = jSONObject.optLong("response_parse_cost");
        jVar.aTL = jSONObject.optLong("response_size");
        jVar.aTM = jSONObject.optLong("waiting_response_cost");
        jVar.aTN = jSONObject.optLong("total_cost");
        jVar.aTO = jSONObject.optInt("proxy_used");
        jVar.aTP = jSONObject.optString("request_id");
        if (JSONObject.NULL.toString().equals(jVar.aTP)) {
            jVar.aTP = "";
        }
        jVar.aTQ = jSONObject.optInt("has_data_v2");
        jVar.result = jSONObject.optInt("result");
        jVar.aTR = jSONObject.optLong("response_done_cost");
        jVar.aTS = jSONObject.optString("host_ip");
        if (JSONObject.NULL.toString().equals(jVar.aTS)) {
            jVar.aTS = "";
        }
        jVar.aTT = jSONObject.optInt("ip_type");
        jVar.aTU = jSONObject.optInt("recommend_ping_time");
        jVar.aTV = jSONObject.optInt("backup_ping_time");
        jVar.aTW = jSONObject.optInt("other_ping_time");
    }

    private static JSONObject b(com.kwad.sdk.core.network.j jVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = jVar.aTx;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_prepare_cost", j10);
        }
        long j11 = jVar.aTy;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_add_params_cost", j11);
        }
        long j12 = jVar.aTz;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_create_cost", j12);
        }
        int i10 = jVar.aTA;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "keep_alive", i10);
        }
        long j13 = jVar.aTB;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "dns_start", j13);
        }
        long j14 = jVar.aTC;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "dns_cost", j14);
        }
        long j15 = jVar.aTD;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "connect_establish_start", j15);
        }
        long j16 = jVar.aTE;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "connect_establish_cost", j16);
        }
        long j17 = jVar.aTF;
        if (j17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_start", j17);
        }
        long j18 = jVar.aTG;
        if (j18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_cost", j18);
        }
        long j19 = jVar.aTH;
        if (j19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_size", j19);
        }
        long j20 = jVar.aTI;
        if (j20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "response_start", j20);
        }
        long j21 = jVar.aTJ;
        if (j21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "response_cost", j21);
        }
        long j22 = jVar.aTK;
        if (j22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "response_parse_cost", j22);
        }
        long j23 = jVar.aTL;
        if (j23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "response_size", j23);
        }
        long j24 = jVar.aTM;
        if (j24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "waiting_response_cost", j24);
        }
        long j25 = jVar.aTN;
        if (j25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "total_cost", j25);
        }
        int i11 = jVar.aTO;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "proxy_used", i11);
        }
        String str = jVar.aTP;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_id", jVar.aTP);
        }
        int i12 = jVar.aTQ;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "has_data_v2", i12);
        }
        int i13 = jVar.result;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "result", i13);
        }
        long j26 = jVar.aTR;
        if (j26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "response_done_cost", j26);
        }
        String str2 = jVar.aTS;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "host_ip", jVar.aTS);
        }
        int i14 = jVar.aTT;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ip_type", i14);
        }
        int i15 = jVar.aTU;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "recommend_ping_time", i15);
        }
        int i16 = jVar.aTV;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "backup_ping_time", i16);
        }
        int i17 = jVar.aTW;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "other_ping_time", i17);
        }
        return jSONObject;
    }
}
