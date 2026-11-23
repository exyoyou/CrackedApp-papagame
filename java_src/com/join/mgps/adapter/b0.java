package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DiscoveryMainDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b0 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<DiscoveryMainDataBean.BattleGameBean> f61240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RoundingParams f61241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f61242e;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f61243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f61244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f61245c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f61246d;

        a() {
        }
    }

    public b0(Context context, List<DiscoveryMainDataBean.BattleGameBean> mList, String game_ids) {
        this.f61239b = context;
        this.f61240c = mList;
        this.f61242e = game_ids;
        this.f61241d = com.join.android.app.common.utils.l.F(context, context.getResources().getDimension(R.dimen.live_item_radius));
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DiscoveryMainDataBean.BattleGameBean getItem(int position) {
        return this.f61240c.get(position);
    }

    public void b(String game_ids) {
        this.f61242e = game_ids;
        for (int i10 = 0; i10 < this.f61240c.size(); i10++) {
            if (this.f61242e.contains(this.f61240c.get(i10).getGame_id())) {
                this.f61240c.get(i10).setIs_local_battle(true);
            } else {
                this.f61240c.get(i10).setIs_local_battle(false);
            }
        }
        notifyDataSetChanged();
    }

    public void c(List<DiscoveryMainDataBean.BattleGameBean> mList) {
        this.f61240c = mList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f61240c.size() >= 4) {
            return 4;
        }
        return this.f61240c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View viewInflate;
        a aVar;
        DiscoveryMainDataBean.BattleGameBean battleGameBean = this.f61240c.get(position);
        if (convertView == null) {
            aVar = new a();
            viewInflate = LayoutInflater.from(this.f61239b).inflate(R.layout.item_discovery_top_view, (ViewGroup) null);
            aVar.f61243a = (SimpleDraweeView) viewInflate.findViewById(R.id.ItemIcon);
            aVar.f61244b = (TextView) viewInflate.findViewById(R.id.ItemName);
            aVar.f61245c = (TextView) viewInflate.findViewById(R.id.ItemNum);
            aVar.f61246d = (ImageView) viewInflate.findViewById(R.id.ItemMy);
            viewInflate.setTag(aVar);
        } else {
            viewInflate = convertView;
            aVar = (a) convertView.getTag();
        }
        com.join.android.app.common.utils.l.j(aVar.f61243a, battleGameBean.getGame_ico(), this.f61241d);
        aVar.f61244b.setText(battleGameBean.getGame_name());
        aVar.f61245c.setText(battleGameBean.getRoom_count() + "");
        if (battleGameBean.isIs_local_battle()) {
            aVar.f61246d.setVisibility(0);
        } else {
            aVar.f61246d.setVisibility(8);
        }
        return viewInflate;
    }
}
