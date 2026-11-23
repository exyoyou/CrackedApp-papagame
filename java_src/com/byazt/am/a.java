package com.byazt.am;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1210, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11611c;

    public a(Function<SparseArray<Object>, Object> function) {
        this.f11611c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 270012);
        sparseArray.put(-99999985, Void.class);
        this.f11611c.apply(sparseArray);
    }
}
