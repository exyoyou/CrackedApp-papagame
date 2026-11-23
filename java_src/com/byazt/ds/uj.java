package com.byazt.ds;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.bm;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 15})
public class uj extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13163a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13164n;

    public uj(Context context, x xVar) {
        super(true, false);
        this.f13164n = context;
        this.f13163a = xVar;
    }

    @Override // com.byazt.ds.ve
    @SuppressLint({"MissingPermission"})
    public boolean c(JSONObject jSONObject) throws JSONException, SecurityException {
        jSONObject.put(bm.f84421x, "Android");
        jSONObject.put(bm.f84422y, Build.VERSION.RELEASE);
        jSONObject.put("os_api", Build.VERSION.SDK_INT);
        jSONObject.put("device_model", com.byazt.yv.c.n());
        jSONObject.put(bm.F, Build.BRAND);
        jSONObject.put(bm.H, com.byazt.yv.c.a());
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("build_serial", this.f13163a.aw() ? c(this.f13164n) : this.f13163a.sv());
        return true;
    }

    private static String c(Context context) {
        String serial = null;
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            try {
                serial = Build.getSerial();
            } catch (Throwable unused) {
            }
        }
        if (TextUtils.isEmpty(serial) || TextUtils.equals(serial, "unknown")) {
            serial = Build.SERIAL;
        }
        return (TextUtils.isEmpty(serial) || TextUtils.equals(serial, "unknown")) ? "" : serial;
    }
}
