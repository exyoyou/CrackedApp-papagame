package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEmuClassify;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends RecyclerView.Adapter {
    public static final int A = 17;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f61906j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f61907k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f61908l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f61909m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f61910n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f61911o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f61912p = 6;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f61913q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f61914r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f61915s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f61916t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f61917u = 11;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f61918v = 12;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f61919w = 13;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f61920x = 14;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f61921y = 15;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f61922z = 16;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f61923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<i0> f61924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f61925g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    r f61926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile int f61927i = 18;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61928b;

        a(final i0 val$viewBean) {
            this.f61928b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            e.this.j((BannerBean) this.f61928b.a());
            com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((BannerBean) this.f61928b.a()).getCrc_link_type_val(), "todayButton", this.f61928b.e(), "精选专题");
        }
    }

    public class a0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View[] f61930e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView[] f61931f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView[] f61932g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView[] f61933h;

        public a0(View itemView) {
            super(itemView);
            this.f61930e = new View[3];
            this.f61931f = new SimpleDraweeView[3];
            this.f61932g = new TextView[3];
            this.f61933h = new TextView[3];
            View viewFindViewById = itemView.findViewById(R.id.item1);
            View viewFindViewById2 = itemView.findViewById(R.id.item2);
            View viewFindViewById3 = itemView.findViewById(R.id.item3);
            View[] viewArr = this.f61930e;
            int i10 = 0;
            viewArr[0] = viewFindViewById;
            viewArr[1] = viewFindViewById2;
            viewArr[2] = viewFindViewById3;
            while (true) {
                View[] viewArr2 = this.f61930e;
                if (i10 >= viewArr2.length) {
                    return;
                }
                this.f61931f[i10] = (SimpleDraweeView) viewArr2[i10].findViewById(R.id.cover);
                this.f61932g[i10] = (TextView) this.f61930e[i10].findViewById(R.id.name);
                this.f61933h[i10] = (TextView) this.f61930e[i10].findViewById(R.id.desc);
                i10++;
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61935b;

        b(final i0 val$viewBean) {
            this.f61935b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61935b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61935b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61935b.a()).getTpl_type(), ((TodayWufunBroadcast) this.f61935b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61935b.a()).get_from_type());
            com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61935b.a()).getGame_id(), "todayButton", this.f61935b.e(), "新游预约");
        }
    }

    public class b0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f61937e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f61938f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61939g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f61940h;

        public b0(View itemView) {
            super(itemView);
            this.f61937e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
            this.f61938f = (TextView) itemView.findViewById(R.id.name);
            this.f61939g = (TextView) itemView.findViewById(R.id.desc);
            this.f61940h = (TextView) itemView.findViewById(R.id.date);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61942b;

        c(final i0 val$viewBean) {
            this.f61942b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goShareWebActivity(e.this.f61923e, (String) this.f61942b.a());
        }
    }

    public class c0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f61944e;

        public c0(View itemView) {
            super(itemView);
            this.f61944e = itemView.findViewById(R.id.more);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f61946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TodayWufunEmuClassify f61947c;

        d(final ViewGroup val$vg, final TodayWufunEmuClassify val$classify) {
            this.f61946b = val$vg;
            this.f61947c = val$classify;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < this.f61946b.getChildCount(); i10++) {
                this.f61946b.getChildAt(i10).setSelected(false);
            }
            v10.setSelected(true);
            e.this.B(this.f61947c);
        }
    }

    public class d0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f61949e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f61950f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61951g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f61952h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f61953i;

        public d0(View itemView) {
            super(itemView);
            this.f61949e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
            this.f61950f = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.f61951g = (TextView) itemView.findViewById(R.id.name);
            this.f61952h = (TextView) itemView.findViewById(R.id.desc);
            this.f61953i = (TextView) itemView.findViewById(R.id.rank);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.adapter.e$e, reason: collision with other inner class name */
    class ViewOnClickListenerC0694e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BannerBean f61955b;

        ViewOnClickListenerC0694e(final BannerBean val$bean) {
            this.f61955b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(v10.getContext(), this.f61955b.getIntentDataBean());
        }
    }

    public class e0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f61957e;

        public e0(View itemView) {
            super(itemView);
            this.f61957e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61959b;

        f(final i0 val$viewBean) {
            this.f61959b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61959b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61959b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61959b.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f61959b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61959b.a()).get_from_type());
            com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61959b.a()).getGame_id(), "eidtButton", this.f61959b.e(), "编辑推荐");
        }
    }

    public class f0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61961e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f61962f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61963g;

        public f0(View itemView) {
            super(itemView);
            this.f61961e = (TextView) itemView.findViewById(R.id.name);
            this.f61962f = (TextView) itemView.findViewById(R.id.desc);
            this.f61963g = (TextView) itemView.findViewById(R.id.rank);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61965b;

        g(final i0 val$viewBean) {
            this.f61965b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61965b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61965b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61965b.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f61965b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61965b.a()).get_from_type());
            com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61965b.a()).getGame_id(), "adButton", this.f61965b.e(), "广告赞助");
        }
    }

    public class g0 extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TextView f61967e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final View f61968f;

        public g0(View itemView) {
            super(itemView);
            this.f61967e = (TextView) itemView.findViewById(R.id.title);
            this.f61968f = itemView.findViewById(R.id.divider);
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61970b;

        h(final i0 val$viewBean) {
            this.f61970b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61970b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61970b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61970b.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f61970b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61970b.a()).get_from_type());
            com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61970b.a()).getGame_id(), "adButton", this.f61970b.e(), "广告赞助");
        }
    }

    public class h0 extends RecyclerView.ViewHolder {
        public h0(View itemView) {
            super(itemView);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61973b;

        i(final i0 val$viewBean) {
            this.f61973b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61973b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61973b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61973b.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f61973b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61973b.a()).get_from_type());
            if (this.f61973b.f() <= 7) {
                com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61973b.a()).getGame_id(), "todayButton", this.f61973b.e(), "每日发现游戏");
            }
        }
    }

    public static class i0<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f61975a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        T f61976b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f61977c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f61978d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f61979e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f61980f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f61981g = "";

        public i0(int viewType, T bean) {
            this.f61975a = viewType;
            this.f61976b = bean;
        }

        public T a() {
            return this.f61976b;
        }

        public int b() {
            return this.f61977c;
        }

        public int c() {
            return this.f61979e;
        }

        public int d() {
            return this.f61978d;
        }

        public String e() {
            return this.f61981g;
        }

        public int f() {
            return this.f61980f;
        }

        public int g() {
            return this.f61975a;
        }

        public void h(T bean) {
            this.f61976b = bean;
        }

        public i0 i(int dayGameType) {
            this.f61977c = dayGameType;
            return this;
        }

        public i0 j(int index) {
            this.f61979e = index;
            return this;
        }

        public i0 k(int recommandTitleType) {
            this.f61978d = recommandTitleType;
            return this;
        }

        public i0 l(String statPosition) {
            this.f61981g = statPosition;
            return this;
        }

        public i0 m(int todayIndex) {
            this.f61980f = todayIndex;
            return this;
        }

        public void n(int viewType) {
            this.f61975a = viewType;
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61982b;

        j(final i0 val$viewBean) {
            this.f61982b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61982b.a() == null) {
                return;
            }
            e.this.h(((TodayWufunBroadcast) this.f61982b.a()).getGame_id(), ((TodayWufunBroadcast) this.f61982b.a()).getGame_info_tpl_type(), ((TodayWufunBroadcast) this.f61982b.a()).getSp_tpl_two_position(), ((TodayWufunBroadcast) this.f61982b.a()).get_from_type());
            if (this.f61982b.f() <= 7) {
                com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((TodayWufunBroadcast) this.f61982b.a()).getGame_id(), "todayButton", this.f61982b.e(), "每日发现游戏");
            }
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61984b;

        k(final i0 val$viewBean) {
            this.f61984b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61984b.a() == null) {
                return;
            }
            e.this.i(((InformationListDataBean) this.f61984b.a()).getInfo_id());
            if (this.f61984b.f() <= 7) {
                com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((InformationListDataBean) this.f61984b.a()).getGame_id(), "todayButton", this.f61984b.e(), "大总管播报");
            }
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0 f61986b;

        l(final i0 val$viewBean) {
            this.f61986b = val$viewBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f61986b.a() == null) {
                return;
            }
            e.this.i(((InformationListDataBean) this.f61986b.a()).getInfo_id());
            if (this.f61986b.f() <= 7) {
                com.papa.sim.statistic.t.l(e.this.f61923e).l2(AccountUtil_.getInstance_(e.this.f61923e).getUid(), ((InformationListDataBean) this.f61986b.a()).getGame_id(), "todayButton", this.f61986b.e(), "大总管播报");
            }
        }
    }

    public class m extends h0 {
        public m(View itemView) {
            super(itemView);
        }
    }

    public class n extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f61989e;

        public n(View itemView) {
            super(itemView);
            this.f61989e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
        }
    }

    public class o extends h0 {
        public o(View itemView) {
            super(itemView);
        }
    }

    public static class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f61992a;
    }

    public static class q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f61993a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61994b;
    }

    public static class r extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TodayWufunEmuClassify f61995b = new TodayWufunEmuClassify();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Context f61996c;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                SimulatorAreaActivity_.intent(r.this.f61996c).b(r.this.f61995b.getId()).a(r.this.f61995b.getName()).start();
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ TodayWufunBroadcast f61998b;

            b(final TodayWufunBroadcast val$item) {
                this.f61998b = val$item;
            }

            public void a(String gameId, String tpl_type, int jump_type, int _from_type) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(1);
                intentDateBean.setCrc_link_type_val(gameId);
                intentDateBean.setTpl_type(tpl_type);
                intentDateBean.setJump_type(jump_type);
                ExtBean extBean = new ExtBean();
                extBean.set_from_type(_from_type);
                intentDateBean.setExtBean(extBean);
                IntentUtil.getInstance().intentActivity(r.this.f61996c, intentDateBean);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a(this.f61998b.getGame_id(), this.f61998b.getTpl_type(), this.f61998b.getSp_tpl_two_position(), this.f61998b.get_from_type());
            }
        }

        public r(Context context) {
            this.f61996c = context;
        }

        private View a(int position, View convertView, ViewGroup parent) {
            p pVar;
            try {
                if (convertView != null) {
                    pVar = (p) convertView.getTag();
                } else {
                    pVar = new p();
                    convertView = LayoutInflater.from(this.f61996c).inflate(R.layout.choice_item_classify_all, (ViewGroup) null);
                    pVar.f61992a = (TextView) convertView.findViewById(R.id.count);
                    convertView.setTag(pVar);
                }
                pVar.f61992a.setText(this.f61995b.getGame_count());
                convertView.setOnClickListener(new a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }

        private View c(int position, View convertView, ViewGroup parent) {
            q qVar;
            try {
                if (convertView != null) {
                    qVar = (q) convertView.getTag();
                } else {
                    qVar = new q();
                    convertView = LayoutInflater.from(this.f61996c).inflate(R.layout.choice_item_classify_game, (ViewGroup) null);
                    qVar.f61994b = (TextView) convertView.findViewById(R.id.name);
                    qVar.f61993a = (SimpleDraweeView) convertView.findViewById(R.id.icon);
                    convertView.setTag(qVar);
                }
                TodayWufunBroadcast item = getItem(position);
                if (item == null) {
                    return convertView;
                }
                com.join.android.app.common.utils.l.j(qVar.f61993a, item.getGame_ico(), com.join.android.app.common.utils.l.B(this.f61996c));
                qVar.f61994b.setText(item.getGame_name());
                convertView.setOnClickListener(new b(item));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }

        public TodayWufunEmuClassify b() {
            return this.f61995b;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public TodayWufunBroadcast getItem(int position) {
            TodayWufunEmuClassify todayWufunEmuClassify = this.f61995b;
            if (todayWufunEmuClassify == null || todayWufunEmuClassify.getGame_list() == null || position >= this.f61995b.getGame_list().size()) {
                return null;
            }
            return this.f61995b.getGame_list().get(position);
        }

        public void e(TodayWufunEmuClassify classify) {
            this.f61995b = classify;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            TodayWufunEmuClassify todayWufunEmuClassify = this.f61995b;
            if (todayWufunEmuClassify == null || todayWufunEmuClassify.getGame_list() == null) {
                return 1;
            }
            return this.f61995b.getGame_list().size() + 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return position == getCount() - 1 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            if (getItemViewType(position) == 0) {
                return c(position, convertView, parent);
            }
            return getItemViewType(position) == 1 ? a(position, convertView, parent) : convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }
    }

    public class s extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f62000e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62001f;

        public s(View itemView) {
            super(itemView);
            this.f62000e = (TextView) itemView.findViewById(R.id.date);
            this.f62001f = (TextView) itemView.findViewById(R.id.week);
        }
    }

    public class t extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62003e;

        public t(View itemView) {
            super(itemView);
            this.f62003e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
        }
    }

    public class u extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62005e;

        public u(View itemView) {
            super(itemView);
            this.f62005e = (SimpleDraweeView) itemView.findViewById(R.id.cover);
        }
    }

    public class v extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62008f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62009g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f62010h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62011i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f62012j;

        public v(View itemView) {
            super(itemView);
            this.f62007e = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.f62008f = (TextView) itemView.findViewById(R.id.name);
            this.f62009g = (TextView) itemView.findViewById(R.id.from);
            this.f62010h = (TextView) itemView.findViewById(R.id.fromFlag);
            this.f62011i = (TextView) itemView.findViewById(R.id.rank);
            this.f62012j = (TextView) itemView.findViewById(R.id.desc);
        }
    }

    public class w extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f62014e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62015f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f62016g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f62017h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62018i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f62019j;

        public w(View itemView) {
            super(itemView);
            this.f62014e = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.f62015f = (TextView) itemView.findViewById(R.id.name);
            this.f62016g = (TextView) itemView.findViewById(R.id.from);
            this.f62017h = (TextView) itemView.findViewById(R.id.fromFlag);
            this.f62018i = (TextView) itemView.findViewById(R.id.rank);
            this.f62019j = (TextView) itemView.findViewById(R.id.desc);
        }
    }

    public class x extends h0 {
        public x(View itemView) {
            super(itemView);
        }
    }

    public class y extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public GridView f62022e;

        public y(View itemView) {
            super(itemView);
            this.f62022e = (GridView) itemView.findViewById(R.id.gridView);
        }
    }

    public class z extends h0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f62024e;

        public z(View itemView) {
            super(itemView);
            this.f62024e = (LinearLayout) itemView.findViewById(R.id.classifies);
        }
    }

    public e(Context context, List<i0> datas) {
        this.f61923e = context;
        D(datas);
    }

    private void A(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        g0 g0Var = (g0) holder;
        if (i0Var.d() == 1) {
            g0Var.f61967e.setText("来自你的浏览推荐");
            g0Var.f61968f.setVisibility(8);
        }
        if (i0Var.d() == 2) {
            g0Var.f61967e.setText("来自广告赞助");
            g0Var.f61968f.setVisibility(0);
        } else {
            g0Var.f61967e.setText("来自编辑推荐");
            g0Var.f61968f.setVisibility(8);
        }
    }

    private RoundingParams b(Context context) {
        return new RoundingParams();
    }

    private RoundingParams f(Context context) {
        RoundingParams roundingParams = new RoundingParams();
        float dimension = context.getResources().getDimension(R.dimen.mg_forum_avatar_round_width);
        roundingParams.r(dimension, dimension, 0.0f, 0.0f);
        return roundingParams;
    }

    private void k(RecyclerView.ViewHolder holder, int position) {
    }

    private void l(n holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        com.join.android.app.common.utils.l.j(holder.f61989e, ((BannerBean) i0Var.a()).getPic_remote(), com.join.android.app.common.utils.l.B(this.f61923e));
        holder.f61989e.setOnClickListener(new a(i0Var));
    }

    private void m(RecyclerView.ViewHolder holder, int position) {
    }

    private void n(s holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        holder.f62000e.setText(com.join.android.app.common.utils.i.i("yyyy年MM月dd日", Long.valueOf(((Long) i0Var.a()).longValue() * 1000)));
        holder.f62001f.setText(com.join.android.app.common.utils.i.g(((Long) i0Var.a()).longValue() * 1000));
    }

    private void o(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        t tVar = (t) holder;
        i0 i0Var = (i0) getItem(position);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(tVar.f62003e, ((InformationListDataBean) i0Var.a()).getMaterial());
        holder.itemView.setOnClickListener(new k(i0Var));
    }

    private void p(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        u uVar = (u) holder;
        i0 i0Var = (i0) getItem(position);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(uVar.f62005e, ((TodayWufunBroadcast) i0Var.a()).getPic());
        holder.itemView.setOnClickListener(new i(i0Var));
    }

    private void q(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        v vVar = (v) holder;
        i0 i0Var = (i0) getItem(position);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        vVar.f62008f.setText(((InformationListDataBean) i0Var.a()).getGame_name());
        vVar.f62012j.setText(((InformationListDataBean) i0Var.a()).getTitle());
        if (((InformationListDataBean) i0Var.a()).getScore_count() > 0.0f) {
            vVar.f62011i.setVisibility(0);
            vVar.f62011i.setText(((InformationListDataBean) i0Var.a()).getScore_count() + "");
        } else {
            vVar.f62011i.setVisibility(8);
        }
        holder.itemView.setOnClickListener(new l(i0Var));
    }

    private void r(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        w wVar = (w) holder;
        i0 i0Var = (i0) getItem(position);
        if (i0Var == null || i0Var.a() == null) {
            return;
        }
        com.join.android.app.common.utils.l.j(wVar.f62014e, ((TodayWufunBroadcast) i0Var.a()).getIco_remote(), com.join.android.app.common.utils.l.B(this.f61923e));
        wVar.f62015f.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        wVar.f62019j.setText(((TodayWufunBroadcast) i0Var.a()).getTitle());
        if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
            wVar.f62018i.setVisibility(0);
            wVar.f62018i.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
        } else {
            wVar.f62018i.setVisibility(8);
        }
        holder.itemView.setOnClickListener(new j(i0Var));
    }

    private void s(y holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() == null) {
            return;
        }
        if (holder.f62022e.getAdapter() == null) {
            if (this.f61926h == null) {
                this.f61926h = new r(this.f61923e);
            }
            holder.f62022e.setAdapter((ListAdapter) this.f61926h);
        }
        this.f61926h.e((TodayWufunEmuClassify) i0Var.a());
        this.f61926h.notifyDataSetChanged();
    }

    private void t(z holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() == null) {
            return;
        }
        View view = new View(this.f61923e);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f61923e.getResources().getDimensionPixelSize(R.dimen.wdp2), this.f61923e.getResources().getDimensionPixelOffset(R.dimen.wdp24));
        view.setBackgroundResource(R.drawable.shape_choice_classify_divider);
        holder.f62024e.removeAllViews();
        for (int i10 = 0; i10 < ((List) i0Var.a()).size(); i10++) {
            TextView textView = (TextView) LayoutInflater.from(this.f61923e).inflate(R.layout.choice_item_classify_type, (ViewGroup) null);
            textView.setText(((TodayWufunEmuClassify) ((List) i0Var.a()).get(i10)).getName());
            if (i10 > 0) {
                View view2 = new View(this.f61923e);
                view2.setLayoutParams(layoutParams);
                view2.setBackgroundResource(R.drawable.shape_choice_classify_divider);
                holder.f62024e.addView(view2);
            }
            if (this.f61925g == ((TodayWufunEmuClassify) ((List) i0Var.a()).get(i10)).getId()) {
                textView.setSelected(true);
                B((TodayWufunEmuClassify) ((List) i0Var.a()).get(i10));
            }
            holder.f62024e.addView(textView);
            E(holder.f62024e, textView, (TodayWufunEmuClassify) ((List) i0Var.a()).get(i10));
        }
    }

    private void u(a0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() == null) {
            return;
        }
        for (int i10 = 0; i10 < ((List) i0Var.a()).size() && i10 < 3; i10++) {
            BannerBean bannerBean = (BannerBean) ((List) i0Var.a()).get(i10);
            holder.f61932g[i10].setText(bannerBean.getTitle());
            holder.f61933h[i10].setText(bannerBean.getLabel());
            com.join.android.app.common.utils.l.j(holder.f61931f[i10], bannerBean.getPic_remote(), f(this.f61923e));
            holder.f61930e[i10].setOnClickListener(new ViewOnClickListenerC0694e(bannerBean));
        }
    }

    private void v(b0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        com.join.android.app.common.utils.l.j(holder.f61937e, ((TodayWufunBroadcast) i0Var.a()).getGame_img(), com.join.android.app.common.utils.l.B(this.f61923e));
        holder.f61938f.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        holder.f61939g.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
        holder.f61940h.setText(this.f61923e.getResources().getString(R.string.choice_order_date, ((TodayWufunBroadcast) i0Var.a()).getOnline_time()));
        holder.itemView.setOnClickListener(new b(i0Var));
    }

    private void w(c0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (TextUtils.isEmpty((CharSequence) i0Var.a())) {
            holder.f61944e.setVisibility(8);
        } else {
            holder.f61944e.setVisibility(0);
            holder.f61944e.setOnClickListener(new c(i0Var));
        }
    }

    private void x(d0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() == null) {
            return;
        }
        com.join.android.app.common.utils.l.d(holder.f61949e, R.color.choice_recommand_bg, ((TodayWufunBroadcast) i0Var.a()).getGame_img());
        com.join.android.app.common.utils.l.j(holder.f61950f, ((TodayWufunBroadcast) i0Var.a()).getIco_remote(), com.join.android.app.common.utils.l.B(this.f61923e));
        holder.f61952h.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
        holder.f61951g.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
        if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
            holder.f61953i.setVisibility(0);
            holder.f61953i.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
        } else {
            holder.f61953i.setVisibility(8);
        }
        holder.itemView.setOnClickListener(new f(i0Var));
    }

    private void y(e0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() != null) {
            com.join.android.app.common.utils.l.h(holder.f61957e, ((TodayWufunBroadcast) i0Var.a()).getGame_img());
            holder.itemView.setOnClickListener(new g(i0Var));
        }
    }

    private void z(f0 holder, int position) {
        if (holder == null) {
            return;
        }
        i0 i0Var = (i0) getItem(position);
        if (i0Var.a() != null) {
            holder.f61962f.setText(((TodayWufunBroadcast) i0Var.a()).getGame_desc());
            holder.f61961e.setText(((TodayWufunBroadcast) i0Var.a()).getGame_name());
            if (((TodayWufunBroadcast) i0Var.a()).getScore_count() > 0.0f) {
                holder.f61963g.setVisibility(0);
                holder.f61963g.setText(((TodayWufunBroadcast) i0Var.a()).getScore_count() + "");
            } else {
                holder.f61963g.setVisibility(8);
            }
            holder.itemView.setOnClickListener(new h(i0Var));
        }
    }

    public void B(TodayWufunEmuClassify classify) {
        this.f61925g = classify.getId();
        if (this.f61926h == null && this.f61923e != null) {
            this.f61926h = new r(this.f61923e);
        }
        r rVar = this.f61926h;
        if (rVar != null) {
            rVar.e(classify);
            this.f61926h.notifyDataSetChanged();
        }
    }

    public void C(int currentClassifyId) {
        this.f61925g = currentClassifyId;
    }

    public void D(List<i0> uiDatas) {
        if (this.f61924f == null) {
            this.f61924f = new ArrayList();
        }
        this.f61924f.clear();
        this.f61924f.addAll(uiDatas);
    }

    public void E(final ViewGroup vg, View view, final TodayWufunEmuClassify classify) {
        if (view == null || classify == null) {
            return;
        }
        view.setOnClickListener(new d(vg, classify));
    }

    public int c() {
        List<i0> list = this.f61924f;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public int d() {
        return this.f61925g;
    }

    public String e(TextView tv2, String content, int maxLine) {
        float fMeasureText = tv2.getPaint().measureText(content);
        int i10 = this.f61923e.getResources().getDisplayMetrics().widthPixels;
        float measuredWidth = fMeasureText / tv2.getMeasuredWidth();
        double d10 = ((double) maxLine) + 0.5d;
        if (measuredWidth <= d10) {
            return content;
        }
        return content.substring(0, (int) (((double) (content.length() / measuredWidth)) / d10)) + "...";
    }

    public int g() {
        return this.f61927i;
    }

    public Object getItem(int i10) {
        List<i0> list = this.f61924f;
        if (list != null) {
            return list.get(i10);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<i0> list = this.f61924f;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f61924f.get(position).g();
    }

    public void h(String gameId, String tpl_type, int jump_type, int _from_type) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameId);
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setJump_type(jump_type);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(_from_type);
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.f61923e, intentDateBean);
    }

    public void i(String link_tpl_type) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(6);
        intentDateBean.setLink_type_val(link_tpl_type);
        IntentUtil.getInstance().intentActivity(this.f61923e, intentDateBean);
    }

    void j(BannerBean bean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(bean.getLink_type());
        intentDateBean.setCrc_link_type_val(bean.getCrc_link_type_val());
        intentDateBean.setTpl_type(bean.getTpl_type());
        intentDateBean.setJump_type(bean.getJump_type());
        intentDateBean.setLink_type_val(bean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f61923e, intentDateBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        if (holder == null) {
            return;
        }
        int itemViewType = getItemViewType(position);
        if (itemViewType == 1) {
            A(holder, position);
            return;
        }
        if (itemViewType == 2) {
            x((d0) holder, position);
            return;
        }
        if (itemViewType == 3) {
            y((e0) holder, position);
            return;
        }
        if (itemViewType == 4) {
            z((f0) holder, position);
            return;
        }
        if (itemViewType == 5) {
            n((s) holder, position);
            return;
        }
        if (itemViewType == 6) {
            p(holder, position);
            return;
        }
        if (itemViewType == 7) {
            r(holder, position);
            return;
        }
        if (itemViewType == 13) {
            o(holder, position);
            return;
        }
        if (itemViewType == 14) {
            q(holder, position);
            return;
        }
        if (itemViewType == 8) {
            m(holder, position);
            return;
        }
        if (itemViewType == 9) {
            l((n) holder, position);
            return;
        }
        if (itemViewType == 10) {
            w((c0) holder, position);
            return;
        }
        if (itemViewType == 11) {
            v((b0) holder, position);
            return;
        }
        if (itemViewType == 12) {
            k(holder, position);
            return;
        }
        if (itemViewType == 15) {
            u((a0) holder, position);
        } else if (itemViewType == 16) {
            t((z) holder, position);
        } else if (itemViewType == 17) {
            s((y) holder, position);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType == 1) {
            return new g0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_recommand_title, parent, false));
        }
        if (viewType == 2) {
            return new d0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_recommand_1_cover, parent, false));
        }
        if (viewType == 3) {
            return new e0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_recommand_2_cover, parent, false));
        }
        if (viewType == 4) {
            return new f0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_recommand_2_footer, parent, false));
        }
        if (viewType == 5) {
            return new s(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_date_line, parent, false));
        }
        if (viewType == 6) {
            return new u(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_day_game_cover, parent, false));
        }
        if (viewType == 7) {
            return new w(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_day_game_footer, parent, false));
        }
        if (viewType == 13) {
            return new t(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_day_game_cover2, parent, false));
        }
        if (viewType == 14) {
            return new v(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_day_game_footer2, parent, false));
        }
        if (viewType == 8) {
            return new o(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_choice_top, parent, false));
        }
        if (viewType == 9) {
            return new n(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_choice_cover, parent, false));
        }
        if (viewType == 10) {
            return new c0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_order_top, parent, false));
        }
        if (viewType == 11) {
            return new b0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_order_main, parent, false));
        }
        if (viewType == 12) {
            return new m(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_choice_bottom, parent, false));
        }
        if (viewType == 0) {
            return new x(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_divider, parent, false));
        }
        if (viewType == 15) {
            return new a0(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_game_classify, parent, false));
        }
        if (viewType == 16) {
            return new z(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_game_classify_type, parent, false));
        }
        if (viewType == 17) {
            return new y(LayoutInflater.from(this.f61923e).inflate(R.layout.chioce_item_game_classify_content, parent, false));
        }
        return null;
    }
}
