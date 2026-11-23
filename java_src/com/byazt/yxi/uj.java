package com.byazt.yxi;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1133, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<Object> f22484c;

    private uj() {
        this.f22484c = new SparseArray<>();
    }

    public static uj c() {
        return new uj();
    }

    public SparseArray<Object> tt() {
        return this.f22484c;
    }

    public static uj c(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
        }
        return new uj(sparseArray);
    }

    public uj(SparseArray<Object> sparseArray) {
        this.f22484c = com.byazt.mta.c.c().tt() < 6803 ? new c(sparseArray) : sparseArray;
    }

    public uj c(int i10) {
        this.f22484c.put(-99999987, Integer.valueOf(i10));
        return this;
    }

    public uj c(Class<?> cls) {
        this.f22484c.put(-99999985, cls);
        return this;
    }

    public uj c(int i10, Object obj) {
        this.f22484c.put(i10, obj);
        return this;
    }
}
