package com.join.mgps.recycler;

import androidx.recyclerview.widget.GridLayoutManager;

/* JADX INFO: loaded from: classes3.dex */
public class b extends GridLayoutManager.SpanSizeLookup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f72305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72306b;

    public b(a adapter, int spanSize) {
        this.f72305a = adapter;
        this.f72306b = spanSize;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public int getSpanSize(int position) {
        if (this.f72305a.isHeader(position) || this.f72305a.isFooter(position)) {
            return this.f72306b;
        }
        return 1;
    }
}
