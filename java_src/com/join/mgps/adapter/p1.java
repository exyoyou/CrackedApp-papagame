package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ImageInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class p1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<ImageInfo> f62986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f62988f;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        FrameLayout f62991c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f62992d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f62993e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SimpleDraweeView f62994f;

        private b() {
        }
    }

    public p1(Context context) {
        this.f62986d = new ArrayList();
        this.f62988f = false;
        this.f62984b = context;
        this.f62985c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImageInfo getItem(int i10) {
        return this.f62986d.get(i10);
    }

    public List<ImageInfo> b() {
        return this.f62986d;
    }

    public void c() {
        this.f62988f = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62986d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62985c.inflate(R.layout.game_detail_similar_game_item_v1, (ViewGroup) null);
            bVar = new b();
            bVar.f62989a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewVPic);
            bVar.f62990b = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62992d = (ImageView) convertView.findViewById(R.id.imageViewPlay);
            bVar.f62991c = (FrameLayout) convertView.findViewById(R.id.videoContner);
            bVar.f62993e = (RelativeLayout) convertView.findViewById(R.id.rl_video);
            bVar.f62994f = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        ImageInfo item = getItem(i10);
        bVar.f62994f.setTag(Integer.valueOf(i10));
        if (item.isVideo()) {
            bVar.f62989a.setVisibility(8);
            bVar.f62990b.setVisibility(8);
            bVar.f62992d.setVisibility(8);
            bVar.f62993e.setVisibility(0);
            String videoUrl = item.getVideoUrl();
            com.join.android.app.common.utils.l.d(bVar.f62994f, R.drawable.banner_normal_icon, item.getUrl());
            new com.join.android.app.component.video.c.l(i10, videoUrl, item.getUrl());
        } else {
            bVar.f62992d.setVisibility(8);
            bVar.f62993e.setVisibility(8);
            if (this.f62987e == 1) {
                bVar.f62989a.setVisibility(0);
                if (this.f62988f) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f62989a.getLayoutParams();
                    layoutParams.height = this.f62984b.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                    layoutParams.width = this.f62984b.getResources().getDimensionPixelOffset(R.dimen.wdp200);
                    bVar.f62989a.setLayoutParams(layoutParams);
                    if (this.f62986d.get(i10).isGif()) {
                        com.join.android.app.common.utils.l.o(bVar.f62989a, this.f62986d.get(i10).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView = bVar.f62989a;
                        String url = this.f62986d.get(i10).getUrl();
                        Context context = this.f62984b;
                        com.join.android.app.common.utils.l.j(simpleDraweeView, url, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                    }
                } else if (this.f62986d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62989a, this.f62986d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f62989a;
                    String url2 = this.f62986d.get(i10).getUrl();
                    Context context2 = this.f62984b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView2, url2, com.join.android.app.common.utils.l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
                bVar.f62990b.setVisibility(8);
            } else {
                if (this.f62988f) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f62990b.getLayoutParams();
                    layoutParams2.height = this.f62984b.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                    layoutParams2.width = this.f62984b.getResources().getDimensionPixelOffset(R.dimen.wdp642);
                    bVar.f62990b.setLayoutParams(layoutParams2);
                    if (this.f62986d.get(i10).isGif()) {
                        com.join.android.app.common.utils.l.o(bVar.f62990b, this.f62986d.get(i10).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView3 = bVar.f62990b;
                        String url3 = this.f62986d.get(i10).getUrl();
                        Context context3 = this.f62984b;
                        com.join.android.app.common.utils.l.j(simpleDraweeView3, url3, com.join.android.app.common.utils.l.F(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                    }
                } else if (this.f62986d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62990b, this.f62986d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView4 = bVar.f62990b;
                    String url4 = this.f62986d.get(i10).getUrl();
                    Context context4 = this.f62984b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView4, url4, com.join.android.app.common.utils.l.F(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp2)));
                }
                bVar.f62990b.setVisibility(0);
                bVar.f62989a.setVisibility(8);
            }
        }
        return convertView;
    }

    public p1(Context context, int pic_position, List<ImageInfo> strings) {
        this.f62986d = new ArrayList();
        this.f62988f = false;
        this.f62984b = context;
        this.f62985c = LayoutInflater.from(context);
        this.f62986d = strings;
        this.f62987e = pic_position;
    }
}
