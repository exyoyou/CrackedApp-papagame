package com.join.mgps.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class u4 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<Object> f63226b;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f63227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        LinearLayout f63229c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63230d;

        a() {
        }
    }

    public u4(List<Object> datas) {
        this.f63226b = datas;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63226b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63226b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        a aVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_papa_gameinfo, (ViewGroup) null);
            aVar = new a();
            aVar.f63227a = (SimpleDraweeView) convertView.findViewById(R.id.icon);
            aVar.f63230d = (TextView) convertView.findViewById(R.id.appDesc);
            aVar.f63229c = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
            aVar.f63228b = (TextView) convertView.findViewById(R.id.appName);
            convertView.setTag(aVar);
        } else {
            aVar = (a) convertView.getTag();
        }
        Object obj = this.f63226b.get(position);
        if (obj instanceof DownloadTask) {
            DownloadTask downloadTask = (DownloadTask) obj;
            com.join.android.app.common.utils.l.h(aVar.f63227a, downloadTask.getPortraitURL());
            Double.parseDouble(downloadTask.getShowSize());
            UtilsMy.K(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), aVar.f63229c, parent.getContext());
            aVar.f63228b.setText(downloadTask.getShowName());
            aVar.f63230d.setText(downloadTask.getDescribe());
        } else if (obj instanceof CollectionBeanSub) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) obj;
            com.join.android.app.common.utils.l.h(aVar.f63227a, collectionBeanSub.getIco_remote());
            Double.parseDouble(collectionBeanSub.getSize());
            UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), aVar.f63229c, parent.getContext());
            aVar.f63228b.setText(collectionBeanSub.getGame_name());
            aVar.f63230d.setText(collectionBeanSub.getInfo());
        }
        return convertView;
    }
}
