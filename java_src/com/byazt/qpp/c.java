package com.byazt.qpp;

import android.content.SharedPreferences;
import com.byazt.by.ve;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 460, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f19210c = -1;
    public volatile SharedPreferences tt = com.byazt.nys.tt.tt(gt.getContext(), "sp_ad_common_config", 0);

    @com.byazt.zqa.c(c = {0, 1, 460, 175})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static c f19212c = new c();
    }

    public int tt() {
        if (this.f19210c == -1) {
            this.f19210c = c("store_isolate_conf", 3);
        }
        return this.f19210c;
    }

    public static c c() {
        return tt.f19212c;
    }

    /* JADX INFO: renamed from: com.byazt.qpp.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 460, 44})
    public static class C0418c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, Object> f19211c = new HashMap();

        public C0418c c(int i10) {
            if (c.c().f19210c == i10) {
                return this;
            }
            c.c().f19210c = i10;
            this.f19211c.put("store_isolate_conf", Integer.valueOf(i10));
            return this;
        }

        public void c() {
            try {
                if (!ve.c().tt()) {
                    SharedPreferences.Editor editorEdit = c.c().tt.edit();
                    for (Map.Entry<String, Object> entry : this.f19211c.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof Boolean) {
                            editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
                        } else if (value instanceof Long) {
                            editorEdit.putLong(key, ((Long) value).longValue());
                        } else if (value instanceof Float) {
                            editorEdit.putFloat(key, ((Float) value).floatValue());
                        } else if (value instanceof Integer) {
                            editorEdit.putInt(key, ((Integer) value).intValue());
                        } else if (value instanceof String) {
                            editorEdit.putString(key, (String) value);
                        }
                    }
                    editorEdit.apply();
                    return;
                }
                for (Map.Entry<String, Object> entry2 : this.f19211c.entrySet()) {
                    String key2 = entry2.getKey();
                    Object value2 = entry2.getValue();
                    if (value2 instanceof Boolean) {
                        com.byazt.ti.tt.c("sp_ad_common_config", key2, (Boolean) value2);
                    } else if (value2 instanceof Long) {
                        com.byazt.ti.tt.c("sp_ad_common_config", key2, (Long) value2);
                    } else if (value2 instanceof Float) {
                        com.byazt.ti.tt.c("sp_ad_common_config", key2, (Float) value2);
                    } else if (value2 instanceof Integer) {
                        com.byazt.ti.tt.c("sp_ad_common_config", key2, (Integer) value2);
                    } else if (value2 instanceof String) {
                        com.byazt.ti.tt.c("sp_ad_common_config", key2, (String) value2);
                    }
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public int c(String str, int i10) {
        try {
            if (ve.c().tt()) {
                return com.byazt.ti.tt.c("sp_ad_common_config", str, i10);
            }
            return this.tt.getInt(str, i10);
        } catch (Throwable unused) {
            return i10;
        }
    }
}
