package com.kwad.sdk.core.b.a;

import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.activity.FullShareWebActivity_;
import com.kwad.components.core.request.model.ImpInfo;
import com.kwad.sdk.core.scene.URLPackage;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gm implements com.kwad.sdk.core.d<ImpInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((ImpInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((ImpInfo) bVar, jSONObject);
    }

    private static void a(ImpInfo impInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        impInfo.pageScene = jSONObject.optLong("pageScene");
        impInfo.subPageScene = jSONObject.optLong("subPageScene");
        impInfo.sdkExtraData = jSONObject.optString("sdkExtraData");
        if (JSONObject.NULL.toString().equals(impInfo.sdkExtraData)) {
            impInfo.sdkExtraData = "";
        }
        impInfo.posId = jSONObject.optLong("posId");
        impInfo.entryScene = jSONObject.optLong("entryScene");
        impInfo.adNum = jSONObject.optInt("adNum");
        impInfo.action = jSONObject.optInt("action");
        impInfo.width = jSONObject.optInt("width");
        impInfo.height = jSONObject.optInt("height");
        impInfo.cpmBidFloor = jSONObject.optLong("cpmBidFloor");
        impInfo.adStyle = jSONObject.optInt("adStyle");
        URLPackage uRLPackage = new URLPackage();
        impInfo.urlPackage = uRLPackage;
        uRLPackage.parseJson(jSONObject.optJSONObject("urlPackage"));
        impInfo.promoteId = jSONObject.optString("promoteId");
        if (JSONObject.NULL.toString().equals(impInfo.promoteId)) {
            impInfo.promoteId = "";
        }
        impInfo.comment = jSONObject.optString("comment");
        if (JSONObject.NULL.toString().equals(impInfo.comment)) {
            impInfo.comment = "";
        }
        impInfo.backUrl = jSONObject.optString("backUrl");
        if (JSONObject.NULL.toString().equals(impInfo.backUrl)) {
            impInfo.backUrl = "";
        }
        impInfo.userCommRateBuying = jSONObject.optLong("userCommRateBuying");
        impInfo.userCommRateSharing = jSONObject.optLong("userCommRateSharing");
        impInfo.screenOrientation = jSONObject.optInt(FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA);
        impInfo.extraData = jSONObject.optString(BaseVideoView.COMPONENT_EXTRA_DATA);
        if (JSONObject.NULL.toString().equals(impInfo.extraData)) {
            impInfo.extraData = "";
        }
        impInfo.query = jSONObject.optString("query");
        if (JSONObject.NULL.toString().equals(impInfo.query)) {
            impInfo.query = "";
        }
    }

    private static JSONObject b(ImpInfo impInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = impInfo.pageScene;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pageScene", j10);
        }
        long j11 = impInfo.subPageScene;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "subPageScene", j11);
        }
        String str = impInfo.sdkExtraData;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkExtraData", impInfo.sdkExtraData);
        }
        long j12 = impInfo.posId;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j12);
        }
        long j13 = impInfo.entryScene;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "entryScene", j13);
        }
        int i10 = impInfo.adNum;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adNum", i10);
        }
        int i11 = impInfo.action;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "action", i11);
        }
        int i12 = impInfo.width;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i12);
        }
        int i13 = impInfo.height;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i13);
        }
        long j14 = impInfo.cpmBidFloor;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cpmBidFloor", j14);
        }
        int i14 = impInfo.adStyle;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i14);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "urlPackage", impInfo.urlPackage);
        String str2 = impInfo.promoteId;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "promoteId", impInfo.promoteId);
        }
        String str3 = impInfo.comment;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "comment", impInfo.comment);
        }
        String str4 = impInfo.backUrl;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "backUrl", impInfo.backUrl);
        }
        long j15 = impInfo.userCommRateBuying;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateBuying", j15);
        }
        long j16 = impInfo.userCommRateSharing;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateSharing", j16);
        }
        int i15 = impInfo.screenOrientation;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, i15);
        }
        String str5 = impInfo.extraData;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseVideoView.COMPONENT_EXTRA_DATA, impInfo.extraData);
        }
        String str6 = impInfo.query;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "query", impInfo.query);
        }
        return jSONObject;
    }
}
