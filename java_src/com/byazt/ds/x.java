package com.byazt.ds;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import u.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 71})
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile JSONObject f13166a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f13167c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SharedPreferences f13168n;
    public volatile JSONObject sp;
    public final com.byazt.gj.x tt;
    public final SharedPreferences uj;
    public final SharedPreferences ve;

    public x(Context context, com.byazt.gj.x xVar) {
        this.f13167c = context;
        this.tt = xVar;
        this.f13168n = com.byazt.nys.tt.tt(context, "embed_applog_stats", 0);
        this.ve = com.byazt.nys.tt.tt(context, "embed_header_custom", 0);
        this.uj = com.byazt.nys.tt.tt(context, "embed_last_sp_session", 0);
    }

    public static String c() {
        return "embed_applog_stats";
    }

    public boolean a() {
        return this.tt.tt();
    }

    public boolean aw() {
        return this.tt.zm();
    }

    public com.byazt.gj.x bm() {
        return this.tt;
    }

    public String bx() {
        return this.tt.h() == null ? "" : this.tt.h();
    }

    public String cu() {
        return this.tt.rh();
    }

    public int d() {
        return this.tt.z();
    }

    public String da() {
        return this.tt.ve();
    }

    public int eo() {
        return this.tt.m();
    }

    public long gr() {
        return this.f13168n.getLong("batch_event_interval", 30000L);
    }

    public JSONObject gt() {
        JSONObject jSONObject = this.f13166a;
        if (jSONObject == null) {
            synchronized (this) {
                try {
                    if (rl()) {
                        jSONObject = new JSONObject(this.ve.getString("ab_configure", ""));
                    }
                } catch (JSONException unused) {
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                this.f13166a = jSONObject;
            }
        }
        return jSONObject;
    }

    public long gu() {
        return this.f13168n.getLong("session_interval", 30000L);
    }

    public int h() {
        return this.tt.yp();
    }

    public String hd() {
        return this.tt.md();
    }

    public int i() {
        return this.f13168n.getInt("bav_monitor_rate", 0);
    }

    public boolean ic() {
        return this.tt.yv();
    }

    public CharSequence lr() {
        return this.tt.gu();
    }

    public String m() {
        return this.ve.getString("user_unique_id", null);
    }

    public String md() {
        return this.tt.sl();
    }

    public String my() {
        return !TextUtils.isEmpty(this.tt.my()) ? this.tt.my() : this.ve.getString("ab_version", null);
    }

    public SharedPreferences n() {
        return this.f13168n;
    }

    public String nb() {
        return this.tt.rl();
    }

    public boolean nu() {
        if (this.tt.x() == 0) {
            String strC = com.byazt.yv.u.c(this.f13167c);
            if (TextUtils.isEmpty(strC)) {
                this.tt.c(0);
            } else {
                this.tt.c(strC.contains(":") ? 2 : 1);
            }
        }
        return this.tt.x() == 1;
    }

    public String or() {
        return this.tt.u();
    }

    @Nullable
    public String p() {
        return this.f13168n.getString(b.f97416b, null);
    }

    public String pf() {
        return this.tt.qy();
    }

    public String qp() {
        return this.tt.gt();
    }

    public boolean qy() {
        return this.f13168n.getBoolean("bav_log_collect", false);
    }

    public long rh() {
        return this.f13168n.getLong("abtest_fetch_interval", 0L);
    }

    public boolean rl() {
        return this.f13168n.getBoolean("bav_ab_config", false);
    }

    public String sl() {
        return this.tt.uj();
    }

    public JSONObject sp() {
        return this.sp;
    }

    public String sv() {
        return this.tt.d() == null ? "" : this.tt.d();
    }

    public String t() {
        return this.tt.n();
    }

    public String tt() {
        return this.tt.sp();
    }

    public String u() {
        return this.tt.a();
    }

    public int uj() {
        return this.uj.getInt("session_order", 0);
    }

    public String ve() {
        return this.uj.getString("session_last_day", "");
    }

    public long x() {
        return this.f13168n.getLong("app_log_last_config_time", 0L);
    }

    public String yp() {
        return this.ve.getString("header_custom_info", null);
    }

    public String yv() {
        return this.tt.c();
    }

    public String z() {
        return this.ve.getString("ab_sdk_version", "");
    }

    public String zb() {
        return this.tt.t();
    }

    public String zm() {
        return null;
    }

    public boolean c(ArrayList<com.byazt.tv.c> arrayList) {
        return true;
    }

    public void tt(JSONObject jSONObject) {
        this.ve.edit().putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "").apply();
    }

    public void ve(JSONObject jSONObject) {
        com.byazt.yv.da.c("setAbConfig, " + jSONObject.toString(), null);
        this.ve.edit().putString("ab_configure", jSONObject.toString()).apply();
        this.f13166a = null;
    }

    public void c(String str, int i10) {
        this.uj.edit().putString("session_last_day", str).putInt("session_order", i10).apply();
    }

    public void c(JSONObject jSONObject) {
        if (com.byazt.yv.da.tt) {
            com.byazt.yv.da.c("setConfig, " + jSONObject.toString(), null);
        }
        this.sp = jSONObject;
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.f13168n.edit();
        long jOptInt = jSONObject.optInt("session_interval", 0);
        if (jOptInt > 0 && jOptInt <= 604800) {
            editorEdit.putLong("session_interval", jOptInt * 1000);
        } else {
            editorEdit.remove("session_interval");
        }
        long jOptInt2 = jSONObject.optInt("batch_event_interval", 0);
        if (jOptInt2 > 0 && jOptInt2 <= 604800) {
            editorEdit.putLong("batch_event_interval", jOptInt2 * 1000);
        } else {
            editorEdit.remove("batch_event_interval");
        }
        int iOptInt = jSONObject.optInt("send_launch_timely", 0);
        if (iOptInt > 0 && iOptInt <= 604800) {
            editorEdit.putInt("send_launch_timely", iOptInt);
        } else {
            editorEdit.remove("send_launch_timely");
        }
        long jOptInt3 = jSONObject.optInt("abtest_fetch_interval", 0);
        if (jOptInt3 > 20 && jOptInt3 <= 604800) {
            editorEdit.putLong("abtest_fetch_interval", jOptInt3 * 1000);
        } else {
            editorEdit.remove("abtest_fetch_interval");
        }
        boolean zOptBoolean = jSONObject.optBoolean("bav_log_collect", true);
        if (zOptBoolean) {
            editorEdit.putBoolean("bav_log_collect", true);
        } else {
            editorEdit.remove("bav_log_collect");
        }
        com.byazt.yv.da.f22446c = zOptBoolean;
        if (jSONObject.optBoolean("bav_ab_config", false)) {
            editorEdit.putBoolean("bav_ab_config", true);
        } else {
            editorEdit.remove("bav_ab_config");
        }
        int iOptInt2 = jSONObject.optInt("bav_monitor_rate", 0);
        if (iOptInt2 > 0 && iOptInt2 <= 100) {
            editorEdit.putInt("bav_monitor_rate", iOptInt2);
            com.byazt.yv.sp.c(true);
        } else {
            editorEdit.remove("bav_monitor_rate");
            com.byazt.yv.sp.c(false);
        }
        editorEdit.putLong("app_log_last_config_time", jCurrentTimeMillis);
        editorEdit.apply();
    }
}
