package com.byazt.gat;

import com.byazt.im.i;
import com.byazt.im.sp;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_RECORD_VALUE, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.uo.tt f14464c;
    public com.byazt.im.ve tt;
    public com.byazt.nc.tt uj;
    public uj<i, sp> ve;

    public c(com.byazt.im.ve veVar, uj<i, sp> ujVar, com.byazt.tdq.c cVar) {
        if (veVar == null || ujVar == null) {
            return;
        }
        this.tt = veVar;
        this.ve = ujVar;
        com.byazt.uo.tt ttVar = new com.byazt.uo.tt(veVar.getContext(), veVar.sp(), veVar.a(), this.tt.x(), veVar, ujVar, cVar);
        this.f14464c = ttVar;
        this.uj = ttVar;
    }

    public void c(int i10) {
        com.byazt.uo.tt ttVar = this.f14464c;
        if (ttVar != null) {
            ttVar.setExpressTimeOut(i10);
        }
    }

    public void tt() {
        com.byazt.uo.tt ttVar = this.f14464c;
        if (ttVar != null) {
            ttVar.renderSplash(this.tt, this.ve);
        }
    }

    public void c(a aVar) {
        com.byazt.im.ve veVar = this.tt;
        if (veVar == null || veVar.uj == null || aVar == null) {
            return;
        }
        boolean zC = aVar.c();
        this.tt.uj.c(zC);
        com.byazt.uo.tt ttVar = this.f14464c;
        if (ttVar != null) {
            ttVar.updateSplashVideoFlag(zC);
        }
    }

    public com.byazt.nc.tt c() {
        return this.uj;
    }
}
