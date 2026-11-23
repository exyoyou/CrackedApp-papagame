package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 54})
public class ve extends c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f20457m;
    public long nu;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f20458t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f20459u;
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f20460z;

    @Override // com.byazt.tv.c
    public List<String> c() {
        List<String> listC = super.c();
        ArrayList arrayList = new ArrayList(listC.size());
        arrayList.addAll(listC);
        arrayList.addAll(Arrays.asList(PointParamKey.CATEGORY, "varchar", TagGameListActivity_.TAG_EXTRA, "varchar", HmInputMappingContent.FIELD_VALUE, TypedValues.Custom.S_INT, "ext_value", TypedValues.Custom.S_INT, "params", "varchar", PostingActivity_.LABEL_EXTRA, "varchar"));
        return arrayList;
    }

    @Override // com.byazt.tv.c
    public String i() {
        return this.f20460z;
    }

    @Override // com.byazt.tv.c
    public c tt(@NonNull JSONObject jSONObject) {
        super.tt(jSONObject);
        this.ve = jSONObject.optLong("tea_event_index", 0L);
        this.f20458t = jSONObject.optString(PointParamKey.CATEGORY, null);
        this.f20459u = jSONObject.optString(TagGameListActivity_.TAG_EXTRA, null);
        this.f20457m = jSONObject.optLong(HmInputMappingContent.FIELD_VALUE, 0L);
        this.nu = jSONObject.optLong("ext_value", 0L);
        this.f20460z = jSONObject.optString("params", null);
        this.yp = jSONObject.optString(PostingActivity_.LABEL_EXTRA, null);
        return this;
    }

    @Override // com.byazt.tv.c
    @NonNull
    public String uj() {
        return NotificationCompat.CATEGORY_EVENT;
    }

    @Override // com.byazt.tv.c
    public String x() {
        return this.f20459u + ", " + this.yp;
    }

    @Override // com.byazt.tv.c
    public int c(@NonNull Cursor cursor) {
        int iC = super.c(cursor);
        int i10 = iC + 1;
        this.f20458t = cursor.getString(iC);
        int i11 = i10 + 1;
        this.f20459u = cursor.getString(i10);
        int i12 = i11 + 1;
        this.f20457m = cursor.getLong(i11);
        int i13 = i12 + 1;
        this.nu = cursor.getLong(i12);
        int i14 = i13 + 1;
        this.f20460z = cursor.getString(i13);
        int i15 = i14 + 1;
        this.yp = cursor.getString(i14);
        return i15;
    }

    @Override // com.byazt.tv.c
    public JSONObject tt() throws JSONException {
        JSONObject jSONObject = !TextUtils.isEmpty(this.f20460z) ? new JSONObject(this.f20460z) : null;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
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
        jSONObject.put(PointParamKey.CATEGORY, this.f20458t);
        jSONObject.put(TagGameListActivity_.TAG_EXTRA, this.f20459u);
        jSONObject.put(HmInputMappingContent.FIELD_VALUE, this.f20457m);
        jSONObject.put("ext_value", this.nu);
        jSONObject.put(PostingActivity_.LABEL_EXTRA, this.yp);
        jSONObject.put("datetime", this.sl);
        if (!TextUtils.isEmpty(this.f20438x)) {
            jSONObject.put("ab_sdk_version", this.f20438x);
        }
        return jSONObject;
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull ContentValues contentValues) {
        super.c(contentValues);
        contentValues.put(PointParamKey.CATEGORY, this.f20458t);
        contentValues.put(TagGameListActivity_.TAG_EXTRA, this.f20459u);
        contentValues.put(HmInputMappingContent.FIELD_VALUE, Long.valueOf(this.f20457m));
        contentValues.put("ext_value", Long.valueOf(this.nu));
        contentValues.put("params", this.f20460z);
        contentValues.put(PostingActivity_.LABEL_EXTRA, this.yp);
    }

    @Override // com.byazt.tv.c
    public void c(@NonNull JSONObject jSONObject) throws JSONException {
        super.c(jSONObject);
        jSONObject.put("tea_event_index", this.ve);
        jSONObject.put(PointParamKey.CATEGORY, this.f20458t);
        jSONObject.put(TagGameListActivity_.TAG_EXTRA, this.f20459u);
        jSONObject.put(HmInputMappingContent.FIELD_VALUE, this.f20457m);
        jSONObject.put("ext_value", this.nu);
        jSONObject.put("params", this.f20460z);
        jSONObject.put(PostingActivity_.LABEL_EXTRA, this.yp);
    }
}
