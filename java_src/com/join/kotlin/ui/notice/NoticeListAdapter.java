package com.join.kotlin.ui.notice;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.cp0;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.BTActivityBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\"\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeListAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/mgps/dto/BTActivityBean;", "Lcom/join/android/app/mgsim/wufun/databinding/NoticeItemItemBinding;", "context", "Landroid/content/Context;", "clickProxy", "Lcom/join/kotlin/ui/notice/ClickProxy;", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/notice/ClickProxy;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getClickProxy", "()Lcom/join/kotlin/ui/notice/ClickProxy;", "setClickProxy", "(Lcom/join/kotlin/ui/notice/ClickProxy;)V", "getLayoutResId", "", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NoticeListAdapter extends BaseDataBindingAdapter<BTActivityBean, cp0> {

    @NotNull
    private ClickProxy clickProxy;

    @NotNull
    private Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoticeListAdapter(@NotNull Context context, @NotNull ClickProxy clickProxy) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clickProxy, "clickProxy");
        this.context = context;
        this.clickProxy = clickProxy;
    }

    @NotNull
    public final ClickProxy getClickProxy() {
        return this.clickProxy;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        return R.layout.notice_item_item;
    }

    public final void setClickProxy(@NotNull ClickProxy clickProxy) {
        Intrinsics.checkNotNullParameter(clickProxy, "<set-?>");
        this.clickProxy = clickProxy;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull cp0 binding, @NotNull BTActivityBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.t(item);
        binding.u(this.clickProxy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull cp0 binding, @NotNull BTActivityBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.t(item);
        binding.u(this.clickProxy);
    }
}
