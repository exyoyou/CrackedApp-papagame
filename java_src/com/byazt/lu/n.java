package com.byazt.lu;

import android.text.TextUtils;
import com.byazt.ds.i;
import com.byazt.nr.m;
import com.byazt.yv.da;
import com.byazt.yv.u;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.proto.GSSDK;
import com.join.mgps.activity.BuildQRCodeActivity_;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 46})
public class n extends tt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16775n;
    public static final long[] tt = {920000};
    public static final long[] ve = {920000};
    public static final long[] uj = {10000, 10000, 20000, 20000, 60000, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS, 180000, 180000, 540000, 540000};

    public n(uj ujVar) {
        super(ujVar);
        this.f16775n = true;
    }

    @Override // com.byazt.lu.tt
    public long c() {
        return this.f16785c.uj().u() + ((long) (this.f16785c.a().ve() ? 21600000 : 43200000));
    }

    @Override // com.byazt.lu.tt
    public long[] tt() {
        int iT = this.f16785c.uj().t();
        if (iT == 0) {
            return uj;
        }
        if (iT == 1) {
            return ve;
        }
        if (iT == 2) {
            return tt;
        }
        da.tt((Throwable) null);
        return ve;
    }

    @Override // com.byazt.lu.tt
    public String uj() {
        return "r";
    }

    @Override // com.byazt.lu.tt
    public boolean ve() throws JSONException {
        JSONObject jSONObjectC;
        JSONObject jSONObject = new JSONObject();
        i iVarUj = this.f16785c.uj();
        JSONObject jSONObjectC2 = iVarUj.c();
        JSONObject jSONObject2 = null;
        if (jSONObjectC2 != null) {
            jSONObject.put("magic_tag", "ss_app_log");
            synchronized (iVarUj) {
                jSONObjectC = u.c(jSONObjectC2);
            }
            jSONObject.put("header", jSONObjectC);
            jSONObject.put("_gen_time", System.currentTimeMillis());
            if (!TextUtils.isEmpty(jSONObjectC.optString("device_id")) && u.ve() && this.f16775n) {
                this.f16775n = false;
                return false;
            }
            JSONObject jSONObjectC3 = this.f16785c.uj().c();
            com.byazt.mp.ve veVarC = com.byazt.mp.c.c(com.byazt.mp.tt.c(this.f16785c.getContext(), jSONObjectC3, this.f16785c.sp().c(), true, com.byazt.gj.c.uj()), jSONObject);
            if (veVarC != null && veVarC.c() != null) {
                try {
                    jSONObject2 = new JSONObject(veVarC.c());
                } catch (JSONException e10) {
                    m.c(e10);
                }
            }
            if (jSONObject2 != null) {
                String strOptString = jSONObject2.optString("device_id", "");
                boolean zC = this.f16785c.uj().c(jSONObject2, strOptString, jSONObject2.optString("install_id", ""), jSONObject2.optString(BuildQRCodeActivity_.SSID_EXTRA, ""));
                JSONObject jSONObject3 = new JSONObject(jSONObject2.toString());
                jSONObject3.put("headers", veVarC.tt());
                u.tt(jSONObject, jSONObject3);
                com.byazt.tf.c.tt("__kite", "start:" + u.n());
                try {
                    if (u.n()) {
                        new com.byazt.az.tt(this.f16785c.getContext()).c(jSONObjectC3, strOptString);
                    }
                } catch (Throwable th) {
                    com.byazt.tf.c.c("__kite", "error:" + u.n(), th);
                }
                return zC;
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("headers", veVarC.tt());
            u.tt(jSONObject, jSONObject4);
        } else {
            da.tt((Throwable) null);
        }
        return false;
    }
}
