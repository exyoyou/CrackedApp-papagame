package com.join.mgps.adapter;

import android.graphics.Color;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.TipBean;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class p3 extends BaseQuickAdapter<CollectionBeanSub, com.join.mgps.base.b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<CollectionBeanSub> f62997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f62998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f62999g;

    public p3(@Nullable List<CollectionBeanSub> datas) {
        super(R.layout.item_mod_game_recommend_expand, datas);
        this.f62998f = new int[]{R.drawable.shape_bg_mod_game_recommend_tag1, R.drawable.shape_bg_mod_game_recommend_tag2, R.drawable.shape_bg_mod_game_recommend_tag3};
        this.f62999g = new String[]{"#EACBC3", "#E8E351", "#D1AFF4"};
        this.f62997e = datas;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:67:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:73:0x0225  */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void convert(com.join.mgps.base.b helper, CollectionBeanSub item) {
        ((TextView) helper.getView(R.id.tvGameName)).setText(item.getGame_name());
        helper.getView(R.id.root).setBackgroundResource(item.isSelected() ? R.drawable.shape_bg_recom_selected : 0);
        int i10 = 0;
        for (CollectionBeanSub collectionBeanSub : this.f62997e) {
            if (TextUtils.equals(collectionBeanSub.getGame_id(), item.getGame_id())) {
                break;
            } else if (!TextUtils.isEmpty(collectionBeanSub.getGame_dimension())) {
                i10++;
            }
        }
        int i11 = i10 % 3;
        helper.getView(R.id.llTag).setBackgroundResource(this.f62998f[i11]);
        ((TextView) helper.getView(R.id.tvTag)).setTextColor(Color.parseColor(this.f62999g[i11]));
        helper.setVisible(R.id.llTag, !TextUtils.isEmpty(item.getGame_dimension()));
        ((TextView) helper.getView(R.id.tvTag)).setText(item.getGame_dimension());
        List<TipBean> tag_info = item.getTag_info();
        String str = "";
        if (tag_info != null) {
            Iterator<TipBean> it2 = tag_info.iterator();
            while (it2.hasNext()) {
                str = str + it2.next().getName() + " ";
            }
        }
        ((TextView) helper.getView(R.id.tvTags)).setText(str);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.ivGameIcon);
        if (simpleDraweeView.getTag() == null || !TextUtils.equals(simpleDraweeView.getTag().toString(), item.getIco_remote())) {
            com.join.android.app.common.utils.l.h(simpleDraweeView, item.getIco_remote());
            simpleDraweeView.setTag(item.getIco_remote());
        }
        if (item.getPic_info() != null && item.getPic_info().size() > 0 && item.getPic_info().get(0).getRemote() != null) {
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) helper.getView(R.id.ivGamePoster);
            if (simpleDraweeView2.getTag() == null || !TextUtils.equals(simpleDraweeView2.getTag().toString(), item.getPic_info().get(0).getRemote().getPath())) {
                com.join.android.app.common.utils.l.h(simpleDraweeView2, item.getPic_info().get(0).getRemote().getPath());
                simpleDraweeView2.getHierarchy().y(com.facebook.drawee.drawable.s.c.f27292i);
                simpleDraweeView2.setTag(item.getPic_info().get(0).getRemote().getPath());
            }
        }
        ProgressBar progressBar = (ProgressBar) helper.getView(R.id.progress);
        DownloadTask downloadTaskG = item.getMod_info() != null ? q5.f.M().G(item.getModGameId()) : q5.f.M().G(item.getGameId());
        String str2 = "获取";
        if (downloadTaskG != null) {
            int status = downloadTaskG.getStatus();
            if (status == 0) {
                progressBar.setVisibility(8);
            } else {
                if (status == 27) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) downloadTaskG.getProgress());
                } else if (status == 48) {
                    progressBar.setVisibility(8);
                    str2 = "安装中";
                } else if (status == 2) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) downloadTaskG.getProgress());
                } else if (status == 3) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) downloadTaskG.getProgress());
                    str2 = "继续";
                } else if (status == 5) {
                    progressBar.setVisibility(8);
                    str2 = "启动";
                } else if (status == 6) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) downloadTaskG.getProgress());
                    str2 = "继续";
                } else if (status == 7) {
                    progressBar.setVisibility(8);
                } else if (status == 42) {
                    progressBar.setVisibility(8);
                    str2 = "启动";
                } else if (status != 43) {
                    switch (status) {
                        case 10:
                            progressBar.setVisibility(8);
                            str2 = "等待";
                            break;
                        case 11:
                            progressBar.setVisibility(8);
                            str2 = "安装";
                            break;
                        case 12:
                            progressBar.setVisibility(8);
                            str2 = "解压中";
                            break;
                        case 13:
                            progressBar.setVisibility(8);
                            str2 = "解压";
                            break;
                    }
                } else {
                    progressBar.setVisibility(8);
                }
                str2 = "暂停";
            }
        }
        ((TextView) helper.getView(R.id.tvOption)).setText(str2);
        helper.addOnClickListener(R.id.tvOption);
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    public void setNewData(@Nullable List<CollectionBeanSub> data) {
        super.setNewData(data);
        this.f62997e = data;
    }
}
