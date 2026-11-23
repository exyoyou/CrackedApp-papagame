package com.kwad.sdk.core.b.a;

import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lo implements com.kwad.sdk.core.d<AdMatrixInfo.ShakeInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdMatrixInfo.ShakeInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdMatrixInfo.ShakeInfo) bVar, jSONObject);
    }

    private static void a(AdMatrixInfo.ShakeInfo shakeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        shakeInfo.title = jSONObject.optString("title");
        if (JSONObject.NULL.toString().equals(shakeInfo.title)) {
            shakeInfo.title = "";
        }
        shakeInfo.subtitle = jSONObject.optString(MediaFormat.KEY_SUBTITLE);
        if (JSONObject.NULL.toString().equals(shakeInfo.subtitle)) {
            shakeInfo.subtitle = "";
        }
        shakeInfo.acceleration = jSONObject.optInt("acceleration");
        shakeInfo.clickDisabled = jSONObject.optBoolean("clickDisabled");
        shakeInfo.componentIndex = jSONObject.optInt("componentIndex");
        shakeInfo.enable = jSONObject.optBoolean("enable");
        shakeInfo.bidirectionalSwitch = jSONObject.optBoolean("bidirectionalSwitch");
    }

    private static JSONObject b(AdMatrixInfo.ShakeInfo shakeInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = shakeInfo.title;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "title", shakeInfo.title);
        }
        String str2 = shakeInfo.subtitle;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, MediaFormat.KEY_SUBTITLE, shakeInfo.subtitle);
        }
        int i10 = shakeInfo.acceleration;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "acceleration", i10);
        }
        boolean z10 = shakeInfo.clickDisabled;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickDisabled", z10);
        }
        int i11 = shakeInfo.componentIndex;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "componentIndex", i11);
        }
        boolean z11 = shakeInfo.enable;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "enable", z11);
        }
        boolean z12 = shakeInfo.bidirectionalSwitch;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "bidirectionalSwitch", z12);
        }
        return jSONObject;
    }
}
