package com.alipay.sdk.authjs;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f7143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f7144b;

    public d(Context context, c cVar) {
        this.f7144b = context;
        this.f7143a = cVar;
    }

    private static /* synthetic */ a.EnumC0203a a(d dVar, a aVar) {
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f76484o.equals(aVar.f7132c)) {
            JSONObject jSONObject = aVar.f7134e;
            String strOptString = jSONObject.optString("content");
            int i10 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f7144b, strOptString, i10).show();
            new Timer().schedule(new f(dVar, aVar), i10);
        }
        return a.EnumC0203a.NONE_ERROR;
    }

    private static void e(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private void f(String str) {
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(a.f7126k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(a.f7127l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(a.f7128m);
                String string3 = jSONObject.getString(a.f7125j);
                a aVar = new a("call");
                aVar.f7131b = string3;
                aVar.f7132c = string2;
                aVar.f7134e = jSONObject3;
                aVar.f7130a = string;
                c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    g(str2, a.EnumC0203a.RUNTIME_ERROR);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    private a.EnumC0203a h(a aVar) {
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f76484o.equals(aVar.f7132c)) {
            JSONObject jSONObject = aVar.f7134e;
            String strOptString = jSONObject.optString("content");
            int i10 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(this.f7144b, strOptString, i10).show();
            new Timer().schedule(new f(this, aVar), i10);
        }
        return a.EnumC0203a.NONE_ERROR;
    }

    private void i(a aVar) {
        JSONObject jSONObject = aVar.f7134e;
        String strOptString = jSONObject.optString("content");
        int i10 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
        Toast.makeText(this.f7144b, strOptString, i10).show();
        new Timer().schedule(new f(this, aVar), i10);
    }

    public final void c(a aVar) throws JSONException {
        if (aVar == null) {
            return;
        }
        if (TextUtils.isEmpty(aVar.f7132c)) {
            g(aVar.f7130a, a.EnumC0203a.INVALID_PARAMETER);
            return;
        }
        e eVar = new e(this, aVar);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            eVar.run();
        } else {
            new Handler(Looper.getMainLooper()).post(eVar);
        }
    }

    public final void g(String str, a.EnumC0203a enumC0203a) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("error", enumC0203a.ordinal());
        a aVar = new a(a.f7124i);
        aVar.f7134e = jSONObject;
        aVar.f7130a = str;
        this.f7143a.a(aVar);
    }
}
