package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public class f3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Vector<Integer> f62101c = new Vector<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Vector<Boolean> f62102d = new Vector<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62103e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f62104f;

    public f3(Context c10, boolean isMulti) {
        this.f62100b = c10;
        this.f62104f = isMulti;
        Vector<Integer> vector = this.f62101c;
        Integer numValueOf = Integer.valueOf(R.drawable.sfc);
        vector.add(numValueOf);
        this.f62101c.add(Integer.valueOf(R.drawable.f35448fc));
        this.f62101c.add(Integer.valueOf(R.drawable.gba));
        this.f62101c.add(numValueOf);
        this.f62101c.add(Integer.valueOf(R.drawable.f35447android));
        for (int i10 = 0; i10 < 5; i10++) {
            this.f62102d.add(Boolean.FALSE);
        }
    }

    private LayerDrawable b(int id2, boolean isChosen) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new BitmapDrawable(((BitmapDrawable) this.f62100b.getResources().getDrawable(id2)).getBitmap()), new BitmapDrawable(isChosen ? BitmapFactory.decodeResource(this.f62100b.getResources(), R.drawable.classify_checked) : BitmapFactory.decodeResource(this.f62100b.getResources(), R.drawable.classify_uncheck))});
        layerDrawable.setLayerInset(0, 0, 0, 0, 0);
        layerDrawable.setLayerInset(1, 0, -5, 60, 45);
        return layerDrawable;
    }

    public void a(int position) {
        if (this.f62104f) {
            Vector<Boolean> vector = this.f62102d;
            vector.setElementAt(Boolean.valueOf(true ^ vector.elementAt(position).booleanValue()), position);
        } else {
            int i10 = this.f62103e;
            if (i10 != -1) {
                this.f62102d.setElementAt(Boolean.FALSE, i10);
            }
            Vector<Boolean> vector2 = this.f62102d;
            vector2.setElementAt(Boolean.valueOf(true ^ vector2.elementAt(position).booleanValue()), position);
            this.f62103e = position;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62101c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return Integer.valueOf(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ImageView imageView;
        if (convertView == null) {
            imageView = new ImageView(this.f62100b);
            imageView.setLayoutParams(new AbsListView.LayoutParams(150, 150));
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            imageView = (ImageView) convertView;
        }
        imageView.setImageDrawable(b(this.f62101c.elementAt(position).intValue(), this.f62102d.elementAt(position).booleanValue()));
        return imageView;
    }
}
