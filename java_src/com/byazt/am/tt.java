package com.byazt.am;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1210, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11614c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f11614c = function == null ? com.byazt.rl.c.tt : function;
    }

    public View c(com.byazt.dw.c cVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, cVar);
        sparseArray.put(-99999987, 266013);
        sparseArray.put(-99999985, View.class);
        return (View) this.f11614c.apply(sparseArray);
    }
}
