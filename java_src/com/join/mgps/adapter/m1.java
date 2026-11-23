package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class m1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<ScreenshotGamedetialBean> f62743d;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f62745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62746c;

        private b() {
        }
    }

    public m1(Context context) {
        this.f62743d = new ArrayList();
        this.f62741b = context;
        this.f62742c = LayoutInflater.from(context);
    }

    public List<ScreenshotGamedetialBean> a() {
        return this.f62743d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62743d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return Integer.valueOf(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62742c.inflate(R.layout.game_detail_screenshot_item_v1, (ViewGroup) null);
            bVar = new b();
            bVar.f62745b = (TextView) convertView.findViewById(R.id.number);
            bVar.f62744a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62746c = (TextView) convertView.findViewById(R.id.title);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        ScreenshotGamedetialBean screenshotGamedetialBean = this.f62743d.get(i10);
        bVar.f62746c.setText(screenshotGamedetialBean.getTitle());
        bVar.f62745b.setText(screenshotGamedetialBean.getCount() + "");
        com.join.android.app.common.utils.l.e(bVar.f62744a, R.drawable.rect_normal_icon, screenshotGamedetialBean.getPic(), com.facebook.drawee.drawable.s.c.f27292i);
        return convertView;
    }

    public m1(Context context, List<ScreenshotGamedetialBean> strings) {
        this.f62743d = new ArrayList();
        this.f62741b = context;
        this.f62742c = LayoutInflater.from(context);
        this.f62743d = strings;
    }
}
