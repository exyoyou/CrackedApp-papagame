package com.byazt.tn;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1385, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f20331c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f20331c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10, com.byazt.ed.c cVar) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, cVar);
        sparseArray.put(-99999987, 122101);
        sparseArray.put(-99999985, Void.class);
        this.f20331c.apply(sparseArray);
    }
}
