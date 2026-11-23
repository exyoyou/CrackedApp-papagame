package com.byazt.vw;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 682, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f21396c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f21396c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(com.byazt.nc.tt ttVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, ttVar);
        sparseArray.put(-99999987, 111101);
        sparseArray.put(-99999985, Void.class);
        this.f21396c.apply(sparseArray);
    }

    public void tt(com.byazt.nc.tt ttVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, ttVar);
        sparseArray.put(-99999987, 111102);
        sparseArray.put(-99999985, Void.class);
        this.f21396c.apply(sparseArray);
    }

    public void c(com.byazt.nc.tt ttVar, int i10) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, ttVar);
        sparseArray.put(1, Integer.valueOf(i10));
        sparseArray.put(-99999987, 111103);
        sparseArray.put(-99999985, Void.class);
        this.f21396c.apply(sparseArray);
    }
}
