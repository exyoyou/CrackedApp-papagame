package com.baidu.mobads.sdk.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* JADX INFO: loaded from: classes6.dex */
public class RLRecyclerView extends SwipeRefreshLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RecyclerView f7968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f7969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f7970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f7971d;

    public static class NormalItemDecoration extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f7972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f7973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f7974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f7975d;

        public NormalItemDecoration(int i10, int i11, int i12, int i13) {
            this.f7972a = i10;
            this.f7973b = i11;
            this.f7974c = i12;
            this.f7975d = i13;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.left = this.f7972a;
            rect.top = this.f7973b;
            rect.right = this.f7974c;
            rect.bottom = this.f7975d;
        }
    }

    public RLRecyclerView(Context context) {
        super(context);
        this.f7970c = new int[2];
        this.f7971d = new int[2];
        a(context);
    }

    private void a(Context context) {
        this.f7968a = new RecyclerView(context);
        addView(this.f7968a, new ViewGroup.LayoutParams(-1, -1));
    }

    private int b(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return -1;
        }
        int i10 = iArr[0];
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public void addOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(onScrollListener);
        }
    }

    public int[] findVisibleItemPositions() {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView == null) {
            return null;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            this.f7971d[0] = gridLayoutManager.findFirstVisibleItemPosition();
            this.f7971d[1] = gridLayoutManager.findLastVisibleItemPosition();
            return this.f7971d;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            this.f7971d[0] = linearLayoutManager.findFirstVisibleItemPosition();
            this.f7971d[1] = linearLayoutManager.findLastVisibleItemPosition();
            return this.f7971d;
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return null;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        if (this.f7969b == null) {
            this.f7969b = new int[staggeredGridLayoutManager.getSpanCount()];
        }
        staggeredGridLayoutManager.findFirstVisibleItemPositions(this.f7969b);
        this.f7971d[0] = a(this.f7969b);
        staggeredGridLayoutManager.findLastVisibleItemPositions(this.f7969b);
        this.f7971d[1] = b(this.f7969b);
        return this.f7971d;
    }

    public int getChildAdapterPosition(View view) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            return recyclerView.getChildAdapterPosition(view);
        }
        return -1;
    }

    public int[] getLayoutManagerCounts() {
        RecyclerView.LayoutManager layoutManager;
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return null;
        }
        this.f7970c[0] = layoutManager.getItemCount();
        this.f7970c[1] = layoutManager.getChildCount();
        return this.f7970c;
    }

    public View getRvChildAt(int i10) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            return recyclerView.getChildAt(i10);
        }
        return null;
    }

    public int getRvChildCount() {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            return recyclerView.getChildCount();
        }
        return 0;
    }

    public int indexOfRvChild(View view) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            return recyclerView.indexOfChild(view);
        }
        return -1;
    }

    public void scrollToPosition(int i10) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(i10);
        }
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            recyclerView.setAdapter(adapter);
        }
    }

    public void setItemDecoration(int i10, int i11, int i12, int i13) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(new NormalItemDecoration(i10, i11, i12, i13));
        }
    }

    public void setLayoutManager(int i10, int i11, int i12) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            if (1 == i10) {
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            } else if (2 == i10) {
                recyclerView.setLayoutManager(new GridLayoutManager(getContext(), i11));
            } else if (3 == i10) {
                recyclerView.setLayoutManager(new StaggeredGridLayoutManager(i11, i12));
            }
        }
    }

    public void setRecyclerViewPadding(int i10, int i11, int i12, int i13) {
        RecyclerView recyclerView = this.f7968a;
        if (recyclerView != null) {
            recyclerView.setPadding(i10, i11, i12, i13);
        }
    }

    private int a(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return -1;
        }
        int i10 = iArr[0];
        for (int i11 : iArr) {
            if (i11 < i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public RLRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7970c = new int[2];
        this.f7971d = new int[2];
        a(context);
    }
}
