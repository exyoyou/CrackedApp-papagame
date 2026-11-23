package com.byazt.omf;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 110})
public class qy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18096c;
    public long tt;
    public Map<String, Long> uj = new HashMap();
    public long ve;

    private qy(String str, long j10) {
        this.f18096c = str;
        this.tt = j10;
        this.ve = j10;
    }

    public static qy c(String str) {
        return new qy(str, SystemClock.elapsedRealtime());
    }

    public long tt(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - this.ve;
        this.ve = jElapsedRealtime;
        this.uj.put(str, Long.valueOf(j10));
        return j10;
    }

    public long c() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.tt;
        this.uj.put(this.f18096c, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public void c(String str, long j10) {
        this.uj.put(str, Long.valueOf(j10));
    }

    public void c(JSONObject jSONObject, long j10) {
        if (jSONObject == null) {
            return;
        }
        for (Map.Entry<String, Long> entry : this.uj.entrySet()) {
            String key = entry.getKey();
            Long value = entry.getValue();
            if (!TextUtils.isEmpty(key) && (value.longValue() > j10 || key.equals("armor_load_cost"))) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public long tt() {
        return SystemClock.elapsedRealtime() - this.tt;
    }

    public JSONObject c(long j10) {
        JSONObject jSONObject = new JSONObject();
        c(jSONObject, j10);
        return jSONObject;
    }
}
