package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
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
import com.join.mgps.dto.GInfoBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002J\u0016\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002J\u0016\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "bindGame", "helper", "updateGameUI", "updateDownloadProgress", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyGameAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyGameAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"})
public final class DailyGameAdapter extends BaseQuickAdapter<CommonGameInfoBean, v2.c> {
    public DailyGameAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindGame$lambda$1(v2.c cVar, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(cVar.itemView.getContext(), commonGameInfoBean.getIntentDataBean());
        t.l(cVar.itemView.getContext()).R1(Event.commonClick, commonGameInfoBean.getExtBean().buildScene().toExt());
    }

    public final void bindGame(@NotNull final v2.c helper, @NotNull final CommonGameInfoBean item) {
        String ico;
        Integer link_type;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        try {
            GInfoBean g_info = item.getG_info();
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.mgListviewItemIcon);
            if (g_info == null) {
                ico = item.getBig_pic();
            } else {
                ico = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
            }
            l.o(simpleDraweeView, ico);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DailyGameAdapter.bindGame$lambda$1(helper, item, view);
                }
            });
            if ((item.getJp_info() == null || ((link_type = item.getJp_info().getLink_type()) != null && link_type.intValue() == 1)) && !item.isH5Game()) {
                v2.c cVarN = helper.n(R.id.mgListviewItemAppname, g_info == null ? item.getTitle() : g_info.getName());
                String info = g_info != null ? g_info.getInfo() : null;
                if (info == null) {
                    info = "";
                }
                cVarN.n(R.id.mgListviewItemDescribe, info);
                if (g_info != null) {
                    UtilsMy.Q(g_info.getScore().toString(), g_info.getDown_count(), g_info.getApp_size(), g_info.getSp_tag_info(), g_info.getTag_info(), (LinearLayout) helper.getView(R.id.tipsLayout), helper.itemView.getContext(), false);
                }
                Unit unit = Unit.INSTANCE;
            } else {
                helper.n(R.id.mgListviewItemAppname, item.getTitle()).n(R.id.mgListviewItemDescribe, item.getSub_title());
            }
            updateGameUI(helper, item);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void updateDownloadProgress(@NotNull v2.c helper, @NotNull CommonGameInfoBean item) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        DownloadTask task = DlTaskManager.INSTANCE.getTask(item);
        if (task == null || (downloadNormalView = (DownloadNormalView) helper.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    public final void updateGameUI(@NotNull v2.c helper, @NotNull CommonGameInfoBean item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(helper.itemView.getContext(), item));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (commonGameInfoBean != null) {
            bindGame(holder, commonGameInfoBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_daily_game, parent);
    }
}
