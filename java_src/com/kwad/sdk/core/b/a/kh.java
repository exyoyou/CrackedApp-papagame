package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class kh implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.ah.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.ah.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.ah.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.ah.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.SDKVersion = jSONObject.optString("SDKVersion");
        if (JSONObject.NULL.toString().equals(aVar.SDKVersion)) {
            aVar.SDKVersion = "";
        }
        aVar.SDKVersionCode = jSONObject.optInt("SDKVersionCode");
        aVar.sdkApiVersion = jSONObject.optString("sdkApiVersion");
        if (JSONObject.NULL.toString().equals(aVar.sdkApiVersion)) {
            aVar.sdkApiVersion = "";
        }
        aVar.sdkApiVersionCode = jSONObject.optInt("sdkApiVersionCode");
        aVar.sdkType = jSONObject.optInt("sdkType");
        aVar.appVersion = jSONObject.optString("appVersion");
        if (JSONObject.NULL.toString().equals(aVar.appVersion)) {
            aVar.appVersion = "";
        }
        aVar.appName = jSONObject.optString("appName");
        if (JSONObject.NULL.toString().equals(aVar.appName)) {
            aVar.appName = "";
        }
        aVar.appId = jSONObject.optString("appId");
        if (JSONObject.NULL.toString().equals(aVar.appId)) {
            aVar.appId = "";
        }
        aVar.aqu = jSONObject.optString("networkType");
        if (JSONObject.NULL.toString().equals(aVar.aqu)) {
            aVar.aqu = "";
        }
        aVar.aqv = jSONObject.optString("manufacturer");
        if (JSONObject.NULL.toString().equals(aVar.aqv)) {
            aVar.aqv = "";
        }
        aVar.model = jSONObject.optString(com.baidu.mobads.sdk.internal.bn.f7597i);
        if (JSONObject.NULL.toString().equals(aVar.model)) {
            aVar.model = "";
        }
        aVar.Nq = jSONObject.optString("deviceBrand");
        if (JSONObject.NULL.toString().equals(aVar.Nq)) {
            aVar.Nq = "";
        }
        aVar.aqw = jSONObject.optInt("osType");
        aVar.aqx = jSONObject.optString("systemVersion");
        if (JSONObject.NULL.toString().equals(aVar.aqx)) {
            aVar.aqx = "";
        }
        aVar.aqy = jSONObject.optInt("osApi");
        aVar.aqz = jSONObject.optString("language");
        if (JSONObject.NULL.toString().equals(aVar.aqz)) {
            aVar.aqz = "";
        }
        aVar.Un = jSONObject.optString("locale");
        if (JSONObject.NULL.toString().equals(aVar.Un)) {
            aVar.Un = "";
        }
        aVar.Sq = jSONObject.optInt("screenWidth");
        aVar.Sp = jSONObject.optInt("screenHeight");
        aVar.aqA = jSONObject.optInt("statusBarHeight");
        aVar.aqB = jSONObject.optInt("titleBarHeight");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.ah.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = aVar.SDKVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersion", aVar.SDKVersion);
        }
        int i10 = aVar.SDKVersionCode;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersionCode", i10);
        }
        String str2 = aVar.sdkApiVersion;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersion", aVar.sdkApiVersion);
        }
        int i11 = aVar.sdkApiVersionCode;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersionCode", i11);
        }
        int i12 = aVar.sdkType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkType", i12);
        }
        String str3 = aVar.appVersion;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appVersion", aVar.appVersion);
        }
        String str4 = aVar.appName;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appName", aVar.appName);
        }
        String str5 = aVar.appId;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appId", aVar.appId);
        }
        String str6 = aVar.aqu;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "networkType", aVar.aqu);
        }
        String str7 = aVar.aqv;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "manufacturer", aVar.aqv);
        }
        String str8 = aVar.model;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.baidu.mobads.sdk.internal.bn.f7597i, aVar.model);
        }
        String str9 = aVar.Nq;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceBrand", aVar.Nq);
        }
        int i13 = aVar.aqw;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osType", i13);
        }
        String str10 = aVar.aqx;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "systemVersion", aVar.aqx);
        }
        int i14 = aVar.aqy;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osApi", i14);
        }
        String str11 = aVar.aqz;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "language", aVar.aqz);
        }
        String str12 = aVar.Un;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "locale", aVar.Un);
        }
        int i15 = aVar.Sq;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenWidth", i15);
        }
        int i16 = aVar.Sp;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHeight", i16);
        }
        int i17 = aVar.aqA;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "statusBarHeight", i17);
        }
        int i18 = aVar.aqB;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleBarHeight", i18);
        }
        return jSONObject;
    }
}
