package com.join.mgps.adapter;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GamePaiWeiAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<d> f60635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f60636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f60637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f60638f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f60639g;

    public enum ViewType {
        RANK
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.RankListBean f60641c;

        a(final int val$position, final PaiWeiDataBean.RankListBean val$rankListBean) {
            this.f60640b = val$position;
            this.f60641c = val$rankListBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GamePaiWeiAdapter.this.f60636d.a(this.f60640b, this.f60641c.getVideo());
        }
    }

    public interface b {
        void a(int position, String url);
    }

    class c extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RelativeLayout f60643b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f60644c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f60645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f60646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ImageView f60647f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private SimpleDraweeView f60648g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f60649h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f60650i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f60651j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f60652k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f60653l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ImageButton f60654m;

        c() {
            super();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60657b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public PaiWeiDataBean.RankListBean f60658a;

            public a(PaiWeiDataBean.RankListBean data) {
                this.f60658a = data;
            }
        }

        public d() {
        }

        public Object a() {
            return this.f60657b;
        }

        public ViewType b() {
            return this.f60656a;
        }

        public void c(Object obj) {
            this.f60657b = obj;
        }

        public void d(ViewType viewType) {
            this.f60656a = viewType;
        }

        public d(ViewType viewType, Object obj) {
            this.f60656a = viewType;
            this.f60657b = obj;
        }
    }

    class e {
        e() {
        }
    }

    public GamePaiWeiAdapter(Context mContext, List<d> itemBeans, b onPaiWeiPlayListener) {
        this.f60634b = mContext;
        this.f60635c = itemBeans;
        this.f60636d = onPaiWeiPlayListener;
        int width = ((Activity) mContext).getWindowManager().getDefaultDisplay().getWidth();
        this.f60638f = width;
        int i10 = (width * 42) / 100;
        this.f60638f = i10;
        int iA = i10 - com.join.mgps.Util.i0.a(mContext, 20.0f);
        this.f60638f = iA;
        this.f60639g = (iA * MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME) / 2490;
    }

    private View b(final int position, View convertView, ViewGroup parent) {
        View viewInflate;
        c cVar;
        d.a aVar = (d.a) getItem(position);
        if (convertView == null) {
            cVar = new c();
            viewInflate = LayoutInflater.from(this.f60634b).inflate(R.layout.item_paiwei_view, (ViewGroup) null);
            cVar.f60643b = (RelativeLayout) viewInflate.findViewById(R.id.item_root_rl);
            cVar.f60644c = (ImageView) viewInflate.findViewById(R.id.item_rank_bg_iv);
            cVar.f60645d = (ImageView) viewInflate.findViewById(R.id.item_rank_iv);
            cVar.f60646e = (TextView) viewInflate.findViewById(R.id.item_rank_tv);
            cVar.f60653l = (TextView) viewInflate.findViewById(R.id.item_rank_cion_tv);
            cVar.f60647f = (ImageView) viewInflate.findViewById(R.id.item_hander_bg_iv);
            cVar.f60648g = (SimpleDraweeView) viewInflate.findViewById(R.id.item_hander_iv);
            cVar.f60649h = (TextView) viewInflate.findViewById(R.id.item_rank_name_tv);
            cVar.f60650i = (TextView) viewInflate.findViewById(R.id.item_rank_bf_tv);
            cVar.f60651j = (TextView) viewInflate.findViewById(R.id.item_rank_role_tv);
            cVar.f60652k = (TextView) viewInflate.findViewById(R.id.item_rank_time_tv);
            cVar.f60654m = (ImageButton) viewInflate.findViewById(R.id.item_rank_play_ib);
            viewInflate.setTag(cVar);
        } else {
            viewInflate = convertView;
            cVar = (c) convertView.getTag();
        }
        PaiWeiDataBean.RankListBean rankListBean = aVar.f60658a;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f60638f, this.f60639g);
        layoutParams.topMargin = com.join.mgps.Util.i0.a(this.f60634b, 5.0f);
        layoutParams.leftMargin = com.join.mgps.Util.i0.a(this.f60634b, 10.0f);
        layoutParams.rightMargin = com.join.mgps.Util.i0.a(this.f60634b, 10.0f);
        cVar.f60643b.setLayoutParams(layoutParams);
        if (position == 0) {
            cVar.f60645d.setVisibility(0);
            cVar.f60646e.setVisibility(8);
            cVar.f60645d.setImageResource(R.drawable.paiwei_list_one);
            cVar.f60644c.setImageResource(R.drawable.paiwei_list_top_bg);
            cVar.f60647f.setImageResource(R.drawable.paiwei_list_top_header_bg);
            cVar.f60652k.setTextColor(Color.parseColor("#AB8E55"));
        } else if (position == 1) {
            cVar.f60645d.setVisibility(0);
            cVar.f60646e.setVisibility(8);
            cVar.f60645d.setImageResource(R.drawable.paiwei_list_two);
            cVar.f60644c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f60647f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f60652k.setTextColor(Color.parseColor("#339CBB"));
        } else if (position == 2) {
            cVar.f60645d.setVisibility(0);
            cVar.f60646e.setVisibility(8);
            cVar.f60645d.setImageResource(R.drawable.paiwei_list_three);
            cVar.f60644c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f60647f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f60652k.setTextColor(Color.parseColor("#339CBB"));
        } else {
            cVar.f60645d.setVisibility(8);
            cVar.f60646e.setVisibility(0);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            int i10 = position + 1;
            sb2.append(i10);
            if (sb2.toString().length() <= 2) {
                cVar.f60646e.setTextSize(2, 25.0f);
            } else {
                cVar.f60646e.setTextSize(2, 16.0f);
            }
            cVar.f60646e.setText("" + i10);
            cVar.f60644c.setImageResource(R.drawable.paiwei_list_other_bg);
            cVar.f60647f.setImageResource(R.drawable.paiwei_list_header_bg);
            cVar.f60652k.setTextColor(Color.parseColor("#339CBB"));
        }
        cVar.f60649h.setText(rankListBean.getNickname());
        cVar.f60652k.setText(rankListBean.getUse_time());
        cVar.f60651j.setText(rankListBean.getRole());
        if (rankListBean.getRole_rank() == null || rankListBean.getRole_rank().isEmpty()) {
            cVar.f60650i.setVisibility(8);
        } else {
            cVar.f60650i.setVisibility(0);
            cVar.f60650i.setText("第" + com.join.mgps.Util.u1.a(Integer.valueOf(rankListBean.getRole_rank()).intValue()));
        }
        if (com.join.mgps.Util.t2.i(rankListBean.getAvatar())) {
            UtilsMy.M3(this.f60634b, rankListBean.getAvatar(), cVar.f60648g);
        }
        if (rankListBean.getCost_coin() != null && !rankListBean.getCost_coin().isEmpty()) {
            cVar.f60653l.setText(rankListBean.getCost_coin() + this.f60637e);
        }
        cVar.f60654m.setOnClickListener(new a(position, rankListBean));
        return viewInflate;
    }

    public void c(List<d> itemBeans) {
        this.f60635c = itemBeans;
        notifyDataSetChanged();
    }

    public void d(String unit) {
        this.f60637e = unit;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<d> list = this.f60635c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<d> list = this.f60635c;
        if (list != null) {
            return list.get(position).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        List<d> list = this.f60635c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        return getItemViewType(position) == ViewType.RANK.ordinal() ? b(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }
}
