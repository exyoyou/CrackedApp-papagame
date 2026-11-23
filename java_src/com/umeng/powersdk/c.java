package com.umeng.powersdk;

import android.app.Activity;
import android.os.BatteryManager;
import com.efs.sdk.base.core.config.GlobalInfoManager;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f85673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f85674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f85675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WeakReference<Activity> f85676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f85677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f85678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f85679g;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f85689a = new c(0);
    }

    private c() {
        this.f85673a = 1;
        this.f85674b = 0;
        this.f85675c = 0;
        this.f85677e = true;
    }

    final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            BatteryManager batteryManager = (BatteryManager) PowerManager.getApplicationContext().getSystemService("batterymanager");
            if (batteryManager != null) {
                float longProperty = batteryManager.getLongProperty(2);
                if (longProperty >= 10000.0f || longProperty <= -10000.0f) {
                    longProperty /= 1000.0f;
                }
                jSONObject.put("ci", Math.abs(longProperty));
            }
        } catch (Throwable unused) {
        }
        try {
            com.umeng.powersdk.a aVarA = b.a(PowerManager.getApplicationContext()).a();
            jSONObject.put("le", aVarA.f85665a);
            jSONObject.put("vo", aVarA.f85666b);
            jSONObject.put("te", aVarA.f85667c);
            jSONObject.put("st", aVarA.f85668d);
            jSONObject.put("ch", aVarA.f85669e);
            jSONObject.put("ts", aVarA.f85670f);
            try {
                long jLongValue = ((Long) GlobalInfoManager.getInstance().getGlobalInfo().getGlobalInfoMap().get("stime")).longValue();
                if (jLongValue > 0) {
                    jSONObject.put("ptime", System.currentTimeMillis() - jLongValue);
                }
            } catch (Throwable unused2) {
            }
            WeakReference<Activity> weakReference = this.f85676d;
            if (weakReference != null) {
                jSONObject.put("c_act", weakReference.get().getClass().getName());
            }
        } catch (Throwable unused3) {
        }
        return jSONObject;
    }

    /* synthetic */ c(byte b10) {
        this();
    }
}
