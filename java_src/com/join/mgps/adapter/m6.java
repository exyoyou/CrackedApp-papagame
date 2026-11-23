package com.join.mgps.adapter;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class m6 extends BaseQuickAdapter<CommonGameInfoBean, com.join.mgps.base.b> {
    public m6(@Nullable List<CommonGameInfoBean> data) {
        super(R.layout.ranking_listview_item, data);
    }

    public void r(com.join.mgps.base.b helper, CommonGameInfoBean bean) {
        ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(this.mContext, bean));
        if (bean.getJp_info() != null && bean.getJp_info().getLink_type().intValue() != 1) {
            helper.setText(R.id.tv_text_1, bean.getTitle()).setText(R.id.tv_text_5, bean.getSub_title());
            helper.setGone(R.id.g_1, false);
            helper.setGone(R.id.tv_text_3, false);
            helper.setGone(R.id.tv_text_4, false);
            return;
        }
        if (bean.isH5Game()) {
            helper.setText(R.id.tv_text_1, bean.getTitle()).setText(R.id.tv_text_5, bean.getSub_title());
            helper.setGone(R.id.g_1, false);
            helper.setGone(R.id.tv_text_3, false);
            helper.setGone(R.id.tv_text_4, false);
            return;
        }
        boolean z10 = bean.getG_info() != null;
        helper.setGone(R.id.g_1, z10);
        helper.setGone(R.id.tv_text_3, z10);
        helper.setGone(R.id.tv_text_4, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, CommonGameInfoBean bean) {
        String ico;
        try {
            int layoutPosition = helper.getLayoutPosition();
            if (layoutPosition < 0) {
                layoutPosition = 0;
            }
            int i10 = layoutPosition + 1;
            if (i10 == 1) {
                helper.setGone(R.id.tvNumber, true);
                helper.setText(R.id.tvNumber, String.valueOf(i10));
                helper.setTextColor(R.id.tvNumber, Color.parseColor("#FF7300"));
            } else if (i10 == 2) {
                helper.setGone(R.id.tvNumber, true);
                helper.setText(R.id.tvNumber, String.valueOf(i10));
                helper.setTextColor(R.id.tvNumber, Color.parseColor("#FFBB00"));
            } else {
                helper.setGone(R.id.tvNumber, true);
                helper.setText(R.id.tvNumber, String.valueOf(i10));
                helper.setTextColor(R.id.tvNumber, Color.parseColor("#333333"));
            }
            GInfoBean g_info = bean.getG_info();
            if (g_info == null) {
                ico = bean.getBig_pic();
            } else {
                ico = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
            }
            if (helper.itemView.getTag() == null || !TextUtils.equals(helper.itemView.getTag().toString(), ico)) {
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), ico);
                helper.itemView.setTag(ico);
            }
            String info = "";
            if (g_info != null) {
                helper.setText(R.id.tv_text_1, g_info.getName());
                helper.setText(R.id.tv_text_2, g_info.getScore() == null ? "" : String.valueOf(g_info.getScore()));
                helper.setText(R.id.tv_text_3, UtilsMy.R1(g_info.getSp_tag_info(), g_info.getTag_info(), " | "));
                if (TextUtils.isEmpty(g_info.getApp_size())) {
                    helper.setText(R.id.tv_text_4, "");
                } else {
                    long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
                    if (j10 > 0) {
                        helper.setText(R.id.tv_text_4, UtilsMy.c(j10));
                    } else {
                        helper.setText(R.id.tv_text_4, "");
                    }
                }
                if (!TextUtils.isEmpty(g_info.getInfo())) {
                    info = g_info.getInfo();
                }
                helper.setText(R.id.tv_text_5, info);
            } else {
                helper.setText(R.id.tv_text_1, bean.getTitle());
                helper.setText(R.id.tv_text_2, "");
                helper.setText(R.id.tv_text_3, "");
                helper.setText(R.id.tv_text_4, "");
                helper.setText(R.id.tv_text_5, "");
            }
            if (bean.giftSwitch()) {
                helper.setGone(R.id.iv_1, true);
            } else {
                helper.setGone(R.id.iv_1, false);
            }
            r(helper, bean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
