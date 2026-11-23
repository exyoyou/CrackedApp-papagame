package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDetailCheckPoint;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class w extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<GameDetailCheckPoint> f63328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f63329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f63330d;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f63331a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63332b;

        public a() {
        }
    }

    public w(Context context, List<GameDetailCheckPoint> dataBeans, int type) {
        this.f63328b = dataBeans;
        this.f63329c = context;
        this.f63330d = type;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63328b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this.f63328b.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(this.f63329c).inflate(R.layout.gamedetial_check_point_item_layoutv2, viewGroup, false);
            aVar = new a();
            aVar.f63331a = (SimpleDraweeView) view.findViewById(R.id.icon);
            aVar.f63332b = (TextView) view.findViewById(R.id.name);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        try {
            GameDetailCheckPoint gameDetailCheckPoint = (GameDetailCheckPoint) getItem(i10);
            com.join.android.app.common.utils.l.h(aVar.f63331a, gameDetailCheckPoint.getPic());
            RoundingParams roundingParamsP = aVar.f63331a.getHierarchy().p();
            if (roundingParamsP == null) {
                roundingParamsP = new RoundingParams();
            }
            float dimensionPixelOffset = this.f63329c.getResources().getDimensionPixelOffset(R.dimen.wdp6);
            roundingParamsP.r(dimensionPixelOffset, dimensionPixelOffset, 0.0f, 0.0f);
            aVar.f63331a.getHierarchy().X(roundingParamsP);
            aVar.f63332b.setText(gameDetailCheckPoint.getName());
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
        return view;
    }
}
