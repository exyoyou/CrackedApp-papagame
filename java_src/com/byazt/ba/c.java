package com.byazt.ba;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.jz.n;
import com.byazt.mg.da;
import com.byazt.quv.AbsServerManager;
import com.byazt.uy.x;
import com.join.mgps.Util.o0;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.bm;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2074, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile JSONObject f11853c;

    public static void c(tt ttVar) {
        Map<String, Object> mapC = x.c().c();
        if (mapC == null && mapC.get(DeviceInfo.TAG_ANDROID_ID) == null) {
            return;
        }
        try {
            com.byazt.jz.tt.c(new n.c().c(com.byazt.jz.tt.tt(mapC) + "?device_platform=android&version_code=138&iid=iid&aid=" + mapC.get(DeviceInfo.TAG_ANDROID_ID)).c(true).c(c(mapC).toString().getBytes("UTF-8")).c());
        } catch (Throwable unused) {
        }
    }

    private static String c() {
        String str = Build.VERSION.RELEASE;
        if (str.contains(o0.f49827a)) {
            return str;
        }
        return str + ".0";
    }

    private static JSONObject c(Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        if (f11853c == null) {
            Context contextUj = x.uj();
            try {
                JSONObject jSONObject2 = new JSONObject();
                f11853c = jSONObject2;
                jSONObject2.put(bm.f84421x, "Android");
                f11853c.put("platform", "Android");
                f11853c.put("sdk_lib", "Android");
                f11853c.put(bm.f84422y, c());
                f11853c.put("os_api", Build.VERSION.SDK_INT);
                f11853c.put("use_apm_sdk", "1");
                f11853c.put("sdk_version", 138);
                f11853c.put("sdk_version_code", 138);
                f11853c.put("sdk_version_name", "0.0.1-alpha.18-cloud");
                String str = Build.MODEL;
                String str2 = Build.BRAND;
                if (str == null) {
                    str = str2;
                } else if (str2 != null && !str.contains(str2)) {
                    str = str2 + ' ' + str;
                }
                f11853c.put("device_model", str);
                f11853c.put(bm.F, str2);
                f11853c.put(bm.H, Build.MANUFACTURER);
                if (map != null) {
                    f11853c.put(DeviceInfo.TAG_ANDROID_ID, String.valueOf(map.get(DeviceInfo.TAG_ANDROID_ID)));
                    f11853c.put("app_version", map.get("app_version"));
                    f11853c.put("version_code", map.get("version_code"));
                    f11853c.put("update_version_code", map.get("update_version_code"));
                    f11853c.put("manifest_version_code", map.get("version_code"));
                    f11853c.put("channel", map.get("channel"));
                }
                f11853c.put("bd_did", x.ve().c());
                f11853c.put(AbsServerManager.PACKAGE_QUERY_BINDER, contextUj.getPackageName());
                f11853c.put(bm.f84416s, contextUj.getApplicationInfo().name);
                c(f11853c);
            } catch (Exception unused) {
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        jSONObject.put("header", f11853c);
        jSONObject.put("local_time", jCurrentTimeMillis);
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject3 = new JSONObject();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        jSONObject3.put("local_time_ms", jCurrentTimeMillis2);
        jSONObject3.put("tea_event_index", 10001);
        jSONObject3.put("session_id", UUID.randomUUID().toString());
        jSONObject3.put("datetime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(jCurrentTimeMillis2)));
        jSONArray.put(jSONObject3);
        jSONObject.put("launch", jSONArray);
        return jSONObject;
    }

    private static void c(JSONObject jSONObject) {
        Map<String, Object> mapTt;
        Object obj;
        com.byazt.rx.c cVarC = x.c();
        if (cVarC == null || jSONObject == null || (mapTt = cVarC.tt()) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (String str : mapTt.keySet()) {
                if (!TextUtils.isEmpty(str) && (obj = mapTt.get(str)) != null) {
                    jSONObject2.put(str, obj);
                }
            }
            jSONObject.put("custom", jSONObject2);
        } catch (Exception e10) {
            da.tt(e10);
        }
    }
}
