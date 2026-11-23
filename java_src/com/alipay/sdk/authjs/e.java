package com.alipay.sdk.authjs;

import android.widget.Toast;
import java.util.Timer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f7145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f7146c;

    e(d dVar, a aVar) {
        this.f7146c = dVar;
        this.f7145b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f7146c;
        a aVar = this.f7145b;
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f76484o.equals(aVar.f7132c)) {
            JSONObject jSONObject = aVar.f7134e;
            String strOptString = jSONObject.optString("content");
            int i10 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f7144b, strOptString, i10).show();
            new Timer().schedule(new f(dVar, aVar), i10);
        }
        a.EnumC0203a enumC0203a = a.EnumC0203a.NONE_ERROR;
    }
}
