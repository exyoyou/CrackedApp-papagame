package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.ArticleInfo;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 71})
public class x extends c {
    public JSONObject gr;
    public JSONArray gt;
    public da gu;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f20461m;
    public a my;
    public JSONArray nu;
    public JSONArray qy;
    public long rh;
    public long rl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte[] f20462t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f20463u;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public JSONArray f20464z;

    public void c(JSONObject jSONObject, a aVar, da daVar, JSONArray jSONArray, JSONArray[] jSONArrayArr, long[] jArr, int i10) {
        c(0L);
        this.gr = jSONObject;
        this.my = aVar;
        this.gu = daVar;
        this.qy = jSONArray;
        this.f20464z = jSONArrayArr[0];
        this.f20461m = jArr[0];
        this.nu = jSONArrayArr[1];
        this.rh = jArr[1];
        this.gt = jSONArrayArr[2];
        this.rl = jArr[2];
        this.f20435da = i10;
    }

    public byte[] da() {
        this.f20462t = null;
        try {
            byte[] bArrC = com.byazt.yv.uj.c(a().toString());
            this.f20462t = bArrC;
            return bArrC;
        } catch (OutOfMemoryError e10) {
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            while (true) {
                tt.C0444tt[] c0444ttArr = tt.ve;
                if (i10 >= c0444ttArr.length) {
                    throw new RuntimeException(sb2.toString(), e10);
                }
                tt.C0444tt c0444tt = c0444ttArr[i10];
                if (c0444tt != null) {
                    sb2.append(c0444tt.toString());
                    sb2.append(";");
                }
                i10++;
            }
        }
    }

    @Override // com.byazt.tv.c
    public JSONObject tt() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.gr);
        jSONObject.put("time_sync", com.byazt.mp.c.f16954c);
        jSONObject.put("local_time", System.currentTimeMillis() / 1000);
        if (this.my != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.my.a());
            jSONObject.put("launch", jSONArray);
        }
        da daVar = this.gu;
        int i10 = 0;
        if (daVar != null) {
            JSONObject jSONObjectA = daVar.a();
            JSONArray jSONArray2 = this.qy;
            int length = jSONArray2 != null ? jSONArray2.length() : 0;
            JSONArray jSONArray3 = new JSONArray();
            int i11 = 0;
            long j10 = 0;
            while (i11 < length) {
                JSONArray jSONArray4 = new JSONArray();
                JSONObject jSONObject2 = new JSONObject(this.qy.optString(i11));
                JSONObject jSONObject3 = new JSONObject(jSONObject2.optString("params"));
                jSONArray4.put(i10, jSONObject3.optString("page_key", ""));
                jSONArray4.put(1, (jSONObject3.optInt("duration", i10) + 999) / 1000);
                jSONArray3.put(jSONArray4);
                int i12 = length;
                long jOptLong = jSONObject2.optLong("local_time_ms", 0L);
                if (jOptLong > j10) {
                    jSONObjectA.put("$page_title", jSONObject3.optString(ArticleInfo.PAGE_TITLE, ""));
                    jSONObjectA.put("$page_key", jSONObject3.optString("page_key", ""));
                    j10 = jOptLong;
                }
                i11++;
                length = i12;
                i10 = 0;
            }
            if (length > 0) {
                jSONObjectA.put("activites", jSONArray3);
            }
            JSONArray jSONArray5 = new JSONArray();
            jSONArray5.put(jSONObjectA);
            jSONObject.put("terminate", jSONArray5);
        }
        JSONArray jSONArray6 = this.f20464z;
        int length2 = jSONArray6 != null ? jSONArray6.length() : 0;
        if (length2 > 0) {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f20464z);
        }
        JSONArray jSONArray7 = this.qy;
        int length3 = jSONArray7 != null ? jSONArray7.length() : 0;
        JSONArray jSONArray8 = this.nu;
        int length4 = jSONArray8 != null ? jSONArray8.length() : 0;
        if (length4 > 0) {
            jSONObject.put("event_v3", this.nu);
        }
        JSONArray jSONArray9 = this.gt;
        int length5 = jSONArray9 != null ? jSONArray9.length() : 0;
        if (length5 > 0) {
            jSONObject.put("log_data", this.gt);
        }
        StringBuilder sb2 = new StringBuilder("pack {");
        sb2.append("ts:");
        sb2.append(this.tt);
        sb2.append(", la:");
        Object obj = this.my;
        if (obj == null) {
            obj = "0";
        }
        sb2.append(obj);
        sb2.append(", te:");
        da daVar2 = this.gu;
        sb2.append(daVar2 != null ? daVar2 : "0");
        sb2.append(", p:");
        sb2.append(length3);
        sb2.append(", v1:");
        sb2.append(length2);
        sb2.append(", v3:");
        sb2.append(length4);
        sb2.append(", m:");
        sb2.append(length5);
        com.byazt.yv.da.c(sb2.toString());
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "pack";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return String.valueOf(this.f20434c);
    }

    @Override // com.byazt.tv.c
    public List<String> c() {
        return Arrays.asList("_id", "integer primary key autoincrement", "local_time_ms", TypedValues.Custom.S_INT, "_data", "blob", "_fail", TypedValues.Custom.S_INT, "event_type", TypedValues.Custom.S_INT);
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        this.f20434c = cursor.getLong(0);
        this.tt = cursor.getLong(1);
        this.f20462t = cursor.getBlob(2);
        this.f20463u = cursor.getInt(3);
        this.f20435da = cursor.getInt(4);
        this.uj = "";
        this.gr = null;
        this.my = null;
        this.gu = null;
        this.qy = null;
        this.f20464z = null;
        this.nu = null;
        this.gt = null;
        return 5;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.tt));
        contentValues.put("_data", da());
        contentValues.put("event_type", Integer.valueOf(this.f20435da));
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) {
        com.byazt.yv.da.tt((Throwable) null);
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        com.byazt.yv.da.tt((Throwable) null);
        return null;
    }
}
