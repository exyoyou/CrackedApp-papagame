package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f34905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.join.android.app.component.album.lib.a> f34906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageLoader f34907d;

    /* JADX INFO: renamed from: com.join.android.app.component.album.adapter.a$a, reason: collision with other inner class name */
    public class C0644a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f34908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f34909b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f34910c;

        public C0644a() {
        }
    }

    public a(Context context, List<com.join.android.app.component.album.lib.a> folders) {
        ArrayList arrayList = new ArrayList();
        this.f34906c = arrayList;
        this.f34905b = context;
        arrayList.clear();
        this.f34906c.addAll(folders);
        this.f34907d = new ImageLoader(1, ImageLoader.Type.LIFO);
    }

    public static ImageLoader a() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void b(ImageView view, String url) {
        this.f34907d.v(url, view);
    }

    public void c(List<com.join.android.app.component.album.lib.a> folders) {
        this.f34906c.clear();
        this.f34906c.addAll(folders);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<com.join.android.app.component.album.lib.a> list = this.f34906c;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f34906c.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        C0644a c0644a;
        if (this.f34905b != null && getCount() != 0) {
            try {
                if (convertView != null) {
                    c0644a = (C0644a) convertView.getTag();
                } else {
                    c0644a = new C0644a();
                    convertView = LayoutInflater.from(this.f34905b).inflate(R.layout.album_item, (ViewGroup) null);
                    c0644a.f34908a = (ImageView) convertView.findViewById(R.id.album_cover);
                    c0644a.f34909b = (TextView) convertView.findViewById(R.id.album_name);
                    c0644a.f34910c = (TextView) convertView.findViewById(R.id.album_count);
                    convertView.setTag(c0644a);
                }
                com.join.android.app.component.album.lib.a aVar = this.f34906c.get(position);
                b(c0644a.f34908a, aVar.e());
                c0644a.f34909b.setText(aVar.f());
                c0644a.f34910c.setText("(" + aVar.c() + ")");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return convertView;
    }
}
