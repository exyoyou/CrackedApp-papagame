package com.byazt.cw;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 209, 13})
public class tt extends com.byazt.gl.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12633c;

    public tt(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.f12633c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void a() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131108);
        sparseArray.put(-99999985, Void.class);
        this.f12633c.apply(sparseArray);
    }

    public void c(int i10, String str) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 131106);
        sparseArray.put(-99999985, Void.class);
        this.f12633c.apply(sparseArray);
    }

    public void n() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131107);
        sparseArray.put(-99999985, Void.class);
        this.f12633c.apply(sparseArray);
    }

    public void sp() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131109);
        sparseArray.put(-99999985, Void.class);
        this.f12633c.apply(sparseArray);
    }

    public void tt(Bundle bundle) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, bundle);
        sparseArray.put(-99999987, 131110);
        sparseArray.put(-99999985, Void.class);
        this.f12633c.apply(sparseArray);
    }
}
