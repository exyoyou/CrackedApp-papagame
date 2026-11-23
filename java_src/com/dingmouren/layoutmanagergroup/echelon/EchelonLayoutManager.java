package com.dingmouren.layoutmanagergroup.echelon;

import a3.a;
import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class EchelonLayoutManager extends RecyclerView.LayoutManager {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f26124t = "EchelonLayoutManager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f26125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f26126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f26127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f26128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f26129r = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f26130s = 0.9f;

    public EchelonLayoutManager(Context context) {
        this.f26125n = context;
        int iE = (int) (e() * 0.87f);
        this.f26126o = iE;
        this.f26127p = (int) (iE * 1.46f);
    }

    private void g(RecyclerView.Recycler recycler) {
        int i10;
        float f10;
        EchelonLayoutManager echelonLayoutManager;
        int i11;
        EchelonLayoutManager echelonLayoutManager2 = this;
        if (getItemCount() == 0) {
            return;
        }
        int iFloor = (int) Math.floor(echelonLayoutManager2.f26129r / echelonLayoutManager2.f26127p);
        int iF = f();
        int i12 = echelonLayoutManager2.f26127p;
        int i13 = iF - i12;
        int i14 = echelonLayoutManager2.f26129r % i12;
        float f11 = i14 * 1.0f;
        float f12 = f11 / i12;
        ArrayList arrayList = new ArrayList();
        int i15 = iFloor - 1;
        int i16 = i15;
        int i17 = 1;
        while (true) {
            if (i16 < 0) {
                i10 = i14;
                f10 = f11;
                echelonLayoutManager = echelonLayoutManager2;
                i11 = i15;
                break;
            }
            int i18 = i16;
            double dF = ((double) ((f() - echelonLayoutManager2.f26127p) / 2)) * Math.pow(0.8d, i17);
            double d10 = i13;
            int i19 = (int) (d10 - (((double) f12) * dF));
            echelonLayoutManager = this;
            i11 = i15;
            i10 = i14;
            f10 = f11;
            double d11 = i17 - 1;
            a aVar = new a(i19, (float) (Math.pow(echelonLayoutManager.f26130s, d11) * ((double) (1.0f - ((1.0f - echelonLayoutManager.f26130s) * f12)))), f12, (i19 * 1.0f) / f());
            arrayList.add(0, aVar);
            int i20 = (int) (d10 - dF);
            if (i20 <= 0) {
                aVar.i((int) (((double) i20) + dF));
                aVar.g(0.0f);
                aVar.f(aVar.d() / f());
                aVar.h((float) Math.pow(echelonLayoutManager.f26130s, d11));
                break;
            }
            i17++;
            echelonLayoutManager2 = echelonLayoutManager;
            i15 = i11;
            f11 = f10;
            i16 = i18 - 1;
            i13 = i20;
            i14 = i10;
        }
        if (iFloor < echelonLayoutManager.f26128q) {
            int iF2 = f() - i10;
            arrayList.add(new a(iF2, 1.0f, f10 / echelonLayoutManager.f26127p, (iF2 * 1.0f) / f()).e());
        } else {
            iFloor = i11;
        }
        int size = arrayList.size();
        int i21 = iFloor - (size - 1);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = echelonLayoutManager.getChildAt(childCount);
            int position = echelonLayoutManager.getPosition(childAt);
            if (position > iFloor || position < i21) {
                echelonLayoutManager.removeAndRecycleView(childAt, recycler);
            }
        }
        detachAndScrapAttachedViews(recycler);
        for (int i22 = 0; i22 < size; i22++) {
            View viewForPosition = recycler.getViewForPosition(i21 + i22);
            a aVar2 = (a) arrayList.get(i22);
            echelonLayoutManager.addView(viewForPosition);
            echelonLayoutManager.h(viewForPosition);
            int iE = (e() - echelonLayoutManager.f26126o) / 2;
            layoutDecoratedWithMargins(viewForPosition, iE, aVar2.d(), iE + echelonLayoutManager.f26126o, aVar2.d() + echelonLayoutManager.f26127p);
            viewForPosition.setPivotX(viewForPosition.getWidth() / 2);
            viewForPosition.setPivotY(0.0f);
            viewForPosition.setScaleX(aVar2.c());
            viewForPosition.setScaleY(aVar2.c());
        }
    }

    private void h(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f26126o, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f26127p, 1073741824));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    public int e() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int f() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0 || state.isPreLayout()) {
            return;
        }
        removeAndRecycleAllViews(recycler);
        int iE = (int) (e() * 0.87f);
        this.f26126o = iE;
        this.f26127p = (int) (iE * 1.46f);
        this.f26128q = getItemCount();
        this.f26129r = Math.min(Math.max(this.f26127p, this.f26129r), this.f26128q * this.f26127p);
        g(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i11 = this.f26129r;
        int i12 = i11 + i10;
        this.f26129r = Math.min(Math.max(this.f26127p, i11 + i10), this.f26128q * this.f26127p);
        g(recycler);
        return (this.f26129r - i12) + i10;
    }
}
