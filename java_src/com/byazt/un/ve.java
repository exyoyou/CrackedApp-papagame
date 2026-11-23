package com.byazt.un;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, 54})
public class ve extends uj {
    public ve(Context context, ViewGroup viewGroup, ic icVar, String str, boolean z10, boolean z11, boolean z12) {
        super(context, viewGroup, icVar, str, z10, z11, z12);
    }

    @Override // com.byazt.un.uj
    public void c(int i10, int i11) {
        super.c(i10, i11);
        a aVar = this.f17372n;
        if (aVar == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        aVar.ve(i10, i11);
        this.f17372n.c(i10, i11);
        tt(-1, -1);
    }

    @Override // com.byazt.un.uj
    public com.byazt.jr.tt gu() {
        a aVar = this.f17372n;
        if (aVar != null) {
            return aVar.nu();
        }
        return null;
    }
}
