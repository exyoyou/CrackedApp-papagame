package com.byazt.cw;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 209, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12634c;

    public uj(Function<SparseArray<Object>, Object> function) {
        this.f12634c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(-99999987, 270025);
        sparseArray.put(-99999985, Void.class);
        this.f12634c.apply(sparseArray);
    }
}
