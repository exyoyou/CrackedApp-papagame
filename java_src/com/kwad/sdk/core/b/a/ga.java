package com.kwad.sdk.core.b.a;

import com.coremedia.iso.boxes.k1;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ga implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.a.C0943a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.a.C0943a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.a.C0943a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.a.C0943a c0943a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0943a.SDKVersion = jSONObject.optString("SDKVersion");
        if (JSONObject.NULL.toString().equals(c0943a.SDKVersion)) {
            c0943a.SDKVersion = "";
        }
        c0943a.SDKVersionCode = jSONObject.optInt("SDKVersionCode");
        c0943a.aWn = jSONObject.optString("tkVersion");
        if (JSONObject.NULL.toString().equals(c0943a.aWn)) {
            c0943a.aWn = "";
        }
        c0943a.sdkApiVersion = jSONObject.optString("sdkApiVersion");
        if (JSONObject.NULL.toString().equals(c0943a.sdkApiVersion)) {
            c0943a.sdkApiVersion = "";
        }
        c0943a.sdkApiVersionCode = jSONObject.optInt("sdkApiVersionCode");
        c0943a.sdkType = jSONObject.optInt("sdkType");
        c0943a.appVersion = jSONObject.optString("appVersion");
        if (JSONObject.NULL.toString().equals(c0943a.appVersion)) {
            c0943a.appVersion = "";
        }
        c0943a.appName = jSONObject.optString("appName");
        if (JSONObject.NULL.toString().equals(c0943a.appName)) {
            c0943a.appName = "";
        }
        c0943a.appId = jSONObject.optString("appId");
        if (JSONObject.NULL.toString().equals(c0943a.appId)) {
            c0943a.appId = "";
        }
        c0943a.bda = jSONObject.optString("globalId");
        if (JSONObject.NULL.toString().equals(c0943a.bda)) {
            c0943a.bda = "";
        }
        c0943a.aXb = jSONObject.optString("eGid");
        if (JSONObject.NULL.toString().equals(c0943a.aXb)) {
            c0943a.aXb = "";
        }
        c0943a.aXa = jSONObject.optString("deviceSig");
        if (JSONObject.NULL.toString().equals(c0943a.aXa)) {
            c0943a.aXa = "";
        }
        c0943a.aqu = jSONObject.optString("networkType");
        if (JSONObject.NULL.toString().equals(c0943a.aqu)) {
            c0943a.aqu = "";
        }
        c0943a.aqv = jSONObject.optString("manufacturer");
        if (JSONObject.NULL.toString().equals(c0943a.aqv)) {
            c0943a.aqv = "";
        }
        c0943a.model = jSONObject.optString(com.baidu.mobads.sdk.internal.bn.f7597i);
        if (JSONObject.NULL.toString().equals(c0943a.model)) {
            c0943a.model = "";
        }
        c0943a.Nq = jSONObject.optString("deviceBrand");
        if (JSONObject.NULL.toString().equals(c0943a.Nq)) {
            c0943a.Nq = "";
        }
        c0943a.aqw = jSONObject.optInt("osType");
        c0943a.aqx = jSONObject.optString("systemVersion");
        if (JSONObject.NULL.toString().equals(c0943a.aqx)) {
            c0943a.aqx = "";
        }
        c0943a.aqy = jSONObject.optInt("osApi");
        c0943a.aqz = jSONObject.optString("language");
        if (JSONObject.NULL.toString().equals(c0943a.aqz)) {
            c0943a.aqz = "";
        }
        c0943a.Un = jSONObject.optString("locale");
        if (JSONObject.NULL.toString().equals(c0943a.Un)) {
            c0943a.Un = "";
        }
        c0943a.bdb = jSONObject.optString(k1.f24950p);
        if (JSONObject.NULL.toString().equals(c0943a.bdb)) {
            c0943a.bdb = "";
        }
        c0943a.bdc = jSONObject.optBoolean("isDynamic");
        c0943a.Sq = jSONObject.optInt("screenWidth");
        c0943a.Sp = jSONObject.optInt("screenHeight");
        c0943a.aQZ = jSONObject.optString("imei");
        if (JSONObject.NULL.toString().equals(c0943a.aQZ)) {
            c0943a.aQZ = "";
        }
        c0943a.aRa = jSONObject.optString("oaid");
        if (JSONObject.NULL.toString().equals(c0943a.aRa)) {
            c0943a.aRa = "";
        }
        c0943a.aWY = jSONObject.optString("androidId");
        if (JSONObject.NULL.toString().equals(c0943a.aWY)) {
            c0943a.aWY = "";
        }
        c0943a.aXo = jSONObject.optString("mac");
        if (JSONObject.NULL.toString().equals(c0943a.aXo)) {
            c0943a.aXo = "";
        }
        c0943a.aqA = jSONObject.optInt("statusBarHeight");
        c0943a.aqB = jSONObject.optInt("titleBarHeight");
        c0943a.bdd = jSONObject.optString("bridgeVersion");
        if (JSONObject.NULL.toString().equals(c0943a.bdd)) {
            c0943a.bdd = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.a.C0943a c0943a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0943a.SDKVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersion", c0943a.SDKVersion);
        }
        int i10 = c0943a.SDKVersionCode;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "SDKVersionCode", i10);
        }
        String str2 = c0943a.aWn;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tkVersion", c0943a.aWn);
        }
        String str3 = c0943a.sdkApiVersion;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersion", c0943a.sdkApiVersion);
        }
        int i11 = c0943a.sdkApiVersionCode;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersionCode", i11);
        }
        int i12 = c0943a.sdkType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkType", i12);
        }
        String str4 = c0943a.appVersion;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appVersion", c0943a.appVersion);
        }
        String str5 = c0943a.appName;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appName", c0943a.appName);
        }
        String str6 = c0943a.appId;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appId", c0943a.appId);
        }
        String str7 = c0943a.bda;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "globalId", c0943a.bda);
        }
        String str8 = c0943a.aXb;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "eGid", c0943a.aXb);
        }
        String str9 = c0943a.aXa;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceSig", c0943a.aXa);
        }
        String str10 = c0943a.aqu;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "networkType", c0943a.aqu);
        }
        String str11 = c0943a.aqv;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "manufacturer", c0943a.aqv);
        }
        String str12 = c0943a.model;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.baidu.mobads.sdk.internal.bn.f7597i, c0943a.model);
        }
        String str13 = c0943a.Nq;
        if (str13 != null && !str13.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deviceBrand", c0943a.Nq);
        }
        int i13 = c0943a.aqw;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osType", i13);
        }
        String str14 = c0943a.aqx;
        if (str14 != null && !str14.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "systemVersion", c0943a.aqx);
        }
        int i14 = c0943a.aqy;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "osApi", i14);
        }
        String str15 = c0943a.aqz;
        if (str15 != null && !str15.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "language", c0943a.aqz);
        }
        String str16 = c0943a.Un;
        if (str16 != null && !str16.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "locale", c0943a.Un);
        }
        String str17 = c0943a.bdb;
        if (str17 != null && !str17.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, k1.f24950p, c0943a.bdb);
        }
        boolean z10 = c0943a.bdc;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isDynamic", z10);
        }
        int i15 = c0943a.Sq;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenWidth", i15);
        }
        int i16 = c0943a.Sp;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHeight", i16);
        }
        String str18 = c0943a.aQZ;
        if (str18 != null && !str18.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "imei", c0943a.aQZ);
        }
        String str19 = c0943a.aRa;
        if (str19 != null && !str19.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "oaid", c0943a.aRa);
        }
        String str20 = c0943a.aWY;
        if (str20 != null && !str20.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "androidId", c0943a.aWY);
        }
        String str21 = c0943a.aXo;
        if (str21 != null && !str21.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mac", c0943a.aXo);
        }
        int i17 = c0943a.aqA;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "statusBarHeight", i17);
        }
        int i18 = c0943a.aqB;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "titleBarHeight", i18);
        }
        String str22 = c0943a.bdd;
        if (str22 != null && !str22.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bridgeVersion", c0943a.bdd);
        }
        return jSONObject;
    }
}
