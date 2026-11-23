package com.byazt.ch;

import android.util.SparseArray;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1054, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f12416c;

    public n(Function<SparseArray<Object>, Object> function) {
        this.f12416c = function == null ? com.byazt.rl.c.tt : function;
    }

    public int c() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 271044);
        sparseArray.put(-99999985, Integer.TYPE);
        return ((Integer) this.f12416c.apply(sparseArray)).intValue();
    }

    public List<String> tt() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 271046);
        sparseArray.put(-99999985, List.class);
        return (List) this.f12416c.apply(sparseArray);
    }

    public c c(String str) {
        Object objApply = this.f12416c.apply(com.byazt.yxi.uj.c().c(271045).c(SparseArray.class).tt());
        if (objApply instanceof SparseArray) {
            return new c((SparseArray) objApply, str);
        }
        return null;
    }
}
