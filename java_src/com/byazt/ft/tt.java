package com.byazt.ft;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2175, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f14281c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f14281c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(View view, int i10) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, view);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(-99999987, 151101);
        sparseArray.put(-99999985, Void.class);
        this.f14281c.apply(sparseArray);
    }

    public void tt(View view, int i10) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, view);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(-99999987, 151102);
        sparseArray.put(-99999985, Void.class);
        this.f14281c.apply(sparseArray);
    }

    public void c(View view, String str, int i10) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, view);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        sparseArray.put(-99999987, 151103);
        sparseArray.put(-99999985, Void.class);
        this.f14281c.apply(sparseArray);
    }

    public void c(View view, float f10, float f11) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, view);
        sparseArray.put(1, Float.valueOf(f10));
        sparseArray.put(2, Float.valueOf(f11));
        sparseArray.put(-99999987, 151104);
        sparseArray.put(-99999985, Void.class);
        this.f14281c.apply(sparseArray);
    }
}
