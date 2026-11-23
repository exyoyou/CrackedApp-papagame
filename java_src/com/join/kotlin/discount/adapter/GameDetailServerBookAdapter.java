package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.wz;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J(\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemDiscountGameDetailServerListBinding;", "<init>", "()V", "click", "Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;", "getClick", "()Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;", "setClick", "(Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;)V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailServerBookAdapter extends BaseQuickAdapter<GameServerInfoBean, a<wz>> {

    @Nullable
    private GameDetailServerBookDialogClickProxy click;

    public GameDetailServerBookAdapter() {
        super(null, 1, null);
    }

    @Nullable
    public final GameDetailServerBookDialogClickProxy getClick() {
        return this.click;
    }

    public final void setClick(@Nullable GameDetailServerBookDialogClickProxy gameDetailServerBookDialogClickProxy) {
        this.click = gameDetailServerBookDialogClickProxy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<wz> holder, int i10, @Nullable GameServerInfoBean gameServerInfoBean) {
        View view;
        Intrinsics.checkNotNullParameter(holder, "holder");
        wz wzVar = (wz) holder.a();
        if (wzVar != null) {
            wzVar.u(gameServerInfoBean);
        }
        wz wzVar2 = (wz) holder.a();
        if (wzVar2 != null) {
            wzVar2.t(this.click);
        }
        wz wzVar3 = (wz) holder.a();
        if (wzVar3 == null || (view = wzVar3.f47017b) == null) {
            return;
        }
        view.setSelected((gameServerInfoBean != null && gameServerInfoBean.getSubscribe()) && Intrinsics.areEqual(gameServerInfoBean.getExpire(), Boolean.FALSE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<wz> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_discount_game_detail_server_list, parent);
    }
}
