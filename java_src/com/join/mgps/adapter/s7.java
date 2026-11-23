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
public class s7 extends BaseQuickAdapter<SimulatorFastEntryBean.ChangeGame, com.join.mgps.base.b> {
    public s7(@Nullable List<SimulatorFastEntryBean.ChangeGame> data) {
        super(R.layout.layout_simulator_change_game_item, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(SimulatorFastEntryBean.ChangeGame changeGame, com.join.mgps.base.b bVar, View view) {
        IntentDateBean intentDataBean = changeGame.getIntentDataBean();
        ExtBean extBean = changeGame.getExtBean();
        if (extBean == null) {
            extBean = new ExtBean();
        }
        extBean.setFrom("207");
        extBean.set_from_type(207);
        intentDataBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.mContext, intentDataBean);
        com.papa.sim.statistic.t.l(bVar.itemView.getContext()).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(final com.join.mgps.base.b helper, final SimulatorFastEntryBean.ChangeGame item) {
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivGamePic), item.getBig_pic());
        helper.setText(R.id.tvGameName, item.getTitle());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63123b.t(item, helper, view);
            }
        });
    }
}
