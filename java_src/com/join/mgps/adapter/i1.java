package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f62337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f62338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62339f;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f62342c;

        private b() {
        }
    }

    public i1(Context context) {
        this.f62337d = new ArrayList();
        this.f62335b = context;
        this.f62336c = LayoutInflater.from(context);
    }

    public List<String> a() {
        return this.f62337d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62337d.size();
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
            convertView = this.f62336c.inflate(R.layout.game_detail_item1, (ViewGroup) null);
            bVar = new b();
            bVar.f62340a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewVPic);
            bVar.f62341b = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62342c = (ImageView) convertView.findViewById(R.id.imageViewPlay);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        if (this.f62339f == 1) {
            bVar.f62340a.setVisibility(0);
            bVar.f62341b.setVisibility(8);
            com.join.android.app.common.utils.l.h(bVar.f62340a, this.f62337d.get(i10));
        } else {
            bVar.f62341b.setVisibility(0);
            bVar.f62340a.setVisibility(8);
            com.join.android.app.common.utils.l.h(bVar.f62341b, this.f62337d.get(i10));
        }
        if (i10 == 0 && this.f62338e) {
            bVar.f62342c.setVisibility(0);
        } else {
            bVar.f62342c.setVisibility(8);
        }
        return convertView;
    }

    public i1(Context context, int pic_position, List<String> strings, boolean isVideo) {
        this.f62337d = new ArrayList();
        this.f62335b = context;
        this.f62336c = LayoutInflater.from(context);
        this.f62337d = strings;
        this.f62339f = pic_position;
        this.f62338e = isVideo;
    }
}
