package com.byazt.whk;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 908, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21565c;
    public com.byazt.yxi.tt tt;
    public SparseArray<Object> ve;

    public i(SparseArray<Object> sparseArray, int i10) {
        this.f21565c = i10;
        this.ve = sparseArray != null ? sparseArray : new SparseArray<>();
        this.tt = new com.byazt.yxi.tt(sparseArray);
    }

    public int getType() {
        return this.f21565c;
    }

    public void setResult(SparseArray<Object> sparseArray) {
        this.tt = new com.byazt.yxi.tt(sparseArray);
    }

    public SparseArray<Object> uj() {
        return this.ve;
    }

    public com.byazt.yxi.tt ve() {
        return this.tt;
    }
}
