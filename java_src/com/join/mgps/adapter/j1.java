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
public class j1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<ImageInfo> f62448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.android.app.component.video.c f62450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f62451g;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f62452b;

        a(final int val$i) {
            this.f62452b = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            j1.this.f62450f.E(this.f62452b);
        }
    }

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62455b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        FrameLayout f62456c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f62457d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f62458e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SimpleDraweeView f62459f;

        private b() {
        }

        /* synthetic */ b(j1 j1Var, a aVar) {
            this();
        }
    }

    public j1(Context context) {
        this.f62448d = new ArrayList();
        this.f62451g = false;
        this.f62446b = context;
        this.f62447c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImageInfo getItem(int i10) {
        return this.f62448d.get(i10);
    }

    public List<ImageInfo> b() {
        return this.f62448d;
    }

    public void c() {
        this.f62451g = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62448d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62447c.inflate(R.layout.game_detail_item_v1, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f62454a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewVPic);
            bVar.f62455b = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62457d = (ImageView) convertView.findViewById(R.id.imageViewPlay);
            bVar.f62456c = (FrameLayout) convertView.findViewById(R.id.videoContner);
            bVar.f62458e = (RelativeLayout) convertView.findViewById(R.id.rl_video);
            bVar.f62459f = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        ImageInfo item = getItem(i10);
        bVar.f62459f.setTag(Integer.valueOf(i10));
        if (item.isVideo()) {
            bVar.f62454a.setVisibility(8);
            bVar.f62455b.setVisibility(8);
            bVar.f62457d.setVisibility(8);
            bVar.f62458e.setVisibility(0);
            String videoUrl = item.getVideoUrl();
            com.join.android.app.common.utils.l.d(bVar.f62459f, R.drawable.banner_normal_icon, item.getUrl());
            com.join.android.app.component.video.c.l lVar = new com.join.android.app.component.video.c.l(i10, videoUrl, item.getUrl());
            com.join.android.app.component.video.c cVar = this.f62450f;
            if (cVar != null) {
                cVar.d(i10, lVar, false);
                bVar.f62456c.setOnClickListener(new a(i10));
            }
        } else {
            bVar.f62457d.setVisibility(8);
            bVar.f62458e.setVisibility(8);
            if (this.f62449e == 1) {
                bVar.f62454a.setVisibility(0);
                if (this.f62451g) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f62454a.getLayoutParams();
                    layoutParams.height = this.f62446b.getResources().getDimensionPixelOffset(R.dimen.wdp312);
                    layoutParams.width = this.f62446b.getResources().getDimensionPixelOffset(R.dimen.wdp180);
                    bVar.f62454a.setLayoutParams(layoutParams);
                    if (this.f62448d.get(i10).isGif()) {
                        com.join.android.app.common.utils.l.o(bVar.f62454a, this.f62448d.get(i10).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView = bVar.f62454a;
                        String url = this.f62448d.get(i10).getUrl();
                        Context context = this.f62446b;
                        com.join.android.app.common.utils.l.j(simpleDraweeView, url, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                    }
                } else if (this.f62448d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62454a, this.f62448d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView2 = bVar.f62454a;
                    String url2 = this.f62448d.get(i10).getUrl();
                    Context context2 = this.f62446b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView2, url2, com.join.android.app.common.utils.l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
                bVar.f62455b.setVisibility(8);
            } else {
                if (this.f62451g) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f62455b.getLayoutParams();
                    layoutParams2.height = this.f62446b.getResources().getDimensionPixelOffset(R.dimen.wdp210);
                    layoutParams2.width = this.f62446b.getResources().getDimensionPixelOffset(R.dimen.wdp372);
                    bVar.f62455b.setLayoutParams(layoutParams2);
                    if (this.f62448d.get(i10).isGif()) {
                        com.join.android.app.common.utils.l.o(bVar.f62455b, this.f62448d.get(i10).getUrl());
                    } else {
                        SimpleDraweeView simpleDraweeView3 = bVar.f62455b;
                        String url3 = this.f62448d.get(i10).getUrl();
                        Context context3 = this.f62446b;
                        com.join.android.app.common.utils.l.j(simpleDraweeView3, url3, com.join.android.app.common.utils.l.F(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                    }
                } else if (this.f62448d.get(i10).isGif()) {
                    com.join.android.app.common.utils.l.o(bVar.f62455b, this.f62448d.get(i10).getUrl());
                } else {
                    SimpleDraweeView simpleDraweeView4 = bVar.f62455b;
                    String url4 = this.f62448d.get(i10).getUrl();
                    Context context4 = this.f62446b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView4, url4, com.join.android.app.common.utils.l.F(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                }
                bVar.f62455b.setVisibility(0);
                bVar.f62454a.setVisibility(8);
            }
        }
        return convertView;
    }

    public j1(Context context, int pic_position, List<ImageInfo> strings, com.join.android.app.component.video.c helper) {
        this.f62448d = new ArrayList();
        this.f62451g = false;
        this.f62446b = context;
        this.f62447c = LayoutInflater.from(context);
        this.f62448d = strings;
        this.f62449e = pic_position;
        this.f62450f = helper;
    }
}
