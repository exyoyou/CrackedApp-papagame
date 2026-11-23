package com.byazt.ds;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 46})
public final class n extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final x f13152n;

    public n(Context context, x xVar) {
        super(true, false);
        this.f13152n = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException, SecurityException {
        String strC = com.byazt.vm.sp.c(this.f13152n.n());
        if (TextUtils.isEmpty(strC)) {
            return false;
        }
        jSONObject.put("cdid", strC);
        return true;
    }
}
