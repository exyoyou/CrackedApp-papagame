package com.join.mgps.adapter;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class u extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
    public u(@Nullable List<CommonGameInfoBean> data) {
        super(R.layout.item_collection_seven_horizontal_item, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, CommonGameInfoBean item) {
        helper.itemView.setVisibility(0);
        ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(this.mContext, item));
        if (item.getG_info() != null) {
            GInfoBean g_info = item.getG_info();
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.image1), TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
            helper.setText(R.id.appname1, g_info.getName());
        }
    }
}
