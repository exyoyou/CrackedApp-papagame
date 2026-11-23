package com.byazt.ja;

import com.byazt.omf.d;
import com.byazt.pct.nu;
import com.join.mgps.adapter.FullScreenActivity_;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1425, 34})
public class a extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<d> f15711c;

    public a(d dVar) {
        this.f15711c = new WeakReference<>(dVar);
    }

    public static void c(nu nuVar, d dVar) {
        nuVar.c("startVideoTransform", (com.byazt.pct.n<?, ?>) new a(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        d dVar;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<d> weakReference = this.f15711c;
        if (weakReference == null || weakReference.get() == null || jSONObject == null || (dVar = this.f15711c.get()) == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject(FullScreenActivity_.VIDEO_INFO_EXTRA)) == null) {
            return jSONObject2;
        }
        dVar.c((float) jSONObjectOptJSONObject.optDouble("toX"), (float) jSONObjectOptJSONObject.optDouble("toY"), (float) jSONObjectOptJSONObject.optDouble("pivotX"), (float) jSONObjectOptJSONObject.optDouble("pivotY"), jSONObject.optInt("duration"));
        return jSONObject2;
    }
}
