package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ServiceState;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class y extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f63961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<ServiceState> f63962c;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f63963a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f63965c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63966d;

        a() {
        }
    }

    public y(Context context) {
        this.f63961b = context;
    }

    public List<ServiceState> a() {
        if (this.f63962c == null) {
            this.f63962c = new ArrayList();
        }
        return this.f63962c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63962c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup parent) {
        a aVar;
        ServiceState serviceState = this.f63962c.get(position);
        if (view == null) {
            view = LayoutInflater.from(this.f63961b).inflate(R.layout.gamedetial_bt_serviceinfo_item, (ViewGroup) null);
            aVar = new a();
            aVar.f63963a = (TextView) view.findViewById(R.id.tag);
            aVar.f63964b = (TextView) view.findViewById(R.id.day);
            aVar.f63965c = (TextView) view.findViewById(R.id.time);
            aVar.f63966d = (TextView) view.findViewById(R.id.serverName);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f63963a.setText(serviceState.getType() == 1 ? "开服" : "合服");
        aVar.f63964b.setText(com.join.mgps.Util.e0.I(serviceState.getAdd_time()));
        aVar.f63965c.setText(com.join.mgps.Util.e0.D(serviceState.getAdd_time(), "HH:mm"));
        aVar.f63966d.setText(serviceState.getTitle());
        return view;
    }
}
