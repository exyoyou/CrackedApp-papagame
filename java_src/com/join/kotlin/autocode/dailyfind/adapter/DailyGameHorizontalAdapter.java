package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002J\u0016\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "updateGameUI", "helper", "updateDownloadProgress", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DailyGameHorizontalAdapter extends BaseQuickAdapter<CollectionBeanSub, v2.c> {
    public DailyGameHorizontalAdapter() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(v2.c cVar, CollectionBeanSub collectionBeanSub, View view) {
        ExtBean extBean;
        ExtBean extBeanBuildScene;
        Ext ext = null;
        IntentUtil.getInstance().intentActivity(cVar.itemView.getContext(), collectionBeanSub != null ? collectionBeanSub.getIntentDataBean() : null);
        t tVarL = t.l(view.getContext());
        Event event = Event.commonClick;
        if (collectionBeanSub != null && (extBean = collectionBeanSub.getExtBean()) != null && (extBeanBuildScene = extBean.buildScene()) != null) {
            ext = extBeanBuildScene.toExt();
        }
        tVarL.R1(event, ext);
    }

    public final void updateDownloadProgress(@NotNull v2.c helper, @NotNull CollectionBeanSub item) {
        DownloadNormalView downloadNormalView;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        DownloadTask task = DlTaskManager.INSTANCE.getTask(item);
        if (task == null || (downloadNormalView = (DownloadNormalView) helper.b(R.id.dv_view)) == null) {
            return;
        }
        downloadNormalView.d(task);
    }

    public final void updateGameUI(@NotNull v2.c helper, @NotNull CollectionBeanSub item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(helper.itemView.getContext(), item));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull final v2.c holder, int i10, @Nullable final CollectionBeanSub collectionBeanSub) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (collectionBeanSub != null) {
            l.o((SimpleDraweeView) holder.getView(R.id.image1), collectionBeanSub.getIco_remote());
            holder.n(R.id.appname1, collectionBeanSub.getGame_name());
            updateGameUI(holder, collectionBeanSub);
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DailyGameHorizontalAdapter.onBindViewHolder$lambda$0(holder, collectionBeanSub, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_daily_game_horizontal, parent);
    }
}
