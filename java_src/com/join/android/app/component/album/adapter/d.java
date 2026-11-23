package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.graphics.ColorFilter;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class d extends BaseAdapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f34922e = "camera";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f34924c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f34925d;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f34926a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SquareLayout f34927b;

        public a() {
        }
    }

    public d(Context context, List<String> images, String dir) {
        this.f34924c = context;
        this.f34923b = dir;
        this.f34925d = images;
    }

    private void a(List<String> imagesx) {
        if (this.f34925d == null) {
            this.f34925d = new ArrayList();
        }
        this.f34925d.clear();
        this.f34925d.add("camera");
        this.f34925d.addAll(imagesx);
    }

    public static ImageLoader b() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void c(ImageView view, String url) {
        b().v(url, view);
    }

    public void d(String dir) {
        this.f34923b = dir;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f34925d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f34925d.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        a aVar;
        if (this.f34924c != null && getCount() != 0) {
            try {
                if (convertView != null) {
                    aVar = (a) convertView.getTag();
                } else {
                    aVar = new a();
                    View viewInflate = LayoutInflater.from(this.f34924c).inflate(R.layout.choose_icon_item, (ViewGroup) null);
                    aVar.f34926a = (SimpleDraweeView) viewInflate.findViewById(R.id.itemImage);
                    aVar.f34927b = (SquareLayout) viewInflate.findViewById(R.id.itemLayout);
                    try {
                        viewInflate.setTag(aVar);
                        convertView = viewInflate;
                    } catch (Exception e10) {
                        e = e10;
                        convertView = viewInflate;
                        e.printStackTrace();
                    }
                }
                aVar.f34926a.setImageResource(R.drawable.main_normal_icon);
                aVar.f34926a.setColorFilter((ColorFilter) null);
                String str = (String) getItem(position);
                if (this.f34925d.get(position).equals("camera")) {
                    aVar.f34926a.setImageURI(Uri.parse("res://" + this.f34924c.getPackageName() + e.F0 + R.drawable.camera_default));
                } else {
                    l.i(aVar.f34926a, "file://" + str, s.c.f27292i);
                    aVar.f34926a.setVisibility(0);
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        return convertView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
