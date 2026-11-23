package com.byazt.tn;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1385, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f20330c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f20330c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(Bundle bundle) {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121101);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void n() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121108);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121103);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void uj() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121105);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void ve() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121104);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 121102);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void c(boolean z10, int i10, String str, int i11, String str2) {
        SparseArray sparseArray = new SparseArray(7);
        sparseArray.put(0, Boolean.valueOf(z10));
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, str);
        sparseArray.put(3, Integer.valueOf(i11));
        sparseArray.put(4, str2);
        sparseArray.put(-99999987, 121106);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }

    public void c(boolean z10, int i10, Bundle bundle) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, Boolean.valueOf(z10));
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(2, bundle);
        sparseArray.put(-99999987, 121107);
        sparseArray.put(-99999985, Void.class);
        this.f20330c.apply(sparseArray);
    }
}
