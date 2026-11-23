package com.byazt.lm;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1949, 13})
public class tt implements c.InterfaceC0369c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f16684c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f16684c = function;
    }

    @Override // com.byazt.lm.c.InterfaceC0369c
    public void c() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 0);
        Function<SparseArray<Object>, Object> function = this.f16684c;
        if (function != null) {
            function.apply(sparseArray);
        }
    }

    @Override // com.byazt.lm.c.InterfaceC0369c
    public void tt() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 1);
        Function<SparseArray<Object>, Object> function = this.f16684c;
        if (function != null) {
            function.apply(sparseArray);
        }
    }
}
