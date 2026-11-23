package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.WebCardVideoPositionHandler;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ho implements com.kwad.sdk.core.d<WebCardVideoPositionHandler.VideoPosition.KSAdJSCornerModel> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((WebCardVideoPositionHandler.VideoPosition.KSAdJSCornerModel) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((WebCardVideoPositionHandler.VideoPosition.KSAdJSCornerModel) bVar, jSONObject);
    }

    private static void a(WebCardVideoPositionHandler.VideoPosition.KSAdJSCornerModel kSAdJSCornerModel, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        kSAdJSCornerModel.topLeft = jSONObject.optDouble("topLeft");
        kSAdJSCornerModel.topRight = jSONObject.optDouble("topRight");
        kSAdJSCornerModel.bottomRight = jSONObject.optDouble("bottomRight");
        kSAdJSCornerModel.bottomLeft = jSONObject.optDouble("bottomLeft");
    }

    private static JSONObject b(WebCardVideoPositionHandler.VideoPosition.KSAdJSCornerModel kSAdJSCornerModel, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = kSAdJSCornerModel.topLeft;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "topLeft", d10);
        }
        double d11 = kSAdJSCornerModel.topRight;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "topRight", d11);
        }
        double d12 = kSAdJSCornerModel.bottomRight;
        if (d12 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bottomRight", d12);
        }
        double d13 = kSAdJSCornerModel.bottomLeft;
        if (d13 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bottomLeft", d13);
        }
        return jSONObject;
    }
}
