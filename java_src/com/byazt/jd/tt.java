package com.byazt.jd;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTAdConstant.STYLE_SIZE_RADIO_3_2, 13})
public class tt implements c<com.byazt.hr.sp> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f15812c;

    public tt(Context context) {
        if (context != null) {
            this.f15812c = context.getApplicationContext();
        }
    }

    private void ve(com.byazt.hr.sp spVar) {
        if (this.f15812c == null || spVar == null) {
            return;
        }
        com.byazt.it.ve veVarC = com.byazt.vif.uj.c(null, "gm_freqctl_" + spVar.tt());
        JSONObject jSONObjectC = c(spVar, false);
        if (jSONObjectC != null) {
            veVarC.put(spVar.uj(), jSONObjectC.toString());
        }
    }

    @Override // com.byazt.jd.n
    public synchronized void delete(String str) {
        if (this.f15812c != null && !TextUtils.isEmpty(str)) {
            com.byazt.vif.uj.c(null, "gm_freqctl_".concat(String.valueOf(str))).remove(str);
        }
    }

    @Override // com.byazt.jd.n
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public synchronized void tt(com.byazt.hr.sp spVar) {
        if (this.f15812c != null && spVar != null) {
            com.byazt.it.ve veVarC = com.byazt.vif.uj.c(null, "gm_freqctl_" + spVar.tt());
            String strUj = spVar.uj();
            JSONObject jSONObjectC = c(spVar, true);
            if (jSONObjectC != null) {
                veVarC.put(strUj, jSONObjectC.toString());
            }
        }
    }

    @Override // com.byazt.jd.c
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public synchronized void c(com.byazt.hr.sp spVar) {
        if (spVar != null) {
            ve(spVar);
        }
    }

    @Override // com.byazt.jd.n
    public synchronized com.byazt.hr.sp query(String str) {
        if (this.f15812c == null) {
            return null;
        }
        return c(com.byazt.vif.uj.c(null, "gm_freqctl_".concat(String.valueOf(str))).getString(str, ""), false);
    }

    @Override // com.byazt.jd.n
    public synchronized void delete(String str, String str2) {
        if (this.f15812c != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            com.byazt.vif.uj.c(null, "gm_freqctl_".concat(String.valueOf(str))).remove(str + "_" + str2);
        }
    }

    @Override // com.byazt.jd.n
    public synchronized com.byazt.hr.sp query(String str, String str2) {
        if (this.f15812c == null) {
            return null;
        }
        return c(com.byazt.vif.uj.c(null, "gm_freqctl_".concat(String.valueOf(str))).getString(str + "_" + str2, ""), true);
    }

    private JSONObject c(com.byazt.hr.sp spVar, boolean z10) {
        if (spVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("unity_id", spVar.uj());
            if (spVar.c()) {
                jSONObject.put("adn_rit_show_rules_version", spVar.a());
            } else {
                jSONObject.put("waterfall_show_rules_version", spVar.n());
            }
            jSONObject.put("timing_mode", spVar.sp());
            jSONObject.put("show_freqctl_rules", z10 ? spVar.i() : spVar.da());
            return jSONObject;
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    private com.byazt.hr.sp c(String str, boolean z10) {
        String string;
        String string2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] strArrSplit = jSONObject.getString("unity_id").split("_");
            String str2 = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str3 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (z10) {
                string2 = jSONObject.getString("adn_rit_show_rules_version");
                string = "";
            } else {
                string = jSONObject.getString("waterfall_show_rules_version");
                string2 = "";
            }
            return new com.byazt.hr.sp(str2, str3, string, string2, jSONObject.getInt("timing_mode"), jSONObject.getString("show_freqctl_rules"));
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }
}
