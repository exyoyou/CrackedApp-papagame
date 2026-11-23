package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a3 extends RecyclerView.Adapter<b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<GameFromPopoWinBeanV2.DataBean> f61227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Context f61228f;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBeanV2.DataBean f61229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f61230c;

        a(final GameFromPopoWinBeanV2.DataBean val$dataBean, final int val$i) {
            this.f61229b = val$dataBean;
            this.f61230c = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a3.this.a(this.f61229b.getId() + "", this.f61229b.getUid());
            Ext ext = new Ext();
            ext.setPosition("fromGameDetailP2");
            ext.setArticleId(this.f61229b.getId() + "");
            com.papa.sim.statistic.t.l(a3.this.f61228f).R1(Event.enterUserGameList, ext);
            a3.this.g("22-21-" + (this.f61230c + 1));
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f61232d;

        public b(View itemView) {
            super(itemView);
            this.f61232d = itemView.findViewById(R.id.main);
        }
    }

    public a3(Context context, List<GameFromPopoWinBeanV2.DataBean> datas) {
        this.f61227e = datas;
        this.f61228f = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String id2, int uid) {
        Intent intent = new Intent(this.f61228f, (Class<?>) GameDetailActivity_.class);
        intent.putExtra("fromid", id2);
        intent.putExtra("_from", 11105);
        intent.putExtra("groupuid", uid);
        this.f61228f.startActivity(intent);
    }

    public static void d(Context context, View itemView, GameFromPopoWinBeanV2.DataBean dataBean) {
        int i10;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) itemView.findViewById(R.id.sdv_top_cover);
        LinearLayout linearLayout = (LinearLayout) itemView.findViewById(R.id.iconLayout);
        TextView textView = (TextView) itemView.findViewById(R.id.title);
        TextView textView2 = (TextView) itemView.findViewById(R.id.name);
        TextView textView3 = (TextView) itemView.findViewById(R.id.follow);
        List<GameFromPopoWinBeanV2.DataBean.GameListBean> game_list = dataBean.getGame_list();
        boolean z10 = false;
        int size = game_list == null ? 0 : game_list.size();
        com.join.android.app.common.utils.l.e(simpleDraweeView, R.drawable.main_normal_icon, dataBean.getBig_pic(), com.facebook.drawee.drawable.s.c.f27292i);
        if (textView != null) {
            textView.setText(dataBean.getTitle());
        }
        if (textView2 != null) {
            textView2.setText(dataBean.getNick_name());
        }
        if (textView3 != null) {
            String book_count = dataBean.getBook_count();
            StringBuilder sb2 = new StringBuilder();
            if (TextUtils.isEmpty(book_count)) {
                book_count = "0";
            }
            sb2.append(book_count);
            sb2.append("订阅");
            textView3.setText(sb2.toString());
        }
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        int dimension = (int) context.getResources().getDimension(R.dimen.wdp8);
        int dimension2 = (int) context.getResources().getDimension(R.dimen.wdp60);
        int dimension3 = (int) context.getResources().getDimension(R.dimen.wdp90);
        int dimension4 = (int) context.getResources().getDimension(R.dimen.wdp60);
        float dimension5 = context.getResources().getDimension(R.dimen.wdp8);
        float dimension6 = context.getResources().getDimension(R.dimen.wdp14);
        int i11 = 0;
        while (i11 < 4) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.gamelist_list_itemhome_icon_cell, linearLayout, z10);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i11 == 3 ? dimension3 : dimension2, dimension4);
            if (i11 > 0) {
                layoutParams.setMarginStart(dimension);
            }
            viewInflate.setLayoutParams(layoutParams);
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) viewInflate.findViewById(R.id.sdv_icon);
            View viewFindViewById = viewInflate.findViewById(R.id.v_dim_overlay);
            TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_game_count_badge);
            boolean z11 = i11 == 3;
            simpleDraweeView2.getHierarchy().X(RoundingParams.d(z11 ? dimension6 : dimension5));
            if (z11 && viewFindViewById != null) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(-1728053248);
                gradientDrawable.setCornerRadius(dimension6);
                viewFindViewById.setBackground(gradientDrawable);
            } else if (viewFindViewById != null) {
                viewFindViewById.setBackgroundResource(17170445);
            }
            if (i11 < 3) {
                if (i11 < size) {
                    com.join.android.app.common.utils.l.d(simpleDraweeView2, R.drawable.main_normal_icon, game_list.get(i11).getGame_ico());
                    simpleDraweeView2.setVisibility(0);
                } else {
                    simpleDraweeView2.setVisibility(4);
                }
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
                if (textView4 != null) {
                    textView4.setVisibility(8);
                }
            } else {
                if (size >= 4) {
                    com.join.android.app.common.utils.l.d(simpleDraweeView2, R.drawable.main_normal_icon, game_list.get(3).getGame_ico());
                    simpleDraweeView2.setVisibility(0);
                } else {
                    simpleDraweeView2.setVisibility(4);
                }
                try {
                    i10 = Integer.parseInt(dataBean.getGame_count());
                } catch (Exception unused) {
                    i10 = size;
                }
                if (!(size >= 4) || viewFindViewById == null || textView4 == null) {
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    if (textView4 != null) {
                        textView4.setVisibility(8);
                    }
                } else {
                    viewFindViewById.setVisibility(0);
                    textView4.setVisibility(0);
                    textView4.setText(i10 + "款");
                }
            }
            linearLayout.addView(viewInflate);
            i11++;
            z10 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String pointName) {
        com.papa.sim.statistic.t.l(this.f61228f).t(ExtFrom.home.name(), "22-" + pointName, AccountUtil_.getInstance_(this.f61228f).getUid());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b viewHolder, int i10) {
        GameFromPopoWinBeanV2.DataBean dataBean = this.f61227e.get(i10);
        viewHolder.f61232d.setOnClickListener(new a(dataBean, i10));
        d(this.f61228f, viewHolder.itemView, dataBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new b(LayoutInflater.from(this.f61228f).inflate(R.layout.gamelist_list_itemhome, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f61227e.size();
    }
}
