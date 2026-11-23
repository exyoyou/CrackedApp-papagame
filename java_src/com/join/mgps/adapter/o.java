package com.join.mgps.adapter;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonGameInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
    public o(@Nullable List<CommonGameInfoBean> data) {
        super(R.layout.item_collection_seven_ad, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, CommonGameInfoBean item) {
        com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.adPic), item.getBig_pic());
    }
}
