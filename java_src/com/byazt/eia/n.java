package com.byazt.eia;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.ete.kk;
import com.byazt.ete.nu;
import com.byazt.ete.q;
import com.byazt.ete.qy;
import com.byazt.ete.sv;
import com.byazt.ete.yp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 1048, 46})
public class n implements c, i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = com.papa.controller.component.bluetooth.spp.c.f76484o, tt = "DSL")
    public String f13466a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "ec_schema", tt = "DSL")
    public String f13467c;
    public q cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public sv f13468d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "context")
    public Context f13469da;
    public JSONObject eo;

    @com.byazt.ls.c(c = "ext")
    public String gr;

    @com.byazt.ls.c(c = "union_session_key")
    public String gt;

    @com.byazt.ls.c(c = "reward_live")
    public JSONObject gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public yp f13470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "live_params", tt = "DSL")
    public String f13471i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @com.byazt.ls.c(c = "live_info")
    public JSONObject f13472m;

    @com.byazt.ls.c(c = "live_sdk_status_while_first_click")
    public int md;

    @com.byazt.ls.c(c = "saas_info")
    public JSONObject my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "link_url", tt = "DSL")
    public String f13473n;

    @com.byazt.ls.c(c = "sub_convert_link")
    public JSONObject nu;
    public nu or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @com.byazt.ls.c(c = "saas_on_click_material")
    public JSONObject f13474p;
    public kk qp;

    @com.byazt.ls.c(c = MediationConstant.EXTRA_ADID)
    public String qy;

    @com.byazt.ls.c(c = "deep_link")
    public JSONObject rh;

    @com.byazt.ls.c(c = "dynamic_configs")
    public String rl;

    @com.byazt.ls.c(c = "event_tag")
    public String sl;

    @com.byazt.ls.c(c = "live_type", tt = "DSL")
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @com.byazt.ls.c(c = "dpa_tag")
    public String f13475t;

    @com.byazt.ls.c(c = "coupon_scene", tt = "DSL")
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @com.byazt.ls.c(c = "live_saas_interaction_type")
    public int f13476u = -1;

    @com.byazt.ls.c(c = "amount", tt = "DSL")
    public int uj;

    @com.byazt.ls.c(c = "has_coupon", tt = "DSL")
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "room_id", tt = "DSL")
    public String f13477x;

    @com.byazt.ls.c(c = "view")
    public View yp;

    @com.byazt.ls.c(c = PayCenterOrderRequest.PAY_TYPE_COUPON)
    public JSONObject yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @com.byazt.ls.c(c = "handle_chain_data")
    public Map<String, Object> f13478z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public qy f13479zb;

    @com.byazt.ls.c(c = "req_id")
    public String zm;

    @Override // com.byazt.eia.i
    public q C_() {
        JSONObject jSONObject;
        if (this.cu == null && (jSONObject = this.my) != null) {
            this.cu = q.c(jSONObject);
        }
        return this.cu;
    }

    @Override // com.byazt.eia.i
    public kk D_() {
        JSONObject jSONObject = this.f13474p;
        if (jSONObject != null && this.qp == null) {
            this.qp = kk.c(jSONObject);
        }
        return this.qp;
    }

    @Override // com.byazt.eia.c
    public Map<String, String> c() {
        return new HashMap();
    }

    @Override // com.byazt.eia.i
    public String da() {
        return this.f13477x;
    }

    public Context getContext() {
        return this.f13469da;
    }

    public int gu() {
        return this.md;
    }

    public Map<String, Object> i() {
        return this.f13478z;
    }

    @Override // com.byazt.eia.i
    public String m() {
        return this.rl;
    }

    @Override // com.byazt.eia.i
    public yp my() {
        JSONObject jSONObject = this.yv;
        if (jSONObject != null && this.f13470h == null) {
            yp ypVarC = yp.c(jSONObject);
            this.f13470h = ypVarC;
            ypVarC.c(this.f13466a);
            this.f13470h.c(this.tt);
            this.f13470h.c(this.ve);
            this.f13470h.c(this.uj);
        }
        return this.f13470h;
    }

    @Override // com.byazt.eia.i
    public int n() {
        return this.sp;
    }

    @Override // com.byazt.eia.i
    public JSONObject q_() {
        if (this.gr != null && this.eo == null) {
            try {
                this.eo = new JSONObject(this.gr);
            } catch (JSONException unused) {
            }
        }
        return this.eo;
    }

    @Override // com.byazt.eia.i
    public String qy() {
        return this.zm;
    }

    @Override // com.byazt.eia.i
    public String rl() {
        return this.gt;
    }

    @Override // com.byazt.eia.i
    public sv sl() {
        JSONObject jSONObject = this.f13472m;
        if (jSONObject != null && this.f13468d == null) {
            this.f13468d = sv.c(jSONObject);
        }
        return this.f13468d;
    }

    public int sp() {
        return this.f13476u;
    }

    @Override // com.byazt.eia.i
    public String t() {
        return this.f13471i;
    }

    @Override // com.byazt.eia.i
    public String t_() {
        return this.f13467c;
    }

    public String tt() {
        return this.sl;
    }

    @Override // com.byazt.eia.i
    public qy u() {
        JSONObject jSONObject;
        if (this.f13479zb == null && (jSONObject = this.nu) != null) {
            this.f13479zb = new qy(jSONObject, false);
        }
        return this.f13479zb;
    }

    @Override // com.byazt.eia.i
    public String uj() {
        return this.qy;
    }

    public String ve() {
        return this.f13475t;
    }

    @Override // com.byazt.eia.i
    public String w_() {
        return this.gr;
    }

    public View x() {
        return this.yp;
    }

    @Override // com.byazt.eia.i
    public boolean y_() {
        return this.gu != null;
    }

    @Override // com.byazt.eia.i
    public nu yp() {
        if (this.or == null) {
            this.or = new nu(this.rh);
            if (!TextUtils.isEmpty(this.f13473n)) {
                this.or.tt(this.f13473n);
            }
        }
        return this.or;
    }

    public void c(int i10) {
        this.md = i10;
    }
}
