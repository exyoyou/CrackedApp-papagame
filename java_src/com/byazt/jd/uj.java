package com.byazt.jd;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.hr.i;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTAdConstant.STYLE_SIZE_RADIO_3_2, 15})
public class uj implements ve<i> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f15813c;

    public uj(Context context) {
        if (context != null) {
            this.f15813c = context.getApplicationContext();
        }
    }

    @Override // com.byazt.jd.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public synchronized void tt(i iVar) {
        if (this.f15813c != null && iVar != null) {
            com.byazt.it.ve veVarC = com.byazt.vif.uj.c(null, "gm_pacing_" + iVar.tt());
            String strUj = iVar.uj();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("unity_id", iVar.uj());
                if (!iVar.c()) {
                    jSONObject.put("waterfall_show_rules_version", iVar.n());
                    jSONObject.put("adn_rit_show_rules_version", iVar.a());
                }
                jSONObject.put("timing_mode", iVar.sp());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(iVar.i());
                jSONObject.put("show_pacing", sb2.toString());
                jSONObject.put("show_pacing_rule_id", iVar.da());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(iVar.sl());
                jSONObject.put("show_time", sb3.toString());
                veVarC.put(strUj, jSONObject.toString());
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
    }

    @Override // com.byazt.jd.n
    public synchronized void delete(String str) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (this.f15813c != null && !TextUtils.isEmpty(str)) {
            com.byazt.vif.uj.c(null, "gm_pacing_".concat(str)).remove(str);
        }
    }

    @Override // com.byazt.jd.n
    public synchronized i query(String str) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return c(com.byazt.vif.uj.c(null, "gm_pacing_".concat(str)).getString(str, ""), false);
        }
        throw new RuntimeException(" has slotId");
    }

    @Override // com.byazt.jd.n
    public synchronized void delete(String str, String str2) {
        if (!str.contains("_")) {
            if (this.f15813c != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                com.byazt.vif.uj.c(null, "gm_pacing_".concat(str)).remove(str + "_" + str2);
            }
        } else {
            throw new RuntimeException(" has slotId");
        }
    }

    @Override // com.byazt.jd.n
    public synchronized i query(String str, String str2) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return c(com.byazt.vif.uj.c(null, "gm_pacing_".concat(str)).getString(str + "_" + str2, ""), true);
        }
        throw new RuntimeException(" has slotId");
    }

    private i c(String str, boolean z10) {
        String str2;
        String string;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] strArrSplit = jSONObject.getString("unity_id").split("_");
            String str3 = strArrSplit.length > 0 ? strArrSplit[0] : "";
            String str4 = strArrSplit.length > 1 ? strArrSplit[1] : "";
            if (z10) {
                str2 = "";
                string = str2;
            } else {
                String string2 = jSONObject.getString("waterfall_show_rules_version");
                string = jSONObject.getString("adn_rit_show_rules_version");
                str2 = string2;
            }
            return new i(str3, str4, str2, string, jSONObject.getInt("timing_mode"), jSONObject.getString("show_pacing"), jSONObject.getString("show_pacing_rule_id"), jSONObject.getString("show_time"));
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.jd.ve
    public synchronized void c(String str, long j10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        i iVarQuery = query(str);
        if (iVarQuery != null) {
            iVarQuery.c(j10);
            tt(iVarQuery);
        }
    }

    @Override // com.byazt.jd.ve
    public synchronized void c(String str, String str2, long j10) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            i iVarQuery = query(str, str2);
            if (iVarQuery != null) {
                iVarQuery.c(j10);
                tt(iVarQuery);
            }
        }
    }
}
