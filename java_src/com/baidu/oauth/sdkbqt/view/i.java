package com.baidu.oauth.sdkbqt.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.baidu.oauth.sdkbqt.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class i extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<g.a> f8287b = new ArrayList();

    public i(Context context) {
        this.f8286a = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public g.a getItem(int i10) {
        return this.f8287b.get(i10);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f8287b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f8286a).inflate(R.layout.layout_bd_oauth_sdk_item_dialog_list, viewGroup, false);
        }
        ((TextView) view.findViewById(R.id.sapi_list_dialog_item_content)).setText(this.f8287b.get(i10).f8282a);
        return view;
    }

    public void a(g.a aVar) {
        this.f8287b.add(aVar);
        notifyDataSetChanged();
    }
}
