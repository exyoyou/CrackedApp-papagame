package com.chad.library.adapter.base;

import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<T, VH> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final AsyncListDiffer<T> f23602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final AsyncListDiffer.ListListener<T> f23603f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull AsyncDifferConfig<T> config, @NotNull List<? extends T> items) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(items, "items");
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), config);
        this.f23602e = asyncListDiffer;
        AsyncListDiffer.ListListener<T> listListener = new AsyncListDiffer.ListListener() { // from class: com.chad.library.adapter.base.a
            @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
            public final void onCurrentListChanged(List list, List list2) {
                b.l(this.f23601a, list, list2);
            }
        };
        this.f23603f = listListener;
        asyncListDiffer.addListListener(listListener);
        asyncListDiffer.submitList(items);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(b bVar, List previousList, List currentList) {
        Intrinsics.checkNotNullParameter(previousList, "previousList");
        Intrinsics.checkNotNullParameter(currentList, "currentList");
        boolean zDisplayEmptyView = bVar.displayEmptyView(previousList);
        boolean zDisplayEmptyView2 = bVar.displayEmptyView(currentList);
        if (zDisplayEmptyView && !zDisplayEmptyView2) {
            bVar.notifyItemRemoved(0);
            bVar.getRecyclerView().scrollToPosition(0);
        } else if (zDisplayEmptyView2 && !zDisplayEmptyView) {
            bVar.notifyItemInserted(0);
        } else if (zDisplayEmptyView && zDisplayEmptyView2) {
            bVar.notifyItemChanged(0, 0);
        }
        bVar.onCurrentListChanged(previousList, currentList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void add(T t10) {
        List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.add(t10);
        submitList(mutableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addAll(@NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.addAll(collection);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public final List<T> getItems() {
        List<T> currentList = this.f23602e.getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        return currentList;
    }

    public void onCurrentListChanged(@NotNull List<? extends T> previousList, @NotNull List<? extends T> currentList) {
        Intrinsics.checkNotNullParameter(previousList, "previousList");
        Intrinsics.checkNotNullParameter(currentList, "currentList");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void remove(T t10) {
        List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.remove(t10);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void removeAt(int i10) {
        if (i10 < getItems().size()) {
            List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.remove(i10);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void set(int i10, T t10) {
        List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.set(i10, t10);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public final void setItems(@NotNull List<? extends T> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f23602e.submitList(value);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void submitList(@Nullable List<? extends T> list) {
        this.f23602e.submitList(list, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void swap(int i10, int i11) {
        int size = getItems().size();
        if (!(i10 >= 0 && i10 < size)) {
            if (!(i11 >= 0 && i11 < size)) {
                return;
            }
        }
        List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        Collections.swap(mutableList, i10, i11);
        submitList(mutableList);
    }

    public final void submitList(@Nullable List<? extends T> list, @Nullable Runnable runnable) {
        this.f23602e.submitList(list, runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void add(int i10, T t10) {
        if (i10 <= getItems().size() && i10 >= 0) {
            List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.add(i10, t10);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void addAll(int i10, @NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (i10 <= getItems().size() && i10 >= 0) {
            List<? extends T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.addAll(i10, collection);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull DiffUtil.ItemCallback<T> diffCallback) {
        this(diffCallback, CollectionsKt__CollectionsKt.emptyList());
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(@NotNull DiffUtil.ItemCallback<T> diffCallback, @NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(items, "items");
        AsyncDifferConfig<T> asyncDifferConfigBuild = new AsyncDifferConfig.Builder(diffCallback).build();
        Intrinsics.checkNotNullExpressionValue(asyncDifferConfigBuild, "build(...)");
        this(asyncDifferConfigBuild, items);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull AsyncDifferConfig<T> config) {
        this(config, CollectionsKt__CollectionsKt.emptyList());
        Intrinsics.checkNotNullParameter(config, "config");
    }
}
