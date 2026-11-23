package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
import com.join.mgps.db.tables.HeadPortraitTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<HeadPortraitTable> f62066d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f62068f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f62064b = getClass().getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62067e = 0;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62069a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f62070b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        SquareLayout f62071c;

        a() {
        }
    }

    public f(Context _context, List<HeadPortraitTable> datas, String headPortraitTable, boolean isSelected) {
        this.f62065c = _context;
        this.f62066d = datas;
        this.f62068f = headPortraitTable;
    }

    public int a() {
        return this.f62067e;
    }

    public void b(int imageId) {
        if (imageId > 0) {
            this.f62067e = imageId;
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62066d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        View viewInflate;
        a aVar;
        if (view == null) {
            aVar = new a();
            viewInflate = LayoutInflater.from(this.f62065c).inflate(R.layout.choose_grid_item, (ViewGroup) null);
            aVar.f62069a = (SimpleDraweeView) viewInflate.findViewById(R.id.itemImage);
            aVar.f62071c = (SquareLayout) viewInflate.findViewById(R.id.itemLayout);
            aVar.f62070b = (ImageView) viewInflate.findViewById(R.id.itemImageChoice);
            viewInflate.setTag(aVar);
        } else {
            viewInflate = view;
            aVar = (a) view.getTag();
        }
        if (i10 == 0) {
            aVar.f62071c.setBackgroundResource(this.f62066d.get(i10).getId());
        } else {
            com.join.android.app.common.utils.l.h(aVar.f62069a, this.f62066d.get(i10).getHead_portrait_pic());
            if (!com.join.mgps.Util.t2.i(this.f62068f) || !com.join.mgps.Util.t2.i(this.f62066d.get(i10).getHead_portrait_pic())) {
                aVar.f62070b.setBackground(new ColorDrawable(0));
            } else if (this.f62068f.equals(this.f62066d.get(i10).getHead_portrait_pic())) {
                aVar.f62070b.setBackgroundResource(R.drawable.icon_checked);
            }
            int i11 = this.f62067e;
            if (i11 > 0) {
                if (i11 == i10) {
                    aVar.f62070b.setBackgroundResource(R.drawable.icon_checked);
                } else {
                    try {
                        aVar.f62070b.setBackground(new ColorDrawable(0));
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return viewInflate;
    }
}
