package com.byazt.ds;

import android.annotation.SuppressLint;
import android.content.Context;
import com.umeng.analytics.pro.bm;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 67})
public class u extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13162n;

    public u(Context context) {
        super(true, true);
        this.f13162n = context;
    }

    @Override // com.byazt.ds.ve
    @SuppressLint({"MissingPermission"})
    public boolean c(JSONObject jSONObject) throws JSONException {
        i.c(jSONObject, bm.Q, com.byazt.yv.n.c(this.f13162n));
        return true;
    }
}
