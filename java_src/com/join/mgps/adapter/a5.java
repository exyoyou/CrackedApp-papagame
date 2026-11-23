package com.join.mgps.adapter;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonGameInfoBean;
import com.papa.sim.statistic.ExtFrom;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a5 extends BaseQuickAdapter<List<CommonGameInfoBean>, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f6.g f61235e;

    public a5(@Nullable List<List<CommonGameInfoBean>> data, f6.g clickProxy) {
        super(R.layout.layout_papa_main_home_rank_rv, data);
        this.f61235e = clickProxy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(List list, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        IntentUtil.getInstance().intentActivity(this.mContext, ((CommonGameInfoBean) list.get(i10)).getIntentDataBean());
        u(((CommonGameInfoBean) list.get(i10)).getExp_position());
    }

    private void u(String pointName) {
        com.papa.sim.statistic.t.l(this.mContext).t(ExtFrom.home.name(), "22-" + pointName, AccountUtil_.getInstance_(this.mContext).getUid());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, final List<CommonGameInfoBean> item) {
        RecyclerView recyclerView = (RecyclerView) helper.getView(R.id.recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        m6 m6Var = new m6(item);
        m6Var.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.adapter.z4
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f64040a.t(item, baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(m6Var);
    }
}
