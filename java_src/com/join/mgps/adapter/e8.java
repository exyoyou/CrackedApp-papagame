package com.join.mgps.adapter;

import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.papa.sim.statistic.Event;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e8 extends BaseQuickAdapter<SimulatorFastEntryBean.GameInfo, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f62063e;

    public e8(@Nullable List<SimulatorFastEntryBean.GameInfo> data, boolean isClassic) {
        super(R.layout.layout_simulator_grid_game, data);
        this.f62063e = isClassic;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(SimulatorFastEntryBean.GameInfo gameInfo, com.join.mgps.base.b bVar, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameInfo.getId());
        ExtBean extBean = gameInfo.getExtBean();
        if (extBean == null) {
            extBean = new ExtBean();
        }
        extBean.setFrom("207");
        extBean.set_from_type(207);
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDateBean);
        com.papa.sim.statistic.t.l(bVar.itemView.getContext()).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(final com.join.mgps.base.b helper, final SimulatorFastEntryBean.GameInfo item) {
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.gameIcon), item.getIco());
        helper.setText(R.id.gameName, item.getGame());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.d8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f61903b.t(item, helper, view);
            }
        });
    }
}
