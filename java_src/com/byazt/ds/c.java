package com.byazt.ds;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 20})
public class c extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13141a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13142n;

    public c(Context context, x xVar) {
        super(true, false);
        this.f13142n = context;
        this.f13141a = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException, SecurityException {
        if (!TextUtils.isEmpty(this.f13141a.cu())) {
            jSONObject.put("ab_client", this.f13141a.cu());
        }
        if (!TextUtils.isEmpty(this.f13141a.my())) {
            if (com.byazt.yv.da.tt) {
                com.byazt.yv.da.c("init config has abversion:" + this.f13141a.my(), null);
            }
            jSONObject.put("ab_version", this.f13141a.my());
        }
        if (!TextUtils.isEmpty(this.f13141a.qp())) {
            jSONObject.put("ab_group", this.f13141a.qp());
        }
        if (TextUtils.isEmpty(this.f13141a.nb())) {
            return true;
        }
        jSONObject.put("ab_feature", this.f13141a.nb());
        return true;
    }
}
