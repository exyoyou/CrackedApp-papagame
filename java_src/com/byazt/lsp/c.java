package com.byazt.lsp;

import android.util.SparseArray;
import android.view.View;
import com.byazt.nc.u;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1405, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f16770c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f16770c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(View view, u uVar) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, view);
        sparseArray.put(1, uVar);
        sparseArray.put(-99999987, 141101);
        sparseArray.put(-99999985, Void.class);
        this.f16770c.apply(sparseArray);
    }

    public void tt(View view, u uVar) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, view);
        sparseArray.put(1, uVar);
        sparseArray.put(-99999987, 141102);
        sparseArray.put(-99999985, Void.class);
        this.f16770c.apply(sparseArray);
    }

    public void c(u uVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, uVar);
        sparseArray.put(-99999987, 141103);
        sparseArray.put(-99999985, Void.class);
        this.f16770c.apply(sparseArray);
    }
}
