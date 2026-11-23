package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DynamicEntranceBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<DynamicEntranceBean> f62345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f62346d;

    public interface a {
        void onRootView(DynamicEntranceBean bean);
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private View f62347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f62348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62349c;

        public b() {
        }
    }

    public i2(Context mContext, List<DynamicEntranceBean> itemBeans, a listener) {
        this.f62344b = mContext;
        this.f62345c = itemBeans;
        this.f62346d = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i10, View view) {
        this.f62346d.onRootView(this.f62345c.get(i10));
    }

    public void b() {
        this.f62345c.clear();
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public DynamicEntranceBean getItem(int position) {
        return this.f62345c.get(position);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62345c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(final int position, View convertView, ViewGroup parent) {
        b bVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f62344b).inflate(R.layout.item_game_main_new_view, (ViewGroup) null);
            bVar = new b();
            bVar.f62347a = convertView.findViewById(R.id.itemGameMainNewRootRl);
            bVar.f62348b = (TextView) convertView.findViewById(R.id.itemGameMainNameTx);
            bVar.f62349c = (TextView) convertView.findViewById(R.id.itemGameMainTipTv);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        bVar.f62348b.setText(this.f62345c.get(position).getName());
        String tips = this.f62345c.get(position).getTips();
        if (com.join.mgps.Util.t2.h(tips) || "0".equals(tips)) {
            bVar.f62349c.setVisibility(8);
        } else {
            bVar.f62349c.setVisibility(0);
            bVar.f62349c.setText(tips);
        }
        bVar.f62347a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.h2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62239b.d(position, view);
            }
        });
        return convertView;
    }
}
