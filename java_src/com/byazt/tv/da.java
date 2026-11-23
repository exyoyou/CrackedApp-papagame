package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 72})
public class da extends c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f20439t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f20440u;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f20441z = 0;

    @Override // com.byazt.tv.c
    public List<String> c() {
        return null;
    }

    @Override // com.byazt.tv.c
    public JSONObject tt() throws JSONException {
        a aVar;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.tt);
        jSONObject.put("tea_event_index", this.ve);
        jSONObject.put("session_id", this.uj);
        jSONObject.put("stop_timestamp", this.f20440u / 1000);
        jSONObject.put("duration", this.f20439t / 1000);
        jSONObject.put("datetime", this.sl);
        long j10 = this.f20437n;
        if (j10 > 0) {
            jSONObject.put(HmRtcEnvironment.kUserId, j10);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.f20433a) ? JSONObject.NULL : this.f20433a);
        if (!TextUtils.isEmpty(this.sp)) {
            jSONObject.put(BuildQRCodeActivity_.SSID_EXTRA, this.sp);
        }
        if (!TextUtils.isEmpty(this.f20438x)) {
            jSONObject.put("ab_sdk_version", this.f20438x);
        }
        if (!TextUtils.isEmpty(this.yp)) {
            jSONObject.put("uuid_changed", true);
            if (!TextUtils.equals(this.yp, this.uj)) {
                jSONObject.put("original_session_id", this.yp);
            }
        }
        if (this.f20441z == 0 && (aVar = (a) tt.tt.get("launch")) != null && !aVar.gt) {
            this.f20441z = 6;
        }
        jSONObject.put("launch_from", this.f20441z);
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "terminate";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return String.valueOf(this.f20439t);
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        com.byazt.yv.da.tt((Throwable) null);
        return 0;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        com.byazt.yv.da.tt((Throwable) null);
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) {
        com.byazt.yv.da.tt((Throwable) null);
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        com.byazt.yv.da.tt((Throwable) null);
        return this;
    }
}
