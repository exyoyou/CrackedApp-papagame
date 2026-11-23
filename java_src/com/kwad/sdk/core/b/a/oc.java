package com.kwad.sdk.core.b.a;

import com.kwad.components.core.webview.jshandler.WebCardVideoPositionHandler;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class oc implements com.kwad.sdk.core.d<WebCardVideoPositionHandler.VideoPosition> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((WebCardVideoPositionHandler.VideoPosition) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((WebCardVideoPositionHandler.VideoPosition) bVar, jSONObject);
    }

    private static void a(WebCardVideoPositionHandler.VideoPosition videoPosition, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        videoPosition.leftMarginRation = jSONObject.optDouble("leftMarginRation");
        videoPosition.topMarginRation = jSONObject.optDouble("topMarginRation");
        videoPosition.widthRation = jSONObject.optDouble("widthRation");
        videoPosition.heightWidthRation = jSONObject.optDouble("heightWidthRation");
        videoPosition.leftMargin = jSONObject.optInt("leftMargin");
        videoPosition.topMargin = jSONObject.optInt("topMargin");
        videoPosition.width = jSONObject.optInt("width");
        videoPosition.height = jSONObject.optInt("height");
        videoPosition.borderRadius = jSONObject.optInt("borderRadius");
    }

    private static JSONObject b(WebCardVideoPositionHandler.VideoPosition videoPosition, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = videoPosition.leftMarginRation;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "leftMarginRation", d10);
        }
        double d11 = videoPosition.topMarginRation;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "topMarginRation", d11);
        }
        double d12 = videoPosition.widthRation;
        if (d12 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "widthRation", d12);
        }
        double d13 = videoPosition.heightWidthRation;
        if (d13 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "heightWidthRation", d13);
        }
        int i10 = videoPosition.leftMargin;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "leftMargin", i10);
        }
        int i11 = videoPosition.topMargin;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "topMargin", i11);
        }
        int i12 = videoPosition.width;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i12);
        }
        int i13 = videoPosition.height;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i13);
        }
        int i14 = videoPosition.borderRadius;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "borderRadius", i14);
        }
        return jSONObject;
    }
}
