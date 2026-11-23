package com.byazt.kt;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 34})
public class a extends RecyclerView.my {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f16412a;
    public PointF ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearInterpolator f16413c = new LinearInterpolator();
    public final DecelerateInterpolator tt = new DecelerateInterpolator();
    public int uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16414n = 0;

    public a(Context context) {
        this.f16412a = c(context.getResources().getDisplayMetrics());
    }

    private int tt(int i10, int i11) {
        int i12 = i10 - i11;
        if (i10 * i12 <= 0) {
            return 0;
        }
        return i12;
    }

    @Override // com.byazt.kt.RecyclerView.my
    public void c(View view, RecyclerView.gt gtVar, RecyclerView.my.c cVar) {
        int iTt = tt(view, tt());
        int iC = c(view, ve());
        int iC2 = c((int) Math.sqrt((iTt * iTt) + (iC * iC)));
        if (iC2 > 0) {
            cVar.update(-iTt, -iC, iC2, this.tt);
        }
    }

    public int ve() {
        PointF pointF = this.ve;
        if (pointF == null) {
            return 0;
        }
        float f10 = pointF.y;
        if (f10 != 0.0f) {
            return f10 > 0.0f ? 1 : -1;
        }
        return 0;
    }

    public int tt(int i10) {
        return (int) Math.ceil(Math.abs(i10) * this.f16412a);
    }

    public int tt() {
        PointF pointF = this.ve;
        if (pointF == null) {
            return 0;
        }
        float f10 = pointF.x;
        if (f10 != 0.0f) {
            return f10 > 0.0f ? 1 : -1;
        }
        return 0;
    }

    public int tt(View view, int i10) {
        RecyclerView.i iVarUj = uj();
        if (iVarUj == null || !iVarUj.ve()) {
            return 0;
        }
        RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
        return c(iVarUj.sp(view) - ((ViewGroup.MarginLayoutParams) daVar).leftMargin, iVarUj.i(view) + ((ViewGroup.MarginLayoutParams) daVar).rightMargin, iVarUj.gr(), iVarUj.qy() - iVarUj.yv(), i10);
    }

    @Override // com.byazt.kt.RecyclerView.my
    public void c(int i10, int i11, RecyclerView.gt gtVar, RecyclerView.my.c cVar) {
        if (i() == 0) {
            n();
            return;
        }
        this.uj = tt(this.uj, i10);
        int iTt = tt(this.f16414n, i11);
        this.f16414n = iTt;
        if (this.uj == 0 && iTt == 0) {
            c(cVar);
        }
    }

    @Override // com.byazt.kt.RecyclerView.my
    public void c() {
        this.f16414n = 0;
        this.uj = 0;
        this.ve = null;
    }

    public float c(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int c(int i10) {
        return (int) Math.ceil(((double) tt(i10)) / 0.3356d);
    }

    public void c(RecyclerView.my.c cVar) {
        PointF pointFUj = uj(x());
        if (pointFUj != null && (pointFUj.x != 0.0f || pointFUj.y != 0.0f)) {
            c(pointFUj);
            this.ve = pointFUj;
            this.uj = (int) (pointFUj.x * 10000.0f);
            this.f16414n = (int) (pointFUj.y * 10000.0f);
            cVar.update((int) (this.uj * 1.2f), (int) (this.f16414n * 1.2f), (int) (tt(10000) * 1.2f), this.f16413c);
            return;
        }
        cVar.c(x());
        n();
    }

    public int c(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == -1) {
            return i12 - i10;
        }
        if (i14 != 0) {
            if (i14 == 1) {
                return i13 - i11;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i15 = i12 - i10;
        if (i15 > 0) {
            return i15;
        }
        int i16 = i13 - i11;
        if (i16 < 0) {
            return i16;
        }
        return 0;
    }

    public int c(View view, int i10) {
        RecyclerView.i iVarUj = uj();
        if (iVarUj == null || !iVarUj.uj()) {
            return 0;
        }
        RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
        return c(iVarUj.x(view) - ((ViewGroup.MarginLayoutParams) daVar).topMargin, iVarUj.da(view) + ((ViewGroup.MarginLayoutParams) daVar).bottomMargin, iVarUj.zm(), iVarUj.gu() - iVarUj.p(), i10);
    }
}
