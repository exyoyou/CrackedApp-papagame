package com.join.mgps.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.join.mgps.base.BaseQuickAdapter;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements ListUpdateCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final BaseQuickAdapter f64121b;

    public a(@NonNull BaseQuickAdapter adapter) {
        this.f64121b = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int position, int count, @Nullable Object payload) {
        BaseQuickAdapter baseQuickAdapter = this.f64121b;
        baseQuickAdapter.notifyItemRangeChanged(position + baseQuickAdapter.getHeaderLayoutCount(), count, payload);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int position, int count) {
        BaseQuickAdapter baseQuickAdapter = this.f64121b;
        baseQuickAdapter.notifyItemRangeInserted(position + baseQuickAdapter.getHeaderLayoutCount(), count);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int fromPosition, int toPosition) {
        BaseQuickAdapter baseQuickAdapter = this.f64121b;
        baseQuickAdapter.notifyItemMoved(fromPosition + baseQuickAdapter.getHeaderLayoutCount(), toPosition + this.f64121b.getHeaderLayoutCount());
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int position, int count) {
        BaseQuickAdapter baseQuickAdapter = this.f64121b;
        baseQuickAdapter.notifyItemRangeRemoved(position + baseQuickAdapter.getHeaderLayoutCount(), count);
    }
}
