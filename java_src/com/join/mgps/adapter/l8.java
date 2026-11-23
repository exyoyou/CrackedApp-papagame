package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.UploadDialogBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l8 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f62719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<UploadDialogBean> f62720c;

    public l8(Context context, List<UploadDialogBean> list) {
        this.f62719b = context;
        this.f62720c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62720c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this.f62720c.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup viewGroup) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f62719b).inflate(R.layout.upload_dialog_item, (ViewGroup) null);
        }
        ((TextView) convertView.findViewById(R.id.name)).setText(this.f62720c.get(position).getName());
        if (this.f62720c.get(position).getIsSelect().booleanValue()) {
            ((ImageView) convertView.findViewById(R.id.img)).setImageResource(R.drawable.downpath_show_selected);
        } else {
            ((ImageView) convertView.findViewById(R.id.img)).setImageResource(R.drawable.downpath_show_normal);
        }
        return convertView;
    }
}
