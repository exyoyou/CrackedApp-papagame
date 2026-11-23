package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.sz;
import com.join.kotlin.discount.model.bean.GameDetailDialogInfoBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J(\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemDiscountGameDetailDialogInfoListBinding;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailInfoBottomDialogAdapter extends BaseQuickAdapter<GameDetailDialogInfoBean, a<sz>> {
    public GameDetailInfoBottomDialogAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<sz> holder, int i10, @Nullable GameDetailDialogInfoBean gameDetailDialogInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        sz szVar = (sz) holder.a();
        if (szVar != null) {
            szVar.n(gameDetailDialogInfoBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<sz> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_discount_game_detail_dialog_info_list, parent);
    }
}
