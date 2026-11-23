package com.byazt.by;

import android.content.SharedPreferences;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile String f12143a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12144c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile String f12147m;
    public volatile String sp;
    public volatile int ve = -1;
    public volatile long uj = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile float f12148n = -1.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile int f12151x = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile int f12146i = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile int f12145da = -1;
    public volatile int sl = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile int f12149t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile int f12150u = -1;
    public volatile int yp = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile int f12152z = -1;
    public volatile com.byazt.it.n tt = com.byazt.vif.uj.tt(com.byazt.vxy.c.uj(), nu());

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 151})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static n f12153c = new n();
    }

    private static String nu() {
        return "sp_exec_getad_config_bst";
    }

    public void m() {
        try {
            this.tt.clear();
        } catch (Throwable unused) {
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING, 934})
    public static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, Object> f12154c = new HashMap();

        public tt a(int i10) {
            if (n.c().f12146i == i10) {
                return this;
            }
            n.c().f12146i = i10;
            this.f12154c.put("spl_cache_expired", Integer.valueOf(i10));
            return this;
        }

        public tt c(long j10) {
            if (n.c().uj == j10) {
                return this;
            }
            n.c().uj = j10;
            this.f12154c.put("duration", Long.valueOf(j10));
            return this;
        }

        public tt n(int i10) {
            if (n.c().sl == i10) {
                return this;
            }
            n.c().sl = i10;
            this.f12154c.put("spl_common_conf", Integer.valueOf(i10));
            return this;
        }

        public tt sp(int i10) {
            if (n.c().f12149t == i10) {
                return this;
            }
            n.c().f12149t = i10;
            this.f12154c.put("splash_render_timeout_backup", Integer.valueOf(i10));
            return this;
        }

        public tt tt(String str) {
            if (str != null && str.equals(n.c().sp)) {
                return this;
            }
            n.c().sp = str;
            Map<String, Object> map = this.f12154c;
            if (str == null) {
                str = "";
            }
            map.put("ab_test_param", str);
            return this;
        }

        public tt uj(int i10) {
            if (n.c().f12145da == i10) {
                return this;
            }
            this.f12154c.put("spl_thread_conf", Integer.valueOf(i10));
            return this;
        }

        public tt ve(int i10) {
            if (n.c().f12151x == i10) {
                return this;
            }
            n.c().f12151x = i10;
            this.f12154c.put("spl_cache_conf", Integer.valueOf(i10));
            return this;
        }

        public tt x(int i10) {
            if (n.c().f12150u == i10) {
                return this;
            }
            n.c().f12150u = i10;
            this.f12154c.put("dl_storage_internal", Integer.valueOf(i10));
            return this;
        }

        public tt uj(String str) {
            if (str != null && str.equals(n.c().f12147m)) {
                return this;
            }
            n.c().f12147m = str;
            this.f12154c.put("cache_strategy_splash", str);
            return this;
        }

        public tt c(int i10) {
            if (n.c().ve == i10) {
                return this;
            }
            n.c().ve = i10;
            this.f12154c.put("max", Integer.valueOf(i10));
            return this;
        }

        public tt tt(int i10) {
            if (n.c().yp == i10) {
                return this;
            }
            n.c().yp = i10;
            this.f12154c.put("cypher_version", Integer.valueOf(i10));
            return this;
        }

        public tt ve(String str) {
            if (str != null && str.equals(n.c().f12144c)) {
                return this;
            }
            n.c().f12144c = str;
            Map<String, Object> map = this.f12154c;
            if (str == null) {
                str = "";
            }
            map.put("drop_cache_black_conf", str);
            return this;
        }

        public tt c(float f10) {
            if (n.c().f12148n == f10) {
                return this;
            }
            n.c().f12148n = f10;
            this.f12154c.put("aggMultiple", Float.valueOf(f10));
            return this;
        }

        public tt c(String str) {
            if (str != null && str.equals(n.c().f12143a)) {
                return this;
            }
            n.c().f12143a = str;
            Map<String, Object> map = this.f12154c;
            if (str == null) {
                str = "";
            }
            map.put("ab_test_version", str);
            return this;
        }

        public tt c(boolean z10) {
            this.f12154c.put("is_spl_cache_remove_change", Boolean.valueOf(z10));
            return this;
        }

        public tt c(JSONObject jSONObject) {
            int iOptInt;
            if (jSONObject == null || n.c().f12152z == (iOptInt = jSONObject.optInt("splash_policy", 0))) {
                return this;
            }
            n.c().f12152z = iOptInt;
            this.f12154c.put("splash_policy", Integer.valueOf(iOptInt));
            return this;
        }

        public void c() {
            try {
                com.byazt.it.n nVar = n.c().tt;
                SharedPreferences.Editor editorEdit = nVar.edit();
                if (editorEdit == null) {
                    for (Map.Entry<String, Object> entry : this.f12154c.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            nVar.put(key, ((Boolean) value).booleanValue());
                        } else if (value instanceof Long) {
                            nVar.put(key, ((Long) value).longValue());
                        } else if (value instanceof Float) {
                            nVar.put(key, ((Float) value).floatValue());
                        } else if (value instanceof Integer) {
                            nVar.put(key, ((Integer) value).intValue());
                        } else if (value instanceof String) {
                            nVar.put(key, (String) value);
                        }
                    }
                    return;
                }
                for (Map.Entry<String, Object> entry2 : this.f12154c.entrySet()) {
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
                editorEdit.commit();
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public boolean da() {
        return c("is_spl_cache_remove_change", false);
    }

    public int i() {
        if (this.yp == -1) {
            this.yp = c("cypher_version", 40001);
        }
        return this.yp;
    }

    public int sl() {
        if (this.f12151x == -1) {
            this.f12151x = c("spl_cache_conf", 30);
        }
        return this.f12151x;
    }

    public int t() {
        if (this.f12145da == -1) {
            this.f12145da = c("spl_thread_conf", 1);
        }
        return this.f12145da;
    }

    public int u() {
        if (this.sl == -1) {
            this.sl = c("spl_common_conf", 0);
        }
        return this.sl;
    }

    public int yp() {
        if (this.f12149t <= 0) {
            this.f12149t = c("splash_render_timeout_backup", 100);
        }
        return this.f12149t;
    }

    public String z() {
        if (this.f12147m == null) {
            this.f12147m = c("cache_strategy_splash", "");
        }
        return this.f12147m;
    }

    public String a() {
        if (this.sp == null) {
            this.sp = c("ab_test_param", "");
        }
        return this.sp;
    }

    public String n() {
        if (this.f12143a == null) {
            this.f12143a = c("ab_test_version", "");
        }
        return this.f12143a;
    }

    public void sp() {
        this.sp = "";
        this.f12143a = "";
        this.tt.remove("ab_test_version");
        this.tt.remove("ab_test_param");
    }

    public float uj() {
        if (this.f12148n == -1.0f) {
            this.f12148n = c("aggMultiple", -1.0f);
        }
        return this.f12148n;
    }

    public boolean x() {
        if (this.f12150u == -1) {
            this.f12150u = c("dl_storage_internal", 1);
        }
        return this.f12150u == 1;
    }

    public long tt() {
        if (this.uj == -1) {
            this.uj = c("duration", 10000L);
        }
        return this.uj;
    }

    public int ve() {
        if (this.ve == -1) {
            this.ve = c("max", 50);
        }
        return this.ve;
    }

    public static n c() {
        return c.f12153c;
    }

    public boolean c(String str, boolean z10) {
        try {
            return this.tt.getBoolean(str, z10);
        } catch (Throwable unused) {
            return z10;
        }
    }

    public long c(String str, long j10) {
        try {
            return this.tt.getLong(str, j10);
        } catch (Throwable unused) {
            return j10;
        }
    }

    public float c(String str, float f10) {
        try {
            return this.tt.getFloat(str, f10);
        } catch (Throwable unused) {
            return f10;
        }
    }

    public int c(String str, int i10) {
        try {
            return this.tt.getInt(str, i10);
        } catch (Throwable unused) {
            return i10;
        }
    }

    public String c(String str, String str2) {
        try {
            return this.tt.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
