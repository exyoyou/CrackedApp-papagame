package com.byazt.ocd;

import android.util.SparseArray;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1536, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17770c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f17770c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10, Map map) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, map);
        sparseArray.put(-99999987, 100101);
        sparseArray.put(-99999985, Void.class);
        this.f17770c.apply(sparseArray);
    }
}
