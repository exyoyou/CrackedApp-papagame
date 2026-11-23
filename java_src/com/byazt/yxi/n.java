package com.byazt.yxi;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1133, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<Object> f22482c = new SparseArray<>();

    private n() {
    }

    public static n c() {
        return new n();
    }

    public SparseArray<Object> tt() {
        return this.f22482c;
    }

    public n c(int i10) {
        this.f22482c.put(-999900, Integer.valueOf(i10));
        return this;
    }

    public n c(String str) {
        this.f22482c.put(-999901, str);
        return this;
    }

    public n c(boolean z10) {
        this.f22482c.put(-999903, Boolean.valueOf(z10));
        return this;
    }

    public n c(SparseArray<Object> sparseArray) {
        this.f22482c.put(-999902, sparseArray);
        return this;
    }
}
