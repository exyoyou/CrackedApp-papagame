package com.byazt.aas;

import android.net.Uri;
import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 499})
public final class yv {
    public static AtomicBoolean tt = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Map<String, Boolean> f11495c = new ConcurrentHashMap();

    @com.byazt.zqa.c(c = {0, 1, 131, 2028})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final com.byazt.iy.n f11496c = com.byazt.ut.a.getKVStore("tt_scheme_check_list_cache");
    }

    private yv() {
    }

    public static void c(String str, Boolean bool) {
        String string;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (bool == null) {
            string = "";
        } else {
            try {
                string = bool.toString();
            } catch (Throwable unused) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(HmInputMappingContent.FIELD_VALUE, string);
        jSONObject.put("time", System.currentTimeMillis());
        c.f11496c.put(str, jSONObject.toString());
        tt.set(true);
    }

    public static Map<String, Boolean> tt(long j10) {
        HashMap map = new HashMap();
        try {
            Map all = c.f11496c.getAll();
            if (all != null && !all.isEmpty()) {
                for (Map.Entry entry : all.entrySet()) {
                    JSONObject jSONObject = new JSONObject(entry.getValue().toString());
                    long jCurrentTimeMillis = System.currentTimeMillis() - jSONObject.getLong("time");
                    String str = (String) entry.getKey();
                    if (jCurrentTimeMillis > 259200000) {
                        c(str);
                    } else if (jCurrentTimeMillis <= j10) {
                        map.put(str, Boolean.valueOf(Boolean.parseBoolean(jSONObject.get(HmInputMappingContent.FIELD_VALUE).toString())));
                    }
                }
                if (f11495c == null) {
                    f11495c = new ConcurrentHashMap();
                } else {
                    f11495c.clear();
                }
                f11495c.putAll(map);
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    public static Map<String, Boolean> c(long j10) {
        try {
            if (tt.get()) {
                synchronized (yv.class) {
                    if (tt.get()) {
                        Map<String, Boolean> mapTt = tt(j10);
                        tt.set(false);
                        return mapTt;
                    }
                }
            }
            return new HashMap(f11495c);
        } catch (Throwable unused) {
            return new HashMap();
        }
    }

    private static JSONObject tt(String str) {
        String str2 = c.f11496c.get(str, "");
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return new JSONObject(str2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean c(String str, long j10) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObjectTt = tt(str);
            if (jSONObjectTt == null) {
                return null;
            }
            if (System.currentTimeMillis() - jSONObjectTt.getLong("time") <= j10) {
                return Boolean.valueOf(Boolean.parseBoolean(jSONObjectTt.getString(HmInputMappingContent.FIELD_VALUE)));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static void c(String str) {
        c.f11496c.remove(str);
    }

    public static String c(Uri uri) {
        if (uri == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(uri.getScheme());
        sb2.append("://");
        sb2.append(uri.getHost());
        int port = uri.getPort();
        if (port > 0) {
            sb2.append(":");
            sb2.append(port);
        }
        String path = uri.getPath();
        if (!TextUtils.isEmpty(path)) {
            sb2.append(path);
        }
        return sb2.toString();
    }
}
