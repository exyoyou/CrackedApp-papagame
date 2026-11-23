package com.byazt.ft;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2175, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f14282c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f14282c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 152101);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void n() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 152107);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 152103);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void uj() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 152105);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void ve() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 152104);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void c(int i10, int i11) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, Integer.valueOf(i11));
        sparseArray.put(-99999987, 152102);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }

    public void c(long j10, long j11) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, Long.valueOf(j11));
        sparseArray.put(-99999987, 152106);
        sparseArray.put(-99999985, Void.class);
        this.f14282c.apply(sparseArray);
    }
}
