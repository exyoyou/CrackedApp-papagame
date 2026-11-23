package com.join.mgps.adapter;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameMainV3DataBean;
import com.papa.sim.statistic.Event;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class n2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f62812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LayoutInflater f62813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<Integer, Integer> f62814h = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<GameMainV3DataBean.GameRecommendInfoBean> f62811e = new ArrayList();

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f62815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62816c;

        a(final String val$gameId, final int val$position) {
            this.f62815b = val$gameId;
            this.f62816c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.papa.sim.statistic.t.l(n2.this.f62812f).Z0(Event.clickIndexAdEvent, AccountUtil_.getInstance_(n2.this.f62812f).getUid(), this.f62815b, "1-" + (this.f62816c + 1), 0);
            IntentUtil.getInstance().goGameDetialActivity(n2.this.f62812f, this.f62815b, "0", 1, 122);
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f62818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f62819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f62820f;

        public b(View view) {
            super(view);
            this.f62818d = (SimpleDraweeView) view.findViewById(R.id.itemGameRecommendIv);
            this.f62819e = (TextView) view.findViewById(R.id.itemGameRecommendTx);
            this.f62820f = (LinearLayout) view.findViewById(R.id.itemGameRecommendRootLl);
        }
    }

    public n2(Context context) {
        this.f62812f = context;
        this.f62813g = LayoutInflater.from(this.f62812f);
    }

    public void b(List<GameMainV3DataBean.GameRecommendInfoBean> mDatas) {
        this.f62811e = mDatas;
        notifyDataSetChanged();
    }

    public void c() {
        this.f62814h.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62811e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        try {
            GameMainV3DataBean.GameRecommendInfoBean gameRecommendInfoBean = this.f62811e.get(position);
            if (!(holder instanceof b) || gameRecommendInfoBean == null) {
                return;
            }
            String strValueOf = String.valueOf(gameRecommendInfoBean.getGame_id());
            if (!this.f62814h.containsKey(Integer.valueOf(position))) {
                this.f62814h.put(Integer.valueOf(position), Integer.valueOf(position));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("dot:");
                sb2.append(position);
                com.papa.sim.statistic.t.l(this.f62812f).Z0(Event.visitIndexAdEvent, AccountUtil_.getInstance_(this.f62812f).getUid(), strValueOf, "1-" + (position + 1), 0);
            }
            b bVar = (b) holder;
            String game_pic = gameRecommendInfoBean.getGame_pic();
            if (!com.join.mgps.Util.t2.h(game_pic)) {
                bVar.f62818d.setController(Fresco.newDraweeControllerBuilder().b(Uri.parse(game_pic)).F(true).build());
            }
            bVar.f62819e.setText(gameRecommendInfoBean.getGame_title());
            bVar.f62820f.setOnClickListener(new a(strValueOf, position));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new b(this.f62813g.inflate(R.layout.item_game_recommend_view, parent, false));
    }
}
