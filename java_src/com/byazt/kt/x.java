package com.byazt.kt;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 71})
public abstract class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView.i f16473c;
    public final Rect tt;
    public int ve;

    public abstract int a();

    public abstract int a(View view);

    public abstract int c(View view);

    public void c() {
        this.ve = a();
    }

    public abstract void c(int i10);

    public abstract int n();

    public abstract int n(View view);

    public abstract int sp();

    public int tt() {
        if (Integer.MIN_VALUE == this.ve) {
            return 0;
        }
        return a() - this.ve;
    }

    public abstract int tt(View view);

    public abstract int uj();

    public abstract int uj(View view);

    public abstract int ve();

    public abstract int ve(View view);

    public abstract int x();

    private x(RecyclerView.i iVar) {
        this.ve = Integer.MIN_VALUE;
        this.tt = new Rect();
        this.f16473c = iVar;
    }

    public static x c(RecyclerView.i iVar, int i10) {
        if (i10 == 0) {
            return c(iVar);
        }
        if (i10 == 1) {
            return tt(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static x tt(RecyclerView.i iVar) {
        return new x(iVar) { // from class: com.byazt.kt.x.2
            @Override // com.byazt.kt.x
            public int a(View view) {
                RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
                return this.f16473c.n(view) + ((ViewGroup.MarginLayoutParams) daVar).leftMargin + ((ViewGroup.MarginLayoutParams) daVar).rightMargin;
            }

            @Override // com.byazt.kt.x
            public void c(int i10) {
                this.f16473c.da(i10);
            }

            @Override // com.byazt.kt.x
            public int n() {
                return this.f16473c.gu();
            }

            @Override // com.byazt.kt.x
            public int sp() {
                return this.f16473c.p();
            }

            @Override // com.byazt.kt.x
            public int tt(View view) {
                return this.f16473c.da(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.da) view.getLayoutParams())).bottomMargin;
            }

            @Override // com.byazt.kt.x
            public int uj() {
                return this.f16473c.gu() - this.f16473c.p();
            }

            @Override // com.byazt.kt.x
            public int ve() {
                return this.f16473c.zm();
            }

            @Override // com.byazt.kt.x
            public int x() {
                return this.f16473c.rl();
            }

            @Override // com.byazt.kt.x
            public int c(View view) {
                return this.f16473c.x(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.da) view.getLayoutParams())).topMargin;
            }

            @Override // com.byazt.kt.x
            public int n(View view) {
                RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
                return this.f16473c.a(view) + ((ViewGroup.MarginLayoutParams) daVar).topMargin + ((ViewGroup.MarginLayoutParams) daVar).bottomMargin;
            }

            @Override // com.byazt.kt.x
            public int uj(View view) {
                this.f16473c.c(view, true, this.tt);
                return this.tt.top;
            }

            @Override // com.byazt.kt.x
            public int ve(View view) {
                this.f16473c.c(view, true, this.tt);
                return this.tt.bottom;
            }

            @Override // com.byazt.kt.x
            public int a() {
                return (this.f16473c.gu() - this.f16473c.zm()) - this.f16473c.p();
            }
        };
    }

    public static x c(RecyclerView.i iVar) {
        return new x(iVar) { // from class: com.byazt.kt.x.1
            @Override // com.byazt.kt.x
            public int a(View view) {
                RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
                return this.f16473c.a(view) + ((ViewGroup.MarginLayoutParams) daVar).topMargin + ((ViewGroup.MarginLayoutParams) daVar).bottomMargin;
            }

            @Override // com.byazt.kt.x
            public void c(int i10) {
                this.f16473c.i(i10);
            }

            @Override // com.byazt.kt.x
            public int n() {
                return this.f16473c.qy();
            }

            @Override // com.byazt.kt.x
            public int sp() {
                return this.f16473c.yv();
            }

            @Override // com.byazt.kt.x
            public int tt(View view) {
                return this.f16473c.i(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.da) view.getLayoutParams())).rightMargin;
            }

            @Override // com.byazt.kt.x
            public int uj() {
                return this.f16473c.qy() - this.f16473c.yv();
            }

            @Override // com.byazt.kt.x
            public int ve() {
                return this.f16473c.gr();
            }

            @Override // com.byazt.kt.x
            public int x() {
                return this.f16473c.gt();
            }

            @Override // com.byazt.kt.x
            public int c(View view) {
                return this.f16473c.sp(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.da) view.getLayoutParams())).leftMargin;
            }

            @Override // com.byazt.kt.x
            public int n(View view) {
                RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
                return this.f16473c.n(view) + ((ViewGroup.MarginLayoutParams) daVar).leftMargin + ((ViewGroup.MarginLayoutParams) daVar).rightMargin;
            }

            @Override // com.byazt.kt.x
            public int uj(View view) {
                this.f16473c.c(view, true, this.tt);
                return this.tt.left;
            }

            @Override // com.byazt.kt.x
            public int ve(View view) {
                this.f16473c.c(view, true, this.tt);
                return this.tt.right;
            }

            @Override // com.byazt.kt.x
            public int a() {
                return (this.f16473c.qy() - this.f16473c.gr()) - this.f16473c.yv();
            }
        };
    }
}
