package com.byazt.kt;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 42})
public class i extends t {
    public x tt;
    public x ve;

    private x n(RecyclerView.i iVar) {
        x xVar = this.ve;
        if (xVar == null || xVar.f16473c != iVar) {
            this.ve = x.c(iVar);
        }
        return this.ve;
    }

    private x uj(RecyclerView.i iVar) {
        x xVar = this.tt;
        if (xVar == null || xVar.f16473c != iVar) {
            this.tt = x.tt(iVar);
        }
        return this.tt;
    }

    @Override // com.byazt.kt.t
    public int[] c(RecyclerView.i iVar, View view) {
        int[] iArr = new int[2];
        if (iVar.ve()) {
            iArr[0] = c(iVar, view, n(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.uj()) {
            iArr[1] = c(iVar, view, uj(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // com.byazt.kt.t
    public a tt(RecyclerView.i iVar) {
        if (iVar instanceof RecyclerView.my.tt) {
            return new a(this.f16437c.getContext()) { // from class: com.byazt.kt.i.1
                @Override // com.byazt.kt.a, com.byazt.kt.RecyclerView.my
                public void c(View view, RecyclerView.gt gtVar, RecyclerView.my.c cVar) {
                    i iVar2 = i.this;
                    int[] iArrC = iVar2.c(iVar2.f16437c.getLayoutManager(), view);
                    int i10 = iArrC[0];
                    int i11 = iArrC[1];
                    int iC = c(Math.max(Math.abs(i10), Math.abs(i11)));
                    if (iC > 0) {
                        cVar.update(i10, i11, iC, ((a) this).tt);
                    }
                }

                @Override // com.byazt.kt.a
                public int tt(int i10) {
                    return Math.min(100, super.tt(i10));
                }

                @Override // com.byazt.kt.a
                public float c(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }

    private View tt(RecyclerView.i iVar, x xVar) {
        int iMy = iVar.my();
        View view = null;
        if (iMy == 0) {
            return null;
        }
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < iMy; i11++) {
            View viewX = iVar.x(i11);
            int iC = xVar.c(viewX);
            if (iC < i10) {
                view = viewX;
                i10 = iC;
            }
        }
        return view;
    }

    @Override // com.byazt.kt.t
    public View c(RecyclerView.i iVar) {
        if (iVar.uj()) {
            return c(iVar, uj(iVar));
        }
        if (iVar.ve()) {
            return c(iVar, n(iVar));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.kt.t
    public int c(RecyclerView.i iVar, int i10, int i11) {
        View viewTt;
        int iUj;
        PointF pointFVe;
        int iH = iVar.h();
        if (iH == 0) {
            return -1;
        }
        if (iVar.uj()) {
            viewTt = tt(iVar, uj(iVar));
        } else {
            viewTt = iVar.ve() ? tt(iVar, n(iVar)) : null;
        }
        if (viewTt == null || (iUj = iVar.uj(viewTt)) == -1) {
            return -1;
        }
        boolean z10 = false;
        boolean z11 = !iVar.ve() ? i11 <= 0 : i10 <= 0;
        if ((iVar instanceof RecyclerView.my.tt) && (pointFVe = ((RecyclerView.my.tt) iVar).ve(iH - 1)) != null && (pointFVe.x < 0.0f || pointFVe.y < 0.0f)) {
            z10 = true;
        }
        if (z10) {
            return z11 ? iUj - 1 : iUj;
        }
        return z11 ? iUj + 1 : iUj;
    }

    private int c(RecyclerView.i iVar, View view, x xVar) {
        int iN;
        int iC = xVar.c(view) + (xVar.n(view) / 2);
        if (iVar.z()) {
            iN = xVar.ve() + (xVar.a() / 2);
        } else {
            iN = xVar.n() / 2;
        }
        return iC - iN;
    }

    private View c(RecyclerView.i iVar, x xVar) {
        int iN;
        int iMy = iVar.my();
        View view = null;
        if (iMy == 0) {
            return null;
        }
        if (iVar.z()) {
            iN = xVar.ve() + (xVar.a() / 2);
        } else {
            iN = xVar.n() / 2;
        }
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < iMy; i11++) {
            View viewX = iVar.x(i11);
            int iAbs = Math.abs((xVar.c(viewX) + (xVar.n(viewX) / 2)) - iN);
            if (iAbs < i10) {
                view = viewX;
                i10 = iAbs;
            }
        }
        return view;
    }
}
