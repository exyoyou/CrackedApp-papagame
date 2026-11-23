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
public class a8 extends BaseQuickAdapter<SimulatorFastEntryBean.GameInfo, com.join.mgps.base.b> {
    public a8(@Nullable List<SimulatorFastEntryBean.GameInfo> data) {
        super(R.layout.layout_simulator_tag_game_item, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(SimulatorFastEntryBean.GameInfo gameInfo, com.join.mgps.base.b bVar, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameInfo.getId());
        if (intentDateBean.getExtBean() == null) {
            intentDateBean.setExtBean(new ExtBean());
        }
        intentDateBean.getExtBean().setFrom(String.valueOf(207));
        intentDateBean.getExtBean().set_from_type(207);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDateBean);
        com.papa.sim.statistic.t.l(bVar.itemView.getContext()).R1(Event.commonClick, gameInfo.getExtBean().buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(final com.join.mgps.base.b helper, final SimulatorFastEntryBean.GameInfo item) {
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivGameIcon), item.getIco());
        helper.setText(R.id.tvGameName, item.getGame());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f64045b.t(item, helper, view);
            }
        });
    }
}
