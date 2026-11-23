package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 42})
public class i extends c {
    public String gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f20442m;
    public int my;
    public String nu;
    public String rh;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f20443t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f20444u;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f20445z;

    private JSONObject t() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("page_key", this.yp);
        jSONObject.put("refer_page_key", this.f20444u);
        jSONObject.put("is_back", this.my);
        jSONObject.put("duration", this.f20443t);
        jSONObject.put(ArticleInfo.PAGE_TITLE, this.f20445z);
        jSONObject.put("refer_page_title", this.f20442m);
        jSONObject.put("page_path", this.nu);
        jSONObject.put("referrer_page_path", this.rh);
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    public List<String> c() {
        List<String> listC = super.c();
        ArrayList arrayList = new ArrayList(listC.size());
        arrayList.addAll(listC);
        arrayList.addAll(Arrays.asList("page_key", "varchar", "refer_page_key", "varchar", "duration", TypedValues.Custom.S_INT, "is_back", TypedValues.Custom.S_INT, "last_session", "varchar", ArticleInfo.PAGE_TITLE, "varchar", "refer_page_title", "varchar", "page_path", "varchar", "referrer_page_path", "varchar"));
        return arrayList;
    }

    public boolean da() {
        return this.f20443t == -1;
    }

    public boolean sl() {
        return this.yp.contains(":");
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        super.tt(jSONObject);
        this.yp = jSONObject.optString("page_key", null);
        this.f20444u = jSONObject.optString("refer_page_key", null);
        this.f20443t = jSONObject.optLong("duration", 0L);
        this.my = jSONObject.optInt("is_back", 0);
        this.f20445z = jSONObject.optString(ArticleInfo.PAGE_TITLE, null);
        this.f20442m = jSONObject.optString("refer_page_title", null);
        this.nu = jSONObject.optString("page_path", null);
        this.rh = jSONObject.optString("referrer_page_path", null);
        return this;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "page";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return this.yp + ", " + this.f20443t;
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        int iC = super.c(cursor);
        int i10 = iC + 1;
        this.yp = cursor.getString(iC);
        int i11 = i10 + 1;
        this.f20444u = cursor.getString(i10);
        int i12 = i11 + 1;
        this.f20443t = cursor.getLong(i11);
        int i13 = i12 + 1;
        this.my = cursor.getInt(i12);
        int i14 = i13 + 1;
        this.gt = cursor.getString(i13);
        int i15 = i14 + 1;
        this.f20445z = cursor.getString(i14);
        int i16 = i15 + 1;
        this.f20442m = cursor.getString(i15);
        int i17 = i16 + 1;
        this.nu = cursor.getString(i16);
        int i18 = i17 + 1;
        this.rh = cursor.getString(i17);
        return i18;
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "bav2b_page");
        jSONObject.put("is_bav", 1);
        jSONObject.put("params", t());
        jSONObject.put("datetime", this.sl);
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        super.c(contentValues);
        contentValues.put("page_key", this.yp);
        contentValues.put("refer_page_key", this.f20444u);
        contentValues.put("duration", Long.valueOf(this.f20443t));
        contentValues.put("is_back", Integer.valueOf(this.my));
        contentValues.put("last_session", this.gt);
        contentValues.put(ArticleInfo.PAGE_TITLE, this.f20445z);
        contentValues.put("refer_page_title", this.f20442m);
        contentValues.put("page_path", this.nu);
        contentValues.put("referrer_page_path", this.rh);
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) throws JSONException {
        super.c(jSONObject);
        jSONObject.put("page_key", this.yp);
        jSONObject.put("refer_page_key", this.f20444u);
        jSONObject.put("duration", this.f20443t);
        jSONObject.put("is_back", this.my);
        jSONObject.put(ArticleInfo.PAGE_TITLE, this.f20445z);
        jSONObject.put("refer_page_title", this.f20442m);
        jSONObject.put("page_path", this.nu);
        jSONObject.put("referrer_page_path", this.rh);
    }
}
