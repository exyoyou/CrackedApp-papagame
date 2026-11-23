package com.byazt.ds;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 195})
public class gt extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13144n;

    public gt(Context context) {
        super(true, false);
        this.f13144n = context;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        i.c(jSONObject, "sim_region", ((TelephonyManager) this.f13144n.getSystemService("phone")).getSimCountryIso());
        return true;
    }
}
