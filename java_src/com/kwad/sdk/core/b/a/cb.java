package com.kwad.sdk.core.b.a;

import com.kwad.components.core.innerEc.logger.BaseInnerEcMsg;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes2.dex */
public final class cb implements com.kwad.sdk.core.d<BaseInnerEcMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((BaseInnerEcMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((BaseInnerEcMsg) bVar, jSONObject);
    }

    private static void a(BaseInnerEcMsg baseInnerEcMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        baseInnerEcMsg.adStyle = jSONObject.optInt("ad_style");
        baseInnerEcMsg.materialType = jSONObject.optInt("material_type");
        baseInnerEcMsg.userId = jSONObject.optString(HmRtcEnvironment.kUserId);
        if (JSONObject.NULL.toString().equals(baseInnerEcMsg.userId)) {
            baseInnerEcMsg.userId = "";
        }
        baseInnerEcMsg.status = jSONObject.optInt("status");
    }

    private static JSONObject b(BaseInnerEcMsg baseInnerEcMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = baseInnerEcMsg.adStyle;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i10);
        }
        int i11 = baseInnerEcMsg.materialType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i11);
        }
        String str = baseInnerEcMsg.userId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, HmRtcEnvironment.kUserId, baseInnerEcMsg.userId);
        }
        int i12 = baseInnerEcMsg.status;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i12);
        }
        return jSONObject;
    }
}
