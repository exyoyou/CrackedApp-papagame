package com.byazt.nh;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2116, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17344c;

    public c(Function<SparseArray<Object>, Object> function) {
        this.f17344c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(com.byazt.nc.tt ttVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, ttVar);
        sparseArray.put(-99999987, 114102);
        sparseArray.put(-99999985, Void.class);
        this.f17344c.apply(sparseArray);
    }

    public void tt(com.byazt.nc.tt ttVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, ttVar);
        sparseArray.put(-99999987, 114104);
        sparseArray.put(-99999985, Void.class);
        this.f17344c.apply(sparseArray);
    }

    public void c(com.byazt.nc.c cVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, cVar);
        sparseArray.put(-99999987, 114103);
        sparseArray.put(-99999985, Void.class);
        this.f17344c.apply(sparseArray);
    }

    public void c(com.byazt.nc.tt ttVar, com.byazt.nc.c cVar) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, ttVar);
        sparseArray.put(1, cVar);
        sparseArray.put(-99999987, 114105);
        sparseArray.put(-99999985, Void.class);
        this.f17344c.apply(sparseArray);
    }
}
