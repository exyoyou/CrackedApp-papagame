package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 34})
public class a extends c {
    public boolean gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20428m;
    public boolean my;
    public String nu;
    public String rh;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f20429t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f20430u;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f20431z;

    public a(boolean z10) {
        this.gt = z10;
    }

    @Override // com.byazt.tv.c
    public List<String> c() {
        List<String> listC = super.c();
        ArrayList arrayList = new ArrayList(listC.size());
        arrayList.addAll(listC);
        arrayList.addAll(Arrays.asList("ver_name", "varchar", "ver_code", TypedValues.Custom.S_INT, "last_session", "varchar", "is_first_time", TypedValues.Custom.S_INT, ArticleInfo.PAGE_TITLE, "varchar", "page_key", "varchar", "resume_from_background", TypedValues.Custom.S_INT));
        return arrayList;
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
        boolean z10 = this.yp;
        if (z10) {
            jSONObject.put("is_background", z10);
        }
        jSONObject.put("datetime", this.sl);
        if (!TextUtils.isEmpty(this.f20438x)) {
            jSONObject.put("ab_sdk_version", this.f20438x);
        }
        if (!TextUtils.isEmpty(this.f20431z)) {
            jSONObject.put("uuid_changed", true);
            jSONObject.put("original_session_id", this.f20431z);
        }
        if (this.f20428m == 1) {
            jSONObject.put("$is_first_time", "true");
        }
        jSONObject.put("$resume_from_background", !this.gt);
        jSONObject.put("is_background", !this.gt);
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "launch";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return this.yp ? "bg" : "fg";
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        int iC = super.c(cursor);
        int i10 = iC + 1;
        this.f20430u = cursor.getString(iC);
        int i11 = i10 + 1;
        this.f20429t = cursor.getInt(i10);
        int i12 = i11 + 1;
        this.f20431z = cursor.getString(i11);
        int i13 = i12 + 1;
        this.f20428m = cursor.getInt(i12);
        int i14 = i13 + 1;
        this.nu = cursor.getString(i13);
        int i15 = i14 + 1;
        this.rh = cursor.getString(i14);
        int i16 = i15 + 1;
        this.my = cursor.getInt(i15) == 0;
        return i16;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        super.c(contentValues);
        contentValues.put("ver_name", this.f20430u);
        contentValues.put("ver_code", Integer.valueOf(this.f20429t));
        contentValues.put("last_session", this.f20431z);
        contentValues.put("is_first_time", Integer.valueOf(this.f20428m));
        contentValues.put(ArticleInfo.PAGE_TITLE, this.nu);
        contentValues.put("page_key", this.rh);
        contentValues.put("resume_from_background", Integer.valueOf(this.my ? 1 : 0));
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
