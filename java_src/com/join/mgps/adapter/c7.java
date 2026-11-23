package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c7 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f61381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<SearchAutoDataBean> f61382d;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f61383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61384b;

        private b() {
        }

        public ImageView a() {
            return this.f61383a;
        }

        public TextView b() {
            return this.f61384b;
        }

        public void c(ImageView iv) {
            this.f61383a = iv;
        }

        public void d(TextView tv2) {
            this.f61384b = tv2;
        }
    }

    public c7(Context context) {
        this.f61380b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61382d.size();
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
    public View getView(int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        SearchAutoDataBean searchAutoDataBean = this.f61382d.get(i10);
        if (convertView == null) {
            convertView = this.f61381c.inflate(R.layout.simple_listview_item, (ViewGroup) null);
            bVar = new b();
            bVar.f61384b = (TextView) convertView.findViewById(R.id.lv_tv_title);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        bVar.f61384b.setText(searchAutoDataBean.getGame_name());
        return convertView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public c7(Context context, List<SearchAutoDataBean> searchAutoDataBeanList) {
        this.f61380b = context;
        this.f61382d = searchAutoDataBeanList;
        this.f61381c = LayoutInflater.from(context);
    }
}
