package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.kwad.components.ad.nativead.monitor.NativeAdMonitor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class jg implements com.kwad.sdk.core.d<NativeAdMonitor.NativeReportMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((NativeAdMonitor.NativeReportMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((NativeAdMonitor.NativeReportMsg) bVar, jSONObject);
    }

    private static void a(NativeAdMonitor.NativeReportMsg nativeReportMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        nativeReportMsg.state = jSONObject.optInt(NoticeTopAnimActivityDialog_.STATE_EXTRA);
        nativeReportMsg.containerType = jSONObject.optString("container_type");
        if (JSONObject.NULL.toString().equals(nativeReportMsg.containerType)) {
            nativeReportMsg.containerType = "";
        }
        nativeReportMsg.containerName = jSONObject.optString("container_name");
        if (JSONObject.NULL.toString().equals(nativeReportMsg.containerName)) {
            nativeReportMsg.containerName = "";
        }
        nativeReportMsg.height = jSONObject.optInt("height");
        nativeReportMsg.width = jSONObject.optInt("width");
    }

    private static JSONObject b(NativeAdMonitor.NativeReportMsg nativeReportMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = nativeReportMsg.state;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, NoticeTopAnimActivityDialog_.STATE_EXTRA, i10);
        }
        String str = nativeReportMsg.containerType;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "container_type", nativeReportMsg.containerType);
        }
        String str2 = nativeReportMsg.containerName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "container_name", nativeReportMsg.containerName);
        }
        int i11 = nativeReportMsg.height;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i11);
        }
        int i12 = nativeReportMsg.width;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i12);
        }
        return jSONObject;
    }
}
