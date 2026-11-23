package com.byazt.bt;

import android.text.TextUtils;
import com.byazt.dna.eo;
import com.byazt.nr.m;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f12081c;
    public static volatile String tt;

    public static String c() {
        return "sp_exec_getad_config";
    }

    public static String tt(String str, String str2, com.byazt.dna.c cVar) {
        try {
            return c(c(), cVar).getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static com.byazt.it.ve c(String str, com.byazt.dna.c cVar) {
        return ((eo) com.byazt.ut.uj.getService("storage_service")).getGlobalStorage(cVar, str);
    }

    public static String tt(String str, long j10, com.byazt.dna.c cVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String strTt = tt(str, "", cVar);
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

    public static void c(String str, String str2, com.byazt.dna.c cVar) {
        try {
            c(c(), cVar).put(str, str2);
        } catch (Throwable unused) {
        }
    }

    public static void c(String str, String str2, com.byazt.dna.c cVar, int i10) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(HmInputMappingContent.FIELD_VALUE, str2);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("p_version", i10);
            c(str, jSONObject.toString(), cVar);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static String tt(com.byazt.dna.c cVar) {
        if (tt == null) {
            tt = tt("dev15", (String) null, cVar);
        }
        return tt;
    }

    public static String c(String str, long j10, com.byazt.dna.c cVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String strTt = tt(str, "", cVar);
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

    public static void tt(String str, com.byazt.dna.c cVar, int i10) {
        if (str == null || str.equals(tt)) {
            return;
        }
        tt = str;
        c("dev15", str, cVar, i10);
    }

    public static String c(com.byazt.dna.c cVar) {
        if (f12081c == null) {
            f12081c = tt("dev13", (String) null, cVar);
        }
        return f12081c;
    }

    public static void c(String str, com.byazt.dna.c cVar, int i10) {
        if (str == null || str.equals(f12081c)) {
            return;
        }
        f12081c = str;
        c("dev13", str, cVar, i10);
    }
}
