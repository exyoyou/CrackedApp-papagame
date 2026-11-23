package com.byazt.am;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1210, 46})
public class n extends com.byazt.lsp.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11613c;

    public n(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.f11613c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(View view, String str, int i10) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, view);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        sparseArray.put(-99999987, 142102);
        sparseArray.put(-99999985, Void.class);
        this.f11613c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 142104);
        sparseArray.put(-99999985, Void.class);
        this.f11613c.apply(sparseArray);
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 142103);
        sparseArray.put(-99999985, Void.class);
        this.f11613c.apply(sparseArray);
    }
}
