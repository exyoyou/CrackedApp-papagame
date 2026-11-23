package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nc implements com.kwad.sdk.core.d<com.kwad.sdk.core.request.model.f> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.request.model.f) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.request.model.f) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.request.model.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        fVar.adStyle = jSONObject.optInt("adStyle");
        fVar.taskType = jSONObject.optInt("taskType");
        fVar.count = jSONObject.optInt(QuarkInstallAppActivity_.COUNT_EXTRA);
        fVar.aXx = jSONObject.optLong("lastModifiedTime");
    }

    private static JSONObject b(com.kwad.sdk.core.request.model.f fVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = fVar.adStyle;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i10);
        }
        int i11 = fVar.taskType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "taskType", i11);
        }
        int i12 = fVar.count;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, QuarkInstallAppActivity_.COUNT_EXTRA, i12);
        }
        long j10 = fVar.aXx;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "lastModifiedTime", j10);
        }
        return jSONObject;
    }
}
