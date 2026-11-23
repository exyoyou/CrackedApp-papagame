package com.byazt.yv;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.quv.AbsServerManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.bm;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 67})
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f22457c = ":push";

    public static com.byazt.gj.sp a() {
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null) {
            return null;
        }
        return xVarU.eo();
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean n() {
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null) {
            return false;
        }
        return xVarU.nu();
    }

    public static Looper sp() {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null || (spVarEo = xVarU.eo()) == null) {
            return null;
        }
        return spVarEo.uj();
    }

    public static boolean tt() {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null || (spVarEo = xVarU.eo()) == null) {
            return false;
        }
        return spVarEo.c();
    }

    public static boolean uj() {
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null) {
            return false;
        }
        return xVarU.gr();
    }

    public static boolean ve() {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null || (spVarEo = xVarU.eo()) == null) {
            return false;
        }
        return spVarEo.tt();
    }

    public static boolean c(JSONObject jSONObject, JSONObject jSONObject2) {
        return (jSONObject == null || jSONObject2 == null) ? c((Object) jSONObject, (Object) jSONObject2) : jSONObject.toString().equals(jSONObject2.toString());
    }

    public static String c(Context context) {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        return (xVarU == null || (spVarEo = xVarU.eo()) == null) ? "" : spVarEo.c(context);
    }

    public static void tt(JSONObject jSONObject, JSONObject jSONObject2) {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU == null || (spVarEo = xVarU.eo()) == null) {
            return;
        }
        spVarEo.c(jSONObject, jSONObject2);
    }

    public static boolean ve(Context context) {
        String strC = c(context);
        return strC != null && strC.endsWith(f22457c);
    }

    public static JSONObject ve(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.put(next, jSONObject2.opt(next));
            }
        } catch (JSONException e10) {
            da.tt(e10);
        }
        return jSONObject;
    }

    public static boolean c() {
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        if (xVarU != null) {
            return xVarU.p();
        }
        return true;
    }

    public static String tt(JSONObject jSONObject) {
        try {
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            return bytes.length == 0 ? "" : com.byakv.z.TTEncryptUtils.clientPackedBase64(bytes, bytes.length);
        } catch (Exception e10) {
            com.byazt.tf.c.tt("parseEncrypt#parse error: " + e10.getMessage());
            return "";
        }
    }

    public static JSONObject c(JSONObject jSONObject) {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        return (xVarU == null || (spVarEo = xVarU.eo()) == null) ? jSONObject : spVarEo.c(jSONObject);
    }

    public static SharedPreferences tt(Context context) {
        return com.byazt.nys.tt.tt(context, com.byazt.ds.x.c(), 0);
    }

    public static JSONObject ve(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        ve(jSONObject2, jSONObject);
        try {
            String strC = com.byazt.vm.sp.c(jSONObject2.optJSONObject("oaid"));
            if (TextUtils.isEmpty(strC)) {
                return jSONObject2;
            }
            jSONObject2.put("oaid", strC);
            return jSONObject2;
        } catch (Exception e10) {
            da.tt(e10);
            return jSONObject2;
        }
    }

    public static JSONObject c(JSONObject jSONObject, String str) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt(DeviceInfo.TAG_ANDROID_ID, com.byazt.gj.c.sp());
            jSONObject2.putOpt(bm.f84421x, "android");
            jSONObject2.putOpt(bm.f84422y, Build.VERSION.RELEASE);
            jSONObject2.putOpt(bm.F, Build.BRAND);
            jSONObject2.putOpt(bm.ai, Build.MODEL);
            jSONObject2.putOpt("device_platform", "android");
            if (jSONObject != null) {
                jSONObject2.putOpt("app_version", jSONObject.optString("app_version"));
                if (TextUtils.isEmpty(str)) {
                    jSONObject2.putOpt("device_id", jSONObject.optString("device_id"));
                } else {
                    jSONObject2.putOpt("device_id", str);
                }
                jSONObject2.putOpt("device_model", jSONObject.optString("device_model"));
                jSONObject2.putOpt("os_api", Integer.valueOf(jSONObject.optInt("os_api")));
                jSONObject2.putOpt(bm.f84416s, jSONObject.optString(bm.f84416s));
                jSONObject2.putOpt(AbsServerManager.PACKAGE_QUERY_BINDER, jSONObject.optString(AbsServerManager.PACKAGE_QUERY_BINDER));
                jSONObject2.putOpt("rom", jSONObject.optString("rom"));
                jSONObject2.putOpt("rom_version", com.byazt.he.c.tt());
                jSONObject2.putOpt("sdk_version", jSONObject.optString("sdk_version_name"));
                jSONObject2.putOpt("version_code", jSONObject.optString("version_code"));
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONObject2;
    }

    public static Looper tt(com.byazt.ds.x xVar) {
        com.byazt.gj.x xVarBm;
        com.byazt.gj.sp spVarEo;
        if (xVar == null || (xVarBm = xVar.bm()) == null || (spVarEo = xVarBm.eo()) == null) {
            return null;
        }
        return spVarEo.uj();
    }

    public static Looper c(com.byazt.ds.x xVar) {
        com.byazt.gj.x xVarBm;
        com.byazt.gj.sp spVarEo;
        if (xVar == null || (xVarBm = xVar.bm()) == null || (spVarEo = xVarBm.eo()) == null) {
            return null;
        }
        return spVarEo.ve();
    }

    public static String c(String str, HashMap<String, String> map, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        for (String str3 : map.keySet()) {
            String strC = c(str3, str2);
            String str4 = map.get(str3);
            String strC2 = str4 != null ? c(str4, str2) : "";
            if (sb2.length() > 0) {
                sb2.append(x.a.f97576d);
            }
            sb2.append(strC);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append(strC2);
        }
        return sb2.toString();
    }

    private static String c(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static void c(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                da.c(th);
            }
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                da.tt(th);
            }
        }
    }

    public static String c(String str) {
        com.byazt.gj.sp spVarEo;
        com.byazt.gj.x xVarU = com.byazt.gj.c.u();
        return (xVarU == null || (spVarEo = xVarU.eo()) == null) ? "" : spVarEo.c(str);
    }
}
