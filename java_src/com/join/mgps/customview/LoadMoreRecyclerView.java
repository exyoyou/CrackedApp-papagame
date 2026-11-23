package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class LoadMoreRecyclerView extends RecyclerView {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f65238i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f65239j = 999;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f65240k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f65241l = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f65244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f65247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RecyclerView.OnScrollListener f65248h;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (LoadMoreRecyclerView.this.f65248h != null) {
                LoadMoreRecyclerView.this.f65248h.onScrollStateChanged(recyclerView, newState);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            if (LoadMoreRecyclerView.this.f65247g != null && LoadMoreRecyclerView.this.f65242b && !LoadMoreRecyclerView.this.f65245e && dy > 0) {
                int lastVisiblePosition = LoadMoreRecyclerView.this.getLastVisiblePosition();
                if (lastVisiblePosition + 1 == LoadMoreRecyclerView.this.f65244d.getItemCount()) {
                    LoadMoreRecyclerView.this.setLoadingMore(true);
                    LoadMoreRecyclerView.this.f65246f = lastVisiblePosition;
                    LoadMoreRecyclerView.this.f65247g.onLoadMore();
                }
            }
            if (LoadMoreRecyclerView.this.f65248h != null) {
                LoadMoreRecyclerView.this.f65248h.onScrolled(recyclerView, dx, dy);
            }
        }
    }

    public class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RecyclerView.Adapter f65250e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f65251f;

        public class a extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f65253d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            View f65254e;

            public a(View itemView) {
                super(itemView);
                this.f65253d = (TextView) itemView.findViewById(R.id.xlistview_footer_hint_textview);
                this.f65254e = itemView.findViewById(R.id.xlistview_footer_progressbar);
            }
        }

        public b(RecyclerView.Adapter adapter) {
            this.f65250e = adapter;
        }

        public void a(int resId) {
            this.f65251f = resId;
        }

        public void b(boolean enable) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int itemCount = this.f65250e.getItemCount();
            return LoadMoreRecyclerView.this.f65242b ? itemCount + 1 : itemCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            if (getItemCount() - 1 == position && LoadMoreRecyclerView.this.f65242b) {
                return 999;
            }
            if (LoadMoreRecyclerView.this.getLayoutManager() instanceof LinearLayoutManager) {
                return this.f65250e.getItemViewType(position);
            }
            if (LoadMoreRecyclerView.this.getLayoutManager() instanceof StaggeredGridLayoutManager) {
                return this.f65250e.getItemViewType(position);
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
            if (getItemViewType(position) != 999) {
                this.f65250e.onBindViewHolder(holder, position);
            }
            try {
                if (a.class.isInstance(holder)) {
                    a aVar = (a) holder;
                    if (LoadMoreRecyclerView.this.f65243c) {
                        aVar.f65253d.setVisibility(8);
                        aVar.f65254e.setVisibility(0);
                    } else {
                        aVar.f65253d.setVisibility(0);
                        aVar.f65254e.setVisibility(8);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return viewType == 999 ? new a(LayoutInflater.from(parent.getContext()).inflate(R.layout.xlistview_footer, parent, false)) : this.f65250e.onCreateViewHolder(parent, viewType);
        }
    }

    public interface c {
        void onLoadMore();
    }

    public LoadMoreRecyclerView(Context context) {
        super(context);
        this.f65242b = true;
        this.f65243c = false;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLastVisiblePosition() {
        if (getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) getLayoutManager()).findLastVisibleItemPosition();
        }
        if (getLayoutManager() instanceof GridLayoutManager) {
            return ((GridLayoutManager) getLayoutManager()).findLastVisibleItemPosition();
        }
        if (!(getLayoutManager() instanceof StaggeredGridLayoutManager)) {
            return getLayoutManager().getItemCount() - 1;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) getLayoutManager();
        return j(staggeredGridLayoutManager.findLastVisibleItemPositions(new int[staggeredGridLayoutManager.getSpanCount()]));
    }

    private void init() {
        super.addOnScrollListener(new a());
    }

    private int j(int[] positions) {
        int iMax = Integer.MIN_VALUE;
        for (int i10 : positions) {
            iMax = Math.max(iMax, i10);
        }
        return iMax;
    }

    public void a(boolean hide) {
        this.f65243c = hide;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void addOnScrollListener(@NonNull RecyclerView.OnScrollListener listener) {
        this.f65248h = listener;
    }

    public void k(boolean hasMore) {
        setAutoLoadMoreEnable(hasMore);
        getAdapter().notifyDataSetChanged();
        getAdapter().notifyItemRemoved(this.f65246f);
        this.f65245e = false;
        a(hasMore);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        if (adapter != null) {
            this.f65244d = new b(adapter);
        }
        super.swapAdapter(this.f65244d, true);
    }

    public void setAutoLoadMoreEnable(boolean autoLoadMore) {
        this.f65242b = autoLoadMore;
    }

    public void setLoadMoreListener(c listener) {
        this.f65247g = listener;
    }

    public void setLoadingMore(boolean loadingMore) {
        this.f65245e = loadingMore;
    }

    public LoadMoreRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65242b = true;
        this.f65243c = false;
        init();
    }

    public LoadMoreRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65242b = true;
        this.f65243c = false;
        init();
    }
}
