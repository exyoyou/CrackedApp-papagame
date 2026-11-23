package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.FullShareWebActivity_;
import com.kwad.sdk.core.scene.URLPackage;
import com.kwad.sdk.internal.api.AdLabelImpl;
import com.kwad.sdk.internal.api.NativeAdExtraDataImpl;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.internal.api.SplashExtraDataImpl;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ln implements com.kwad.sdk.core.d<SceneImpl> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((SceneImpl) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((SceneImpl) bVar, jSONObject);
    }

    private static void a(SceneImpl sceneImpl, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        URLPackage uRLPackage = new URLPackage();
        sceneImpl.urlPackage = uRLPackage;
        uRLPackage.parseJson(jSONObject.optJSONObject("urlPackage"));
        sceneImpl.posId = jSONObject.optLong("posId");
        sceneImpl.entryScene = jSONObject.optLong("entryScene");
        sceneImpl.adNum = jSONObject.optInt("adNum");
        sceneImpl.action = jSONObject.optInt("action");
        sceneImpl.width = jSONObject.optInt("width");
        sceneImpl.height = jSONObject.optInt("height");
        sceneImpl.adStyle = jSONObject.optInt("adStyle");
        sceneImpl.screenOrientation = jSONObject.optInt(FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA);
        AdLabelImpl adLabelImpl = new AdLabelImpl();
        sceneImpl.mKsAdLabel = adLabelImpl;
        adLabelImpl.parseJson(jSONObject.optJSONObject("mKsAdLabel"));
        SplashExtraDataImpl splashExtraDataImpl = new SplashExtraDataImpl();
        sceneImpl.splashExtraData = splashExtraDataImpl;
        splashExtraDataImpl.parseJson(jSONObject.optJSONObject("splashExtraData"));
        NativeAdExtraDataImpl nativeAdExtraDataImpl = new NativeAdExtraDataImpl();
        sceneImpl.nativeAdExtraData = nativeAdExtraDataImpl;
        nativeAdExtraDataImpl.parseJson(jSONObject.optJSONObject("nativeAdExtraData"));
        sceneImpl.promoteId = jSONObject.optString("promoteId");
        if (JSONObject.NULL.toString().equals(sceneImpl.promoteId)) {
            sceneImpl.promoteId = "";
        }
        sceneImpl.comment = jSONObject.optString("comment");
        if (JSONObject.NULL.toString().equals(sceneImpl.comment)) {
            sceneImpl.comment = "";
        }
        sceneImpl.userCommRateBuying = jSONObject.optLong("userCommRateBuying");
        sceneImpl.userCommRateSharing = jSONObject.optLong("userCommRateSharing");
        sceneImpl.backUrl = jSONObject.optString("backUrl");
        if (JSONObject.NULL.toString().equals(sceneImpl.backUrl)) {
            sceneImpl.backUrl = "";
        }
        sceneImpl.bidResponse = jSONObject.optString("bidResponse");
        if (JSONObject.NULL.toString().equals(sceneImpl.bidResponse)) {
            sceneImpl.bidResponse = "";
        }
        sceneImpl.bidResponseV2 = jSONObject.optString("bidResponseV2");
        if (JSONObject.NULL.toString().equals(sceneImpl.bidResponseV2)) {
            sceneImpl.bidResponseV2 = "";
        }
        sceneImpl.query = jSONObject.optString("query");
        if (JSONObject.NULL.toString().equals(sceneImpl.query)) {
            sceneImpl.query = "";
        }
    }

    private static JSONObject b(SceneImpl sceneImpl, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "urlPackage", sceneImpl.urlPackage);
        long j10 = sceneImpl.posId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j10);
        }
        long j11 = sceneImpl.entryScene;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "entryScene", j11);
        }
        int i10 = sceneImpl.adNum;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adNum", i10);
        }
        int i11 = sceneImpl.action;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "action", i11);
        }
        int i12 = sceneImpl.width;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i12);
        }
        int i13 = sceneImpl.height;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i13);
        }
        int i14 = sceneImpl.adStyle;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i14);
        }
        int i15 = sceneImpl.screenOrientation;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, i15);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mKsAdLabel", sceneImpl.mKsAdLabel);
        com.kwad.sdk.utils.ac.a(jSONObject, "splashExtraData", sceneImpl.splashExtraData);
        com.kwad.sdk.utils.ac.a(jSONObject, "nativeAdExtraData", sceneImpl.nativeAdExtraData);
        String str = sceneImpl.promoteId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "promoteId", sceneImpl.promoteId);
        }
        String str2 = sceneImpl.comment;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "comment", sceneImpl.comment);
        }
        long j12 = sceneImpl.userCommRateBuying;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateBuying", j12);
        }
        long j13 = sceneImpl.userCommRateSharing;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userCommRateSharing", j13);
        }
        String str3 = sceneImpl.backUrl;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "backUrl", sceneImpl.backUrl);
        }
        String str4 = sceneImpl.bidResponse;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidResponse", sceneImpl.bidResponse);
        }
        String str5 = sceneImpl.bidResponseV2;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidResponseV2", sceneImpl.bidResponseV2);
        }
        String str6 = sceneImpl.query;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "query", sceneImpl.query);
        }
        return jSONObject;
    }
}
