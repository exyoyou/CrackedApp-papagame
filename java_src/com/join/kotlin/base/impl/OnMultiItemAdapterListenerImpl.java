package com.join.kotlin.base.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.c;
import com.join.kotlin.base.ext.ViewBindUtilKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ&\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;", "T", "V", "Landroidx/databinding/ViewDataBinding;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "layoutId", "", "<init>", "(I)V", "getLayoutId", "()I", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OnMultiItemAdapterListenerImpl<T, V extends ViewDataBinding> implements c.b<T, a<V>> {
    private final int layoutId;

    public OnMultiItemAdapterListenerImpl(int i10) {
        this.layoutId = i10;
    }

    public final int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.c.b
    public boolean isFullSpanItem(int i10) {
        return c.b.a.a(this, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.c.b
    public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, Object obj, List list) {
        onBind((a) viewHolder, i10, obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter.base.c.b
    public boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder viewHolder) {
        return c.b.a.c(this, viewHolder);
    }

    @Override // com.chad.library.adapter.base.c.b
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder viewHolder) {
        c.b.a.d(this, viewHolder);
    }

    @Override // com.chad.library.adapter.base.c.b
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder viewHolder) {
        c.b.a.e(this, viewHolder);
    }

    @Override // com.chad.library.adapter.base.c.b
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder viewHolder) {
        c.b.a.f(this, viewHolder);
    }

    public void onBind(@NotNull a<V> aVar, int i10, @Nullable T t10, @NotNull List<? extends Object> list) {
        c.b.a.b(this, aVar, i10, t10, list);
    }

    @Override // com.chad.library.adapter.base.c.b
    @NotNull
    public a<V> onCreate(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return ViewBindUtilKt.generateDataBindingHolder(context, this.layoutId, parent);
    }
}
