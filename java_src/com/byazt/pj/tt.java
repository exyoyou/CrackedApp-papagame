package com.byazt.pj;

import android.graphics.Rect;
import android.view.View;
import com.byazt.kt.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1693, 13})
public abstract class tt extends RecyclerView.yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18726c = false;
    public c tt;
    public int ve;

    public tt(c cVar) {
        this.tt = cVar;
    }

    public abstract void c();

    public abstract void c(int i10, int i11);

    public abstract void c(int i10, View view);

    @Override // com.byazt.kt.RecyclerView.yp
    public void c(RecyclerView recyclerView, int i10) {
        super.c(recyclerView, i10);
        com.byazt.kt.n nVar = (com.byazt.kt.n) recyclerView.getLayoutManager();
        if (i10 == 0) {
            int iSl = nVar.sl();
            if (!c(nVar.tt(iSl), 50)) {
                iSl--;
            }
            int iMax = Math.max(0, Math.max(iSl, this.ve));
            for (int iMin = Math.min(this.ve, iSl); iMin <= iMax; iMin++) {
                c(iMin, nVar.tt(iMin));
            }
            this.ve = iSl;
            int iH = nVar.h();
            this.tt.c(recyclerView);
            if ((iSl == iH - 1 && this.f18726c) || iH == 1) {
                c();
            }
        }
        tt(recyclerView, i10);
    }

    public abstract void tt(RecyclerView recyclerView, int i10);

    private int c(View view) {
        Rect rect = new Rect();
        if (!view.getLocalVisibleRect(rect) || view.getMeasuredHeight() <= 0) {
            return -1;
        }
        return (rect.height() * 100) / view.getMeasuredHeight();
    }

    private boolean c(View view, int i10) {
        return view != null && view.getLocalVisibleRect(new Rect()) && view.getVisibility() == 0 && c(view) >= i10;
    }

    @Override // com.byazt.kt.RecyclerView.yp
    public void c(RecyclerView recyclerView, int i10, int i11) {
        super.c(recyclerView, i10, i11);
        if (i11 == 0) {
            com.byazt.kt.n nVar = (com.byazt.kt.n) recyclerView.getLayoutManager();
            this.ve = nVar.da();
            int iSl = nVar.sl();
            if (!c(nVar.tt(iSl), 50)) {
                iSl--;
            }
            int iMax = Math.max(0, Math.max(iSl, this.ve));
            for (int i12 = this.ve; i12 <= iMax; i12++) {
                c(i12, nVar.tt(i12));
            }
        }
        this.f18726c = i11 > 0;
        this.tt.c();
        c(i10, i11);
    }
}
