package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f2 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<GameInfoBean> f62077e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f62078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f62079g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e f62080h;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f62081b;

        a(final int val$position) {
            this.f62081b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f2.this.f62080h.a(this.f62081b);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f62083b;

        b(final int val$position) {
            this.f62083b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f2.this.f62080h.a(this.f62083b);
        }
    }

    class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f62085d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f62086e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private SimpleDraweeView f62087f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f62088g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f62089h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f62090i;

        public c(View itemView) {
            super(itemView);
            this.f62087f = (SimpleDraweeView) itemView.findViewById(R.id.iv_icon);
            this.f62088g = (TextView) itemView.findViewById(R.id.tv_gameName);
            this.f62089h = (TextView) itemView.findViewById(R.id.tv_roomCounts);
            this.f62085d = itemView.findViewById(R.id.main);
            this.f62086e = itemView.findViewById(R.id.cover);
            this.f62090i = (TextView) itemView.findViewById(R.id.romeName);
        }
    }

    class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f62092d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f62093e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62094f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f62095g;

        public d(View itemView) {
            super(itemView);
            this.f62093e = (SimpleDraweeView) itemView.findViewById(R.id.iv_icon);
            this.f62094f = (TextView) itemView.findViewById(R.id.tv_gameName);
            this.f62095g = (TextView) itemView.findViewById(R.id.tv_roomCounts);
            this.f62092d = itemView.findViewById(R.id.main);
        }
    }

    public interface e {
        void a(int positon);
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f62098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62099c;

        private f() {
        }
    }

    public f2(Context context, boolean isNewArenaMain) {
        this.f62079g = context;
        this.f62078f = isNewArenaMain;
    }

    public List<GameInfoBean> b() {
        return this.f62077e;
    }

    public void c(int position, c holder) {
        GameInfoBean gameInfoBean = this.f62077e.get(position);
        holder.f62088g.setText(gameInfoBean.getTitle());
        com.join.android.app.common.utils.l.e(holder.f62087f, R.drawable.bg_gameinfo, gameInfoBean.getPic_remote_vertical(), com.facebook.drawee.drawable.s.c.f27292i);
        if (gameInfoBean.getRoom_count() == -1) {
            holder.f62089h.setVisibility(8);
            holder.f62090i.setVisibility(8);
            holder.f62088g.setTextColor(-1);
        } else {
            holder.f62089h.setVisibility(0);
            holder.f62090i.setVisibility(0);
            holder.f62088g.setTextColor(-1);
            holder.f62089h.setText(gameInfoBean.getRoom_count() + "");
        }
        holder.f62086e.setOnClickListener(new a(position));
    }

    public void d(int position, d holder) {
        GameInfoBean gameInfoBean = this.f62077e.get(position);
        holder.f62094f.setText(gameInfoBean.getGame_name());
        if (com.join.mgps.Util.t2.i(gameInfoBean.getPic_cover())) {
            SimpleDraweeView simpleDraweeView = holder.f62093e;
            String pic_cover = gameInfoBean.getPic_cover();
            Context context = this.f62079g;
            com.join.android.app.common.utils.l.j(simpleDraweeView, pic_cover, com.join.android.app.common.utils.l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp4)));
        } else {
            SimpleDraweeView simpleDraweeView2 = holder.f62093e;
            String game_ico = gameInfoBean.getGame_ico();
            Context context2 = this.f62079g;
            com.join.android.app.common.utils.l.j(simpleDraweeView2, game_ico, com.join.android.app.common.utils.l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp4)));
        }
        holder.f62095g.setText(gameInfoBean.getRoom_count() + "");
        holder.f62092d.setOnClickListener(new b(position));
    }

    public void e(List<GameInfoBean> datas) {
        this.f62077e = datas;
        notifyDataSetChanged();
    }

    public void f(e listener) {
        this.f62080h = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<GameInfoBean> list = this.f62077e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.f62078f ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder gameInfoHolder, int position) {
        try {
            if (getItemViewType(position) == 1) {
                c(position, (c) gameInfoHolder);
            } else {
                d(position, (d) gameInfoHolder);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return i10 == 1 ? new c(LayoutInflater.from(this.f62079g).inflate(R.layout.item_gameinfo, viewGroup, false)) : new d(LayoutInflater.from(this.f62079g).inflate(R.layout.item_gameinfo_1, viewGroup, false));
    }
}
