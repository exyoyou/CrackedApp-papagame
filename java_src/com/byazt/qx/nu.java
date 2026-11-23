package com.byazt.qx;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 137})
public class nu extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ete.ic f19348c;

    public nu(com.byazt.ete.ic icVar) {
        this.f19348c = icVar;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.ete.ic icVar) {
        nuVar.c("getLiveSaasAuthStatus", (com.byazt.pct.n<?, ?>) new nu(icVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(@NonNull JSONObject jSONObject, @NonNull com.byazt.pct.a aVar) throws Exception {
        com.byazt.ete.sv svVarC;
        com.byazt.ete.ic icVar;
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.ete.nu nuVar = null;
        if (jSONObject != null) {
            try {
                svVarC = com.byazt.ete.sv.c(jSONObject.optJSONObject("live_info"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("deep_link");
                if (jSONObjectOptJSONObject != null) {
                    nuVar = new com.byazt.ete.nu(jSONObjectOptJSONObject);
                }
            } catch (Throwable th) {
                com.byazt.nr.m.uj("glsas", "method:" + th.getMessage());
            }
        } else {
            svVarC = null;
        }
        if (nuVar == null && (icVar = this.f19348c) != null) {
            nuVar = icVar.yp();
        }
        if (svVarC == null) {
            svVarC = this.f19348c.sl();
        }
        boolean z10 = true;
        jSONObject2.put("has_live_silent_auth", svVarC != null && svVarC.ve());
        jSONObject2.put("has_install_douyin", com.byazt.wu.c.c(nuVar));
        jSONObject2.put("has_live_authed", com.byazt.apd.tt.c().n() == 2);
        boolean z11 = svVarC != null && svVarC.uj();
        if (z11) {
            if (com.byazt.apd.tt.c().ve() != 2) {
                z10 = false;
            }
            z11 = z10;
        }
        jSONObject2.put("has_playable_auth_switch", z11);
        JSONObject jSONObject3 = new JSONObject();
        if (svVarC != null) {
            jSONObject3.put("aweme_agreements", svVarC.n());
            jSONObject3.put("aweme_privacy", svVarC.a());
        }
        jSONObject2.put("aweme_auth_protocol", jSONObject3);
        return jSONObject2;
    }
}
