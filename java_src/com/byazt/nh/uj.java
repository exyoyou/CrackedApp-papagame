package com.byazt.nh;

import android.util.SparseArray;
import com.byazt.nc.sl;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2116, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17348c;

    public uj(Function<SparseArray<Object>, Object> function) {
        this.f17348c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10, String str) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 132101);
        sparseArray.put(-99999985, Void.class);
        this.f17348c.apply(sparseArray);
    }

    public void tt(sl slVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, slVar);
        sparseArray.put(-99999987, 132103);
        sparseArray.put(-99999985, Void.class);
        this.f17348c.apply(sparseArray);
    }

    public void c(sl slVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, slVar);
        sparseArray.put(-99999987, 132102);
        sparseArray.put(-99999985, Void.class);
        this.f17348c.apply(sparseArray);
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 132104);
        sparseArray.put(-99999985, Void.class);
        this.f17348c.apply(sparseArray);
    }
}
