package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GamedetialModleFourBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j7 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f62503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<GamedetialModleFourBean> f62504f = new ArrayList();

    class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f62505d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f62506e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62507f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f62508g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f62509h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f62510i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        View f62511j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        View f62512k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        View f62513l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        LinearLayout f62514m;

        public a(View itemView) {
            super(itemView);
            this.f62505d = (SimpleDraweeView) itemView.findViewById(R.id.img);
            this.f62506e = (TextView) itemView.findViewById(R.id.count);
            this.f62507f = (TextView) itemView.findViewById(R.id.name);
            this.f62508g = (TextView) itemView.findViewById(R.id.desc);
            this.f62510i = itemView.findViewById(R.id.ml);
            this.f62511j = itemView.findViewById(R.id.mr);
            this.f62512k = itemView.findViewById(R.id.divider);
            this.f62513l = itemView.findViewById(R.id.rect);
            this.f62509h = (TextView) itemView.findViewById(R.id.score);
            this.f62514m = (LinearLayout) itemView.findViewById(R.id.tagLayout);
        }
    }

    public j7(Context context) {
        this.f62503e = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(GamedetialModleFourBean gamedetialModleFourBean, View view) {
        IntentUtil.getInstance().goGameDetialActivity(view.getContext(), gamedetialModleFourBean.getCrc_sign_id(), gamedetialModleFourBean.getGame_info_tpl_type(), gamedetialModleFourBean.getSp_tpl_two_position(), 13101);
    }

    public List<GamedetialModleFourBean> b() {
        return this.f62504f;
    }

    public void d(List<GamedetialModleFourBean> datas) {
        this.f62504f = datas;
    }

    View e(String tag) {
        TextView textView = new TextView(this.f62503e);
        textView.setText(tag);
        textView.setSingleLine(true);
        textView.setTextColor(Color.parseColor("#FFA8A8A8"));
        textView.setTextSize(0, this.f62503e.getResources().getDimensionPixelSize(R.dimen.wdp20));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, this.f62503e.getResources().getDimensionPixelOffset(R.dimen.wdp10), 0);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62504f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof a) {
            a aVar = (a) viewHolder;
            final GamedetialModleFourBean gamedetialModleFourBean = this.f62504f.get(i10);
            if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_gif()) && i10 == 0) {
                com.join.android.app.common.utils.l.o(aVar.f62505d, gamedetialModleFourBean.getRecommend_game_big_gif());
            } else if (!TextUtils.isEmpty(gamedetialModleFourBean.getRecommend_game_big_pic()) && (i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3)) {
                com.join.android.app.common.utils.l.e(aVar.f62505d, R.drawable.main_normal_icon, gamedetialModleFourBean.getRecommend_game_big_pic(), com.facebook.drawee.drawable.s.c.f27292i);
            } else if (gamedetialModleFourBean.getPic_info() != null && gamedetialModleFourBean.getPic_info().size() > 0 && gamedetialModleFourBean.getPic_info().get(0).getRemote() != null) {
                com.join.android.app.common.utils.l.e(aVar.f62505d, R.drawable.main_normal_icon, gamedetialModleFourBean.getPic_info().get(0).getRemote().getPath(), com.facebook.drawee.drawable.s.c.f27292i);
            }
            aVar.f62507f.setText(gamedetialModleFourBean.getGame_name());
            aVar.f62509h.setText(gamedetialModleFourBean.getScore());
            aVar.f62513l.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.i7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    j7.c(gamedetialModleFourBean, view);
                }
            });
            aVar.f62514m.removeAllViews();
            if (gamedetialModleFourBean.getTag_info() != null) {
                for (int i11 = 0; i11 < gamedetialModleFourBean.getTag_info().size() && i11 <= 2; i11++) {
                    aVar.f62514m.addView(e(gamedetialModleFourBean.getTag_info().get(i11).getName()));
                }
            }
            if (i10 == 0) {
                aVar.f62510i.setVisibility(0);
                aVar.f62512k.setVisibility(8);
                aVar.f62511j.setVisibility(8);
            } else if (i10 == getItemCount() - 1) {
                aVar.f62510i.setVisibility(8);
                aVar.f62512k.setVisibility(0);
                aVar.f62511j.setVisibility(0);
            } else {
                aVar.f62510i.setVisibility(8);
                aVar.f62512k.setVisibility(0);
                aVar.f62511j.setVisibility(8);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new a(LayoutInflater.from(this.f62503e).inflate(R.layout.simulator_exit_item, viewGroup, false));
    }
}
