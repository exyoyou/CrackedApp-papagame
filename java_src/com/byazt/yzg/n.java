package com.byazt.yzg;

import com.byazt.ete.gt;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_SELECT_VALUE, 46})
public class n extends c {
    @Override // com.byazt.yzg.c
    public boolean ve() {
        this.uj = 2;
        int iTt = gt.tt(this.tt.u_());
        if (iTt == 2) {
            return false;
        }
        return (iTt == 0 && uj() == -1) ? false : true;
    }
}
