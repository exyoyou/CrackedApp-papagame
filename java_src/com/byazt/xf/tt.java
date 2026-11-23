package com.byazt.xf;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.yf.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_RECONNECT_INTERVAL, 13})
public class tt {
    public static boolean c(String str) {
        String strVe = ve();
        return (TextUtils.isEmpty(strVe) || TextUtils.isEmpty(str) || strVe.compareTo(str) < 0) ? false : true;
    }

    public static long tt(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get(MediationConstant.EXTRA_ADID) != null) {
                return ((Long) map.get(MediationConstant.EXTRA_ADID)).longValue();
            }
            return 0L;
        } catch (Throwable th) {
            m.c(th);
            return 0L;
        }
    }

    public static String ve(Map<String, Object> map) {
        if (map == null || map.get("request_id") == null) {
            return null;
        }
        return (String) map.get("request_id");
    }

    public static JSONArray ve(String str) {
        JSONArray jSONArray;
        try {
            if (TextUtils.isEmpty(str)) {
                jSONArray = new JSONArray();
            } else {
                jSONArray = new JSONArray(str);
            }
        } catch (Exception e10) {
            m.c(e10);
            jSONArray = null;
        }
        return jSONArray == null ? new JSONArray() : jSONArray;
    }

    public static String c(String str, String str2, String str3) {
        JSONArray jSONArray;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        jSONArray = new JSONArray(str);
                    } catch (JSONException unused) {
                        jSONArray = new JSONArray();
                    }
                } else {
                    jSONArray = new JSONArray();
                }
                boolean z10 = false;
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && str2.equals(jSONObjectOptJSONObject.getString("name"))) {
                        jSONObjectOptJSONObject.put(HmInputMappingContent.FIELD_VALUE, str3);
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("name", str2);
                    jSONObject.put(HmInputMappingContent.FIELD_VALUE, str3);
                    jSONArray.put(jSONObject);
                }
                return jSONArray.toString();
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        return str;
    }

    public static void tt(String str) {
        da.tt(str);
    }

    private static Map<String, String> tt() {
        return da.sp();
    }

    private static JSONArray tt(com.byazt.ch.c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.qy())) {
            return null;
        }
        try {
            return new JSONArray(cVar.qy());
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    private static String ve() {
        try {
            return com.byazt.tjo.tt.ve();
        } catch (Throwable unused) {
            return "0.0";
        }
    }

    public static double c(Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Float) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        try {
            if (obj instanceof String) {
                return Double.valueOf((String) obj).doubleValue();
            }
            return 0.0d;
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static long c(Map<String, Object> map) {
        if (map == null) {
            return 0L;
        }
        try {
            if (map.get("creative_id") != null) {
                return ((Long) map.get("creative_id")).longValue();
            }
            return 0L;
        } catch (Throwable th) {
            m.c(th);
            return 0L;
        }
    }

    public static String c() {
        return da.a();
    }

    public static JSONArray c(com.byazt.ch.c cVar) {
        JSONArray jSONArrayVe = ve(c());
        try {
            Map<String, String> mapTt = tt();
            if (mapTt != null && mapTt.size() > 0) {
                for (String str : mapTt.keySet()) {
                    String str2 = mapTt.get(str);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.putOpt("name", str);
                        jSONObject.putOpt(HmInputMappingContent.FIELD_VALUE, str2);
                        jSONArrayVe.put(jSONObject);
                    }
                }
            }
            JSONArray jSONArrayTt = tt(cVar);
            if (jSONArrayTt != null) {
                for (int i10 = 0; i10 < jSONArrayTt.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayTt.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && !TextUtils.equals("personal_ads_type", jSONObjectOptJSONObject.optString("name"))) {
                        jSONArrayVe.put(jSONObjectOptJSONObject);
                    }
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONArrayVe;
    }

    private static void c(com.byazt.dj.tt.c cVar, String str, String str2, boolean z10, com.byazt.ch.c cVar2) {
        JSONObject jSONObject;
        JSONArray jSONArrayC = c(cVar2);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("name", "mediation_sdk_version");
            jSONObject2.putOpt(HmInputMappingContent.FIELD_VALUE, com.byazt.yl.tt.tt());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt("name", "mediation_req_type");
            jSONObject3.putOpt(HmInputMappingContent.FIELD_VALUE, "1");
            if (TextUtils.isEmpty(str)) {
                jSONObject = null;
            } else {
                jSONObject = new JSONObject();
                jSONObject.putOpt("name", "waterfall_abtest");
                jSONObject.putOpt(HmInputMappingContent.FIELD_VALUE, str);
            }
            jSONArrayC.put(jSONObject3);
            jSONArrayC.put(jSONObject2);
            if (jSONObject != null) {
                jSONArrayC.put(jSONObject);
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.putOpt("name", "m_req_id");
                jSONObject4.putOpt(HmInputMappingContent.FIELD_VALUE, str2);
                jSONArrayC.put(jSONObject4);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        if (!z10) {
            c(cVar);
        }
        com.byazt.tjo.tt.c(da.n());
        if (cVar != null) {
            cVar.i(jSONArrayC.toString());
        }
    }

    public static void c(com.byazt.dj.tt.c cVar) {
        if (cVar != null && da.x()) {
            try {
                String strVe = da.ve("tt_pangle_preview_ad_id");
                String strVe2 = da.ve("tt_pangle_preview_creative_id");
                String strVe3 = da.ve("tt_pangle_preview_ext");
                com.byazt.eu.tt.c(MediationConstant.TAG, "pangle preview adId:" + strVe + " creativeId:" + strVe2 + " ext" + strVe3);
                if (!TextUtils.isEmpty(strVe) && !TextUtils.isEmpty(strVe2)) {
                    cVar.c(strVe).tt(strVe2);
                }
                if (TextUtils.isEmpty(strVe3)) {
                    return;
                }
                cVar.ve(strVe3);
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    public static com.byazt.dj.tt.c c(com.byazt.ll.tt ttVar, com.byazt.dv.tt ttVar2, boolean z10) {
        return c(ttVar, ttVar2.t(), ttVar2.m(), ttVar2.nu(), ttVar2.zm(), z10);
    }

    public static com.byazt.dj.tt.c c(com.byazt.ll.tt ttVar, String str, String str2, String str3, String str4, boolean z10) {
        com.byazt.ch.c cVarRh = null;
        com.byazt.dj.tt.c cVarVe = new com.byazt.dj.tt.c(ttVar == null ? null : ttVar.t()).uj(str).ve(1);
        if (ttVar != null) {
            cVarVe.a(ttVar.tt()).sp(ttVar.gt()).tt(ttVar.zm());
            cVarRh = ttVar.rh();
            if (cVarRh != null) {
                cVarVe.a(cVarRh.yp()).c(cVarRh.n()).uj(cVarRh.yv()).c(cVarRh.c()).tt(cVarRh.tt()).uj(cVarRh.z()).c(cVarRh.gu()).n(cVarRh.u()).ve(cVarRh.ve());
                String strMy = cVarRh.my();
                if (!TextUtils.isEmpty(strMy)) {
                    cVarVe.sp(strMy);
                }
                if (cVarRh.rh() != 0) {
                    cVarVe.a(cVarRh.rh());
                }
            }
            int[] iArrC = c(ttVar, cVarRh);
            if (iArrC != null && iArrC.length > 0) {
                cVarVe.c(iArrC);
            }
            if (5 == ttVar.my() || 9 == ttVar.my()) {
                cVarVe.ve(ttVar.gr());
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            cVarVe.x(str4);
        }
        c(cVarVe, str2, str3, z10, cVarRh);
        return cVarVe;
    }

    private static int[] c(com.byazt.ll.tt ttVar, com.byazt.ch.c cVar) {
        if (cVar != null && cVar.nu() != null && cVar.nu().length > 0) {
            return cVar.nu();
        }
        try {
            Map<String, Object> mapCu = ttVar.cu();
            if (mapCu != null) {
                return (int[]) mapCu.get(MediationConstant.PANGLE_VID);
            }
            return null;
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    public static boolean c(com.byazt.ll.tt ttVar) {
        if (ttVar != null && ttVar.cu() != null) {
            Object obj = ttVar.cu().get(MediationConstant.BANNER_AUTO_HEIGHT);
            try {
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
