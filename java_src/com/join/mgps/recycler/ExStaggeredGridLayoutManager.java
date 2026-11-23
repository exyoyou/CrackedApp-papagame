package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes3.dex */
public class ExStaggeredGridLayoutManager extends StaggeredGridLayoutManager {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f72289n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    GridLayoutManager.SpanSizeLookup f72290o;

    public ExStaggeredGridLayoutManager(int spanCount, int orientation) {
        super(spanCount, orientation);
        this.f72289n = getClass().getSimpleName();
    }

    public GridLayoutManager.SpanSizeLookup getSpanSizeLookup() {
        return this.f72290o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int widthSpec, int heightSpec) {
        for (int i10 = 0; i10 < getItemCount(); i10++) {
            if (this.f72290o.getSpanSize(i10) > 1) {
                try {
                    View viewForPosition = recycler.getViewForPosition(i10);
                    if (viewForPosition != null) {
                        ((StaggeredGridLayoutManager.LayoutParams) viewForPosition.getLayoutParams()).setFullSpan(true);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        super.onMeasure(recycler, state, widthSpec, heightSpec);
    }

    public void setSpanSizeLookup(GridLayoutManager.SpanSizeLookup spanSizeLookup) {
        this.f72290o = spanSizeLookup;
    }
}
