package com.byazt.ff;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.byazt.nc.a;
import com.byazt.pr.tt;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 2450})
public class TTDislikeScrollListView extends ListView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt f14159c;
    public AdapterView.OnItemClickListener tt;
    public AdapterView.OnItemClickListener ve;

    public TTDislikeScrollListView(Context context) {
        super(context);
        this.ve = new AdapterView.OnItemClickListener() { // from class: com.byazt.ff.TTDislikeScrollListView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                if (TTDislikeScrollListView.this.getAdapter() == null || TTDislikeScrollListView.this.getAdapter().getItem(i10) == null || !(TTDislikeScrollListView.this.getAdapter().getItem(i10) instanceof a)) {
                    throw new IllegalArgumentException("adapter数据异常，必须为FilterWord");
                }
                a aVar = (a) TTDislikeScrollListView.this.getAdapter().getItem(i10);
                if (aVar.hasSecondOptions()) {
                    return;
                }
                if (TTDislikeScrollListView.this.tt != null) {
                    TTDislikeScrollListView.this.tt.onItemClick(adapterView, view, i10, j10);
                }
                if (TTDislikeScrollListView.this.f14159c != null) {
                    TTDislikeScrollListView.this.f14159c.c(aVar);
                }
            }
        };
        c();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setDislikeController(tt ttVar) {
        this.f14159c = ttVar;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.tt = onItemClickListener;
    }

    private void c() {
        super.setOnItemClickListener(this.ve);
    }
}
