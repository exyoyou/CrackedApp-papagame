package com.byazt.ch;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1054, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12415c;

    public a(Function<SparseArray<Object>, Object> function) {
        this.f12415c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 270032);
        sparseArray.put(-99999985, Void.class);
        this.f12415c.apply(sparseArray);
    }

    public void c(ve veVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, veVar);
        sparseArray.put(-99999987, 270033);
        sparseArray.put(-99999985, Void.class);
        this.f12415c.apply(sparseArray);
    }
}
