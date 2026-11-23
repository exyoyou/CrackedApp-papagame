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
public class l1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<ScreenshotGamedetialBean> f62653d;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f62655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62656c;

        private b() {
        }
    }

    public l1(Context context) {
        this.f62653d = new ArrayList();
        this.f62651b = context;
        this.f62652c = LayoutInflater.from(context);
    }

    public List<ScreenshotGamedetialBean> a() {
        return this.f62653d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62653d.size();
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
            convertView = this.f62652c.inflate(R.layout.game_detail_screenshot_item, (ViewGroup) null);
            bVar = new b();
            bVar.f62655b = (TextView) convertView.findViewById(R.id.number);
            bVar.f62654a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62656c = (TextView) convertView.findViewById(R.id.title);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        ScreenshotGamedetialBean screenshotGamedetialBean = this.f62653d.get(i10);
        bVar.f62656c.setText(screenshotGamedetialBean.getTitle());
        bVar.f62655b.setText(screenshotGamedetialBean.getCount() + "");
        com.join.android.app.common.utils.l.e(bVar.f62654a, R.drawable.rect_normal_icon, screenshotGamedetialBean.getPic(), com.facebook.drawee.drawable.s.c.f27292i);
        return convertView;
    }

    public l1(Context context, List<ScreenshotGamedetialBean> strings) {
        this.f62653d = new ArrayList();
        this.f62651b = context;
        this.f62652c = LayoutInflater.from(context);
        this.f62653d = strings;
    }
}
