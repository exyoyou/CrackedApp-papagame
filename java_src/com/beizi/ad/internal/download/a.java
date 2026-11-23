package com.beizi.ad.internal.download;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.ad.lance.a.k;
import com.beizi.fusion.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a extends BaseExpandableListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f8902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<com.beizi.ad.internal.download.b> f8903b;

    /* JADX INFO: renamed from: com.beizi.ad.internal.download.a$a, reason: collision with other inner class name */
    public class C0218a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f8904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        BeiZiWebView f8905b;

        public C0218a() {
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f8907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f8908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f8909c;

        public b() {
        }
    }

    public a(Context context, List<com.beizi.ad.internal.download.b> list) {
        ArrayList arrayList = new ArrayList();
        this.f8903b = arrayList;
        this.f8902a = context;
        arrayList.clear();
        this.f8903b.addAll(list);
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i10, int i11) {
        return this.f8903b.get(i10).c();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i10, int i11) {
        return i11;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i10, int i11, boolean z10, View view, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(this.f8902a).inflate(R.layout.beizi_download_dialog_expand_child_item, (ViewGroup) null);
        C0218a c0218a = new C0218a();
        c0218a.f8904a = (TextView) viewInflate.findViewById(R.id.beizi_addeci_content_tv);
        c0218a.f8905b = (BeiZiWebView) viewInflate.findViewById(R.id.beizi_addeci_content_wb);
        viewInflate.setTag(c0218a);
        if ("text".equals(this.f8903b.get(i10).b())) {
            c0218a.f8904a.setVisibility(0);
            c0218a.f8905b.setVisibility(8);
            c0218a.f8904a.setText(this.f8903b.get(i10).c());
        } else if ("h5".equals(this.f8903b.get(i10).b())) {
            c0218a.f8904a.setVisibility(8);
            c0218a.f8905b.setVisibility(0);
            c0218a.f8905b.loadUrl(this.f8903b.get(i10).c(), k.a());
        }
        return viewInflate;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i10) {
        return 1;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i10) {
        return this.f8903b.get(i10);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f8903b.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i10) {
        return i10;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i10, boolean z10, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f8902a).inflate(R.layout.beizi_download_dialog_expand_parent_item, (ViewGroup) null);
            bVar = new b();
            bVar.f8907a = (TextView) view.findViewById(R.id.beizi_addep_title_tv);
            bVar.f8908b = (ImageView) view.findViewById(R.id.beizi_addep_fold_iv);
            bVar.f8909c = view.findViewById(R.id.beizi_addep_item_divider_view);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f8907a.setText(this.f8903b.get(i10).a());
        if (z10) {
            bVar.f8907a.setTextColor(Color.parseColor("#FF8E15"));
            bVar.f8908b.setBackgroundResource(R.mipmap.beizi_icon_arrow_unfold);
        } else {
            bVar.f8907a.setTextColor(Color.parseColor("#333333"));
            bVar.f8908b.setBackgroundResource(R.mipmap.beizi_icon_arrow_fold);
        }
        if (i10 == 0) {
            bVar.f8909c.setVisibility(8);
        } else {
            bVar.f8909c.setVisibility(0);
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i10, int i11) {
        return false;
    }
}
