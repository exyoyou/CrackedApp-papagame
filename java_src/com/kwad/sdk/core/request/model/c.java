package com.kwad.sdk.core.request.model;

import androidx.annotation.Nullable;
import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.bf;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements com.kwad.sdk.core.b {
    private static c aXn;
    private double latitude;
    private double longitude;
    private int type;

    public static c Ns() {
        com.kwad.sdk.internal.api.a aVar;
        c cVar = aXn;
        if (cVar != null) {
            return cVar;
        }
        try {
            aXn = new c();
            com.kwad.sdk.utils.d.a aVarDg = bf.dg(((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext());
            if (aVarDg != null && (aVar = aVarDg.bsT) != null) {
                aXn.latitude = aVar.getLatitude();
                aXn.longitude = aVarDg.bsT.getLongitude();
                aXn.type = aVarDg.type;
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
        return aXn;
    }

    @Override // com.kwad.sdk.core.b
    public final void parseJson(@Nullable JSONObject jSONObject) {
    }

    @Override // com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, BaseVideoView.GPS_LATITUDE, this.latitude);
        ac.putValue(jSONObject, BaseVideoView.GPS_LONGITUDE, this.longitude);
        ac.putValue(jSONObject, "type", this.type);
        return jSONObject;
    }
}
