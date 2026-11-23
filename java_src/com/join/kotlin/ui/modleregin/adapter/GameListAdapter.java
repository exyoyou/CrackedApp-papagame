package com.join.kotlin.ui.modleregin.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.m7;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.psk.kotlin.util.CommonListMainData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0014J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\"\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lcom/join/android/app/mgsim/wufun/databinding/BtListitemBinding;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getLayoutResId", "", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/GameListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"})
public final class GameListAdapter extends BaseDataBindingAdapter<CommonListMainData, m7> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameListAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        return R.layout.bt_listitem;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull m7 binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        Object any = item.getAny();
        Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
        BtGameListItem btGameListItem = (BtGameListItem) any;
        binding.setVariable(3, btGameListItem);
        if (btGameListItem.getAppitemShow() == null) {
            btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), false));
            Unit unit = Unit.INSTANCE;
        }
        AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
        if (appitemShow != null) {
            appitemShow.updateItemNormal(btGameListItem.getGameInfo());
        }
        binding.setVariable(28, btGameListItem.getAppitemShow());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull m7 binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        Object any = item.getAny();
        Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
        BtGameListItem btGameListItem = (BtGameListItem) any;
        binding.setVariable(3, btGameListItem);
        if (btGameListItem.getAppitemShow() == null) {
            btGameListItem.setAppitemShow(new AppListItemShowBean(btGameListItem.getGameInfo(), true));
            Unit unit = Unit.INSTANCE;
        }
        AppListItemShowBean appitemShow = btGameListItem.getAppitemShow();
        if (appitemShow != null) {
            appitemShow.updateItemProgress(btGameListItem.getGameInfo().getDownloadTask());
        }
        binding.setVariable(28, btGameListItem.getAppitemShow());
    }
}
