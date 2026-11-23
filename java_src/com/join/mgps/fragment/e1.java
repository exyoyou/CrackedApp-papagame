package com.join.mgps.fragment;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.EndGameBean;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_list)
public class e1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XRecyclerView f69384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f69385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @FragmentArg
    String f69388g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @FragmentArg
    int f69389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @FragmentArg
    String f69390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @FragmentArg
    String f69391j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.rpc.k f69394m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f69395n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f f69397p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.join.android.app.component.video.c f69398q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f69399r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Handler f69400s;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f69392k = "EndGameListFragment";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f69393l = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<EndGameBean> f69396o = new ArrayList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Runnable f69401t = new e();

    class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            e1.N(e1.this);
            e1.this.W();
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            e1.this.f69393l = 1;
            e1.this.W();
        }
    }

    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0 && e1.this.f69398q != null && e1.this.f69399r) {
                e1.this.f69398q.n(recyclerView);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e1.this.f69398q == null || !e1.this.f69399r) {
                return;
            }
            e1.this.f69398q.n(e1.this.f69384c);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e1.this.f69398q != null) {
                e1.this.f69398q.I(true);
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Ext ext = new Ext();
                ext.setFrom(String.valueOf(e1.this.f69389h));
                Data data = new Data();
                String str = e1.this.f69388g;
                if (str == null) {
                    str = "0";
                }
                data.setGameId(str);
                com.papa.sim.statistic.t.l(e1.this.getContext()).i0(Event.clickEndGameList, ext, data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class f extends RecyclerView.Adapter<g> {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ g f69408b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ EndGameBean f69409c;

            a(final g val$holder, final EndGameBean val$item) {
                this.f69408b = val$holder;
                this.f69409c = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                e1.this.f69398q.E(this.f69408b.getLayoutPosition());
                e1.this.a0(this.f69409c.getEndgameId());
            }
        }

        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(EndGameBean endGameBean, View view) {
            EndGameDetailActivity_.intent(e1.this.f69395n).b(endGameBean.getGameId()).a(endGameBean.getEndgameId()).d(e1.this.f69390i).start();
            e1.this.a0(endGameBean.getEndgameId());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(g gVar, View view) {
            e1 e1Var = e1.this;
            e1Var.b0((EndGameBean) e1Var.f69396o.get(gVar.getLayoutPosition()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull final g holder, int position) {
            double d10;
            String str;
            String str2;
            final EndGameBean endGameBean = (EndGameBean) e1.this.f69396o.get(position);
            try {
                d10 = Double.parseDouble(endGameBean.getChallengeSucRateStr());
            } catch (Exception e10) {
                e10.printStackTrace();
                d10 = 0.0d;
            }
            holder.f69423p.setText(endGameBean.getGameName());
            com.join.android.app.common.utils.l.o(holder.f69422o, endGameBean.getGameIcon());
            holder.f69412e.setText(endGameBean.getTitle());
            TextView textView = holder.f69411d;
            if (endGameBean.getChallenge() <= 0) {
                str = "还没有人挑战过";
            } else {
                str = e1.this.V(endGameBean.getChallenge()) + "人挑战过";
            }
            textView.setText(str);
            TextView textView2 = holder.f69414g;
            if (d10 > 0.0d) {
                str2 = "通过率 " + endGameBean.getChallengeSucRate();
            } else {
                str2 = "等你挑战";
            }
            textView2.setText(str2);
            holder.f69413f.setVisibility(endGameBean.getWin() == 1 ? 0 : 8);
            holder.f69419l.setStarCount(endGameBean.getStar());
            holder.f69420m.setVisibility(endGameBean.getStar() <= 0 ? 4 : 0);
            holder.f69419l.setVisibility(endGameBean.getStar() <= 0 ? 4 : 0);
            holder.f69421n.setVisibility(endGameBean.getStar() > 0 ? 0 : 4);
            holder.f69419l.setFocusable(false);
            holder.f69419l.setFocusableInTouchMode(false);
            holder.f69419l.setClickable(false);
            if (com.join.mgps.Util.t2.i(endGameBean.getVideo())) {
                com.join.android.app.common.utils.l.d(holder.f69417j, R.drawable.banner_normal_icon, endGameBean.getCover());
                holder.f69417j.setTag(Integer.valueOf(holder.getLayoutPosition()));
                e1.this.f69398q.d(holder.getLayoutPosition(), new com.join.android.app.component.video.c.l(holder.getLayoutPosition(), endGameBean.getVideo(), endGameBean.getCover(), endGameBean.getGameId(), endGameBean.getEndgameId(), e1.this.f69390i), new boolean[0]);
                holder.f69418k.setOnClickListener(new a(holder, endGameBean));
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.f1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69521b.c(endGameBean, view);
                }
            });
            holder.f69416i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.g1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69643b.d(holder, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public g onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            return e1.this.new g(LayoutInflater.from(e1.this.f69395n).inflate(R.layout.item_end_game_list, parent, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return e1.this.f69396o.size();
        }
    }

    class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextView f69411d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f69412e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ImageView f69413f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final TextView f69414g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final TextView f69415h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final TextView f69416i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public SimpleDraweeView f69417j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public FrameLayout f69418k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public MStarBar f69419l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f69420m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f69421n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public SimpleDraweeView f69422o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public TextView f69423p;

        public g(View itemView) {
            super(itemView);
            this.f69411d = (TextView) itemView.findViewById(R.id.tvHot);
            this.f69412e = (TextView) itemView.findViewById(R.id.tvName);
            this.f69413f = (ImageView) itemView.findViewById(R.id.tvPassTag);
            this.f69414g = (TextView) itemView.findViewById(R.id.tvPassCount);
            this.f69415h = (TextView) itemView.findViewById(R.id.tvPassRatio);
            this.f69416i = (TextView) itemView.findViewById(R.id.btnPlay);
            this.f69417j = (SimpleDraweeView) itemView.findViewById(R.id.bannerView);
            this.f69418k = (FrameLayout) itemView.findViewById(R.id.videoContner);
            this.f69419l = (MStarBar) itemView.findViewById(R.id.mStarBar);
            this.f69420m = (TextView) itemView.findViewById(R.id.tvHard);
            this.f69421n = itemView.findViewById(R.id.divider);
            this.f69422o = (SimpleDraweeView) itemView.findViewById(R.id.gameIcon);
            this.f69423p = (TextView) itemView.findViewById(R.id.tvGameName);
        }
    }

    static /* synthetic */ int N(e1 e1Var) {
        int i10 = e1Var.f69393l;
        e1Var.f69393l = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String V(int num) {
        if (num < 10000) {
            return String.valueOf(num);
        }
        return new DecimalFormat("##0.0").format((((double) num) * 1.0d) / 10000.0d) + "万";
    }

    private void Z() {
        if (this.f69400s == null) {
            this.f69400s = new Handler();
        }
        this.f69400s.removeCallbacks(this.f69401t);
        this.f69400s.postDelayed(this.f69401t, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(String endGameId) {
        try {
            Ext ext = new Ext();
            ext.setEndId(endGameId);
            Data data = new Data();
            String str = this.f69388g;
            if (str == null) {
                str = "0";
            }
            data.setGameId(str);
            com.papa.sim.statistic.t.l(getContext()).i0(Event.clickEndGameDetail, ext, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(EndGameBean endGameBean) {
        if (AccountUtil_.getInstance_(this.f69395n).isTourist()) {
            IntentUtil.getInstance().goLogin(this.f69395n);
            return;
        }
        if (endGameBean == null) {
            return;
        }
        EndGameLaunchActivity_.intent(getContext()).b(endGameBean.getGameId()).a(endGameBean).d(16).start();
        try {
            Ext ext = new Ext();
            ext.setPosition("1");
            ext.setEndId(endGameBean.getEndgameId());
            Data data = new Data();
            data.setGameId(endGameBean.getGameId());
            com.papa.sim.statistic.t.l(getContext()).i0(Event.gameStartVS, ext, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W() {
        if (!com.join.android.app.common.utils.m.j(this.f69395n)) {
            showLodingFailed();
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        RequestEndGameListArgs requestEndGameListArgs = new RequestEndGameListArgs();
        requestEndGameListArgs.setGameId(this.f69388g);
        requestEndGameListArgs.setUid(AccountUtil_.getInstance_(this.f69395n).getUid());
        requestEndGameListArgs.setType(this.f69389h);
        requestEndGameListArgs.setPage(this.f69393l);
        String str = this.f69391j;
        if (str != null) {
            requestEndGameListArgs.setExt(str);
        }
        requestEndGameListArgs.setDownloadGameIdList(q5.f.M().B());
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameListArgs);
        requestModel.setDefault(this.f69395n);
        ResponseModel<List<EndGameBean>> responseModelB = this.f69394m.B(requestModel.makeSign());
        if (responseModelB == null || responseModelB.getCode() != 200) {
            if (this.f69393l == 1) {
                showLodingFailed();
            }
        } else {
            if (responseModelB.getData() != null && responseModelB.getData().size() > 0) {
                c0(responseModelB.getData());
                return;
            }
            if (this.f69393l == 1) {
                showEmpty();
            }
            X();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X() {
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void Y() {
        if (this.f69399r) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onResume: ");
            sb2.append(this);
            d0();
            new Handler().postDelayed(new d(), 700L);
        }
    }

    @AfterViews
    void afterviews() {
        this.f69395n = getContext();
        this.f69394m = com.join.mgps.rpc.impl.i.P0();
        this.f69384c.setLayoutManager(new LinearLayoutManager(this.f69395n));
        this.f69397p = new f();
        this.f69398q = new com.join.android.app.component.video.c(getContext(), "EndGameListFragmentVideoHelper" + this.f69388g + this.f69389h, false);
        this.f69384c.setAdapter(this.f69397p);
        this.f69384c.setLoadingListener(new a());
        this.f69384c.addOnScrollListener(new b());
        showLoding();
        W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void autoPlay() {
        com.join.android.app.component.video.c cVar = this.f69398q;
        if (cVar == null || !this.f69399r) {
            return;
        }
        cVar.n(this.f69384c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(List<EndGameBean> data) {
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.loadMoreComplete();
        }
        showMain();
        if (this.f69393l == 1) {
            this.f69396o.clear();
        }
        this.f69396o.addAll(data);
        this.f69397p.notifyDataSetChanged();
        autoPlay();
        new Handler().postDelayed(new c(), 1000L);
    }

    public void d0() {
        com.join.android.app.component.video.c cVar = this.f69398q;
        if (cVar != null) {
            cVar.n(this.f69384c);
            this.f69398q.H();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
        com.join.android.app.component.video.c cVar = this.f69398q;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.c cVar = this.f69398q;
        if (cVar != null) {
            cVar.G();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Y();
    }

    @Click
    void relodingimag() {
        showLoding();
        this.f69393l = 1;
        W();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69395n);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        this.f69399r = isVisibleToUser;
        if (isVisibleToUser) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onresume: ");
            sb2.append(this);
            d0();
            Z();
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("onpause: ");
        sb3.append(this);
        com.join.android.app.component.video.c cVar = this.f69398q;
        if (cVar != null) {
            cVar.G();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showEmpty() {
        LinearLayout linearLayout = this.f69386e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f69385d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f69387f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f69385d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69386e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f69387f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f69386e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69385d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f69387f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f69386e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f69385d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f69384c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f69387f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }
}
