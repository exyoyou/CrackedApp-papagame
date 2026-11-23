package com.chad.library.adapter.base;

import android.content.Context;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c<T> extends BaseQuickAdapter<T, RecyclerView.ViewHolder> {

    @Nullable
    private a<T> onItemViewTypeListener;

    @NotNull
    private final SparseArray<b<T, RecyclerView.ViewHolder>> typeViewHolders;

    public interface a<T> {
        int onItemViewType(int i10, @NotNull List<? extends T> list);
    }

    public interface b<T, V extends RecyclerView.ViewHolder> {

        public static final class a {
            public static <T, V extends RecyclerView.ViewHolder> boolean a(@NotNull b<T, V> bVar, int i10) {
                return false;
            }

            public static <T, V extends RecyclerView.ViewHolder> void b(@NotNull b<T, V> bVar, @NotNull V holder, int i10, @Nullable T t10, @NotNull List<? extends Object> payloads) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Intrinsics.checkNotNullParameter(payloads, "payloads");
                bVar.onBind(holder, i10, t10);
            }

            public static <T, V extends RecyclerView.ViewHolder> boolean c(@NotNull b<T, V> bVar, @NotNull RecyclerView.ViewHolder holder) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                return false;
            }

            public static <T, V extends RecyclerView.ViewHolder> void d(@NotNull b<T, V> bVar, @NotNull RecyclerView.ViewHolder holder) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            public static <T, V extends RecyclerView.ViewHolder> void e(@NotNull b<T, V> bVar, @NotNull RecyclerView.ViewHolder holder) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            public static <T, V extends RecyclerView.ViewHolder> void f(@NotNull b<T, V> bVar, @NotNull RecyclerView.ViewHolder holder) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }
        }

        boolean isFullSpanItem(int i10);

        void onBind(@NotNull V v10, int i10, @Nullable T t10);

        void onBind(@NotNull V v10, int i10, @Nullable T t10, @NotNull List<? extends Object> list);

        @NotNull
        V onCreate(@NotNull Context context, @NotNull ViewGroup viewGroup, int i10);

        boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder viewHolder);

        void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder viewHolder);

        void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder viewHolder);

        void onViewRecycled(@NotNull RecyclerView.ViewHolder viewHolder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final /* synthetic */ <V extends RecyclerView.ViewHolder> c<T> addItemType(int i10, b<T, V> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.reifiedOperationMarker(4, "V");
        return addItemType(i10, RecyclerView.ViewHolder.class, listener);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getItemViewType(int i10, @NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        a<T> aVar = this.onItemViewTypeListener;
        return aVar != null ? aVar.onItemViewType(i10, list) : super.getItemViewType(i10, list);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFullSpanItem(int i10) {
        if (super.isFullSpanItem(i10)) {
            return true;
        }
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(i10);
        return bVar != null && bVar.isFullSpanItem(i10);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(i10, getItems()));
        if (bVar != null) {
            bVar.onBind(holder, i10, t10);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    protected RecyclerView.ViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(i10);
        if (bVar != null) {
            Context context2 = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            return bVar.onCreate(context2, parent, i10);
        }
        throw new IllegalArgumentException("ViewType: " + i10 + " not found onViewHolderListener，please use addItemType() first!");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(holder.getBindingAdapterPosition(), getItems()));
        return bVar != null ? bVar.onFailedToRecycleView(holder) : super.onFailedToRecycleView(holder);
    }

    @NotNull
    public final c<T> onItemViewType(@Nullable a<T> aVar) {
        this.onItemViewTypeListener = aVar;
        return this;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(holder.getBindingAdapterPosition(), getItems()));
        if (bVar != null) {
            bVar.onViewAttachedToWindow(holder);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(holder.getBindingAdapterPosition(), getItems()));
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(holder.getBindingAdapterPosition(), getItems()));
        if (bVar != null) {
            bVar.onViewRecycled(holder);
        }
    }

    public /* synthetic */ c(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list);
    }

    @NotNull
    public final <V extends RecyclerView.ViewHolder> c<T> addItemType(int i10, @NotNull Class<V> holderClazz, @NotNull b<T, V> listener) {
        Intrinsics.checkNotNullParameter(holderClazz, "holderClazz");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.typeViewHolders.put(i10, listener);
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull List<? extends T> items) {
        super(items);
        Intrinsics.checkNotNullParameter(items, "items");
        this.typeViewHolders = new SparseArray<>(1);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10, @Nullable T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i10, t10);
            return;
        }
        b<T, RecyclerView.ViewHolder> bVar = this.typeViewHolders.get(getItemViewType(i10, getItems()));
        if (bVar != null) {
            bVar.onBind(holder, i10, t10);
        }
    }
}
