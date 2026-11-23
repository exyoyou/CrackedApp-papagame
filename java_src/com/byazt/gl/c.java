package com.byazt.gl;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1766, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f14593c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f14593c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(Bundle bundle) {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131101);
        sparseArray.put(-99999985, Void.class);
        this.f14593c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131103);
        sparseArray.put(-99999985, Void.class);
        this.f14593c.apply(sparseArray);
    }

    public void uj() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131105);
        sparseArray.put(-99999985, Void.class);
        this.f14593c.apply(sparseArray);
    }

    public void ve() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131104);
        sparseArray.put(-99999985, Void.class);
        this.f14593c.apply(sparseArray);
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 131102);
        sparseArray.put(-99999985, Void.class);
        this.f14593c.apply(sparseArray);
    }
}
