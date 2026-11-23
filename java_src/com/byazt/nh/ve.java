package com.byazt.nh;

import android.util.SparseArray;
import com.byazt.nc.da;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2116, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17349c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f17349c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(int i10, String str) {
        SparseArray sparseArray = new SparseArray(4);
        sparseArray.put(0, Integer.valueOf(i10));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 164101);
        sparseArray.put(-99999985, Void.class);
        this.f17349c.apply(sparseArray);
    }

    public void c(List<da> list) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, list);
        sparseArray.put(-99999987, 164102);
        sparseArray.put(-99999985, Void.class);
        this.f17349c.apply(sparseArray);
    }
}
