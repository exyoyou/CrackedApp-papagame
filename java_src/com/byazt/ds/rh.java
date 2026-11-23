package com.byazt.ds;

import android.content.SharedPreferences;
import com.join.mgps.activity.BuildQRCodeActivity_;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 115})
public class rh extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final x f13153n;

    public rh(x xVar) {
        super(true, false, false);
        this.f13153n = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        SharedPreferences sharedPreferencesN = this.f13153n.n();
        String string = sharedPreferencesN.getString("install_id", null);
        String string2 = sharedPreferencesN.getString("device_id", null);
        String string3 = sharedPreferencesN.getString(BuildQRCodeActivity_.SSID_EXTRA, null);
        i.c(jSONObject, "install_id", string);
        i.c(jSONObject, "device_id", string2);
        i.c(jSONObject, BuildQRCodeActivity_.SSID_EXTRA, string3);
        long j10 = 0;
        long j11 = sharedPreferencesN.getLong("register_time", 0L);
        if ((i.tt(string) && i.tt(string2)) || j11 == 0) {
            j10 = j11;
        } else {
            sharedPreferencesN.edit().putLong("register_time", 0L).apply();
        }
        jSONObject.put("register_time", j10);
        return true;
    }
}
