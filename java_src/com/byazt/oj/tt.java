package com.byazt.oj;

import android.view.View;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 13})
public class tt implements com.byazt.tm.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<uj> f17876c = new ArrayList();

    public tt(View view, List<com.byazt.aq.c> list) {
        Iterator<com.byazt.aq.c> it2 = list.iterator();
        while (it2.hasNext()) {
            uj ujVarC = ve.c().c(view, it2.next());
            if (ujVarC != null) {
                this.f17876c.add(ujVarC);
            }
        }
    }

    public void c() {
        Iterator<uj> it2 = this.f17876c.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().ve();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.byazt.tm.n
    public void tt() {
        Iterator<uj> it2 = this.f17876c.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().tt();
            } catch (Exception unused) {
            }
        }
    }
}
