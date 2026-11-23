package com.byazt.yzg;

import com.byazt.ete.gt;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_SELECT_VALUE, 13})
public class tt extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f22496a = false;
    public int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f22497x = -1;

    private boolean n() {
        int iUj = uj();
        this.uj = iUj;
        return iUj != -1;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public void ve(boolean z10) {
        this.f22496a = z10;
    }

    @Override // com.byazt.yzg.c
    public boolean ve() {
        this.uj = 1;
        boolean z10 = a.uj;
        int iC = gt.c(this.tt.u_());
        if (z10) {
            iC = 0;
            a.uj = false;
        }
        if (this.f22495n) {
            return n();
        }
        if (this.f22496a) {
            int i10 = this.sp;
            if (i10 == 2) {
                return n();
            }
            if (iC == 2 && i10 == 1) {
                return n();
            }
        }
        if (iC == 0) {
            return n();
        }
        return true;
    }
}
