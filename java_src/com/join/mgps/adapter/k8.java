package com.join.mgps.adapter;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k8 extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
    public k8(@Nullable List<CommonGameInfoBean> data) {
        super(R.layout.item_uninstall_recom_list, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Context context, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(context, commonGameInfoBean.getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b holder, final CommonGameInfoBean item) {
        if (item == null || item.getG_info() == null) {
            return;
        }
        GInfoBean g_info = item.getG_info();
        if (g_info != null) {
            final Context context = this.mContext;
            holder.setText(R.id.tvGameName, g_info.getName());
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.j8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    k8.t(context, item, view);
                }
            });
            if (com.join.mgps.Util.t2.i(item.getBig_pic())) {
                com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.gamePic), item.getBig_pic());
            } else {
                List<String> pic_info = g_info.getPic_info();
                if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) holder.getView(R.id.gamePic), pic_info.get(0));
                }
            }
        }
        u(holder, item);
    }

    public void u(com.join.mgps.base.b holder, CommonGameInfoBean item) {
        ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(this.mContext, item));
    }
}
