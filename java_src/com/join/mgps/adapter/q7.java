package com.join.mgps.adapter;

import android.content.Intent;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.papa.sim.statistic.Event;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q7 extends BaseQuickAdapter<SimulatorFastEntryBean.FastEntryBean, com.join.mgps.base.b> {
    public q7(@Nullable List<SimulatorFastEntryBean.FastEntryBean> data) {
        super(R.layout.layout_simulator_fast_entry_item, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(SimulatorFastEntryBean.FastEntryBean fastEntryBean, com.join.mgps.base.b bVar, View view) {
        Intent intent = new Intent(this.mContext, (Class<?>) CategoryDetailListActivity.class);
        intent.putExtra("typeId", 1);
        intent.putExtra("tagId", fastEntryBean.getId());
        intent.putExtra("tagName", fastEntryBean.getTitle());
        intent.putExtra("from", 207);
        intent.putExtra("parentExtBean", fastEntryBean.getExtBean());
        this.mContext.startActivity(intent);
        com.papa.sim.statistic.t.l(bVar.itemView.getContext()).R1(Event.commonClick, fastEntryBean.getExtBean().buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(final com.join.mgps.base.b helper, final SimulatorFastEntryBean.FastEntryBean item) {
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.icon), item.getPic());
        helper.setText(R.id.name, item.getTitle());
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63005b.t(item, helper, view);
            }
        });
    }
}
