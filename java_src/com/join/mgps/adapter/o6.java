package com.join.mgps.adapter;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.UiThread;

/* JADX INFO: loaded from: classes3.dex */
@EBean
public abstract class o6<T, V extends View> extends RecyclerView.Adapter<a<V>> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f62968g = "o6";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<T> f62969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f62970f;

    static class a<V extends View> extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private V f62971d;

        public a(V itemView) {
            super(itemView);
            this.f62971d = itemView;
        }

        public V a() {
            return this.f62971d;
        }
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void a(SparseArray<T> items) {
        int size = this.f62969e.size();
        for (int i10 = 0; i10 < items.size(); i10++) {
            this.f62969e.put(size + i10, items.get(items.keyAt(i10)));
        }
        notifyItemRangeInserted(size, items.size());
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void b(int position, T t10) {
        this.f62969e.put(position, t10);
        notifyItemInserted(position);
    }

    public SparseArray<T> c() {
        return this.f62969e;
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void clear() {
        int size = this.f62969e.size();
        this.f62969e.clear();
        notifyItemRangeRemoved(0, size);
    }

    protected abstract V e(ViewGroup parent, int viewType);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a<V> onCreateViewHolder(ViewGroup parent, int viewType) {
        return new a<>(e(parent, viewType));
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void g(int position) {
        if (position > this.f62969e.size()) {
            return;
        }
        if (position == this.f62969e.size() - 1) {
            this.f62969e.remove(position);
            notifyItemRemoved(position);
            return;
        }
        SparseArray<T> sparseArray = this.f62969e;
        while (position < sparseArray.size() - 1) {
            int i10 = position + 1;
            this.f62969e.put(position, sparseArray.get(i10));
            position = i10;
        }
        this.f62969e.remove(getItemCount() - 1);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62969e.size();
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void h(int position) {
        if (position > this.f62969e.size()) {
            return;
        }
        this.f62969e.remove(position);
        notifyItemRemoved(position);
    }

    public void i(SparseArray<T> sparseArray) {
        this.f62969e = sparseArray;
    }

    public void j(int flag) {
        this.f62970f = flag;
    }
}
