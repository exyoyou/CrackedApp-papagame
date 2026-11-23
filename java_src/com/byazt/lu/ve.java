package com.byazt.lu;

import com.byazt.yv.u;
import com.haima.hmcp.proto.GSSDK;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 54})
public class ve extends tt {
    public ve(uj ujVar) {
        super(ujVar);
    }

    @Override // com.byazt.lu.tt
    public long c() {
        return this.f16785c.ve().x() + 21600000;
    }

    @Override // com.byazt.lu.tt
    public long[] tt() {
        return n.ve;
    }

    @Override // com.byazt.lu.tt
    public String uj() {
        return "c";
    }

    @Override // com.byazt.lu.tt
    public boolean ve() throws JSONException {
        JSONObject jSONObjectC = this.f16785c.uj().c();
        if (this.f16785c.uj().t() == 0 || jSONObjectC == null || this.f16785c.ve().x() + 21600000 > System.currentTimeMillis()) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", jSONObjectC);
        jSONObject.put("_gen_time", System.currentTimeMillis());
        JSONObject jSONObjectTt = com.byazt.mp.c.tt(com.byazt.mp.c.c(com.byazt.mp.tt.c(this.f16785c.getContext(), this.f16785c.uj().c(), this.f16785c.sp().ve(), true, com.byazt.gj.c.uj()), com.byazt.mp.c.ve), jSONObject);
        com.byazt.gj.c.t().c(!u.c(jSONObjectTt, this.f16785c.ve().sp()), jSONObjectTt);
        if (jSONObjectTt == null) {
            return false;
        }
        this.f16785c.ve().c(jSONObjectTt);
        return true;
    }
}
