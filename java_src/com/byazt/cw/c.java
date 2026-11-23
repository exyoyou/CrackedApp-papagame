package com.byazt.cw;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 209, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12632c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f12632c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(String str, com.byazt.pbu.c cVar) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, str);
        sparseArray.put(1, cVar);
        sparseArray.put(-99999987, 270029);
        sparseArray.put(-99999985, Void.class);
        this.f12632c.apply(sparseArray);
    }

    public void c(int i10, String str) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 270030);
        sparseArray.put(-99999985, Void.class);
        this.f12632c.apply(sparseArray);
    }
}
