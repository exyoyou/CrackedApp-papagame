package com.melnykov.fab;

import android.widget.AbsListView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
abstract class a implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f75390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f75391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AbsListView f75392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75393e;

    a() {
    }

    private int b() {
        AbsListView absListView = this.f75392d;
        if (absListView == null || absListView.getChildAt(0) == null) {
            return 0;
        }
        return this.f75392d.getChildAt(0).getTop();
    }

    private boolean c(int i10) {
        return i10 == this.f75391c;
    }

    abstract void d();

    abstract void e();

    public void f(@NonNull AbsListView absListView) {
        this.f75392d = absListView;
    }

    public void g(int i10) {
        this.f75393e = i10;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        if (i12 == 0) {
            return;
        }
        if (!c(i10)) {
            if (i10 > this.f75391c) {
                e();
            } else {
                d();
            }
            this.f75390b = b();
            this.f75391c = i10;
            return;
        }
        int iB = b();
        if (Math.abs(this.f75390b - iB) > this.f75393e) {
            if (this.f75390b > iB) {
                e();
            } else {
                d();
            }
        }
        this.f75390b = iB;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i10) {
    }
}
