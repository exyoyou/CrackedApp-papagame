package com.byazt.cf;

import android.content.Context;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 18, 91})
public class sp extends ve {
    public static final sp ve = new sp(gt.getContext());

    private sp(Context context) {
        super(context);
    }

    public static sp c() {
        return ve;
    }

    @Override // com.byazt.cf.ve
    public int tt() {
        return 7;
    }

    public void c(com.byazt.dj.tt ttVar, String str, int i10, uj ujVar) {
        com.byazt.cjm.ve veVar = new com.byazt.cjm.ve();
        veVar.c(str);
        veVar.c(i10 + 1);
        c(ttVar, ujVar, veVar, null, null, null);
    }
}
