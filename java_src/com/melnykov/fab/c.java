package com.melnykov.fab;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
abstract class c extends RecyclerView.OnScrollListener {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f75400t;

    c() {
    }

    abstract void m();

    abstract void n();

    public void o(int i10) {
        this.f75400t = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        if (Math.abs(i11) > this.f75400t) {
            if (i11 > 0) {
                n();
            } else {
                m();
            }
        }
    }
}
