package com.join.mgps.control;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDiscoverBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<GameDiscoverBean> f64253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutInflater f64254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f64255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RhythmLayout f64256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f64257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f64258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f64259i;

    public b(Context context, RhythmLayout rhythmLayout, List<GameDiscoverBean> cardList) {
        this.f64255e = context;
        this.f64256f = rhythmLayout;
        ArrayList arrayList = new ArrayList();
        this.f64253c = arrayList;
        arrayList.addAll(cardList);
        this.f64257g = this.f64255e.getResources().getDimensionPixelSize(R.dimen.rhythm_item_height);
        this.f64258h = this.f64255e.getResources().getDimensionPixelSize(R.dimen.rhythm_icon_margin);
        this.f64259i = (int) TypedValue.applyDimension(1, 8.0f, this.f64255e.getResources().getDisplayMetrics());
        if (context != null) {
            this.f64254d = LayoutInflater.from(context);
        }
    }

    public void a(List<GameDiscoverBean> cardList) {
        this.f64253c.addAll(cardList);
    }

    public List<GameDiscoverBean> b() {
        return this.f64253c;
    }

    public void c(List<GameDiscoverBean> paramList) {
        this.f64253c = paramList;
    }

    public void d(float width) {
        this.f64252b = width;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f64253c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f64253c.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        RelativeLayout relativeLayout = (RelativeLayout) this.f64254d.inflate(R.layout.adapter_rhythm_icon, (ViewGroup) null);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams((int) this.f64252b, this.f64257g));
        relativeLayout.setTranslationY(this.f64252b);
        relativeLayout.setPadding(0, this.f64259i, 0, 0);
        RelativeLayout relativeLayout2 = (RelativeLayout) relativeLayout.getChildAt(0);
        int i10 = ((int) this.f64252b) - this.f64258h;
        relativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(i10, this.f64257g - this.f64258h));
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) relativeLayout.findViewById(R.id.image_icon);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i10);
        int i11 = this.f64258h;
        layoutParams.setMargins(i11 * 2, i11 * 2, i11 * 2, 0);
        layoutParams.addRule(14);
        simpleDraweeView.setLayoutParams(layoutParams);
        if (this.f64255e != null) {
            this.f64253c.get(position).getIco_remote();
            l.f(simpleDraweeView, R.drawable.main_normal_icon, this.f64253c.get(position).getIco_remote(), l.F(this.f64255e, 2.0f));
        }
        return relativeLayout;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f64256f.q();
    }
}
