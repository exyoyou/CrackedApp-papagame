package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nh implements com.kwad.sdk.core.d<com.kwad.sdk.core.threads.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.threads.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.threads.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.threads.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.aYy = jSONObject.optString("pool_name");
        if (JSONObject.NULL.toString().equals(bVar.aYy)) {
            bVar.aYy = "";
        }
        bVar.aYz = jSONObject.optInt("core_pool_size");
        bVar.aYA = jSONObject.optInt("max_pool_size");
        bVar.aYB = jSONObject.optInt("current_pool_size");
        bVar.aYC = jSONObject.optInt("active_count");
        bVar.aYD = jSONObject.optLong("task_wait_avg_ms");
        bVar.aYE = jSONObject.optLong("task_succ_count");
        bVar.interval = jSONObject.optLong("interval_ms");
        bVar.aYF = jSONObject.optInt("queue_size");
        bVar.aYG = jSONObject.optLong("pass_timestamp");
        bVar.aYH = jSONObject.optInt("func_ratio_count");
    }

    private static JSONObject b(com.kwad.sdk.core.threads.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.aYy;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pool_name", bVar.aYy);
        }
        int i10 = bVar.aYz;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "core_pool_size", i10);
        }
        int i11 = bVar.aYA;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "max_pool_size", i11);
        }
        int i12 = bVar.aYB;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "current_pool_size", i12);
        }
        int i13 = bVar.aYC;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "active_count", i13);
        }
        long j10 = bVar.aYD;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "task_wait_avg_ms", j10);
        }
        long j11 = bVar.aYE;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "task_succ_count", j11);
        }
        long j12 = bVar.interval;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interval_ms", j12);
        }
        int i14 = bVar.aYF;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "queue_size", i14);
        }
        long j13 = bVar.aYG;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pass_timestamp", j13);
        }
        int i15 = bVar.aYH;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "func_ratio_count", i15);
        }
        return jSONObject;
    }
}
