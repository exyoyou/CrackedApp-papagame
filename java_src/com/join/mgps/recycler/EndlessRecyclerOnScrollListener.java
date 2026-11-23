package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes3.dex */
public class EndlessRecyclerOnScrollListener extends RecyclerView.OnScrollListener implements d {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected LayoutManagerType f72284t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int[] f72285u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f72286v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f72287w = 0;

    public enum LayoutManagerType {
        LinearLayout,
        StaggeredGridLayout,
        GridLayout
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72288a;

        static {
            int[] iArr = new int[LayoutManagerType.values().length];
            f72288a = iArr;
            try {
                iArr[LayoutManagerType.LinearLayout.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72288a[LayoutManagerType.GridLayout.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f72288a[LayoutManagerType.StaggeredGridLayout.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private int b(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    @Override // com.join.mgps.recycler.d
    public void a(final View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
        super.onScrollStateChanged(recyclerView, newState);
        this.f72287w = newState;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int itemCount = layoutManager.getItemCount();
        if (childCount <= 0 || this.f72287w != 0 || this.f72286v < itemCount - 1) {
            return;
        }
        a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        super.onScrolled(recyclerView, dx, dy);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (this.f72284t == null) {
            if (layoutManager instanceof LinearLayoutManager) {
                this.f72284t = LayoutManagerType.LinearLayout;
            } else if (layoutManager instanceof GridLayoutManager) {
                this.f72284t = LayoutManagerType.GridLayout;
            } else {
                if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                    throw new RuntimeException("Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager");
                }
                this.f72284t = LayoutManagerType.StaggeredGridLayout;
            }
        }
        int i10 = a.f72288a[this.f72284t.ordinal()];
        if (i10 == 1) {
            this.f72286v = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            return;
        }
        if (i10 == 2) {
            this.f72286v = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
            return;
        }
        if (i10 != 3) {
            return;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        if (this.f72285u == null) {
            this.f72285u = new int[staggeredGridLayoutManager.getSpanCount()];
        }
        staggeredGridLayoutManager.findLastVisibleItemPositions(this.f72285u);
        this.f72286v = b(this.f72285u);
    }
}
