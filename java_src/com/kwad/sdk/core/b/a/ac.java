package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.convert.AdLinkMonitorMsg;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ac implements com.kwad.sdk.core.d<AdLinkMonitorMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdLinkMonitorMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdLinkMonitorMsg) bVar, jSONObject);
    }

    private static void a(AdLinkMonitorMsg adLinkMonitorMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adLinkMonitorMsg.status = jSONObject.optInt("status");
        adLinkMonitorMsg.durationTime = jSONObject.optLong("duration_time");
        adLinkMonitorMsg.renderType = jSONObject.optInt("render_type");
        adLinkMonitorMsg.adStyle = jSONObject.optInt("ad_style");
        adLinkMonitorMsg.materialLoadType = jSONObject.optInt("material_load_type");
    }

    private static JSONObject b(AdLinkMonitorMsg adLinkMonitorMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = adLinkMonitorMsg.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        long j10 = adLinkMonitorMsg.durationTime;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "duration_time", j10);
        }
        int i11 = adLinkMonitorMsg.renderType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i11);
        }
        int i12 = adLinkMonitorMsg.adStyle;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i12);
        }
        int i13 = adLinkMonitorMsg.materialLoadType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_load_type", i13);
        }
        return jSONObject;
    }
}
