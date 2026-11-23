package com.byazt.nys;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17721c;
    public long tt;
    public Map<String, Long> uj = new HashMap();
    public long ve;

    private sp(String str, long j10) {
        this.f17721c = str;
        this.tt = j10;
        this.ve = j10;
    }

    public static sp c(String str) {
        return new sp(str, SystemClock.elapsedRealtime());
    }

    public long tt(String str) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.ve;
        this.ve = SystemClock.elapsedRealtime();
        this.uj.put(str, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public long c() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.tt;
        this.uj.put(this.f17721c, Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    public void c(JSONObject jSONObject) {
        c(jSONObject, 0L);
    }

    public void c(JSONObject jSONObject, long j10) {
        if (jSONObject == null) {
            return;
        }
        for (Map.Entry<String, Long> entry : this.uj.entrySet()) {
            String key = entry.getKey();
            Long value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value.longValue() > j10) {
                try {
                    jSONObject.put(key, value);
                } catch (JSONException unused) {
                }
            }
        }
    }
}
