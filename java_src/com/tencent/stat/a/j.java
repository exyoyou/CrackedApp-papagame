package com.tencent.stat.a;

import android.content.Context;
import com.facebook.common.callercontext.ContextChain;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class j extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Long f83860a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f83861l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f83862m;

    public j(Context context, String str, String str2, int i10, Long l10) {
        super(context, i10);
        this.f83862m = str;
        this.f83861l = str2;
        this.f83860a = l10;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.PAGE_VIEW;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) throws JSONException {
        com.tencent.stat.common.k.a(jSONObject, ContextChain.f26845j, this.f83861l);
        com.tencent.stat.common.k.a(jSONObject, "rf", this.f83862m);
        Long l10 = this.f83860a;
        if (l10 == null) {
            return true;
        }
        jSONObject.put(com.umeng.analytics.pro.f.f84649ac, l10);
        return true;
    }
}
