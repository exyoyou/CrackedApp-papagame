package com.chad.library.adapter.base;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class h<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<T, VH> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private T f23637e;

    /* JADX WARN: Illegal instructions before constructor call */
    public h() {
        DefaultConstructorMarker defaultConstructorMarker = null;
        this(defaultConstructorMarker, 1, defaultConstructorMarker);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void add(T t10) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addAll(@NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected final int getItemCount(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return 1;
    }

    @Nullable
    public final T k() {
        return this.f23637e;
    }

    protected abstract void l(@NotNull VH vh, @Nullable T t10);

    public void m(@NotNull VH holder, @Nullable T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        l(holder, t10);
    }

    public final void n(@Nullable T t10) {
        this.f23637e = t10;
        notifyItemChanged(0);
    }

    public final void o(@Nullable T t10, @Nullable Object obj) {
        this.f23637e = t10;
        notifyItemChanged(0, obj);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected final void onBindViewHolder(@NotNull VH holder, int i10, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        l(holder, this.f23637e);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void remove(T t10) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void removeAt(int i10) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void set(int i10, T t10) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void submitList(@Nullable List<? extends T> list) {
        throw new RuntimeException("Please use setItem()");
    }

    public /* synthetic */ h(Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : obj);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void add(int i10, T t10) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addAll(int i10, @NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected final void onBindViewHolder(@NotNull VH holder, int i10, @Nullable T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        m(holder, t10, payloads);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(@Nullable T t10) {
        super(null, 1, 0 == true ? 1 : 0);
        this.f23637e = t10;
    }
}
