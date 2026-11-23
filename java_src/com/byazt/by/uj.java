package com.byazt.by;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.SearchHintActivity_;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile String f12158a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f12159c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile String f12160da;
    public volatile String gt;
    public volatile String gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile String f12161i;
    public volatile String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile String f12163n;
    public volatile JSONArray qy;
    public volatile String rh;
    public volatile String rl;
    public volatile String sp;
    public volatile String tt;
    public volatile String uj;
    public volatile String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile String f12166x;
    public volatile String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile String f12167z;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile int f12164t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile int f12165u = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile int f12162m = -1;
    public volatile int nu = -1;
    public volatile int gr = -1;
    public volatile SharedPreferences sl = com.byazt.nys.tt.tt(gt.getContext(), my(), 0);

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 123})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static uj f12168c = new uj();
    }

    public static uj c() {
        return c.f12168c;
    }

    private void gt() {
        try {
            this.gt = com.byazt.omf.a.c().n();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, 7611);
            jSONObject.put("log_version", this.gt);
            c("logsdk_version", jSONObject.toString());
        } catch (JSONException unused) {
        }
    }

    public String a(String str) {
        if (this.rh == null) {
            this.rh = tt("extra_data", str);
        }
        return this.rh;
    }

    public String da() {
        if (this.sp == null) {
            this.sp = tt("dev17", (String) null);
        }
        return this.sp;
    }

    public String i(String str) {
        if (this.f12159c == null) {
            this.f12159c = tt("dev01", str);
        }
        return this.f12159c;
    }

    public int m() {
        return tt("sp_device_app_direction", -1);
    }

    public String my() {
        return "sp_exec_getad_config";
    }

    public void n(String str) {
        if (str == null || !str.equals(this.rh)) {
            this.rh = str;
            c("extra_data", str);
        }
    }

    public String nu() {
        if (this.gu == null) {
            this.gu = tt("dev16", "");
        }
        return this.gu;
    }

    public void rh() {
        try {
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public String sl() {
        if (this.f12166x == null) {
            this.f12166x = tt("dev18", (String) null);
        }
        return this.f12166x;
    }

    public boolean sp(int i10) {
        return i10 == 3 || i10 == 4;
    }

    public String t() {
        if (this.f12161i == null) {
            this.f12161i = tt("dev09", (String) null);
        }
        return this.f12161i;
    }

    public SharedPreferences tt() {
        return this.sl;
    }

    public String u() {
        if (this.rl == null) {
            this.rl = tt("dev10", (String) null);
        }
        return this.rl;
    }

    public String uj(String str) {
        if (this.f12167z == null) {
            this.f12167z = tt(SearchHintActivity_.KEYWORDS_EXTRA, str);
        }
        return this.f12167z;
    }

    public int ve() {
        if (this.f12164t == -1) {
            this.f12164t = tt("live_ad_clk_cnt", 0);
        }
        return this.f12164t;
    }

    public String x(String str) {
        if (this.my == null) {
            this.my = tt("extra_internal_data", str);
        }
        return this.my;
    }

    public String yp() {
        if (this.f12160da == null) {
            this.f12160da = tt("dev11", (String) null);
        }
        return this.f12160da;
    }

    public JSONArray z() {
        String strTt;
        if (this.qy == null && (strTt = tt("dev12", (String) null)) != null) {
            try {
                this.qy = new JSONArray(strTt);
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        return this.qy;
    }

    public void c(int i10) {
        if (this.f12164t == i10) {
            return;
        }
        this.f12164t = i10;
        c("live_ad_clk_cnt", i10);
    }

    public void sp(String str) {
        if (str == null || !str.equals(this.my)) {
            this.my = str;
            c("extra_internal_data", str);
        }
    }

    public void tt(String str) {
        this.yp = str;
        c("dev03", str);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 153})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, Object> f12169c = new HashMap();

        public tt a(String str) {
            if (str == null || str.equals(uj.c().f12163n)) {
                return this;
            }
            uj.c().f12163n = str;
            this.f12169c.put("dev07", str);
            return this;
        }

        public tt c(String str) {
            if (str == null || str.equals(uj.c().f12159c)) {
                return this;
            }
            uj.c().f12159c = str;
            this.f12169c.put("dev01", str);
            return this;
        }

        public tt da(String str) {
            if (str == null || str.equals(uj.c().f12161i)) {
                return this;
            }
            uj.c().f12161i = str;
            this.f12169c.put("dev09", str);
            return this;
        }

        public tt i(String str) {
            if (str == null || str.equals(uj.c().f12166x)) {
                return this;
            }
            uj.c().f12166x = str;
            this.f12169c.put("dev18", str);
            return this;
        }

        public tt n(String str) {
            if (str == null || str.equals(uj.c().f12160da)) {
                return this;
            }
            uj.c().f12160da = str;
            this.f12169c.put("dev11", str);
            return this;
        }

        public tt sp(String str) {
            if (str == null || str.equals(uj.c().f12158a)) {
                return this;
            }
            uj.c().f12158a = str;
            this.f12169c.put("dev08", str);
            return this;
        }

        public tt tt(String str) {
            if (str == null || str.equals(uj.c().tt)) {
                return this;
            }
            uj.c().tt = str;
            this.f12169c.put("dev02", com.byazt.nr.c.tt(str));
            return this;
        }

        public tt uj(String str) {
            if (str == null || str.equals(uj.c().uj)) {
                return this;
            }
            uj.c().uj = str;
            this.f12169c.put("dev05", str);
            return this;
        }

        public tt ve(String str) {
            if (str == null || str.equals(uj.c().ve)) {
                return this;
            }
            uj.c().ve = str;
            this.f12169c.put("dev04", str);
            return this;
        }

        public tt x(String str) {
            if (str == null || str.equals(uj.c().sp)) {
                return this;
            }
            uj.c().sp = str;
            this.f12169c.put("dev17", str);
            return this;
        }

        public void c() {
            try {
                if (ve.c().tt()) {
                    String strMy = uj.c().my();
                    for (Map.Entry<String, Object> entry : this.f12169c.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            com.byazt.ti.tt.c(strMy, key, (Boolean) value);
                        } else if (value instanceof Long) {
                            com.byazt.ti.tt.c(strMy, key, (Long) value);
                        } else if (value instanceof Float) {
                            com.byazt.ti.tt.c(strMy, key, (Float) value);
                        } else if (value instanceof Integer) {
                            com.byazt.ti.tt.c(strMy, key, (Integer) value);
                        } else if (value instanceof String) {
                            com.byazt.ti.tt.c(strMy, key, (String) value);
                        }
                    }
                    return;
                }
                SharedPreferences.Editor editorEdit = uj.c().tt().edit();
                for (Map.Entry<String, Object> entry2 : this.f12169c.entrySet()) {
                    String key2 = entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof Boolean) {
                        editorEdit.putBoolean(key2, ((Boolean) value2).booleanValue());
                    } else if (value2 instanceof Long) {
                        editorEdit.putLong(key2, ((Long) value2).longValue());
                    } else if (value2 instanceof Float) {
                        editorEdit.putFloat(key2, ((Float) value2).floatValue());
                    } else if (value2 instanceof Integer) {
                        editorEdit.putInt(key2, ((Integer) value2).intValue());
                    } else if (value2 instanceof String) {
                        editorEdit.putString(key2, (String) value2);
                    }
                }
                editorEdit.apply();
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public String a() {
        if (this.ve == null) {
            this.ve = tt("dev04", (String) null);
        }
        return this.ve;
    }

    public void da(String str) {
        if (str == null || str.equals(this.rl)) {
            return;
        }
        this.rl = str;
        c("dev10", str);
    }

    public String i() {
        if (this.f12158a == null) {
            this.f12158a = tt("dev08", (String) null);
        }
        return this.f12158a;
    }

    public String n(int i10) {
        if (TextUtils.isEmpty(this.gt)) {
            try {
                String strTt = tt("logsdk_version", "");
                if (!TextUtils.isEmpty(strTt)) {
                    JSONObject jSONObject = new JSONObject(strTt);
                    int iOptInt = jSONObject.optInt(PluginConstants.KEY_PLUGIN_VERSION);
                    this.gt = jSONObject.optString("log_version");
                    if (iOptInt != 7611 || TextUtils.isEmpty(this.gt)) {
                        gt();
                    }
                } else {
                    gt();
                }
            } catch (Exception unused) {
            }
        }
        return this.gt;
    }

    public void sl(String str) {
        if (str == null || !str.equals(this.gu)) {
            this.gu = str;
            c("dev16", str);
        }
    }

    public void tt(int i10) {
        if (i10 == this.f12162m) {
            return;
        }
        this.f12162m = i10;
        c("age_group", i10);
    }

    public int uj() {
        if (this.f12162m == -1) {
            this.f12162m = tt("age_group", Integer.MIN_VALUE);
        }
        return this.f12162m;
    }

    public void ve(String str) {
        if (str == null || !str.equals(this.f12167z)) {
            this.f12167z = str;
            c(SearchHintActivity_.KEYWORDS_EXTRA, str);
        }
    }

    public String x() {
        if (this.f12163n == null) {
            this.f12163n = tt("dev07", (String) null);
        }
        return this.f12163n;
    }

    public String c(String str) {
        if (this.yp == null) {
            this.yp = tt("dev03", str);
        }
        return this.yp;
    }

    public String sp() {
        if (this.uj == null) {
            this.uj = tt("dev05", (String) null);
        }
        return this.uj;
    }

    public void a(int i10) {
        c("sp_device_app_direction", i10);
    }

    public void tt(boolean z10) {
        int i10 = z10 ? 1 : 2;
        if (this.f12165u != i10) {
            this.f12165u = i10;
            c("is_use_mediation", i10);
        }
    }

    public int uj(int i10) {
        if (this.nu == -1) {
            this.nu = tt("sdk_theme_status", i10);
        }
        return this.nu;
    }

    public void ve(int i10) {
        if (i10 == this.nu) {
            return;
        }
        this.nu = i10;
        c("sdk_theme_status", i10);
    }

    public void x(int i10) {
        if (this.gr == i10) {
            return;
        }
        this.gr = i10;
        c("dev_level", i10);
    }

    public void c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        if (jSONArray.toString().equals(this.qy == null ? null : this.qy.toString())) {
            return;
        }
        this.qy = jSONArray;
        c("dev12", jSONArray.toString());
    }

    public boolean tt(String str, boolean z10) {
        try {
            if (ve.c().tt()) {
                return com.byazt.ti.tt.c(my(), str, z10);
            }
            return tt().getBoolean(str, z10);
        } catch (Throwable unused) {
            return z10;
        }
    }

    public String ve(String str, long j10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String strTt = tt(str, "");
            if (TextUtils.isEmpty(strTt)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strTt);
            if (System.currentTimeMillis() - jSONObject.getLong("time") <= j10) {
                return jSONObject.getString(HmInputMappingContent.FIELD_VALUE);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public boolean c(boolean z10) {
        if (this.f12165u == -1) {
            this.f12165u = tt("is_use_mediation", z10 ? 1 : 2);
        }
        return this.f12165u == 1;
    }

    public long tt(String str, long j10) {
        try {
            if (ve.c().tt()) {
                return com.byazt.ti.tt.c(my(), str, j10);
            }
            return tt().getLong(str, j10);
        } catch (Throwable unused) {
            return j10;
        }
    }

    public String n() {
        if (this.tt == null) {
            this.tt = com.byazt.nr.c.ve(tt("dev02", (String) null));
        }
        return this.tt;
    }

    public void c(String str, boolean z10) {
        try {
            if (ve.c().tt()) {
                com.byazt.ti.tt.c(my(), str, Boolean.valueOf(z10));
                return;
            }
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.putBoolean(str, z10);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public int tt(String str, int i10) {
        try {
            if (ve.c().tt()) {
                return com.byazt.ti.tt.c(my(), str, i10);
            }
            return tt().getInt(str, i10);
        } catch (Throwable unused) {
            return i10;
        }
    }

    public void ve(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(HmInputMappingContent.FIELD_VALUE, str2);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("p_version", 7611);
            c(str, jSONObject.toString());
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public String tt(String str, String str2) {
        try {
            if (ve.c().tt()) {
                return com.byazt.ti.tt.tt(my(), str, str2);
            }
            return tt().getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public void c(String str, long j10) {
        try {
            if (ve.c().tt()) {
                com.byazt.ti.tt.c(my(), str, Long.valueOf(j10));
                return;
            }
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.putLong(str, j10);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void c(String str, int i10) {
        try {
            if (ve.c().tt()) {
                com.byazt.ti.tt.c(my(), str, Integer.valueOf(i10));
                return;
            }
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.putInt(str, i10);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void c(String str, String str2) {
        try {
            if (ve.c().tt()) {
                com.byazt.ti.tt.c(my(), str, str2);
                return;
            }
            SharedPreferences.Editor editorEdit = tt().edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }
}
