package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class x extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f63363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f63364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f63365d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean.DataBean f63366b;

        a(final GameFromPopoWinBean.DataBean val$dataBean) {
            this.f63366b = val$dataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(view.getContext(), (Class<?>) GameDetailActivity_.class);
            intent.putExtra("fromid", this.f63366b.getId());
            intent.putExtra("groupuid", this.f63366b.getUid());
            intent.putExtra("_from", 11103);
            intent.putExtra("gameid", "0");
            intent.putExtra("company_id", "0");
            view.getContext().startActivity(intent);
            Ext ext = new Ext();
            ext.setPosition("fromGameDetailP1");
            ext.setArticleId(this.f63366b.getId());
            com.papa.sim.statistic.t.l(x.this.f63364c).R1(Event.enterUserGameList, ext);
        }
    }

    public x(Context context, List<GameFromPopoWinBean.DataBean> dataBeans, int type) {
        this.f63363b = dataBeans;
        this.f63364c = context;
        this.f63365d = type;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63363b.size();
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
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f63364c).inflate(R.layout.gamedetial_favorties_item_layoutv2, (ViewGroup) null);
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.main);
        TextView textView = (TextView) view.findViewById(R.id.title);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.iconLayout);
        TextView textView2 = (TextView) view.findViewById(R.id.name);
        TextView textView3 = (TextView) view.findViewById(R.id.follow);
        TextView textView4 = (TextView) view.findViewById(R.id.number);
        GameFromPopoWinBean.DataBean dataBean = this.f63363b.get(i10);
        relativeLayout.setOnClickListener(new a(dataBean));
        textView.setText(dataBean.getTitle());
        textView2.setText(dataBean.getNick_name());
        textView3.setText(dataBean.getBook_count() + "订阅");
        textView4.setText(dataBean.getGame_count() + "款");
        linearLayout.removeAllViews();
        for (GameFromPopoWinBean.DataBean.GameListBean gameListBean : dataBean.getGame_list()) {
            View viewInflate = LayoutInflater.from(this.f63364c).inflate(R.layout.gamelist_listitem_gameicon_layout, (ViewGroup) null);
            com.join.android.app.common.utils.l.d((SimpleDraweeView) viewInflate.findViewById(R.id.icon), R.drawable.main_normal_icon, gameListBean.getGame_ico());
            linearLayout.addView(viewInflate);
        }
        int i11 = i10 % 5;
        if (i11 == 0) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_1);
        } else if (i11 == 1) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_2);
        } else if (i11 == 2) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_3);
        } else if (i11 == 3) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_4);
        } else if (i11 == 4) {
            relativeLayout.setBackgroundResource(R.drawable.gamelist_itemback_5);
        }
        return view;
    }
}
