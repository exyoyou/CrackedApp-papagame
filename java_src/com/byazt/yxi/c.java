package com.byazt.yxi;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1133, 20})
public class c<E> extends SparseArray<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<Object> f22481c;

    public c(SparseArray<Object> sparseArray) {
        this.f22481c = sparseArray;
    }

    public SparseArray<Object> c() {
        return this.f22481c;
    }

    @Override // android.util.SparseArray
    public boolean contains(int i10) {
        if (super.contains(i10)) {
            return true;
        }
        SparseArray<Object> sparseArray = this.f22481c;
        return sparseArray != null && sparseArray.indexOfKey(i10) >= 0;
    }

    @Override // android.util.SparseArray
    public E get(int i10, E e10) {
        Object obj;
        E e11 = (E) super.get(i10, null);
        if (e11 != null) {
            return e11;
        }
        SparseArray<Object> sparseArray = this.f22481c;
        if (sparseArray != null && (obj = sparseArray.get(i10, null)) != null) {
            e11 = (E) obj;
        }
        return e11 != null ? e11 : e10;
    }
}
