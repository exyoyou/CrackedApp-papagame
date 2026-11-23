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
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class c extends BaseAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f34914f = "camera";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<String> f34915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f34917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<String> f34918e;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f34919a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f34920b;

        public a() {
        }
    }

    public c(Context context, List<String> images, String dir, List<String> selectedImages) {
        this.f34917d = context;
        this.f34916c = dir;
        this.f34915b = selectedImages;
        this.f34918e = images;
    }

    private void a(List<String> imagesx) {
        if (this.f34918e == null) {
            this.f34918e = new ArrayList();
        }
        this.f34918e.clear();
        this.f34918e.add("camera");
        this.f34918e.addAll(imagesx);
    }

    private void b(ImageView image, ImageView flag, String item) {
        List<String> list = this.f34915b;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f34915b.size(); i10++) {
            if (this.f34915b.get(i10).equals(item)) {
                flag.setImageResource(R.drawable.pic_select_selected);
            }
        }
    }

    public static ImageLoader c() {
        return ImageLoader.r(3, ImageLoader.Type.LIFO);
    }

    private void d(ImageView view, String url) {
        c().v(url, view);
    }

    public void e(String dir) {
        this.f34916c = dir;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f34918e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f34918e.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        a aVar;
        if (this.f34917d != null && getCount() != 0) {
            try {
                if (convertView != null) {
                    aVar = (a) convertView.getTag();
                } else {
                    aVar = new a();
                    View viewInflate = LayoutInflater.from(this.f34917d).inflate(R.layout.my_album_item, (ViewGroup) null);
                    aVar.f34919a = (SimpleDraweeView) viewInflate.findViewById(R.id.image);
                    aVar.f34920b = (ImageView) viewInflate.findViewById(R.id.image_flag);
                    try {
                        viewInflate.setTag(aVar);
                        convertView = viewInflate;
                    } catch (Exception e10) {
                        e = e10;
                        convertView = viewInflate;
                        e.printStackTrace();
                    }
                }
                aVar.f34919a.setImageResource(R.drawable.main_normal_icon);
                aVar.f34919a.setColorFilter((ColorFilter) null);
                aVar.f34920b.setImageResource(R.drawable.pic_select_normal);
                String str = (String) getItem(position);
                if (this.f34918e.get(position).equals("camera")) {
                    aVar.f34919a.setImageURI(Uri.parse("res://" + this.f34917d.getPackageName() + e.F0 + R.drawable.camera_default));
                    aVar.f34920b.setVisibility(8);
                } else {
                    l.i(aVar.f34919a, "file://" + str, s.c.f27292i);
                    aVar.f34920b.setVisibility(0);
                    b(aVar.f34919a, aVar.f34920b, str);
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
