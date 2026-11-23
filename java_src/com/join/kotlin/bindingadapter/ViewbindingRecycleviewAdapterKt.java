package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aK\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0002\u0010\u000e\u001a \u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0007¨\u0006\u0012"}, d2 = {"xrecycleviewadapterBinding", "", "recyclerView", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView;", "xsubmitList", "", "", "xadapter", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Landroidx/databinding/ViewDataBinding;", "showStatus", "", "listener", "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;", "(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Ljava/util/List;Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Ljava/lang/Integer;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;)V", "recycleviewdataBinding", "Landroidx/recyclerview/widget/RecyclerView;", "submitList", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewbindingRecycleviewAdapterKt {
    @BindingAdapter(requireAll = false, value = {"submitList"})
    public static final void recycleviewdataBinding(@NotNull RecyclerView recyclerView, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (recyclerView.getAdapter() == null || list == null) {
            return;
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.join.kotlin.domain.adapter.BaseDataBindingAdapter<kotlin.Any, androidx.databinding.ViewDataBinding>");
        ((BaseDataBindingAdapter) adapter).submitList(list);
    }

    @BindingAdapter(requireAll = false, value = {"xsubmitList", "xadapter", "showStatus", "listener"})
    public static final void xrecycleviewadapterBinding(@NotNull XRecyclerView recyclerView, @NotNull List<? extends Object> xsubmitList, @NotNull BaseDataBindingAdapter<Object, ViewDataBinding> xadapter, @Nullable Integer num, @Nullable XRecyclerView.f fVar) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(xsubmitList, "xsubmitList");
        Intrinsics.checkNotNullParameter(xadapter, "xadapter");
        if (recyclerView.getAdapter() == null) {
            recyclerView.setAdapter(xadapter);
        }
        xadapter.submitList(xsubmitList);
        if (fVar != null) {
            recyclerView.setLoadingMoreEnabled(true);
            recyclerView.setLoadingListener(fVar);
        }
        if (num != null && num.intValue() == 1) {
            recyclerView.reset();
            return;
        }
        if (num != null && num.intValue() == 3) {
            recyclerView.refreshComplete();
            return;
        }
        if (num != null && num.intValue() == 4) {
            recyclerView.setNoMore();
        } else if (num != null && num.intValue() == 2) {
            recyclerView.loadMoreComplete();
        } else {
            recyclerView.reset();
        }
    }
}
