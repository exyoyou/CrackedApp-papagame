package com.byazt.tg;

import android.text.TextUtils;
import com.byazt.gq.z;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1956, 46})
public class n implements sp {
    @Override // com.byazt.tg.sp
    public boolean c(com.byazt.dd.tt ttVar, int i10, x xVar, com.byazt.de.ve veVar) {
        if (ttVar == null) {
            return false;
        }
        return z.c(ttVar, !TextUtils.isEmpty(ttVar.oz()) ? com.byazt.di.da.c(com.byazt.gq.t.getContext()).c(ttVar.oz(), null, true) : com.byazt.di.da.c(com.byazt.gq.t.getContext()).tt(ttVar.c()), i10, xVar, true, veVar);
    }
}
