package com.byazt.dq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.cd.i;
import com.byazt.sz.m;
import com.byazt.sz.rh;
import com.byazt.sz.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1212, 13})
public class tt implements i.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f13067a = new i(Looper.getMainLooper(), this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13068c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.xj.ve f13069n;
    public rh tt;
    public m uj;
    public Context ve;

    public tt(Context context, m mVar, com.byazt.xj.ve veVar) {
        this.ve = context;
        this.uj = mVar;
        this.f13069n = veVar;
    }

    public void c(rh rhVar) {
        this.tt = rhVar;
    }

    public void c() {
        m mVar = this.uj;
        if (mVar == null) {
            return;
        }
        try {
            int i10 = Integer.parseInt(com.byazt.wj.tt.c(mVar.ve().optString("delay"), this.f13069n.da()));
            this.f13068c = i10;
            this.f13067a.sendEmptyMessageDelayed(1001, i10);
        } catch (NumberFormatException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.cd.i.c
    public void c(Message message) {
        if (message.what != 1001) {
            return;
        }
        JSONObject jSONObjectVe = this.uj.ve();
        if (TextUtils.equals(jSONObjectVe.optString("type"), "onAnimation")) {
            String strOptString = jSONObjectVe.optString("nodeId");
            com.byazt.xj.ve veVar = this.f13069n;
            com.byazt.xj.ve veVarUj = veVar.tt(veVar).uj(strOptString);
            new u(veVarUj.i(), com.byazt.sz.c.c(jSONObjectVe.optJSONObject("animatorSet"), veVarUj)).c();
        } else {
            rh rhVar = this.tt;
            if (rhVar != null) {
                m mVar = this.uj;
                com.byazt.xj.ve veVar2 = this.f13069n;
                rhVar.c(mVar, veVar2, veVar2);
            }
        }
        this.f13067a.removeMessages(1001);
    }
}
