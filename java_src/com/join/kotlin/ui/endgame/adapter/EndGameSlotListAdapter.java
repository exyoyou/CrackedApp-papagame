package com.join.kotlin.ui.endgame.adapter;

import android.content.Context;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.t00;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.ArchiveListBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\"\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/mgps/dto/ArchiveListBean;", "Landroidx/databinding/ViewDataBinding;", "Lcom/join/kotlin/ui/endgame/adapter/ISlotAdapterListener;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "setContext", "checkedItem", "Landroidx/lifecycle/MutableLiveData;", "getCheckedItem", "()Landroidx/lifecycle/MutableLiveData;", "setCheckedItem", "(Landroidx/lifecycle/MutableLiveData;)V", "getLayoutResId", "", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "onItemCheckedChanged", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EndGameSlotListAdapter extends BaseDataBindingAdapter<ArchiveListBean, ViewDataBinding> implements ISlotAdapterListener {

    @NotNull
    private MutableLiveData<ArchiveListBean> checkedItem;

    @NotNull
    private Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndGameSlotListAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.checkedItem = new MutableLiveData<>();
    }

    @NotNull
    public final MutableLiveData<ArchiveListBean> getCheckedItem() {
        return this.checkedItem;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        return R.layout.item_end_game_slot_list;
    }

    @Override // com.join.kotlin.ui.endgame.adapter.ISlotAdapterListener
    public void onItemCheckedChanged(@NotNull ArchiveListBean item) {
        Intrinsics.checkNotNullParameter(item, "item");
        ArchiveListBean value = this.checkedItem.getValue();
        if (value != null) {
            value.setIsCheck(0);
        }
        item.setIsCheck(!Intrinsics.areEqual(this.checkedItem.getValue(), item) ? 1 : 0);
        MutableLiveData<ArchiveListBean> mutableLiveData = this.checkedItem;
        if (item.getIsCheck() != 1) {
            item = null;
        }
        mutableLiveData.setValue(item);
        notifyDataSetChanged();
    }

    public final void setCheckedItem(@NotNull MutableLiveData<ArchiveListBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.checkedItem = mutableLiveData;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull ViewDataBinding binding, @NotNull ArchiveListBean item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof t00) {
            t00 t00Var = (t00) binding;
            t00Var.t(item);
            t00Var.u(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull ArchiveListBean item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof t00) {
            t00 t00Var = (t00) binding;
            t00Var.t(item);
            t00Var.u(this);
        }
    }
}
