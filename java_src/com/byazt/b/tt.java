package com.byazt.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 13})
public class tt implements com.byazt.zz.sp {
    @Override // com.byazt.zz.sp
    public int c(int i10, com.byazt.hs.t tVar) {
        if (tVar.ordinal() <= com.byazt.hs.t.MODERATE.ordinal()) {
            return 1;
        }
        return tVar == com.byazt.hs.t.GOOD ? i10 - 1 : i10;
    }
}
