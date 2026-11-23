package com.byazt.iym;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.ete.ic;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE, 15})
public class uj extends com.byazt.xh.tt {
    public boolean qp;

    public uj(Context context, ViewGroup viewGroup, ic icVar) {
        super(context, viewGroup, icVar, null);
        c(false);
    }

    @Override // com.byazt.zd.c
    public void a(boolean z10) {
        super.a(z10);
    }

    @Override // com.byazt.zd.c, com.byazt.dh.ve
    public void da() {
        this.qp = false;
        super.da();
    }

    public boolean gr() {
        return nu() != null && nu().isPaused();
    }

    @Override // com.byazt.xh.tt, com.byazt.zd.c
    public int gu() {
        return 4;
    }

    public void sp(boolean z10) {
        this.qp = z10;
    }

    @Override // com.byazt.xh.tt, com.byazt.zd.c, com.byazt.dh.ve
    public void x() {
        if (this.qp) {
            return;
        }
        super.x();
    }

    public boolean zm() {
        return this.qp;
    }
}
