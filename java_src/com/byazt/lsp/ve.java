package com.byazt.lsp;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1405, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f16772c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f16772c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(View view, float f10, float f11, boolean z10) {
        SparseArray sparseArray = new SparseArray(6);
        sparseArray.put(0, view);
        sparseArray.put(1, Float.valueOf(f10));
        sparseArray.put(2, Float.valueOf(f11));
        sparseArray.put(3, Boolean.valueOf(z10));
        sparseArray.put(-99999987, 142101);
        sparseArray.put(-99999985, Void.class);
        this.f16772c.apply(sparseArray);
    }
}
