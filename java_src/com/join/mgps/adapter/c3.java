package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c3 extends BaseQuickAdapter<PAPAHomeBeanV7.HomeBeanDTO, com.join.mgps.base.b> {
    public c3(@Nullable List<PAPAHomeBeanV7.HomeBeanDTO> data) {
        super(R.layout.mgpapa_home_recommend_item, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(com.join.mgps.base.b helper, PAPAHomeBeanV7.HomeBeanDTO bean) {
        PAPAHomeBeanV7.GInfoDTO g_info = bean.getG_info();
        TextView textView = (TextView) helper.getView(R.id.tvGameName);
        if (g_info != null) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivGameIcon), g_info.getIco());
            textView.setText(g_info.getName());
        }
        helper.addOnClickListener(R.id.flBtn);
        helper.setVisible(R.id.tvBtn, true);
        helper.setVisible(R.id.loading_progress, false);
        TextView textView2 = (TextView) helper.getView(R.id.tvBtn);
        textView2.setText("获取");
        DownloadTask downloadTask = bean.getDownloadTask();
        CollectionBeanSub gameBean = bean.getGameBean();
        if (downloadTask != null) {
            downloadTask.getSize();
        }
        if (bean.getJp_info() != null && bean.getJp_info().getLink_type().intValue() != 1) {
            textView2.setText("打开");
            textView.setText(bean.getTitle());
            return;
        }
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                textView2.setText("开始");
                return;
            }
        }
        if (downloadTask == null) {
            if (gameBean == null) {
                return;
            }
            if (!UtilsMy.p0(gameBean.getTag_info())) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(textView2, textView2, gameBean);
                return;
            }
            if (!com.join.android.app.common.utils.g.t0(this.mContext).e(this.mContext, gameBean.getPackageName()) || UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) != 0) {
                UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.w3(textView2, textView2, gameBean);
                return;
            }
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.mContext).n(this.mContext, gameBean.getPackageName());
            if (!com.join.mgps.Util.t2.i(gameBean.getVer()) || aVarN.d() >= Integer.parseInt(gameBean.getVer())) {
                textView2.setText("启动");
                return;
            } else {
                textView2.setText("更新");
                return;
            }
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.x0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView2.setText("暂停中");
                return;
            }
            if (status == 48) {
                textView2.setText("安装中");
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                textView2.setText(downloadTask.getProgress() + "%");
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7) {
                            if (status != 42) {
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            textView2.setText("更新");
                                            break;
                                        case 10:
                                            textView2.setText("等待");
                                            break;
                                        case 11:
                                            textView2.setText("安装");
                                            break;
                                        case 12:
                                            textView2.setText("解压中");
                                            break;
                                        case 13:
                                            textView2.setText("解压");
                                            break;
                                    }
                                }
                            }
                        }
                    }
                }
                textView2.setText("启动");
                return;
            }
            textView2.setText("继续");
            return;
        }
        textView2.setText("获取");
    }
}
