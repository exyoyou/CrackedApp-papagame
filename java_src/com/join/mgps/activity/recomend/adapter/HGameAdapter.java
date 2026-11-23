package com.join.mgps.activity.recomend.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.c50;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.AppBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m6.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J(\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0002¨\u0006\u0016"}, d2 = {"Lcom/join/mgps/activity/recomend/adapter/HGameAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/AppBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemRecommendGame3Binding;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "onBindGameList", "helper", "bean", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HGameAdapter extends BaseQuickAdapter<AppBean, a<c50>> {
    public HGameAdapter() {
        super(null, 1, null);
    }

    private final void onBindGameList(a<c50> aVar, AppBean appBean) {
        DownloadNormalView downloadNormalView;
        c50 c50Var = (c50) aVar.a();
        if (c50Var == null || (downloadNormalView = c50Var.f36780b) == null) {
            return;
        }
        downloadNormalView.f(new c(this, getContext()) { // from class: com.join.mgps.activity.recomend.adapter.HGameAdapter.onBindGameList.1
            final /* synthetic */ HGameAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$bean);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                AppBean appBean2 = this.$bean;
                if (appBean2 != null) {
                    HGameAdapter hGameAdapter = this.this$0;
                    appBean2.setExt(JsonMapper.toJsonString(appBean2.getExtBean().buildScene().toExt()));
                    t.l(hGameAdapter.getContext()).R1(Event.commonClick, appBean2.getExtBean().copy().setTypeCode("btnDown").buildScene().toExt());
                }
                super.onViewClicked(downView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<c50> holder, int i10, @Nullable AppBean appBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        c50 c50Var = (c50) holder.a();
        if (c50Var != null) {
            c50Var.n(appBean);
        }
        onBindGameList(holder, appBean);
        c50 c50Var2 = (c50) holder.a();
        if (c50Var2 != null) {
            c50Var2.executePendingBindings();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<c50> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_recommend_game_3, parent);
    }
}
