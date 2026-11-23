package com.byazt.bf;

import android.util.SparseArray;
import com.byazt.nc.da;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2354, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11916c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f11916c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(da daVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, daVar);
        sparseArray.put(-99999987, 161101);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void n(da daVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, daVar);
        sparseArray.put(-99999987, 161107);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void tt(da daVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, daVar);
        sparseArray.put(-99999987, 161104);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void uj(da daVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, daVar);
        sparseArray.put(-99999987, 161105);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void ve(da daVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, daVar);
        sparseArray.put(-99999987, 161103);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void c(int i10, int i11) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, Integer.valueOf(i11));
        sparseArray.put(-99999987, 161102);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }

    public void c(long j10, long j11) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, Long.valueOf(j11));
        sparseArray.put(-99999987, 161106);
        sparseArray.put(-99999985, Void.class);
        this.f11916c.apply(sparseArray);
    }
}
