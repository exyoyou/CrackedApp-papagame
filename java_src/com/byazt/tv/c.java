package com.byazt.tv;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 20})
public abstract class c implements Cloneable {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final SimpleDateFormat f20432t = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20433a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f20434c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f20435da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20436i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20437n;
    public String sl;
    public String sp;
    public long tt;
    public String uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f20438x;

    public c() {
        c(0L);
    }

    public static String tt(long j10) {
        return f20432t.format(new Date(j10));
    }

    @NonNull
    public final JSONObject a() {
        try {
            this.sl = tt(this.tt);
            return tt();
        } catch (JSONException e10) {
            com.byazt.yv.da.tt(e10);
            return null;
        }
    }

    public void c(long j10) {
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        this.tt = j10;
    }

    public String i() {
        return null;
    }

    @NonNull
    public final JSONObject n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", uj());
            c(jSONObject);
        } catch (JSONException e10) {
            com.byazt.yv.da.tt(e10);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e10) {
            com.byazt.yv.da.tt(e10);
            return null;
        }
    }

    @NonNull
    public String toString() {
        String strUj = uj();
        if (!getClass().getSimpleName().equalsIgnoreCase(strUj)) {
            strUj = strUj + ", " + getClass().getSimpleName();
        }
        String strSubstring = this.uj;
        String str = "-";
        if (strSubstring != null) {
            int iIndexOf = strSubstring.indexOf("-");
            if (iIndexOf >= 0) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            str = strSubstring;
        }
        return "{" + strUj + ", " + x() + ", " + str + ", " + this.tt + "}";
    }

    public abstract JSONObject tt() throws JSONException;

    @NonNull
    public abstract String uj();

    public final String ve() {
        List<String> listC = c();
        if (listC == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("create table if not exists ");
        sb2.append(uj());
        sb2.append("(");
        for (int i10 = 0; i10 < listC.size(); i10 += 2) {
            sb2.append(listC.get(i10));
            sb2.append(" ");
            sb2.append(listC.get(i10 + 1));
            sb2.append(",");
        }
        sb2.delete(sb2.length() - 1, sb2.length());
        sb2.append(")");
        return sb2.toString();
    }

    public String x() {
        return "sid:" + this.uj;
    }

    public c tt(@NonNull JSONObject jSONObject) {
        this.tt = jSONObject.optLong("local_time_ms", 0L);
        this.f20434c = 0L;
        this.ve = 0L;
        this.f20436i = 0;
        this.f20437n = 0L;
        this.uj = null;
        this.f20433a = null;
        this.sp = null;
        this.f20438x = null;
        return this;
    }

    public List<String> c() {
        return Arrays.asList("_id", "integer primary key autoincrement", "local_time_ms", TypedValues.Custom.S_INT, "tea_event_index", TypedValues.Custom.S_INT, "nt", TypedValues.Custom.S_INT, HmRtcEnvironment.kUserId, TypedValues.Custom.S_INT, "session_id", "varchar", "user_unique_id", "varchar", BuildQRCodeActivity_.SSID_EXTRA, "varchar", "ab_sdk_version", "varchar", "event_type", TypedValues.Custom.S_INT);
    }

    public int c(@NonNull Cursor cursor) {
        this.f20434c = cursor.getLong(0);
        this.tt = cursor.getLong(1);
        this.ve = cursor.getLong(2);
        this.f20436i = cursor.getInt(3);
        this.f20437n = cursor.getLong(4);
        this.uj = cursor.getString(5);
        this.f20433a = cursor.getString(6);
        this.sp = cursor.getString(7);
        this.f20438x = cursor.getString(8);
        this.f20435da = cursor.getInt(9);
        return 10;
    }

    public final ContentValues tt(@Nullable ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        c(contentValues);
        return contentValues;
    }

    public void c(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.tt));
        contentValues.put("tea_event_index", Long.valueOf(this.ve));
        contentValues.put("nt", Integer.valueOf(this.f20436i));
        contentValues.put(HmRtcEnvironment.kUserId, Long.valueOf(this.f20437n));
        contentValues.put("session_id", this.uj);
        contentValues.put("user_unique_id", this.f20433a);
        contentValues.put(BuildQRCodeActivity_.SSID_EXTRA, this.sp);
        contentValues.put("ab_sdk_version", this.f20438x);
        contentValues.put("event_type", Integer.valueOf(this.f20435da));
    }

    public void c(@NonNull JSONObject jSONObject) throws JSONException {
        jSONObject.put("local_time_ms", this.tt);
    }

    public static c c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return tt.tt.get(jSONObject.optString("k_cls", "")).clone().tt(jSONObject);
        } catch (Throwable th) {
            com.byazt.yv.da.tt(th);
            return null;
        }
    }
}
