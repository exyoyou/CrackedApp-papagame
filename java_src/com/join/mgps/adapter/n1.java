package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ImageInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<ImageInfo> f62802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62803e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62804f;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        SimpleDraweeView f62807c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f62808d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ImageView f62809e;

        private b() {
        }
    }

    public n1(Context context) {
        this.f62802d = new ArrayList();
        this.f62804f = -1;
        this.f62800b = context;
        this.f62801c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImageInfo getItem(int i10) {
        return this.f62802d.get(i10);
    }

    public List<ImageInfo> b() {
        return this.f62802d;
    }

    public void c(int newIndex) {
        int i10 = this.f62804f;
        if (i10 == newIndex) {
            return;
        }
        if (i10 >= 0) {
            getItem(i10).setSelected(false);
        }
        this.f62804f = newIndex;
        getItem(newIndex).setSelected(true);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62802d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62801c.inflate(R.layout.item_game_detail_images, (ViewGroup) null);
            bVar = new b();
            bVar.f62805a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewVPic);
            bVar.f62806b = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62808d = (ImageView) convertView.findViewById(R.id.imageViewPlay);
            bVar.f62807c = (SimpleDraweeView) convertView.findViewById(R.id.image_blur);
            bVar.f62809e = (ImageView) convertView.findViewById(R.id.iv_border);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        ImageInfo item = getItem(i10);
        if (item.isVideo()) {
            bVar.f62805a.setVisibility(8);
            bVar.f62806b.setVisibility(0);
            bVar.f62807c.setVisibility(8);
            if (item.isSelected()) {
                bVar.f62806b.clearColorFilter();
                bVar.f62809e.setVisibility(0);
            } else {
                bVar.f62806b.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                bVar.f62809e.setVisibility(8);
            }
            if (com.join.mgps.Util.t2.i(item.getVideoUrl())) {
                bVar.f62808d.setVisibility(0);
            } else {
                bVar.f62808d.setVisibility(8);
            }
            com.join.android.app.common.utils.l.d(bVar.f62806b, R.drawable.banner_normal_icon, item.getUrl());
        } else {
            if (item.isSelected()) {
                if (this.f62803e == 1) {
                    bVar.f62805a.clearColorFilter();
                } else {
                    bVar.f62806b.clearColorFilter();
                }
                bVar.f62809e.setVisibility(0);
            } else {
                if (this.f62803e == 1) {
                    bVar.f62805a.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                } else {
                    bVar.f62806b.setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                }
                bVar.f62809e.setVisibility(8);
            }
            bVar.f62808d.setVisibility(8);
            if (this.f62803e == 1) {
                bVar.f62807c.setVisibility(0);
                bVar.f62805a.setVisibility(0);
                com.join.android.app.common.utils.l.M(bVar.f62807c, this.f62802d.get(i10).getUrl(), 6, 15);
                if (this.f62802d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62805a, this.f62802d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView = bVar.f62805a;
                    String url = this.f62802d.get(i10).getUrl();
                    Context context = this.f62800b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView, url, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp6)));
                }
                bVar.f62806b.setVisibility(8);
            } else {
                if (this.f62802d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62806b, this.f62802d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f62806b;
                    String url2 = this.f62802d.get(i10).getUrl();
                    Context context2 = this.f62800b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView2, url2, com.join.android.app.common.utils.l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp6)));
                }
                bVar.f62807c.setVisibility(8);
                bVar.f62806b.setVisibility(0);
                bVar.f62805a.setVisibility(8);
            }
        }
        return convertView;
    }

    public n1(Context context, int pic_position, List<ImageInfo> strings) {
        this.f62802d = new ArrayList();
        this.f62804f = -1;
        this.f62800b = context;
        this.f62801c = LayoutInflater.from(context);
        this.f62802d = strings;
        this.f62803e = pic_position;
    }
}
