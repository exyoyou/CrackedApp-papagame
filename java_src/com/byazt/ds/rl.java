package com.byazt.ds;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.umeng.analytics.pro.bm;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 117})
public class rl extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13154a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13155n;

    public rl(Context context, x xVar) {
        super(true, false);
        this.f13155n = context;
        this.f13154a = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException, SecurityException {
        TelephonyManager telephonyManager = (TelephonyManager) this.f13155n.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                i.c(jSONObject, bm.P, telephonyManager.getNetworkOperatorName());
                i.c(jSONObject, "mcc_mnc", telephonyManager.getNetworkOperator());
                i.c(jSONObject, "udid", this.f13154a.aw() ? com.byazt.yv.a.c(telephonyManager) : this.f13154a.bx());
                return true;
            } catch (Exception e10) {
                com.byazt.yv.da.tt(e10);
            }
        }
        return false;
    }
}
