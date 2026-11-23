package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.papa91.common.BaseAppConfig;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lf implements com.kwad.sdk.core.d<AdMatrixInfo.RotateInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.RotateInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.RotateInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.RotateInfo rotateInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rotateInfo.title = jSONObject.optString("title");
        if (JSONObject.NULL.toString().equals(rotateInfo.title)) {
            rotateInfo.title = "";
        }
        rotateInfo.subTitle = jSONObject.optString(BaseAppConfig.KEY_END_GAME_SUBTITLE);
        if (JSONObject.NULL.toString().equals(rotateInfo.subTitle)) {
            rotateInfo.subTitle = "";
        }
        AdMatrixInfo.DownloadTexts downloadTexts = new AdMatrixInfo.DownloadTexts();
        rotateInfo.downloadTexts = downloadTexts;
        downloadTexts.parseJson(jSONObject.optJSONObject("downloadTexts"));
        AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo = new AdMatrixInfo.RotateDegreeInfo();
        rotateInfo.f75320x = rotateDegreeInfo;
        rotateDegreeInfo.parseJson(jSONObject.optJSONObject("x"));
        AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo2 = new AdMatrixInfo.RotateDegreeInfo();
        rotateInfo.f75321y = rotateDegreeInfo2;
        rotateDegreeInfo2.parseJson(jSONObject.optJSONObject("y"));
        AdMatrixInfo.RotateDegreeInfo rotateDegreeInfo3 = new AdMatrixInfo.RotateDegreeInfo();
        rotateInfo.f75322z = rotateDegreeInfo3;
        rotateDegreeInfo3.parseJson(jSONObject.optJSONObject(com.umeng.analytics.pro.bm.aH));
        rotateInfo.enable = jSONObject.optBoolean("enable");
        rotateInfo.bidirectionalSwitch = jSONObject.optBoolean("bidirectionalSwitch");
    }

    private static JSONObject b(AdMatrixInfo.RotateInfo rotateInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = rotateInfo.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "title", rotateInfo.title);
        }
        String str2 = rotateInfo.subTitle;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseAppConfig.KEY_END_GAME_SUBTITLE, rotateInfo.subTitle);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "downloadTexts", rotateInfo.downloadTexts);
        com.kwad.sdk.utils.ac.a(jSONObject, "x", rotateInfo.f75320x);
        com.kwad.sdk.utils.ac.a(jSONObject, "y", rotateInfo.f75321y);
        com.kwad.sdk.utils.ac.a(jSONObject, com.umeng.analytics.pro.bm.aH, rotateInfo.f75322z);
        boolean z10 = rotateInfo.enable;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enable", z10);
        }
        boolean z11 = rotateInfo.bidirectionalSwitch;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidirectionalSwitch", z11);
        }
        return jSONObject;
    }
}
