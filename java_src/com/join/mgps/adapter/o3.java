package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o3 extends BaseQuickAdapter<CollectionBeanSub, com.join.mgps.base.b> {
    public o3(@Nullable List<CollectionBeanSub> data) {
        super(R.layout.item_mod_game_recommend_shrink, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(com.join.mgps.base.b helper, CollectionBeanSub item) {
        com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivGameIcon), item.getIco_remote());
        ((TextView) helper.getView(R.id.tvGameName)).setText(item.getGame_name());
    }
}
