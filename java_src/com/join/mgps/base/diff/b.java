package com.join.mgps.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b<T> extends DiffUtil.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<T> f64122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<T> f64123b;

    public b(@Nullable List<T> newList) {
        this.f64122a = newList == null ? new ArrayList<>() : newList;
    }

    protected abstract boolean a(@NonNull T oldItem, @NonNull T newItem);

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
        return a(this.f64123b.get(oldItemPosition), this.f64122a.get(newItemPosition));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
        return b(this.f64123b.get(oldItemPosition), this.f64122a.get(newItemPosition));
    }

    protected abstract boolean b(@NonNull T oldItem, @NonNull T newItem);

    @Nullable
    protected Object c(@NonNull T oldItem, @NonNull T newItem) {
        return null;
    }

    public List<T> d() {
        return this.f64122a;
    }

    public List<T> e() {
        return this.f64123b;
    }

    public void f(@Nullable List<T> oldList) {
        if (oldList == null) {
            oldList = new ArrayList<>();
        }
        this.f64123b = oldList;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    @Nullable
    public Object getChangePayload(int oldItemPosition, int newItemPosition) {
        return c(this.f64123b.get(oldItemPosition), this.f64122a.get(newItemPosition));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getNewListSize() {
        return this.f64122a.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getOldListSize() {
        return this.f64123b.size();
    }
}
