package com.join.mgps.adapter;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.HomeDailyNewListBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class y4 extends BaseQuickAdapter<HomeDailyNewListBean, com.join.mgps.base.b> {
    public y4(@Nullable List<HomeDailyNewListBean> data) {
        super(R.layout.item_papa_main_home_v4_daily_new_list, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, HomeDailyNewListBean item) {
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.icon), item.getIco());
    }
}
