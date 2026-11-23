package com.byazt.nh;

import android.util.SparseArray;
import com.byazt.nc.z;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2116, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17346c;

    public sp(Function<SparseArray<Object>, Object> function) {
        this.f17346c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10, String str) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 124101);
        sparseArray.put(-99999985, Void.class);
        this.f17346c.apply(sparseArray);
    }

    public void tt(z zVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, zVar);
        sparseArray.put(-99999987, 124103);
        sparseArray.put(-99999985, Void.class);
        this.f17346c.apply(sparseArray);
    }

    public void c(z zVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, zVar);
        sparseArray.put(-99999987, 124102);
        sparseArray.put(-99999985, Void.class);
        this.f17346c.apply(sparseArray);
    }

    public void c() {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 124104);
        sparseArray.put(-99999985, Void.class);
        this.f17346c.apply(sparseArray);
    }
}
