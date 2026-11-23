package com.byazt.qx;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 34})
public class a extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19316c;

    public a(com.byazt.omf.d dVar) {
        this.f19316c = new WeakReference<>(dVar);
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("changePlaySpeedRatio", (com.byazt.pct.n<?, ?>) new a(dVar));
    }

    @Override // com.byazt.pct.n
    @Nullable
    public JSONObject c(@NonNull JSONObject jSONObject, @NonNull com.byazt.pct.a aVar) throws Exception {
        WeakReference<com.byazt.omf.d> weakReference = this.f19316c;
        if (weakReference != null && weakReference.get() != null) {
            float fOptDouble = (float) jSONObject.optDouble("ratio");
            if (fOptDouble > 0.0f && fOptDouble <= 3.0f) {
                this.f19316c.get().c(fOptDouble);
            }
            return new JSONObject();
        }
        return new JSONObject();
    }
}
