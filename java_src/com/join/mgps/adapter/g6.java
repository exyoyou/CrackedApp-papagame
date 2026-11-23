package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PapayHistoryInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g6 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f62211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<PapayHistoryInfo> f62212c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    LayoutInflater f62213d;

    public g6(Context context) {
        this.f62211b = context;
        this.f62213d = LayoutInflater.from(context);
    }

    public List<PapayHistoryInfo> a() {
        return this.f62212c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62212c.size();
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
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = this.f62213d.inflate(R.layout.papay_history_item_layout, (ViewGroup) null);
        }
        TextView textView = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.payType);
        TextView textView2 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.payNumber);
        TextView textView3 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.paySuccess);
        TextView textView4 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.payTime);
        PapayHistoryInfo papayHistoryInfo = this.f62212c.get(position);
        textView.setText(papayHistoryInfo.getTitle());
        textView2.setText(papayHistoryInfo.getMoney());
        textView3.setText(papayHistoryInfo.getStatus());
        textView4.setText(papayHistoryInfo.getPay_time());
        return convertView;
    }
}
