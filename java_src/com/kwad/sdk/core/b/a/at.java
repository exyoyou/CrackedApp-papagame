package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.kwad.sdk.core.response.model.AdStatusInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class at implements com.kwad.sdk.core.d<AdStatusInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((AdStatusInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((AdStatusInfo) bVar, jSONObject);
    }

    private static void a(AdStatusInfo adStatusInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adStatusInfo.loadFromCache = jSONObject.optBoolean("loadFromCache");
        adStatusInfo.loadDataTime = jSONObject.optLong("loadDataTime");
        adStatusInfo.downloadFinishTime = jSONObject.optLong("downloadFinishTime");
        adStatusInfo.downloadType = jSONObject.optInt(PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA);
        adStatusInfo.downloadSize = jSONObject.optLong("downloadSize");
        adStatusInfo.downloadStatus = jSONObject.optInt("downloadStatus");
    }

    private static JSONObject b(AdStatusInfo adStatusInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = adStatusInfo.loadFromCache;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadFromCache", z10);
        }
        long j10 = adStatusInfo.loadDataTime;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadDataTime", j10);
        }
        long j11 = adStatusInfo.downloadFinishTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadFinishTime", j11);
        }
        int i10 = adStatusInfo.downloadType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, i10);
        }
        long j12 = adStatusInfo.downloadSize;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadSize", j12);
        }
        int i11 = adStatusInfo.downloadStatus;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadStatus", i11);
        }
        return jSONObject;
    }
}
