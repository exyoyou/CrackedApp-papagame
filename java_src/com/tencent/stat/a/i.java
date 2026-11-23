package com.tencent.stat.a;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f83857a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f83858l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f83859m;

    public i(Context context, int i10) {
        super(context, i10);
        this.f83858l = null;
        this.f83859m = null;
        this.f83858l = com.tencent.stat.common.k.p(context);
        if (f83857a == null) {
            f83857a = com.tencent.stat.common.k.m(context);
        }
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.NETWORK_MONITOR;
    }

    public void a(String str) {
        this.f83859m = str;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        com.tencent.stat.common.k.a(jSONObject, "op", f83857a);
        com.tencent.stat.common.k.a(jSONObject, "cn", this.f83858l);
        jSONObject.put("sp", this.f83859m);
        return true;
    }
}
