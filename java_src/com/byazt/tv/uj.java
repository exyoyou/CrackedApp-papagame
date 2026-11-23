package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 15})
public class uj extends c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public String f20455t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public String f20456u;

    public uj(@NonNull String str, @NonNull JSONObject jSONObject) {
        this.f20456u = str;
        this.f20455t = jSONObject.toString();
        this.f20435da = 0;
    }

    @Override // com.byazt.tv.c
    public List<String> c() {
        List<String> listC = super.c();
        ArrayList arrayList = new ArrayList(listC.size());
        arrayList.addAll(listC);
        arrayList.addAll(Arrays.asList("params", "varchar", "log_type", "varchar"));
        return arrayList;
    }

    @Override // com.byazt.tv.c
    public String i() {
        return this.f20455t;
    }

    @Override // com.byazt.tv.c
    public JSONObject tt() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.tt);
        jSONObject.put("tea_event_index", this.ve);
        jSONObject.put("session_id", this.uj);
        long j10 = this.f20437n;
        if (j10 > 0) {
            jSONObject.put(HmRtcEnvironment.kUserId, j10);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.f20433a) ? JSONObject.NULL : this.f20433a);
        if (!TextUtils.isEmpty(this.sp)) {
            jSONObject.put(BuildQRCodeActivity_.SSID_EXTRA, this.sp);
        }
        jSONObject.put("log_type", this.f20456u);
        try {
            JSONObject jSONObject2 = new JSONObject(this.f20455t);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject2.get(next);
                if (jSONObject.opt(next) != null) {
                    com.byazt.yv.da.tt("misc事件存在重复的key", null);
                }
                jSONObject.put(next, obj);
            }
        } catch (Exception e10) {
            com.byazt.yv.da.ve("解析 event misc 失败", e10);
        }
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "event_misc";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return "param:" + this.f20455t + " logType:" + this.f20456u;
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        int iC = super.c(cursor);
        int i10 = iC + 1;
        this.f20455t = cursor.getString(iC);
        int i11 = i10 + 1;
        this.f20456u = cursor.getString(i10);
        return i11;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        super.c(contentValues);
        contentValues.put("params", this.f20455t);
        contentValues.put("log_type", this.f20456u);
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) throws JSONException {
        super.c(jSONObject);
        jSONObject.put("params", this.f20455t);
        jSONObject.put("log_type", this.f20456u);
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        super.tt(jSONObject);
        this.f20455t = jSONObject.optString("params", null);
        this.f20456u = jSONObject.optString("log_type", null);
        return this;
    }
}
