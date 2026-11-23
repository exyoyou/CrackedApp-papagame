package com.kwad.sdk.core.b.a;

import com.byazt.bv.BaseConstants;
import com.kwad.sdk.core.scene.URLPackage;
import com.umeng.umcrash.UMCrash;
import io.netty.handler.codec.rtsp.RtspHeaders;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class kq implements com.kwad.sdk.core.d<com.kwad.sdk.core.report.n> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.report.n) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.report.n) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.report.n nVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        nVar.timestamp = jSONObject.optLong(UMCrash.SP_KEY_TIMESTAMP);
        nVar.sessionId = jSONObject.optString("sessionId");
        if (JSONObject.NULL.toString().equals(nVar.sessionId)) {
            nVar.sessionId = "";
        }
        nVar.OT = jSONObject.optLong(RtspHeaders.Values.SEQ);
        nVar.aVs = jSONObject.optLong("listId");
        nVar.actionType = jSONObject.optLong("actionType");
        nVar.QY = jSONObject.optString("payload");
        if (JSONObject.NULL.toString().equals(nVar.QY)) {
            nVar.QY = "";
        }
        nVar.llsid = jSONObject.optLong("llsid");
        nVar.aVt = jSONObject.optJSONObject(BaseConstants.EVENT_LABEL_EXTRA);
        nVar.aVu = jSONObject.optJSONObject("impAdExtra");
        nVar.posId = jSONObject.optLong("posId");
        nVar.contentType = jSONObject.optInt("contentType");
        nVar.realShowType = jSONObject.optInt("realShowType");
        nVar.photoId = jSONObject.optLong("photoId");
        nVar.position = jSONObject.optLong("position");
        nVar.aVv = jSONObject.optLong("serverPosition");
        nVar.aVw = jSONObject.optLong("photoDuration");
        nVar.aVx = jSONObject.optLong("effectivePlayDuration");
        nVar.apv = jSONObject.optLong("playDuration");
        nVar.blockDuration = jSONObject.optLong("blockDuration");
        nVar.aVy = jSONObject.optLong("intervalDuration");
        nVar.aVz = jSONObject.optLong("allIntervalDuration");
        nVar.aVA = jSONObject.optLong("flowSdk");
        nVar.aVB = jSONObject.optLong("blockTimes");
        nVar.contentSourceType = jSONObject.optInt("contentSourceType", new Integer("0").intValue());
        nVar.aMA = jSONObject.optInt("adAggPageSource");
        nVar.entryPageSource = jSONObject.optString("entryPageSource");
        if (JSONObject.NULL.toString().equals(nVar.entryPageSource)) {
            nVar.entryPageSource = "";
        }
        URLPackage uRLPackage = new URLPackage();
        nVar.urlPackage = uRLPackage;
        uRLPackage.parseJson(jSONObject.optJSONObject("urlPackage"));
        URLPackage uRLPackage2 = new URLPackage();
        nVar.aVC = uRLPackage2;
        uRLPackage2.parseJson(jSONObject.optJSONObject("referURLPackage"));
        nVar.authorId = jSONObject.optLong(URLPackage.KEY_AUTHOR_ID);
        nVar.aVD = jSONObject.optString("photoSize");
        if (JSONObject.NULL.toString().equals(nVar.aVD)) {
            nVar.aVD = "";
        }
        nVar.aVE = jSONObject.optJSONArray("appInstalled");
        nVar.aVF = jSONObject.optJSONArray("appUninstalled");
        com.kwad.sdk.core.report.n.a aVar = new com.kwad.sdk.core.report.n.a();
        nVar.aVG = aVar;
        aVar.parseJson(jSONObject.optJSONObject("clientExt"));
        nVar.aVH = jSONObject.optInt("playerType");
        nVar.aVI = jSONObject.optInt("uiType");
        nVar.aVJ = jSONObject.optInt("isLeftSlipStatus", new Integer("0").intValue());
        nVar.aqR = jSONObject.optInt("refreshType");
        nVar.aVK = jSONObject.optInt("photoResponseType", new Integer("0").intValue());
        nVar.aVL = jSONObject.optString("failUrl");
        if (JSONObject.NULL.toString().equals(nVar.aVL)) {
            nVar.aVL = "";
        }
        nVar.errorMsg = jSONObject.optString("errorMsg");
        if (JSONObject.NULL.toString().equals(nVar.errorMsg)) {
            nVar.errorMsg = "";
        }
        nVar.errorCode = jSONObject.optInt("errorCode", new Integer("0").intValue());
        nVar.creativeId = jSONObject.optLong("creativeId");
        nVar.aVO = jSONObject.optString("cacheFailedReason");
        if (JSONObject.NULL.toString().equals(nVar.aVO)) {
            nVar.aVO = "";
        }
        nVar.aVP = jSONObject.optJSONObject("appExt");
        nVar.aVQ = jSONObject.optJSONArray("appRunningInfoList");
        nVar.downloadDuration = jSONObject.optLong("downloadDuration");
        nVar.pageType = jSONObject.optInt("pageType", new Integer("0").intValue());
        nVar.aVR = jSONObject.optInt("speedLimitStatus");
        nVar.aVS = jSONObject.optInt("speedLimitThreshold");
        nVar.aVT = jSONObject.optInt("currentRealDownloadSpeed");
        nVar.aVV = jSONObject.optJSONArray("sdkPlatform");
        nVar.aVW = jSONObject.optBoolean("isKsUnion");
        nVar.aVX = jSONObject.optString("trackMethodName");
        if (JSONObject.NULL.toString().equals(nVar.aVX)) {
            nVar.aVX = "";
        }
        nVar.aVY = jSONObject.optInt("viewModeType", new Integer("0").intValue());
        nVar.clickTime = jSONObject.optLong("clickTime");
        nVar.aWa = jSONObject.optLong("frameRenderTime");
        nVar.aWb = jSONObject.optInt("playerEnterAction");
        nVar.aWc = jSONObject.optString("requestUrl");
        if (JSONObject.NULL.toString().equals(nVar.aWc)) {
            nVar.aWc = "";
        }
        nVar.aWd = jSONObject.optLong("requestTotalTime");
        nVar.aWe = jSONObject.optLong("requestResponseTime");
        nVar.aWf = jSONObject.optLong("requestParseDataTime");
        nVar.aWg = jSONObject.optLong("requestCallbackTime");
        nVar.aWh = jSONObject.optString("requestFailReason");
        if (JSONObject.NULL.toString().equals(nVar.aWh)) {
            nVar.aWh = "";
        }
        nVar.ajo = jSONObject.optString("pageName");
        if (JSONObject.NULL.toString().equals(nVar.ajo)) {
            nVar.ajo = "";
        }
        nVar.ajw = jSONObject.optLong("pageCreateTime");
        nVar.ajx = jSONObject.optLong("pageResumeTime");
        nVar.aWi = jSONObject.optInt("trackUrlType");
        nVar.aWj = jSONObject.optJSONArray("trackUrlList");
        nVar.ajv = jSONObject.optLong("pageLaunchTime");
        nVar.aWm = jSONObject.optJSONArray("appAuthorityInfoList");
        nVar.aWn = jSONObject.optString("tkVersion");
        if (JSONObject.NULL.toString().equals(nVar.aWn)) {
            nVar.aWn = "";
        }
        nVar.aWo = jSONObject.optString("jsVersion");
        if (JSONObject.NULL.toString().equals(nVar.aWo)) {
            nVar.aWo = "";
        }
        nVar.aWp = jSONObject.optString("jsFileName");
        if (JSONObject.NULL.toString().equals(nVar.aWp)) {
            nVar.aWp = "";
        }
        nVar.aWq = jSONObject.optString("jsErrorMsg");
        if (JSONObject.NULL.toString().equals(nVar.aWq)) {
            nVar.aWq = "";
        }
        nVar.aWr = jSONObject.optString("jsConfig");
        if (JSONObject.NULL.toString().equals(nVar.aWr)) {
            nVar.aWr = "";
        }
        nVar.aWs = jSONObject.optInt("adBizType");
        nVar.aWt = jSONObject.optString("customKey");
        if (JSONObject.NULL.toString().equals(nVar.aWt)) {
            nVar.aWt = "";
        }
        nVar.aWu = jSONObject.optString("customValue");
        if (JSONObject.NULL.toString().equals(nVar.aWu)) {
            nVar.aWu = "";
        }
        nVar.trace = jSONObject.optString("trace");
        if (JSONObject.NULL.toString().equals(nVar.trace)) {
            nVar.trace = "";
        }
        nVar.aWv = jSONObject.optInt("filterCode");
        nVar.aWw = jSONObject.optInt("sdkVersionCode");
        nVar.sdkVersion = jSONObject.optString("sdkVersion");
        if (JSONObject.NULL.toString().equals(nVar.sdkVersion)) {
            nVar.sdkVersion = "";
        }
        nVar.aWx = jSONObject.optString("adSdkVersion");
        if (JSONObject.NULL.toString().equals(nVar.aWx)) {
            nVar.aWx = "";
        }
        nVar.sdkApiVersion = jSONObject.optString("sdkApiVersion");
        if (JSONObject.NULL.toString().equals(nVar.sdkApiVersion)) {
            nVar.sdkApiVersion = "";
        }
        nVar.sdkType = jSONObject.optInt("sdkType");
        nVar.aWy = jSONObject.optLong("appUseDuration");
        nVar.aWz = jSONObject.optLong("appStartType");
        nVar.aRP = jSONObject.optLong("sequenceNumber");
        nVar.OQ = jSONObject.optString("appColdStart");
        if (JSONObject.NULL.toString().equals(nVar.OQ)) {
            nVar.OQ = "";
        }
        nVar.OR = jSONObject.optString("appStart");
        if (JSONObject.NULL.toString().equals(nVar.OR)) {
            nVar.OR = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.report.n nVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = nVar.timestamp;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, UMCrash.SP_KEY_TIMESTAMP, j10);
        }
        String str = nVar.sessionId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sessionId", nVar.sessionId);
        }
        long j11 = nVar.OT;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, RtspHeaders.Values.SEQ, j11);
        }
        long j12 = nVar.aVs;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "listId", j12);
        }
        long j13 = nVar.actionType;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "actionType", j13);
        }
        String str2 = nVar.QY;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "payload", nVar.QY);
        }
        long j14 = nVar.llsid;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j14);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, BaseConstants.EVENT_LABEL_EXTRA, nVar.aVt);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "impAdExtra", nVar.aVu);
        long j15 = nVar.posId;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j15);
        }
        int i10 = nVar.contentType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "contentType", i10);
        }
        int i11 = nVar.realShowType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realShowType", i11);
        }
        long j16 = nVar.photoId;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoId", j16);
        }
        long j17 = nVar.position;
        if (j17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "position", j17);
        }
        long j18 = nVar.aVv;
        if (j18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serverPosition", j18);
        }
        long j19 = nVar.aVw;
        if (j19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoDuration", j19);
        }
        long j20 = nVar.aVx;
        if (j20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "effectivePlayDuration", j20);
        }
        long j21 = nVar.apv;
        if (j21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", j21);
        }
        long j22 = nVar.blockDuration;
        if (j22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "blockDuration", j22);
        }
        long j23 = nVar.aVy;
        if (j23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "intervalDuration", j23);
        }
        long j24 = nVar.aVz;
        if (j24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "allIntervalDuration", j24);
        }
        long j25 = nVar.aVA;
        if (j25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "flowSdk", j25);
        }
        long j26 = nVar.aVB;
        if (j26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "blockTimes", j26);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "contentSourceType", nVar.contentSourceType);
        int i12 = nVar.aMA;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adAggPageSource", i12);
        }
        String str3 = nVar.entryPageSource;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "entryPageSource", nVar.entryPageSource);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "urlPackage", nVar.urlPackage);
        com.kwad.sdk.utils.ac.a(jSONObject, "referURLPackage", nVar.aVC);
        long j27 = nVar.authorId;
        if (j27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, URLPackage.KEY_AUTHOR_ID, j27);
        }
        String str4 = nVar.aVD;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "photoSize", nVar.aVD);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "appInstalled", nVar.aVE);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "appUninstalled", nVar.aVF);
        com.kwad.sdk.utils.ac.a(jSONObject, "clientExt", nVar.aVG);
        int i13 = nVar.aVH;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playerType", i13);
        }
        int i14 = nVar.aVI;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "uiType", i14);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "isLeftSlipStatus", nVar.aVJ);
        int i15 = nVar.aqR;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "refreshType", i15);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "photoResponseType", nVar.aVK);
        String str5 = nVar.aVL;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "failUrl", nVar.aVL);
        }
        String str6 = nVar.errorMsg;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorMsg", nVar.errorMsg);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "errorCode", nVar.errorCode);
        long j28 = nVar.creativeId;
        if (j28 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", j28);
        }
        String str7 = nVar.aVO;
        if (str7 != null && !str7.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cacheFailedReason", nVar.aVO);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "appExt", nVar.aVP);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "appRunningInfoList", nVar.aVQ);
        long j29 = nVar.downloadDuration;
        if (j29 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadDuration", j29);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "pageType", nVar.pageType);
        int i16 = nVar.aVR;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "speedLimitStatus", i16);
        }
        int i17 = nVar.aVS;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "speedLimitThreshold", i17);
        }
        int i18 = nVar.aVT;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentRealDownloadSpeed", i18);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkPlatform", nVar.aVV);
        boolean z10 = nVar.aVW;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isKsUnion", z10);
        }
        String str8 = nVar.aVX;
        if (str8 != null && !str8.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "trackMethodName", nVar.aVX);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "viewModeType", nVar.aVY);
        long j30 = nVar.clickTime;
        if (j30 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickTime", j30);
        }
        long j31 = nVar.aWa;
        if (j31 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "frameRenderTime", j31);
        }
        int i19 = nVar.aWb;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playerEnterAction", i19);
        }
        String str9 = nVar.aWc;
        if (str9 != null && !str9.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestUrl", nVar.aWc);
        }
        long j32 = nVar.aWd;
        if (j32 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestTotalTime", j32);
        }
        long j33 = nVar.aWe;
        if (j33 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestResponseTime", j33);
        }
        long j34 = nVar.aWf;
        if (j34 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestParseDataTime", j34);
        }
        long j35 = nVar.aWg;
        if (j35 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestCallbackTime", j35);
        }
        String str10 = nVar.aWh;
        if (str10 != null && !str10.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestFailReason", nVar.aWh);
        }
        String str11 = nVar.ajo;
        if (str11 != null && !str11.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageName", nVar.ajo);
        }
        long j36 = nVar.ajw;
        if (j36 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageCreateTime", j36);
        }
        long j37 = nVar.ajx;
        if (j37 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageResumeTime", j37);
        }
        int i20 = nVar.aWi;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "trackUrlType", i20);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "trackUrlList", nVar.aWj);
        long j38 = nVar.ajv;
        if (j38 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageLaunchTime", j38);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "appAuthorityInfoList", nVar.aWm);
        String str12 = nVar.aWn;
        if (str12 != null && !str12.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "tkVersion", nVar.aWn);
        }
        String str13 = nVar.aWo;
        if (str13 != null && !str13.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jsVersion", nVar.aWo);
        }
        String str14 = nVar.aWp;
        if (str14 != null && !str14.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jsFileName", nVar.aWp);
        }
        String str15 = nVar.aWq;
        if (str15 != null && !str15.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jsErrorMsg", nVar.aWq);
        }
        String str16 = nVar.aWr;
        if (str16 != null && !str16.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "jsConfig", nVar.aWr);
        }
        int i21 = nVar.aWs;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adBizType", i21);
        }
        String str17 = nVar.aWt;
        if (str17 != null && !str17.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "customKey", nVar.aWt);
        }
        String str18 = nVar.aWu;
        if (str18 != null && !str18.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "customValue", nVar.aWu);
        }
        String str19 = nVar.trace;
        if (str19 != null && !str19.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "trace", nVar.trace);
        }
        int i22 = nVar.aWv;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "filterCode", i22);
        }
        int i23 = nVar.aWw;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkVersionCode", i23);
        }
        String str20 = nVar.sdkVersion;
        if (str20 != null && !str20.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkVersion", nVar.sdkVersion);
        }
        String str21 = nVar.aWx;
        if (str21 != null && !str21.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adSdkVersion", nVar.aWx);
        }
        String str22 = nVar.sdkApiVersion;
        if (str22 != null && !str22.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkApiVersion", nVar.sdkApiVersion);
        }
        int i24 = nVar.sdkType;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkType", i24);
        }
        long j39 = nVar.aWy;
        if (j39 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appUseDuration", j39);
        }
        long j40 = nVar.aWz;
        if (j40 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appStartType", j40);
        }
        long j41 = nVar.aRP;
        if (j41 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sequenceNumber", j41);
        }
        String str23 = nVar.OQ;
        if (str23 != null && !str23.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appColdStart", nVar.OQ);
        }
        String str24 = nVar.OR;
        if (str24 != null && !str24.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "appStart", nVar.OR);
        }
        return jSONObject;
    }
}
