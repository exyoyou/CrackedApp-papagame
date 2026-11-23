package com.join.mgps.recycler;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes3.dex */
public class a extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f72298i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f72299j = -2147483647;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RecyclerView.Adapter<RecyclerView.ViewHolder> f72300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<View> f72301f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<View> f72302g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f72303h = new C0740a();

    /* JADX INFO: renamed from: com.join.mgps.recycler.a$a, reason: collision with other inner class name */
    class C0740a extends RecyclerView.AdapterDataObserver {
        C0740a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            a.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int positionStart, int itemCount) {
            super.onItemRangeChanged(positionStart, itemCount);
            a aVar = a.this;
            aVar.notifyItemRangeChanged(positionStart + aVar.getHeaderViewsCount(), itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int positionStart, int itemCount) {
            super.onItemRangeInserted(positionStart, itemCount);
            a aVar = a.this;
            aVar.notifyItemRangeInserted(positionStart + aVar.getHeaderViewsCount(), itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            super.onItemRangeMoved(fromPosition, toPosition, itemCount);
            int headerViewsCount = a.this.getHeaderViewsCount();
            a.this.notifyItemRangeChanged(fromPosition + headerViewsCount, toPosition + headerViewsCount + itemCount);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int positionStart, int itemCount) {
            super.onItemRangeRemoved(positionStart, itemCount);
            a aVar = a.this;
            aVar.notifyItemRangeRemoved(positionStart + aVar.getHeaderViewsCount(), itemCount);
        }
    }

    public static class b extends RecyclerView.ViewHolder {
        public b(View itemView) {
            super(itemView);
        }
    }

    public a() {
    }

    public void a(View footer) {
        if (footer == null) {
            throw new RuntimeException("footer is null");
        }
        this.f72302g.add(footer);
        notifyDataSetChanged();
    }

    public void b(View header) {
        if (header == null) {
            throw new RuntimeException("header is null");
        }
        this.f72301f.add(header);
        notifyDataSetChanged();
    }

    public View c() {
        if (getFooterViewsCount() > 0) {
            return this.f72302g.get(0);
        }
        return null;
    }

    public View d() {
        if (getHeaderViewsCount() > 0) {
            return this.f72301f.get(0);
        }
        return null;
    }

    public RecyclerView.Adapter e() {
        return this.f72300e;
    }

    public void f(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (this.f72300e != null) {
            notifyItemRangeRemoved(getHeaderViewsCount(), this.f72300e.getItemCount());
            this.f72300e.unregisterAdapterDataObserver(this.f72303h);
        }
        this.f72300e = adapter;
        adapter.registerAdapterDataObserver(this.f72303h);
        notifyItemRangeInserted(getHeaderViewsCount(), this.f72300e.getItemCount());
    }

    public int getFooterViewsCount() {
        return this.f72302g.size();
    }

    public int getHeaderViewsCount() {
        return this.f72301f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getHeaderViewsCount() + getFooterViewsCount() + this.f72300e.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        int itemCount = this.f72300e.getItemCount();
        int headerViewsCount = getHeaderViewsCount();
        if (position < headerViewsCount) {
            return position - Integer.MIN_VALUE;
        }
        if (headerViewsCount > position || position >= headerViewsCount + itemCount) {
            return ((position + f72299j) - headerViewsCount) - itemCount;
        }
        int itemViewType = this.f72300e.getItemViewType(position - headerViewsCount);
        if (itemViewType < 1073741823) {
            return itemViewType + z.f93551j;
        }
        throw new IllegalArgumentException("your adapter's return value of getViewTypeCount() must < Integer.MAX_VALUE / 2");
    }

    public boolean isFooter(int position) {
        return getFooterViewsCount() > 0 && position == getItemCount() - 1;
    }

    public boolean isHeader(int position) {
        return getHeaderViewsCount() > 0 && position == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        int headerViewsCount = getHeaderViewsCount();
        if (position >= headerViewsCount && position < this.f72300e.getItemCount() + headerViewsCount) {
            this.f72300e.onBindViewHolder(holder, position - headerViewsCount);
            return;
        }
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType < getHeaderViewsCount() - Integer.MIN_VALUE) {
            return new b(this.f72301f.get(viewType - Integer.MIN_VALUE));
        }
        return (viewType < f72299j || viewType >= 1073741823) ? this.f72300e.onCreateViewHolder(parent, viewType - z.f93551j) : new b(this.f72302g.get(viewType - f72299j));
    }

    public void removeFooterView(View view) {
        this.f72302g.remove(view);
        notifyDataSetChanged();
    }

    public void removeHeaderView(View view) {
        this.f72301f.remove(view);
        notifyDataSetChanged();
    }

    public a(RecyclerView.Adapter innerAdapter) {
        f(innerAdapter);
    }
}
