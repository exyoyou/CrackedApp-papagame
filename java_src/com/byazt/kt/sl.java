package com.byazt.kt;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 158})
public abstract class sl extends RecyclerView.a {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f16435x = true;

    public abstract boolean c(RecyclerView.gu guVar);

    public abstract boolean c(RecyclerView.gu guVar, int i10, int i11, int i12, int i13);

    @Override // com.byazt.kt.RecyclerView.a
    public boolean c(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2) {
        int i10 = ttVar.f16358c;
        int i11 = ttVar.tt;
        View view = guVar.f16372c;
        int left = ttVar2 == null ? view.getLeft() : ttVar2.f16358c;
        int top = ttVar2 == null ? view.getTop() : ttVar2.tt;
        if (guVar.nu() || (i10 == left && i11 == top)) {
            return c(guVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return c(guVar, i10, i11, left, top);
    }

    public abstract boolean c(RecyclerView.gu guVar, RecyclerView.gu guVar2, int i10, int i11, int i12, int i13);

    public final void da(RecyclerView.gu guVar) {
        a(guVar);
    }

    public final void i(RecyclerView.gu guVar) {
        a(guVar);
    }

    @Override // com.byazt.kt.RecyclerView.a
    public boolean sp(RecyclerView.gu guVar) {
        return !this.f16435x || guVar.yp();
    }

    public abstract boolean tt(RecyclerView.gu guVar);

    @Override // com.byazt.kt.RecyclerView.a
    public boolean tt(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2) {
        int i10;
        int i11;
        return (ttVar == null || ((i10 = ttVar.f16358c) == (i11 = ttVar2.f16358c) && ttVar.tt == ttVar2.tt)) ? tt(guVar) : c(guVar, i10, ttVar.tt, i11, ttVar2.tt);
    }

    @Override // com.byazt.kt.RecyclerView.a
    public boolean ve(RecyclerView.gu guVar, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2) {
        int i10 = ttVar.f16358c;
        int i11 = ttVar2.f16358c;
        if (i10 != i11 || ttVar.tt != ttVar2.tt) {
            return c(guVar, i10, ttVar.tt, i11, ttVar2.tt);
        }
        i(guVar);
        return false;
    }

    public final void x(RecyclerView.gu guVar) {
        a(guVar);
    }

    @Override // com.byazt.kt.RecyclerView.a
    public boolean c(RecyclerView.gu guVar, RecyclerView.gu guVar2, RecyclerView.a.tt ttVar, RecyclerView.a.tt ttVar2) {
        int i10;
        int i11;
        int i12 = ttVar.f16358c;
        int i13 = ttVar.tt;
        if (guVar2.R_()) {
            int i14 = ttVar.f16358c;
            i11 = ttVar.tt;
            i10 = i14;
        } else {
            i10 = ttVar2.f16358c;
            i11 = ttVar2.tt;
        }
        return c(guVar, guVar2, i12, i13, i10, i11);
    }

    public final void c(RecyclerView.gu guVar, boolean z10) {
        a(guVar);
    }
}
