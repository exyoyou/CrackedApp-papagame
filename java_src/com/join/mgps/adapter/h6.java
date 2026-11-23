package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h6 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<PaiWeiDataBean.RolesBean> f62255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutInflater f62257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f62258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62259f = 0;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f62261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62262c;

        a() {
        }
    }

    public h6(Context context, List<PaiWeiDataBean.RolesBean> list) {
        this.f62256c = context;
        this.f62255b = list;
        this.f62257d = LayoutInflater.from(context);
    }

    public void a(int selectId) {
        this.f62259f = selectId;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62255b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f62255b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(final int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            this.f62258e = new a();
            convertView = this.f62257d.inflate(R.layout.item_roles_listview, (ViewGroup) null);
            this.f62258e.f62260a = (LinearLayout) convertView.findViewById(R.id.item_roles_ll);
            this.f62258e.f62261b = (ImageView) convertView.findViewById(R.id.item_select_iv);
            this.f62258e.f62262c = (TextView) convertView.findViewById(R.id.item_name_tx);
            convertView.setTag(this.f62258e);
        } else {
            this.f62258e = (a) convertView.getTag();
        }
        PaiWeiDataBean.RolesBean rolesBean = this.f62255b.get(position);
        if (position == this.f62259f) {
            this.f62258e.f62261b.setVisibility(0);
            this.f62258e.f62262c.setTextColor(Color.parseColor("#6ee6fe"));
        } else {
            this.f62258e.f62261b.setVisibility(8);
            this.f62258e.f62262c.setTextColor(Color.parseColor("#156d84"));
        }
        this.f62258e.f62262c.setText(rolesBean.getRole());
        return convertView;
    }
}
