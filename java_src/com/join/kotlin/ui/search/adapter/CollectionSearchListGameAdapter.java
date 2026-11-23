package com.join.kotlin.ui.search.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.databinding.kx;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonMultiItemBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J(\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0014J\u001e\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/ui/search/adapter/CollectionSearchListGameAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemCollectionSearchListGameBinding;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "updateGameUI", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CollectionSearchListGameAdapter extends BaseQuickAdapter<CommonMultiItemBean, v2.a<kx>> {
    public CollectionSearchListGameAdapter() {
        super(null, 1, null);
    }

    public final void updateGameUI(@NotNull v2.a<kx> holder, @Nullable CommonMultiItemBean commonMultiItemBean) {
        kx kxVar;
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (commonMultiItemBean == null || (kxVar = (kx) holder.a()) == null || (downloadNormalView = kxVar.f41027c) == null) {
            return;
        }
        downloadNormalView.f(new m6.c(getContext(), commonMultiItemBean));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.a<kx> holder, int i10, @Nullable CommonMultiItemBean commonMultiItemBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        kx kxVar = (kx) holder.a();
        if (kxVar != null) {
            kxVar.u(commonMultiItemBean != null ? (SearchGameBean) commonMultiItemBean.getData() : null);
        }
        kx kxVar2 = (kx) holder.a();
        if (kxVar2 != null) {
            kxVar2.t(commonMultiItemBean != null ? commonMultiItemBean.getDownState() : null);
        }
        if (((kx) holder.a()) != null) {
            updateGameUI(holder, commonMultiItemBean);
        }
        kx kxVar3 = (kx) holder.a();
        if (kxVar3 != null) {
            kxVar3.executePendingBindings();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.a<kx> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.a<>(kx.inflate(LayoutInflater.from(context)));
    }
}
