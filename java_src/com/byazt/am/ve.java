package com.byazt.am;

import android.util.SparseArray;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1210, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f11616c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f11616c = function == null ? com.byazt.rl.c.tt : function;
    }

    public String c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 267001);
        sparseArray.put(-99999985, String.class);
        return (String) this.f11616c.apply(sparseArray);
    }

    public String tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 267002);
        sparseArray.put(-99999985, String.class);
        return (String) this.f11616c.apply(sparseArray);
    }

    public String uj() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 267004);
        sparseArray.put(-99999985, String.class);
        return (String) this.f11616c.apply(sparseArray);
    }

    public String ve() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 267003);
        sparseArray.put(-99999985, String.class);
        return (String) this.f11616c.apply(sparseArray);
    }
}
