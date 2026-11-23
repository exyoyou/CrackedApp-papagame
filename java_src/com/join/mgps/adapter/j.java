package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.gx;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends BaseQuickAdapter<CommonGameInfoBean, v2.a<gx>> {
    public j() {
        super(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0095  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a5  */
    public static final void l(CommonGameInfoBean commonGameInfoBean, j jVar, View view) {
        if (commonGameInfoBean != null) {
            ExtBean extBeanCopy = commonGameInfoBean.getExtBean().copy();
            String modGameId = commonGameInfoBean.getModGameId();
            if (com.join.mgps.Util.t2.h(modGameId)) {
                modGameId = commonGameInfoBean.getGameId();
            }
            if (commonGameInfoBean.hasGInfo()) {
                GInfo gInfo = commonGameInfoBean.getGInfo();
                if (com.join.mgps.Util.w0.p(gInfo != null ? gInfo.getTagInfo() : null)) {
                    com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(jVar.getContext());
                    Event event = Event.gameStart;
                    Intrinsics.checkNotNull(extBeanCopy);
                    tVarL.R1(event, extBeanCopy.buildScene().toExt());
                } else {
                    com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(jVar.getContext());
                    Event event2 = Event.commonClick;
                    Intrinsics.checkNotNull(extBeanCopy);
                    ExtBean extBeanBuildScene = extBeanCopy.buildScene();
                    Intrinsics.checkNotNull(extBeanBuildScene);
                    tVarL2.R1(event2, extBeanBuildScene.toExt());
                }
            } else {
                com.papa.sim.statistic.t tVarL3 = com.papa.sim.statistic.t.l(jVar.getContext());
                Event event3 = Event.commonClick;
                Intrinsics.checkNotNull(extBeanCopy);
                ExtBean extBeanBuildScene2 = extBeanCopy.buildScene();
                Intrinsics.checkNotNull(extBeanBuildScene2);
                tVarL3.R1(event3, extBeanBuildScene2.toExt());
            }
            if (commonGameInfoBean.hasGInfo()) {
                GInfo gInfo2 = commonGameInfoBean.getGInfo();
                if (com.join.mgps.Util.w0.p(gInfo2 != null ? gInfo2.getTagInfo() : null)) {
                    com.papa.sim.statistic.t tVarL4 = com.papa.sim.statistic.t.l(jVar.getContext());
                    Event event4 = Event.gameStart;
                    ExtBean extBeanBuildScene3 = extBeanCopy.buildScene();
                    tVarL4.R1(event4, extBeanBuildScene3 != null ? extBeanBuildScene3.toExt() : null);
                } else {
                    com.papa.sim.statistic.t tVarL5 = com.papa.sim.statistic.t.l(jVar.getContext());
                    Event event5 = Event.commonClick;
                    ExtBean extBeanBuildScene4 = extBeanCopy.buildScene();
                    tVarL5.R1(event5, extBeanBuildScene4 != null ? extBeanBuildScene4.toExt() : null);
                }
            } else {
                com.papa.sim.statistic.t tVarL6 = com.papa.sim.statistic.t.l(jVar.getContext());
                Event event6 = Event.commonClick;
                ExtBean extBeanBuildScene5 = extBeanCopy.buildScene();
                tVarL6.R1(event6, extBeanBuildScene5 != null ? extBeanBuildScene5.toExt() : null);
            }
            DownloadTask downloadTaskL = q5.f.M().L(modGameId);
            if (downloadTaskL == null) {
                downloadTaskL = com.join.mgps.Util.w0.i(commonGameInfoBean);
            }
            if (downloadTaskL == null) {
                return;
            }
            UtilsMy.K2(jVar.getContext(), downloadTaskL, extBeanCopy);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.a<gx> holder, int i10, @Nullable final CommonGameInfoBean commonGameInfoBean) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        gx gxVar = (gx) holder.a();
        if (gxVar != null) {
            gxVar.n(commonGameInfoBean);
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.l(commonGameInfoBean, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.a<gx> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.a<>(R.layout.item_cloud_game_recent_game, parent);
    }
}
