package com.chad.library.adapter.base.layoutmanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB+\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\fB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\t\u0010\u0010J$\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00142\f\u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u0012\u0010\u0011\u001a\u00060\u0012R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;", "Landroidx/recyclerview/widget/GridLayoutManager;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "spanCount", "(Landroid/content/Context;I)V", "orientation", "reverseLayout", "", "(Landroid/content/Context;IIZ)V", "fullSpanSizeLookup", "Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$FullSpanSizeLookup;", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "onAdapterChanged", "", "oldAdapter", "newAdapter", "setSpanSizeLookup", "spanSizeLookup", "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;", "FullSpanSizeLookup", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuickGridLayoutManager extends GridLayoutManager {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NotNull
    private final a f23652n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private RecyclerView.Adapter<?> f23653o;

    private final class a extends GridLayoutManager.SpanSizeLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private GridLayoutManager.SpanSizeLookup f23654a;

        public a() {
        }

        @Nullable
        public final GridLayoutManager.SpanSizeLookup a() {
            return this.f23654a;
        }

        public final int b(@Nullable RecyclerView.Adapter<?> adapter, int i10) {
            if (adapter instanceof q2.a) {
                return QuickGridLayoutManager.this.getSpanCount();
            }
            if (adapter instanceof BaseQuickAdapter) {
                BaseQuickAdapter baseQuickAdapter = (BaseQuickAdapter) adapter;
                if (baseQuickAdapter.isFullSpanItem(baseQuickAdapter.getItemViewType(i10))) {
                    return QuickGridLayoutManager.this.getSpanCount();
                }
                GridLayoutManager.SpanSizeLookup spanSizeLookup = this.f23654a;
                if (spanSizeLookup != null) {
                    return spanSizeLookup.getSpanSize(i10);
                }
            } else {
                GridLayoutManager.SpanSizeLookup spanSizeLookup2 = this.f23654a;
                if (spanSizeLookup2 != null) {
                    return spanSizeLookup2.getSpanSize(i10);
                }
            }
            return 1;
        }

        public final void c(@Nullable GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.f23654a = spanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i10) {
            RecyclerView.Adapter<?> adapter = QuickGridLayoutManager.this.f23653o;
            if (adapter == null) {
                return 1;
            }
            return adapter instanceof XQuickRecyclerView.WrapAdapter ? b(((XQuickRecyclerView.WrapAdapter) adapter).getAdapter(), i10) : b(adapter, i10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Intrinsics.checkNotNullParameter(context, "context");
        a aVar = new a();
        this.f23652n = aVar;
        aVar.c(getSpanSizeLookup());
        super.setSpanSizeLookup(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView.Adapter<?> oldAdapter, @Nullable RecyclerView.Adapter<?> newAdapter) {
        this.f23653o = newAdapter;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    public void setSpanSizeLookup(@Nullable GridLayoutManager.SpanSizeLookup spanSizeLookup) {
        this.f23652n.c(spanSizeLookup);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        a aVar = new a();
        this.f23652n = aVar;
        aVar.c(getSpanSizeLookup());
        super.setSpanSizeLookup(aVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, int i10, int i11, boolean z10) {
        super(context, i10, i11, z10);
        Intrinsics.checkNotNullParameter(context, "context");
        a aVar = new a();
        this.f23652n = aVar;
        aVar.c(getSpanSizeLookup());
        super.setSpanSizeLookup(aVar);
    }
}
