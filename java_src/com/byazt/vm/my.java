package com.byazt.vm;

import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 145})
public final class my {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f21244a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21245c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Long f21246n;
    public final Long sp;
    public final String tt;
    public final Long uj;
    public final Boolean ve;

    public my(String str, String str2, Boolean bool, Long l10, Long l11, Integer num, Long l12) {
        this.f21245c = str;
        this.tt = str2;
        this.ve = bool;
        this.uj = l10;
        this.f21246n = l11;
        this.f21244a = num;
        this.sp = l12;
    }

    @NonNull
    public Map<String, String> c() {
        HashMap map = new HashMap();
        m.c(map, "id", this.f21245c);
        m.c(map, "req_id", this.tt);
        m.c(map, "is_track_limited", String.valueOf(this.ve));
        m.c(map, "take_ms", String.valueOf(this.uj));
        m.c(map, "time", String.valueOf(this.f21246n));
        m.c(map, "query_times", String.valueOf(this.f21244a));
        m.c(map, "hw_id_version_code", String.valueOf(this.sp));
        return map;
    }

    public String toString() {
        return tt().toString();
    }

    @NonNull
    public JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        m.c(jSONObject, "id", this.f21245c);
        m.c(jSONObject, "req_id", this.tt);
        m.c(jSONObject, "is_track_limited", this.ve);
        m.c(jSONObject, "take_ms", this.uj);
        m.c(jSONObject, "time", this.f21246n);
        m.c(jSONObject, "query_times", this.f21244a);
        m.c(jSONObject, "hw_id_version_code", this.sp);
        return jSONObject;
    }

    @Nullable
    @AnyThread
    public static my c(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new my(jSONObject.optString("id", null), jSONObject.optString("req_id", null), jSONObject.has("is_track_limited") ? Boolean.valueOf(jSONObject.optBoolean("is_track_limited")) : null, jSONObject.has("take_ms") ? Long.valueOf(jSONObject.optLong("take_ms", -1L)) : null, jSONObject.has("time") ? Long.valueOf(jSONObject.optLong("time", -1L)) : null, jSONObject.has("query_times") ? Integer.valueOf(jSONObject.optInt("query_times", -1)) : null, jSONObject.has("hw_id_version_code") ? Long.valueOf(jSONObject.optLong("hw_id_version_code", -1L)) : null);
        } catch (JSONException e10) {
            com.byazt.yv.da.c(e10);
            return null;
        }
    }
}
