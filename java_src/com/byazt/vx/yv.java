package com.byazt.vx;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 499})
public class yv {
    public static void c(String str, boolean z10, long j10, String str2) {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return;
            }
            String string = veVarVe.getString(str, "");
            JSONObject jSONObject = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
            int i10 = 1;
            if (z10) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("success");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                    jSONObject.put("success", jSONObjectOptJSONObject);
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("times", -1);
                if (iOptInt != -1) {
                    i10 = 1 + iOptInt;
                }
                jSONObjectOptJSONObject.put("times", i10);
                if (j10 <= 10000) {
                    long jOptInt = jSONObjectOptJSONObject.optInt("avg_req_duration", -1);
                    if (jOptInt != -1) {
                        j10 = ((jOptInt * ((long) (i10 - 1))) + j10) / ((long) i10);
                    }
                    jSONObjectOptJSONObject.put("avg_req_duration", j10);
                }
            } else {
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
                if (jSONObjectOptJSONObject2 == null) {
                    jSONObjectOptJSONObject2 = new JSONObject();
                    jSONObject.put("fail", jSONObjectOptJSONObject2);
                }
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("times", -1);
                jSONObjectOptJSONObject2.put("times", iOptInt2 == -1 ? 1 : iOptInt2 + 1);
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("error_code");
                if (jSONObjectOptJSONObject3 == null) {
                    jSONObjectOptJSONObject3 = new JSONObject();
                    jSONObjectOptJSONObject2.put("error_code", jSONObjectOptJSONObject3);
                }
                int iOptInt3 = jSONObjectOptJSONObject3.optInt(str2, -1);
                if (iOptInt3 != -1) {
                    i10 = 1 + iOptInt3;
                }
                jSONObjectOptJSONObject3.put(str2, i10);
            }
            veVarVe.put(str, jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static void tt(Map<String, Object> map) {
        try {
            Context context = com.byazt.bp.tt.getContext();
            SharedPreferences sharedPreferencesTt = com.byazt.nys.tt.tt((Context) com.byazt.eu.c.c(context), "cb_test", 0);
            String string = sharedPreferencesTt.getString(MediationConstant.ADN_KS, "");
            String string2 = sharedPreferencesTt.getString(MediationConstant.ADN_GDT, "");
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                sharedPreferencesTt = com.byazt.nys.tt.tt(context, "cb_test", 0);
                string = sharedPreferencesTt.getString(MediationConstant.ADN_KS, "");
                string2 = sharedPreferencesTt.getString(MediationConstant.ADN_GDT, "");
            }
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put(MediationConstant.ADN_KS, string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put(MediationConstant.ADN_GDT, string2);
            }
            map.put("cb_stacktrace", jSONObject);
            sharedPreferencesTt.edit().clear().apply();
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private static com.byazt.it.ve ve() {
        try {
            if (com.byazt.bp.c.t() != null) {
                return com.byazt.vif.uj.c(null, "gm_evt_upload_info");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int tt() {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return 0;
            }
            return veVarVe.get("init_count", 0);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static JSONObject c(String str) {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return null;
            }
            String string = veVarVe.getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                veVarVe.remove(str);
                return new JSONObject(string);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void c(String str, long j10) {
        JSONObject jSONObject;
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return;
            }
            String string = veVarVe.getString(com.baidu.mobads.sdk.internal.d.f7828a, "");
            if (TextUtils.isEmpty(string)) {
                jSONObject = new JSONObject();
            } else {
                jSONObject = new JSONObject(string);
            }
            jSONObject.put(str, j10);
            veVarVe.put(com.baidu.mobads.sdk.internal.d.f7828a, jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONObject c() {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return null;
            }
            String string = veVarVe.getString(com.baidu.mobads.sdk.internal.d.f7828a, "");
            if (!TextUtils.isEmpty(string)) {
                veVarVe.remove(com.baidu.mobads.sdk.internal.d.f7828a);
                return new JSONObject(string);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void c(int i10, int i11) {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return;
            }
            int i12 = veVarVe.getInt("low_m_cnt", 0);
            int i13 = veVarVe.getInt("clean_invalid_cnt", 0);
            int i14 = veVarVe.getInt("force_clean_cnt", 0) + i11;
            veVarVe.put("low_m_cnt", i12 + 1);
            veVarVe.put("clean_invalid_cnt", i13 + i10);
            veVarVe.put("force_clean_cnt", i14);
        } catch (Throwable unused) {
        }
    }

    public static void c(Map<String, Object> map) {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return;
            }
            int i10 = veVarVe.getInt("low_m_cnt", 0);
            int i11 = veVarVe.getInt("clean_invalid_cnt", 0);
            int i12 = veVarVe.getInt("force_clean_cnt", 0);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("low_m_cnt", i10);
            jSONObject.put("invalid_cnt", i11);
            jSONObject.put("force_cnt", i12);
            map.put("low_m_clean", jSONObject);
            veVarVe.put("low_m_cnt", 0);
            veVarVe.put("clean_invalid_cnt", 0);
            veVarVe.put("force_clean_cnt", 0);
        } catch (Throwable unused) {
        }
    }

    public static void c(int i10) {
        try {
            com.byazt.it.ve veVarVe = ve();
            if (veVarVe == null) {
                return;
            }
            veVarVe.put("init_count", i10);
        } catch (Throwable unused) {
        }
    }
}
