package com.join.kotlin.ui.netgame.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.c;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "updateDownloadProgress", "game", "bindGame", "bindGameDownload", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NetGameCategoryGameAdapter extends BaseQuickAdapter<CommonGameInfoBean, c> {
    public NetGameCategoryGameAdapter() {
        super(null, 1, null);
    }

    private final void bindGame(c cVar, CommonGameInfoBean commonGameInfoBean) {
        GInfoBean g_info = commonGameInfoBean.getG_info();
        cVar.n(R.id.tv_text_1, commonGameInfoBean.getShowName());
        String info = g_info != null ? g_info.getInfo() : null;
        if (info == null) {
            info = "";
        }
        cVar.n(R.id.tv_text_5, info);
        cVar.n(R.id.tv_text_3, UtilsMy.R1(g_info != null ? g_info.getSp_tag_info() : null, g_info != null ? g_info.getTag_info() : null, " | "));
        cVar.n(R.id.tv_text_2, commonGameInfoBean.getShowScore());
        if (g_info != null && g_info.getGift_package_switch() == 1) {
            cVar.h(R.id.iv_1, false);
        } else {
            cVar.h(R.id.iv_1, true);
        }
        l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), commonGameInfoBean.getIcon());
        if (TextUtils.isEmpty(g_info != null ? g_info.getApp_size() : null)) {
            cVar.h(R.id.tv_text_4, true);
        } else {
            try {
                Intrinsics.checkNotNull(g_info);
                String app_size = g_info.getApp_size();
                Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
                double d10 = 1024;
                cVar.n(R.id.tv_text_4, UtilsMy.c((long) (Double.parseDouble(app_size) * d10 * d10)));
                cVar.h(R.id.tv_text_4, false);
            } catch (Exception unused) {
                cVar.h(R.id.tv_text_4, true);
            }
        }
        cVar.h(R.id.g_1, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_3, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_4, commonGameInfoBean.isH5Game());
    }

    private final void bindGameDownload(c cVar, CommonGameInfoBean commonGameInfoBean) {
        ((DownloadNormalView) cVar.getView(R.id.dv_view)).f(new m6.c(this, cVar.itemView.getContext()) { // from class: com.join.kotlin.ui.netgame.adapter.NetGameCategoryGameAdapter.bindGameDownload.1
            final /* synthetic */ NetGameCategoryGameAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(context, this.$game);
                this.this$0 = this;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewClicked(DownloadNormalView downView) {
                ExtBean extBean = this.$game.getExtBean();
                if (extBean != null) {
                    t.l(this.this$0.getContext()).R1(Event.commonClick, extBean.copy().setTypeCode("btnDown").buildScene().toExt());
                }
                super.onViewClicked(downView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(NetGameCategoryGameAdapter netGameCategoryGameAdapter, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(netGameCategoryGameAdapter.getContext(), commonGameInfoBean.getIntentDataBean());
    }

    public final void updateDownloadProgress(@NotNull c holder, @NotNull CommonGameInfoBean game) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(game, "game");
        DownloadTask task = DlTaskManager.INSTANCE.getTask(game);
        if (task == null || (downloadNormalView = (DownloadNormalView) holder.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull c holder, int i10, @Nullable final CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (commonGameInfoBean == null) {
            return;
        }
        bindGame(holder, commonGameInfoBean);
        bindGameDownload(holder, commonGameInfoBean);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.netgame.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NetGameCategoryGameAdapter.onBindViewHolder$lambda$0(this.f49300b, commonGameInfoBean, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new c(R.layout.item_game_express_game, parent);
    }
}
