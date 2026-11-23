package com.byazt.kt;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 66})
public abstract class t extends RecyclerView.t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RecyclerView f16437c;
    public Scroller tt;
    public final RecyclerView.yp ve = new RecyclerView.yp() { // from class: com.byazt.kt.t.1

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f16438c = false;

        @Override // com.byazt.kt.RecyclerView.yp
        public void c(RecyclerView recyclerView, int i10) {
            super.c(recyclerView, i10);
            if (i10 == 0 && this.f16438c) {
                this.f16438c = false;
                t.this.c();
            }
        }

        @Override // com.byazt.kt.RecyclerView.yp
        public void c(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f16438c = true;
        }
    };

    private void tt() throws IllegalStateException {
        if (this.f16437c.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f16437c.c(this.ve);
        this.f16437c.setOnFlingListener(this);
    }

    private void ve() {
        this.f16437c.tt(this.ve);
        this.f16437c.setOnFlingListener(null);
    }

    public abstract int c(RecyclerView.i iVar, int i10, int i11);

    public abstract View c(RecyclerView.i iVar);

    @Override // com.byazt.kt.RecyclerView.t
    public boolean c(int i10, int i11) {
        RecyclerView.i layoutManager = this.f16437c.getLayoutManager();
        if (layoutManager == null || this.f16437c.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f16437c.getMinFlingVelocity();
        return (Math.abs(i11) > minFlingVelocity || Math.abs(i10) > minFlingVelocity) && tt(layoutManager, i10, i11);
    }

    public abstract int[] c(RecyclerView.i iVar, View view);

    public RecyclerView.my ve(RecyclerView.i iVar) {
        return tt(iVar);
    }

    private boolean tt(RecyclerView.i iVar, int i10, int i11) {
        RecyclerView.my myVarVe;
        int iC;
        if (!(iVar instanceof RecyclerView.my.tt) || (myVarVe = ve(iVar)) == null || (iC = c(iVar, i10, i11)) == -1) {
            return false;
        }
        myVarVe.ve(iC);
        iVar.c(myVarVe);
        return true;
    }

    public void c(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f16437c;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                ve();
            }
            this.f16437c = recyclerView;
            if (recyclerView != null) {
                tt();
                this.tt = new Scroller(this.f16437c.getContext(), new DecelerateInterpolator());
                c();
            }
        }
    }

    @Deprecated
    public a tt(RecyclerView.i iVar) {
        if (iVar instanceof RecyclerView.my.tt) {
            return new a(this.f16437c.getContext()) { // from class: com.byazt.kt.t.2
                @Override // com.byazt.kt.a, com.byazt.kt.RecyclerView.my
                public void c(View view, RecyclerView.gt gtVar, RecyclerView.my.c cVar) {
                    t tVar = t.this;
                    RecyclerView recyclerView = tVar.f16437c;
                    if (recyclerView != null) {
                        int[] iArrC = tVar.c(recyclerView.getLayoutManager(), view);
                        int i10 = iArrC[0];
                        int i11 = iArrC[1];
                        int iC = c(Math.max(Math.abs(i10), Math.abs(i11)));
                        if (iC > 0) {
                            cVar.update(i10, i11, iC, ((a) this).tt);
                        }
                    }
                }

                @Override // com.byazt.kt.a
                public float c(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }
            };
        }
        return null;
    }

    public void c() {
        RecyclerView.i layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f16437c;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewC = c(layoutManager)) == null) {
            return;
        }
        int[] iArrC = c(layoutManager, viewC);
        int i10 = iArrC[0];
        if (i10 == 0 && iArrC[1] == 0) {
            return;
        }
        this.f16437c.c(i10, iArrC[1]);
    }
}
