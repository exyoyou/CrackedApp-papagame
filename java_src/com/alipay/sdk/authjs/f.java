package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
final class f extends TimerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f7147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f7148c;

    f(d dVar, a aVar) {
        this.f7148c = dVar;
        this.f7147b = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("toastCallBack", "true");
        } catch (JSONException unused) {
        }
        a aVar = new a(a.f7124i);
        aVar.f7130a = this.f7147b.f7130a;
        aVar.f7134e = jSONObject;
        this.f7148c.f7143a.a(aVar);
    }
}
