package com.alipay.sdk.data;

import android.content.Context;
import com.alipay.sdk.util.i;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f7160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ a f7161c;

    b(a aVar, Context context) {
        this.f7161c = aVar;
        this.f7160b = context;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        try {
            com.alipay.sdk.packet.b bVarA = new com.alipay.sdk.packet.impl.b().a(this.f7160b);
            if (bVarA != null) {
                this.f7161c.e(bVarA.f7176b);
                a aVar = this.f7161c;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout", aVar.a());
                jSONObject.put(a.f7156j, aVar.f7159b);
                i.c(x.b.b().f97590a, a.f7153g, jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }
}
