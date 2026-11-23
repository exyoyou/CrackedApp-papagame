package com.kwad.sdk.core.b.a;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.core.response.model.AdTemplate;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class aj implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.c.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.c.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.c.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        AdTemplate adTemplate = new AdTemplate();
        aVar.adTemplate = adTemplate;
        adTemplate.parseJson(jSONObject.optJSONObject("adTemplate"));
        aVar.aMe = jSONObject.optJSONObject("extData");
        aVar.aKI = jSONObject.optInt("adActionType");
        aVar.aMf = jSONObject.optInt("photoPlaySecond");
        aVar.aMg = jSONObject.optInt("awardReceiveStage");
        aVar.nm = jSONObject.optInt("itemClickType");
        aVar.aMh = jSONObject.optInt("itemCloseType");
        aVar.aMi = jSONObject.optInt("elementType");
        aVar.aMj = jSONObject.optString("adRenderArea");
        if (JSONObject.NULL.toString().equals(aVar.aMj)) {
            aVar.aMj = "";
        }
        aVar.aMk = jSONObject.optLong("highestLossPrice");
        aVar.aMl = jSONObject.optInt("impFailReason");
        aVar.aMm = jSONObject.optLong("winEcpm");
        aVar.adnType = jSONObject.optInt("adnType");
        aVar.adnName = jSONObject.optString(MediationConstant.KEY_ADN_NAME);
        if (JSONObject.NULL.toString().equals(aVar.adnName)) {
            aVar.adnName = "";
        }
        aVar.aMn = jSONObject.optString("adnAdvertiser");
        if (JSONObject.NULL.toString().equals(aVar.aMn)) {
            aVar.aMn = "";
        }
        aVar.aMo = jSONObject.optString("adnTitle");
        if (JSONObject.NULL.toString().equals(aVar.aMo)) {
            aVar.aMo = "";
        }
        aVar.aMp = jSONObject.optString("adnRequestId");
        if (JSONObject.NULL.toString().equals(aVar.aMp)) {
            aVar.aMp = "";
        }
        aVar.aMq = jSONObject.optInt("adnShowType");
        aVar.aMr = jSONObject.optInt("adnClickType");
        aVar.adnMaterialType = jSONObject.optInt("adnMaterialType");
        aVar.adnMaterialUrl = jSONObject.optString("adnMaterialUrl");
        if (JSONObject.NULL.toString().equals(aVar.adnMaterialUrl)) {
            aVar.adnMaterialUrl = "";
        }
        aVar.aMs = jSONObject.optInt("retainCodeType");
        aVar.Ra = jSONObject.optInt("photoSizeStyle");
        aVar.QY = jSONObject.optString("payload");
        if (JSONObject.NULL.toString().equals(aVar.QY)) {
            aVar.QY = "";
        }
        aVar.aMt = jSONObject.optInt("deeplinkType");
        aVar.aMu = jSONObject.optString("deeplinkAppName");
        if (JSONObject.NULL.toString().equals(aVar.aMu)) {
            aVar.aMu = "";
        }
        aVar.aMv = jSONObject.optInt("deeplinkFailedReason");
        aVar.downloadSource = jSONObject.optInt("downloadSource");
        aVar.aMw = jSONObject.optInt("isPackageChanged");
        aVar.aMx = jSONObject.optString("installedFrom");
        if (JSONObject.NULL.toString().equals(aVar.aMx)) {
            aVar.aMx = "";
        }
        aVar.aMy = jSONObject.optString("downloadFailedReason");
        if (JSONObject.NULL.toString().equals(aVar.aMy)) {
            aVar.aMy = "";
        }
        aVar.aMz = jSONObject.optInt("isChangedEndcard");
        aVar.aMA = jSONObject.optInt("adAggPageSource");
        aVar.aMB = jSONObject.optString("serverPackageName");
        if (JSONObject.NULL.toString().equals(aVar.aMB)) {
            aVar.aMB = "";
        }
        aVar.aMC = jSONObject.optString("installedPackageName");
        if (JSONObject.NULL.toString().equals(aVar.aMC)) {
            aVar.aMC = "";
        }
        aVar.aMD = jSONObject.optInt("closeButtonImpressionTime");
        aVar.aME = jSONObject.optInt("closeButtonClickTime");
        aVar.aMF = jSONObject.optLong("landingPageLoadedDuration");
        aVar.RD = jSONObject.optLong("leaveTime");
        aVar.aMG = jSONObject.optLong("adItemClickBackDuration");
        aVar.aMH = jSONObject.optInt("appStorePageType");
        aVar.aMI = jSONObject.optInt("installStatus");
        aVar.downloadStatus = jSONObject.optInt("downloadStatus");
        aVar.aMJ = jSONObject.optInt("downloadCardType");
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        aVar.QZ = c0924a;
        c0924a.parseJson(jSONObject.optJSONObject("clientExtData"));
        aVar.ads = jSONObject.optInt("landingPageType");
        aVar.zV = jSONObject.optLong("playedDuration");
        aVar.aMK = jSONObject.optInt("playedRate");
        aVar.aML = jSONObject.optInt("adOrder");
        aVar.QX = jSONObject.optInt("adInterstitialSource");
        aVar.np = jSONObject.optDouble("splashShakeAcceleration");
        aVar.aMM = jSONObject.optString("splashInteractionRotateAngle");
        if (JSONObject.NULL.toString().equals(aVar.aMM)) {
            aVar.aMM = "";
        }
        aVar.aMN = jSONObject.optInt("downloadInstallType");
        aVar.aMO = jSONObject.optInt("businessSceneType");
        aVar.adxResult = jSONObject.optInt("adxResult");
        aVar.aMP = jSONObject.optInt("fingerSwipeType");
        aVar.aMQ = jSONObject.optInt("fingerSwipeDistance");
        aVar.aMR = jSONObject.optInt("finger_swipe_angle");
        aVar.Rb = jSONObject.optInt("triggerType");
        aVar.aMS = jSONObject.optInt("cardCloseType");
        aVar.aMT = jSONObject.optString("clientPkFailAdInfo");
        if (JSONObject.NULL.toString().equals(aVar.aMT)) {
            aVar.aMT = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.c.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "adTemplate", aVar.adTemplate);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "extData", aVar.aMe);
        int i10 = aVar.aKI;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adActionType", i10);
        }
        int i11 = aVar.aMf;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoPlaySecond", i11);
        }
        int i12 = aVar.aMg;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "awardReceiveStage", i12);
        }
        int i13 = aVar.nm;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemClickType", i13);
        }
        int i14 = aVar.aMh;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemCloseType", i14);
        }
        int i15 = aVar.aMi;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "elementType", i15);
        }
        String str = aVar.aMj;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adRenderArea", aVar.aMj);
        }
        long j10 = aVar.aMk;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "highestLossPrice", j10);
        }
        int i16 = aVar.aMl;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "impFailReason", i16);
        }
        long j11 = aVar.aMm;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "winEcpm", j11);
        }
        int i17 = aVar.adnType;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnType", i17);
        }
        String str2 = aVar.adnName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediationConstant.KEY_ADN_NAME, aVar.adnName);
        }
        String str3 = aVar.aMn;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnAdvertiser", aVar.aMn);
        }
        String str4 = aVar.aMo;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnTitle", aVar.aMo);
        }
        String str5 = aVar.aMp;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnRequestId", aVar.aMp);
        }
        int i18 = aVar.aMq;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnShowType", i18);
        }
        int i19 = aVar.aMr;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnClickType", i19);
        }
        int i20 = aVar.adnMaterialType;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnMaterialType", i20);
        }
        String str6 = aVar.adnMaterialUrl;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adnMaterialUrl", aVar.adnMaterialUrl);
        }
        int i21 = aVar.aMs;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retainCodeType", i21);
        }
        int i22 = aVar.Ra;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoSizeStyle", i22);
        }
        String str7 = aVar.QY;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "payload", aVar.QY);
        }
        int i23 = aVar.aMt;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkType", i23);
        }
        String str8 = aVar.aMu;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkAppName", aVar.aMu);
        }
        int i24 = aVar.aMv;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "deeplinkFailedReason", i24);
        }
        int i25 = aVar.downloadSource;
        if (i25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadSource", i25);
        }
        int i26 = aVar.aMw;
        if (i26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isPackageChanged", i26);
        }
        String str9 = aVar.aMx;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installedFrom", aVar.aMx);
        }
        String str10 = aVar.aMy;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadFailedReason", aVar.aMy);
        }
        int i27 = aVar.aMz;
        if (i27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isChangedEndcard", i27);
        }
        int i28 = aVar.aMA;
        if (i28 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adAggPageSource", i28);
        }
        String str11 = aVar.aMB;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serverPackageName", aVar.aMB);
        }
        String str12 = aVar.aMC;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installedPackageName", aVar.aMC);
        }
        int i29 = aVar.aMD;
        if (i29 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeButtonImpressionTime", i29);
        }
        int i30 = aVar.aME;
        if (i30 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeButtonClickTime", i30);
        }
        long j12 = aVar.aMF;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "landingPageLoadedDuration", j12);
        }
        long j13 = aVar.RD;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "leaveTime", j13);
        }
        long j14 = aVar.aMG;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adItemClickBackDuration", j14);
        }
        int i31 = aVar.aMH;
        if (i31 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appStorePageType", i31);
        }
        int i32 = aVar.aMI;
        if (i32 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "installStatus", i32);
        }
        int i33 = aVar.downloadStatus;
        if (i33 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadStatus", i33);
        }
        int i34 = aVar.aMJ;
        if (i34 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadCardType", i34);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "clientExtData", aVar.QZ);
        int i35 = aVar.ads;
        if (i35 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "landingPageType", i35);
        }
        long j15 = aVar.zV;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playedDuration", j15);
        }
        int i36 = aVar.aMK;
        if (i36 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playedRate", i36);
        }
        int i37 = aVar.aML;
        if (i37 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adOrder", i37);
        }
        int i38 = aVar.QX;
        if (i38 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adInterstitialSource", i38);
        }
        double d10 = aVar.np;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "splashShakeAcceleration", d10);
        }
        String str13 = aVar.aMM;
        if (str13 != null && !str13.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "splashInteractionRotateAngle", aVar.aMM);
        }
        int i39 = aVar.aMN;
        if (i39 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadInstallType", i39);
        }
        int i40 = aVar.aMO;
        if (i40 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "businessSceneType", i40);
        }
        int i41 = aVar.adxResult;
        if (i41 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adxResult", i41);
        }
        int i42 = aVar.aMP;
        if (i42 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fingerSwipeType", i42);
        }
        int i43 = aVar.aMQ;
        if (i43 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fingerSwipeDistance", i43);
        }
        int i44 = aVar.aMR;
        if (i44 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "finger_swipe_angle", i44);
        }
        int i45 = aVar.Rb;
        if (i45 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "triggerType", i45);
        }
        int i46 = aVar.aMS;
        if (i46 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cardCloseType", i46);
        }
        String str14 = aVar.aMT;
        if (str14 != null && !str14.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clientPkFailAdInfo", aVar.aMT);
        }
        return jSONObject;
    }
}
