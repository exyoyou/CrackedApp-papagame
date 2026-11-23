package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f62231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f62232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f62234g;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f62237c;

        private b() {
        }
    }

    public h1(Context context) {
        this.f62231d = new ArrayList();
        this.f62234g = false;
        this.f62229b = context;
        this.f62230c = LayoutInflater.from(context);
    }

    public List<String> a() {
        return this.f62231d;
    }

    public void b() {
        this.f62234g = true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62231d.size();
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
            convertView = this.f62230c.inflate(R.layout.game_detail_item, (ViewGroup) null);
            bVar = new b();
            bVar.f62235a = (SimpleDraweeView) convertView.findViewById(R.id.imageViewVPic);
            bVar.f62236b = (SimpleDraweeView) convertView.findViewById(R.id.imageViewHPic);
            bVar.f62237c = (ImageView) convertView.findViewById(R.id.imageViewPlay);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        if (this.f62233f == 1) {
            bVar.f62235a.setVisibility(0);
            if (this.f62234g) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bVar.f62235a.getLayoutParams();
                layoutParams.height = this.f62229b.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                layoutParams.width = this.f62229b.getResources().getDimensionPixelOffset(R.dimen.wdp200);
                bVar.f62235a.setLayoutParams(layoutParams);
                if (this.f62231d.get(i10).endsWith(".gif")) {
                    com.join.android.app.common.utils.l.o(bVar.f62235a, this.f62231d.get(i10));
                } else {
                    SimpleDraweeView simpleDraweeView = bVar.f62235a;
                    String str = this.f62231d.get(i10);
                    Context context = this.f62229b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView, str, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
                }
            } else if (this.f62231d.get(i10).endsWith(".gif")) {
                com.join.android.app.common.utils.l.o(bVar.f62235a, this.f62231d.get(i10));
            } else {
                SimpleDraweeView simpleDraweeView2 = bVar.f62235a;
                String str2 = this.f62231d.get(i10);
                Context context2 = this.f62229b;
                com.join.android.app.common.utils.l.j(simpleDraweeView2, str2, com.join.android.app.common.utils.l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp3)));
            }
            bVar.f62236b.setVisibility(8);
        } else {
            if (this.f62234g) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) bVar.f62236b.getLayoutParams();
                layoutParams2.height = this.f62229b.getResources().getDimensionPixelOffset(R.dimen.wdp370);
                layoutParams2.width = this.f62229b.getResources().getDimensionPixelOffset(R.dimen.wdp642);
                bVar.f62236b.setLayoutParams(layoutParams2);
                if (this.f62231d.get(i10).endsWith(".gif")) {
                    com.join.android.app.common.utils.l.o(bVar.f62236b, this.f62231d.get(i10));
                } else {
                    SimpleDraweeView simpleDraweeView3 = bVar.f62236b;
                    String str3 = this.f62231d.get(i10);
                    Context context3 = this.f62229b;
                    com.join.android.app.common.utils.l.j(simpleDraweeView3, str3, com.join.android.app.common.utils.l.F(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
                }
            } else if (this.f62231d.get(i10).endsWith(".gif")) {
                com.join.android.app.common.utils.l.o(bVar.f62236b, this.f62231d.get(i10));
            } else {
                SimpleDraweeView simpleDraweeView4 = bVar.f62236b;
                String str4 = this.f62231d.get(i10);
                Context context4 = this.f62229b;
                com.join.android.app.common.utils.l.j(simpleDraweeView4, str4, com.join.android.app.common.utils.l.F(context4, context4.getResources().getDimensionPixelOffset(R.dimen.wdp12)));
            }
            bVar.f62236b.setVisibility(0);
            bVar.f62235a.setVisibility(8);
        }
        if (i10 == 0 && this.f62232e) {
            bVar.f62237c.setVisibility(0);
        } else {
            bVar.f62237c.setVisibility(8);
        }
        return convertView;
    }

    public h1(Context context, int pic_position, List<String> strings, boolean isVideo) {
        this.f62231d = new ArrayList();
        this.f62234g = false;
        this.f62229b = context;
        this.f62230c = LayoutInflater.from(context);
        this.f62231d = strings;
        this.f62233f = pic_position;
        this.f62232e = isVideo;
    }
}
