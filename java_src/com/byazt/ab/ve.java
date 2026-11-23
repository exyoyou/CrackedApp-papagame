package com.byazt.ab;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.bzd.t;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 757, 54})
public class ve extends com.byazt.zd.c {
    public boolean qp;

    public ve(Context context, ViewGroup viewGroup, ic icVar, com.byazt.hkv.c cVar) {
        super(context, viewGroup, icVar, cVar);
        this.qp = true;
        c(false);
    }

    @Override // com.byazt.zd.c
    public void a(boolean z10) {
        super.a(z10);
        if (this.qp) {
            if (!t.c(this.f17367a) || n()) {
                tt();
            }
        }
    }

    public void gr() {
        aw();
    }

    @Override // com.byazt.zd.c
    public int gu() {
        return 5;
    }

    @Override // com.byazt.zd.c
    public boolean p_() {
        return false;
    }

    public void sp(boolean z10) {
        this.qp = z10;
    }
}
