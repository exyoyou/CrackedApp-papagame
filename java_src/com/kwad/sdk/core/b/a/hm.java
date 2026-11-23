package com.kwad.sdk.core.b.a;

import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.kgeo.KGeoInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class hm implements com.kwad.sdk.core.d<KGeoInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((KGeoInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((KGeoInfo) bVar, jSONObject);
    }

    private static void a(KGeoInfo kGeoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        kGeoInfo.latitude = jSONObject.optDouble(BaseVideoView.GPS_LATITUDE);
        kGeoInfo.longitude = jSONObject.optDouble(BaseVideoView.GPS_LONGITUDE);
        kGeoInfo.range = jSONObject.optInt("range");
        kGeoInfo.rate = jSONObject.optInt("rate");
    }

    private static JSONObject b(KGeoInfo kGeoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = kGeoInfo.latitude;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseVideoView.GPS_LATITUDE, d10);
        }
        double d11 = kGeoInfo.longitude;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseVideoView.GPS_LONGITUDE, d11);
        }
        int i10 = kGeoInfo.range;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "range", i10);
        }
        int i11 = kGeoInfo.rate;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rate", i11);
        }
        return jSONObject;
    }
}
