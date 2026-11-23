package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bk implements com.kwad.sdk.core.d<com.kwad.sdk.commercial.a.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.commercial.a.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.commercial.a.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.commercial.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.url = jSONObject.optString("url");
        if (JSONObject.NULL.toString().equals(bVar.url)) {
            bVar.url = "";
        }
        bVar.aJY = jSONObject.optString("url_host");
        if (JSONObject.NULL.toString().equals(bVar.aJY)) {
            bVar.aJY = "";
        }
        bVar.downloadId = jSONObject.optString("download_id");
        if (JSONObject.NULL.toString().equals(bVar.downloadId)) {
            bVar.downloadId = "";
        }
        bVar.aJZ = jSONObject.optString("apk_package");
        if (JSONObject.NULL.toString().equals(bVar.aJZ)) {
            bVar.aJZ = "";
        }
        bVar.aKa = jSONObject.optString("apk_name");
        if (JSONObject.NULL.toString().equals(bVar.aKa)) {
            bVar.aKa = "";
        }
        bVar.aKb = jSONObject.optLong("apk_size");
        bVar.downloadTime = jSONObject.optLong("download_time");
        bVar.aKc = jSONObject.optLong("apk_cur_size");
        bVar.aKd = jSONObject.optInt("apk_install_type");
        bVar.aKe = jSONObject.optInt("apk_install_source");
    }

    private static JSONObject b(com.kwad.sdk.commercial.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = bVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        String str = bVar.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", bVar.url);
        }
        String str2 = bVar.aJY;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url_host", bVar.aJY);
        }
        String str3 = bVar.downloadId;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "download_id", bVar.downloadId);
        }
        String str4 = bVar.aJZ;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_package", bVar.aJZ);
        }
        String str5 = bVar.aKa;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_name", bVar.aKa);
        }
        long j10 = bVar.aKb;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_size", j10);
        }
        long j11 = bVar.downloadTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "download_time", j11);
        }
        long j12 = bVar.aKc;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_cur_size", j12);
        }
        int i11 = bVar.aKd;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_install_type", i11);
        }
        int i12 = bVar.aKe;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apk_install_source", i12);
        }
        return jSONObject;
    }
}
