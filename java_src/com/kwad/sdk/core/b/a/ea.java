package com.kwad.sdk.core.b.a;

import com.kwad.components.core.pfmonitor.model.DiskReportInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ea implements com.kwad.sdk.core.d<DiskReportInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((DiskReportInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((DiskReportInfo) bVar, jSONObject);
    }

    private static void a(DiskReportInfo diskReportInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        diskReportInfo.status = jSONObject.optInt("status");
        diskReportInfo.pathList = jSONObject.optString("path_list");
        if (JSONObject.NULL.toString().equals(diskReportInfo.pathList)) {
            diskReportInfo.pathList = "";
        }
    }

    private static JSONObject b(DiskReportInfo diskReportInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = diskReportInfo.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        String str = diskReportInfo.pathList;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "path_list", diskReportInfo.pathList);
        }
        return jSONObject;
    }
}
