package com.byazt.ds;

import android.content.Context;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 215})
public final class yp extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13169a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13170n;

    public yp(Context context, x xVar) {
        super(true, false);
        this.f13170n = context;
        this.f13169a = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException, SecurityException {
        Map<String, String> mapC = com.byazt.vm.sp.c(this.f13170n, this.f13169a.n());
        if (mapC == null) {
            return !com.byazt.gj.c.tt;
        }
        jSONObject.put("oaid", new JSONObject(mapC));
        return true;
    }
}
