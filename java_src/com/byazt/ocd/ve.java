package com.byazt.ocd;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1536, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17771c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f17771c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 221101);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }

    public void tt(long j10, long j11, String str, String str2) {
        SparseArray sparseArray = new SparseArray(6);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, Long.valueOf(j11));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221103);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }

    public void ve(long j10, long j11, String str, String str2) {
        SparseArray sparseArray = new SparseArray(6);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, Long.valueOf(j11));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221104);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }

    public void c(long j10, long j11, String str, String str2) {
        SparseArray sparseArray = new SparseArray(6);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, Long.valueOf(j11));
        sparseArray.put(2, str);
        sparseArray.put(3, str2);
        sparseArray.put(-99999987, 221102);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }

    public void c(long j10, String str, String str2) {
        SparseArray sparseArray = new SparseArray(5);
        sparseArray.put(0, Long.valueOf(j10));
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(-99999987, 221105);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }

    public void c(String str, String str2) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, str);
        sparseArray.put(1, str2);
        sparseArray.put(-99999987, 221106);
        sparseArray.put(-99999985, Void.class);
        this.f17771c.apply(sparseArray);
    }
}
