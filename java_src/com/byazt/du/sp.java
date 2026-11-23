package com.byazt.du;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.nr.m;
import com.byazt.xl.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 91})
public class sp implements x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.wl.tt f13180c;

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(u uVar) {
        try {
            JSONObject jSONObjectN = uVar.n();
            JSONObject jSONObject = new JSONObject(jSONObjectN.optString("template_Plugin"));
            JSONObject jSONObjectOptJSONObject = jSONObjectN.optJSONObject("creative");
            com.byazt.aq.x xVarC = new a(jSONObject, jSONObjectOptJSONObject, jSONObjectN.optJSONObject("AdSize"), new JSONObject(jSONObjectN.optString("diff_template_Plugin"))).c(uVar.uj(), uVar.t(), jSONObjectOptJSONObject.optDouble("score_exact_i18n"), jSONObjectOptJSONObject.optString("comment_num_i18n"), uVar);
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("dynamic_creative"));
                xVarC.c(jSONObject2.optString(TypedValues.Custom.S_COLOR));
                xVarC.c(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.f13180c.c(xVarC);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.du.x
    public void c(com.byazt.wl.tt ttVar) {
        this.f13180c = ttVar;
    }

    @Override // com.byazt.du.x
    public void c(final u uVar) {
        if (uVar.yp() == 1) {
            tt(uVar);
        } else {
            com.byazt.or.n.c(new com.byazt.bwm.sp("dynamicparse") { // from class: com.byazt.du.sp.1
                @Override // java.lang.Runnable
                public void run() {
                    sp.this.tt(uVar);
                }
            }, 5);
        }
    }
}
