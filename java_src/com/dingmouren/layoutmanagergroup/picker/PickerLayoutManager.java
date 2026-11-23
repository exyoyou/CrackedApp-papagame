package com.dingmouren.layoutmanagergroup.picker;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public class PickerLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f26131w = "PickerLayoutManager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f26132n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26133o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LinearSnapHelper f26134p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f26135q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f26136r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f26137s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f26138t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RecyclerView f26139u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f26140v;

    public interface a {
        void a(View view, int i10);
    }

    public PickerLayoutManager(Context context, int i10, boolean z10) {
        super(context, i10, z10);
        this.f26132n = 0.5f;
        this.f26133o = true;
        this.f26138t = -1;
        this.f26134p = new LinearSnapHelper();
        this.f26140v = i10;
    }

    private void e() {
        float width = getWidth() / 2.0f;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            float fMin = ((((1.0f - this.f26132n) * (-1.0f)) * Math.min(width, Math.abs(width - ((getDecoratedLeft(childAt) + getDecoratedRight(childAt)) / 2.0f)))) / width) + 1.0f;
            childAt.setScaleX(fMin);
            childAt.setScaleY(fMin);
            if (this.f26133o) {
                childAt.setAlpha(fMin);
            }
        }
    }

    private void f() {
        float height = getHeight() / 2.0f;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            float fMin = ((((1.0f - this.f26132n) * (-1.0f)) * Math.min(height, Math.abs(height - ((getDecoratedTop(childAt) + getDecoratedBottom(childAt)) / 2.0f)))) / height) + 1.0f;
            childAt.setScaleX(fMin);
            childAt.setScaleY(fMin);
            if (this.f26133o) {
                childAt.setAlpha(fMin);
            }
        }
    }

    public void g(a aVar) {
        this.f26135q = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f26134p.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        if (getItemCount() < 0 || state.isPreLayout()) {
            return;
        }
        int i10 = this.f26140v;
        if (i10 == 0) {
            e();
        } else if (i10 == 1) {
            f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i10, int i11) {
        if (getItemCount() == 0 || this.f26138t == 0) {
            super.onMeasure(recycler, state, i10, i11);
            return;
        }
        View viewForPosition = recycler.getViewForPosition(0);
        measureChildWithMargins(viewForPosition, i10, i11);
        this.f26136r = viewForPosition.getMeasuredWidth();
        int measuredHeight = viewForPosition.getMeasuredHeight();
        this.f26137s = measuredHeight;
        int i12 = this.f26140v;
        if (i12 == 0) {
            int i13 = ((this.f26138t - 1) / 2) * this.f26136r;
            this.f26139u.setClipToPadding(false);
            this.f26139u.setPadding(i13, 0, i13, 0);
            setMeasuredDimension(this.f26136r * this.f26138t, this.f26137s);
            return;
        }
        if (i12 == 1) {
            int i14 = ((this.f26138t - 1) / 2) * measuredHeight;
            this.f26139u.setClipToPadding(false);
            this.f26139u.setPadding(0, i14, 0, i14);
            setMeasuredDimension(this.f26136r, this.f26137s * this.f26138t);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        LinearSnapHelper linearSnapHelper;
        super.onScrollStateChanged(i10);
        if (i10 != 0 || this.f26135q == null || (linearSnapHelper = this.f26134p) == null) {
            return;
        }
        View viewFindSnapView = linearSnapHelper.findSnapView(this);
        this.f26135q.a(viewFindSnapView, getPosition(viewFindSnapView));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        e();
        return super.scrollHorizontallyBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        f();
        return super.scrollVerticallyBy(i10, recycler, state);
    }

    public PickerLayoutManager(Context context, RecyclerView recyclerView, int i10, boolean z10, int i11, float f10, boolean z11) {
        super(context, i10, z10);
        this.f26132n = 0.5f;
        this.f26133o = true;
        this.f26138t = -1;
        this.f26134p = new LinearSnapHelper();
        this.f26138t = i11;
        this.f26140v = i10;
        this.f26139u = recyclerView;
        this.f26133o = z11;
        this.f26132n = f10;
        if (i11 != 0) {
            setAutoMeasureEnabled(false);
        }
    }
}
