package com.byazt.fb;

import android.util.SparseArray;
import com.byazt.omf.p;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1053, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f14062c;
    public tt tt;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f14062c = function;
    }

    public void c(tt ttVar) {
        this.tt = ttVar;
    }

    public void c(int i10, SparseArray<Object> sparseArray) {
        tt ttVar;
        if (com.byazt.rl.c.c(sparseArray).tt().booleanValue(-999903) && i10 == 8001 && (ttVar = this.tt) != null) {
            ttVar.c(true);
        } else if (this.f14062c != null) {
            this.f14062c.apply(com.byazt.lq.uj.c(p.uj) ? com.byazt.yxi.uj.c(sparseArray).c(i10).c(Void.class).tt() : com.byazt.yxi.uj.c().c(i10).c(Void.class).c(-99999979, sparseArray).tt());
        }
    }
}
