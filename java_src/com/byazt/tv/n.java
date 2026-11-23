package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 46})
public class n extends c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f20446t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f20447u;
    public boolean yp;

    public n(String str, boolean z10, String str2) {
        this.f20447u = str;
        this.yp = z10;
        this.f20446t = str2;
        this.f20435da = 0;
    }

    @Override // com.byazt.tv.c
    public List<String> c() {
        List<String> listC = super.c();
        ArrayList arrayList = new ArrayList(listC.size());
        arrayList.addAll(listC);
        arrayList.addAll(Arrays.asList(NotificationCompat.CATEGORY_EVENT, "varchar", "params", "varchar", "is_bav", TypedValues.Custom.S_INT));
        return arrayList;
    }

    @Override // com.byazt.tv.c
    public String i() {
        return this.f20446t;
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f20447u);
        if (this.yp) {
            jSONObject.put("is_bav", 1);
        }
        if (!TextUtils.isEmpty(this.f20446t)) {
            jSONObject.put("params", new JSONObject(this.f20446t));
        }
        jSONObject.put("datetime", this.sl);
        if (!TextUtils.isEmpty(this.f20438x)) {
            jSONObject.put("ab_sdk_version", this.f20438x);
        }
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return "eventv3";
    }

    @Override // com.byazt.tv.c
    public String x() {
        return this.f20447u;
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        int iC = super.c(cursor);
        int i10 = iC + 1;
        this.f20447u = cursor.getString(iC);
        int i11 = i10 + 1;
        this.f20446t = cursor.getString(i10);
        int i12 = i11 + 1;
        this.yp = cursor.getInt(i11) == 1;
        return i12;
    }

    public n(String str, boolean z10, String str2, int i10) {
        this.f20447u = str;
        this.yp = z10;
        this.f20446t = str2;
        this.f20435da = i10;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        super.c(contentValues);
        contentValues.put(NotificationCompat.CATEGORY_EVENT, this.f20447u);
        contentValues.put("params", this.f20446t);
        contentValues.put("is_bav", Integer.valueOf(this.yp ? 1 : 0));
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) throws JSONException {
        super.c(jSONObject);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f20447u);
        jSONObject.put("params", this.f20446t);
        jSONObject.put("is_bav", this.yp);
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        super.tt(jSONObject);
        this.f20447u = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        this.f20446t = jSONObject.optString("params", null);
        this.yp = jSONObject.optBoolean("is_bav", false);
        return this;
    }
}
