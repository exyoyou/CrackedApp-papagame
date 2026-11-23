package com.byazt.uz;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1091, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f21127c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f21127c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 171102);
        sparseArray.put(-99999985, Void.class);
        this.f21127c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 171101);
        sparseArray.put(-99999985, Void.class);
        this.f21127c.apply(sparseArray);
    }
}
