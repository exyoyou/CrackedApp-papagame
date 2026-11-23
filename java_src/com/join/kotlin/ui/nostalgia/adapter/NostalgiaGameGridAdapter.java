package com.join.kotlin.ui.nostalgia.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.c;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00132\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "updateGameUI", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NostalgiaGameGridAdapter extends BaseQuickAdapter<CommonGameInfoBean, c> {
    public NostalgiaGameGridAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(NostalgiaGameGridAdapter nostalgiaGameGridAdapter, CommonGameInfoBean commonGameInfoBean, c cVar, View view) {
        IntentUtil.getInstance().intentActivity(nostalgiaGameGridAdapter.getContext(), commonGameInfoBean.getIntentDataBean());
        t.l(cVar.itemView.getContext()).R1(Event.commonClick, commonGameInfoBean.getExtBean().buildScene().toExt());
    }

    public final void updateGameUI(@NotNull RecyclerView.ViewHolder holder, @Nullable CommonGameInfoBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null || !(holder instanceof c)) {
            return;
        }
        ((DownloadNormalView) ((c) holder).getView(R.id.dv_view)).f(new m6.c(getContext(), item));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final c holder, int i10, @Nullable final CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (commonGameInfoBean == null) {
            return;
        }
        GInfoBean g_info = commonGameInfoBean.getG_info();
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.nostalgia.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NostalgiaGameGridAdapter.onBindViewHolder$lambda$0(this.f49316b, commonGameInfoBean, holder, view);
            }
        });
        l.o((SimpleDraweeView) holder.getView(R.id.sdv_image), commonGameInfoBean.getBig_pic());
        l.o((SimpleDraweeView) holder.getView(R.id.sdv_icon), g_info != null ? g_info.getIco() : null);
        if (g_info != null) {
            holder.n(R.id.tv_text_1, g_info.getName());
            holder.n(R.id.tv_text_3, UtilsMy.R1(g_info.getSp_tag_info(), g_info.getTag_info(), " | "));
        } else {
            holder.n(R.id.tv_text_1, commonGameInfoBean.getTitle());
            holder.n(R.id.tv_text_3, "");
        }
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(getContext(), commonGameInfoBean));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new c(R.layout.item_nostalgia_game, parent);
    }
}
