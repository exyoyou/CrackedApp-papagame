package com.dingmouren.layoutmanagergroup.skidright;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import b3.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class SkidRightLayoutManager extends RecyclerView.LayoutManager {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f26142o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f26143p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float f26145r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final float f26146s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f26147t;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f26141n = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f26144q = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f26149v = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final a f26148u = new a();

    public SkidRightLayoutManager(float f10, float f11) {
        this.f26145r = f10;
        this.f26146s = f11;
    }

    private void g(View view, a3.a aVar) {
        addView(view);
        l(view);
        int iC = (int) ((this.f26142o * (1.0f - aVar.c())) / 2.0f);
        int iD = aVar.d() - iC;
        int paddingTop = getPaddingTop();
        layoutDecoratedWithMargins(view, iD, paddingTop, (aVar.d() + this.f26142o) - iC, paddingTop + this.f26143p);
        ViewCompat.setScaleX(view, aVar.c());
        ViewCompat.setScaleY(view, aVar.c());
    }

    private int k(int i10) {
        return this.f26149v ? Math.max(Math.min(0, i10), (-(this.f26147t - 1)) * this.f26142o) : Math.min(Math.max(this.f26142o, i10), this.f26147t * this.f26142o);
    }

    private void l(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec((this.f26142o - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((this.f26143p - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
    }

    private float m() {
        float f10;
        float f11;
        if (this.f26149v) {
            int i10 = this.f26144q;
            int i11 = this.f26147t;
            int i12 = this.f26142o;
            f10 = (i10 + (i11 * i12)) * 1.0f;
            f11 = i12;
        } else {
            f10 = this.f26144q * 1.0f;
            f11 = this.f26142o;
        }
        return f10 / f11;
    }

    public int a(int i10) {
        return this.f26149v ? (this.f26142o * i10) + this.f26144q : (this.f26142o * (e(i10) + 1)) - this.f26144q;
    }

    public int b(int i10) {
        return (this.f26147t - 1) - i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return true;
    }

    public int e(int i10) {
        return (this.f26147t - 1) - i10;
    }

    public void f(RecyclerView.Recycler recycler) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iFloor = (int) Math.floor(m());
        int i14 = i();
        boolean z10 = this.f26149v;
        if (z10) {
            int i15 = this.f26147t - 1;
            int i16 = this.f26142o;
            i10 = ((i15 * i16) + this.f26144q) % i16;
        } else {
            i10 = this.f26144q % this.f26142o;
        }
        int i17 = this.f26142o;
        float f10 = (i10 * 1.0f) / i17;
        int i18 = z10 ? 0 : i14 - i17;
        if (!z10) {
            i17 = i() - this.f26142o;
        }
        ArrayList arrayList = new ArrayList();
        int i19 = iFloor - 1;
        int i20 = 1;
        while (true) {
            if (i19 < 0) {
                i11 = iFloor;
                i12 = i10;
                break;
            }
            int i21 = i17;
            int i22 = i18;
            double dPow = ((double) (i17 / 2)) * Math.pow(this.f26146s, i20);
            double d10 = i22;
            int i23 = (int) (d10 - (((double) (this.f26149v ? -f10 : f10)) * dPow));
            i11 = iFloor;
            i12 = i10;
            int i24 = i19;
            double d11 = i20 - 1;
            a3.a aVar = new a3.a(i23, (float) (Math.pow(this.f26146s, d11) * ((double) (1.0f - ((1.0f - this.f26146s) * f10)))), f10, (i23 * 1.0f) / i14);
            arrayList.add(0, aVar);
            boolean z11 = this.f26149v;
            if (!z11) {
                dPow = -dPow;
            }
            i18 = (int) (d10 + dPow);
            if (!z11 ? i18 > 0 : i18 <= i()) {
                aVar.i((int) (((double) i18) - dPow));
                aVar.g(0.0f);
                aVar.f(aVar.d() / i14);
                aVar.h((float) Math.pow(this.f26146s, d11));
                break;
            }
            i19 = i24 - 1;
            i20++;
            iFloor = i11;
            i17 = i21;
            i10 = i12;
        }
        if (i11 < this.f26147t) {
            int i25 = this.f26149v ? i12 - this.f26142o : i14 - i12;
            arrayList.add(new a3.a(i25, 1.0f, f10, (i25 * 1.0f) / i14).e());
            i13 = i11;
        } else {
            i13 = i11 - 1;
        }
        int size = arrayList.size();
        int i26 = i13 - (size - 1);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iE = e(getPosition(childAt));
            if (iE > i13 || iE < i26) {
                removeAndRecycleView(childAt, recycler);
            }
        }
        detachAndScrapAttachedViews(recycler);
        for (int i27 = 0; i27 < size; i27++) {
            g(recycler.getViewForPosition(b(i26 + i27)), (a3.a) arrayList.get(i27));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public int h(int i10, float f10) {
        if (!this.f26141n || this.f26144q % this.f26142o == 0) {
            return -1;
        }
        float fM = m();
        return b(((int) (i10 > 0 ? fM + f10 : fM + (1.0f - f10))) - 1);
    }

    public int i() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int j() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f26148u.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0 || state.isPreLayout()) {
            return;
        }
        removeAndRecycleAllViews(recycler);
        if (!this.f26141n) {
            int iJ = j();
            this.f26143p = iJ;
            this.f26142o = (int) (iJ / this.f26145r);
            this.f26141n = true;
        }
        this.f26147t = getItemCount();
        this.f26144q = k(this.f26144q);
        f(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f26149v) {
            i10 = -i10;
        }
        int i11 = this.f26144q + i10;
        this.f26144q = k(i11);
        f(recycler);
        return (this.f26144q - i11) + i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        if (i10 <= 0 || i10 >= this.f26147t) {
            return;
        }
        this.f26144q = this.f26142o * (e(i10) + 1);
        requestLayout();
    }
}
