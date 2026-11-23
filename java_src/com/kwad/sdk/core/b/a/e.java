package com.kwad.sdk.core.b.a;

import com.windmill.sdk.WMConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.aqY = jSONObject.optBoolean("clickActionButton");
        aVar.ara = jSONObject.optInt("area");
        aVar.nm = jSONObject.optInt("itemClickType");
        aVar.bdg = jSONObject.optInt("convertPageType", new Integer(WMConstants.TIMER_STAGE_NONE).intValue());
        com.kwad.sdk.core.webview.d.b.d dVar = new com.kwad.sdk.core.webview.d.b.d();
        aVar.arb = dVar;
        dVar.parseJson(jSONObject.optJSONObject("logParam"));
        aVar.needReport = jSONObject.optBoolean("needReport", new Boolean("true").booleanValue());
        aVar.creativeId = jSONObject.optLong("creativeId", new Long(WMConstants.TIMER_STAGE_NONE).longValue());
        aVar.Rk = jSONObject.optString("liveItemId");
        if (JSONObject.NULL.toString().equals(aVar.Rk)) {
            aVar.Rk = "";
        }
        aVar.bdh = jSONObject.optInt("sceneType");
        aVar.adStyle = jSONObject.optInt("adStyle", new Integer(WMConstants.TIMER_STAGE_NONE).intValue());
        aVar.bdi = jSONObject.optBoolean("isCallbackOnly");
        aVar.bdj = jSONObject.optBoolean("disableCallback");
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = aVar.aqY;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickActionButton", z10);
        }
        int i10 = aVar.ara;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "area", i10);
        }
        int i11 = aVar.nm;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "itemClickType", i11);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "convertPageType", aVar.bdg);
        com.kwad.sdk.utils.ac.a(jSONObject, "logParam", aVar.arb);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "needReport", aVar.needReport);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", aVar.creativeId);
        String str = aVar.Rk;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "liveItemId", aVar.Rk);
        }
        int i12 = aVar.bdh;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sceneType", i12);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", aVar.adStyle);
        boolean z11 = aVar.bdi;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isCallbackOnly", z11);
        }
        boolean z12 = aVar.bdj;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "disableCallback", z12);
        }
        return jSONObject;
    }
}
