package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GamelistRankingmainbean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_gamefrom)
public class j3 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XRecyclerView f69881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f69882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    c f69883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Context f69884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Button f69885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f69886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f69887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.mgps.rpc.b f69888j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f69890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f69891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List<g> f69892n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    ImageView f69894p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<GameFromPopoWinBeanV2.FamousBean> f69897s;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f69889k = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f69893o = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f69895q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f69896r = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f69898t = false;

    class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            j3 j3Var = j3.this;
            if (j3Var.f69896r) {
                j3Var.V(j3Var.f69895q, j3Var.f69889k);
            } else {
                j3Var.T();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    class b implements Callback<ResponseModel<GamelistRankingmainbean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<GamelistRankingmainbean>> call, Throwable t10) {
            j3.this.showLodingFailed();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<GamelistRankingmainbean>> call, Response<ResponseModel<GamelistRankingmainbean>> response) {
            if (response == null || response.body() == null) {
                j3.this.showLodingFailed();
                return;
            }
            if (response.body().getCode() != 200) {
                j3 j3Var = j3.this;
                if (j3Var.f69889k == 2) {
                    j3Var.O();
                    return;
                } else {
                    j3Var.Y();
                    return;
                }
            }
            GamelistRankingmainbean data = response.body().getData();
            ArrayList arrayList = new ArrayList();
            if (data == null) {
                j3 j3Var2 = j3.this;
                if (j3Var2.f69889k == 2) {
                    j3Var2.O();
                    return;
                } else {
                    j3Var2.Y();
                    return;
                }
            }
            List<GameFromPopoWinBeanV2.DataBean> fav_list = data.getFav_list();
            if (fav_list.size() < 10) {
                j3.this.f69898t = true;
            }
            for (int i10 = 0; i10 < fav_list.size(); i10++) {
                GameFromPopoWinBeanV2.DataBean dataBean = fav_list.get(i10);
                arrayList.add(j3.this.new g(dataBean, 1, dataBean.getId(), dataBean.getUid()));
                if (i10 == 0 && j3.this.f69897s != null && j3.this.f69897s.size() > 0) {
                    j3 j3Var3 = j3.this;
                    if (j3Var3.f69889k == 2) {
                        arrayList.add(j3Var3.new g(j3Var3.f69897s, 2, dataBean.getId(), dataBean.getUid()));
                    }
                }
            }
            j3.this.Z(arrayList);
        }
    }

    public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBeanV2.DataBean f69902b;

            a(final GameFromPopoWinBeanV2.DataBean val$dataBean) {
                this.f69902b = val$dataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j3.this.N(this.f69902b.getId(), this.f69902b.getUid());
                Ext ext = new Ext();
                ext.setPosition("fromGameDetailP2");
                ext.setArticleId(this.f69902b.getId());
                com.papa.sim.statistic.t.l(j3.this.f69884f).R1(Event.enterUserGameList, ext);
            }
        }

        public c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return j3.this.f69892n.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            List<g> list = j3.this.f69892n;
            if (list != null) {
                return list.get(position).f69918b;
            }
            return -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 1 && itemViewType != 3) {
                if (itemViewType == 2) {
                    ((f) viewHolder).f69914d.setAdapter((ListAdapter) j3.this.new e());
                    return;
                }
                return;
            }
            GameFromPopoWinBeanV2.DataBean dataBean = (GameFromPopoWinBeanV2.DataBean) j3.this.f69892n.get(i10).f69917a;
            d dVar = (d) viewHolder;
            dVar.f69904d.setOnClickListener(new a(dataBean));
            if (itemViewType == 3) {
                com.join.mgps.adapter.a3.d(j3.this.f69884f, dVar.itemView, dataBean);
                return;
            }
            dVar.f69905e.setText(dataBean.getTitle());
            dVar.f69907g.setText(dataBean.getNick_name());
            dVar.f69909i.setText(dataBean.getBook_count() + "订阅");
            dVar.f69908h.setText(dataBean.getGame_count() + "款");
            dVar.f69906f.removeAllViews();
            for (GameFromPopoWinBeanV2.DataBean.GameListBean gameListBean : dataBean.getGame_list()) {
                View viewInflate = LayoutInflater.from(j3.this.f69884f).inflate(R.layout.gamelist_listitem_gameicon_layout, (ViewGroup) null);
                com.join.android.app.common.utils.l.d((SimpleDraweeView) viewInflate.findViewById(R.id.icon), R.drawable.main_normal_icon, gameListBean.getGame_ico());
                dVar.f69906f.addView(viewInflate);
            }
            int i11 = i10 % 5;
            if (i11 == 0) {
                dVar.f69904d.setBackgroundResource(R.drawable.gamelist_itemback_1);
                return;
            }
            if (i11 == 1) {
                dVar.f69904d.setBackgroundResource(R.drawable.gamelist_itemback_2);
                return;
            }
            if (i11 == 2) {
                dVar.f69904d.setBackgroundResource(R.drawable.gamelist_itemback_3);
            } else if (i11 == 3) {
                dVar.f69904d.setBackgroundResource(R.drawable.gamelist_itemback_4);
            } else {
                if (i11 != 4) {
                    return;
                }
                dVar.f69904d.setBackgroundResource(R.drawable.gamelist_itemback_5);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            if (i10 == 1) {
                return j3.this.new d(LayoutInflater.from(j3.this.f69884f).inflate(R.layout.gamelist_list_item, viewGroup, false));
            }
            if (i10 == 3) {
                return j3.this.new d(LayoutInflater.from(j3.this.f69884f).inflate(R.layout.gamelist_list_itemhome, viewGroup, false));
            }
            if (i10 != 2) {
                return null;
            }
            return j3.this.new f(LayoutInflater.from(j3.this.f69884f).inflate(R.layout.gamelist_list_item_hongren, viewGroup, false));
        }
    }

    class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f69904d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f69905e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f69906f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f69907g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f69908h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f69909i;

        d(View itemView) {
            super(itemView);
            this.f69904d = itemView.findViewById(R.id.main);
            this.f69905e = (TextView) itemView.findViewById(R.id.title);
            this.f69906f = (LinearLayout) itemView.findViewById(R.id.iconLayout);
            this.f69907g = (TextView) itemView.findViewById(R.id.name);
            this.f69908h = (TextView) itemView.findViewById(R.id.number);
            this.f69909i = (TextView) itemView.findViewById(R.id.follow);
        }
    }

    class e extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ GameFromPopoWinBeanV2.FamousBean f69912b;

            a(final GameFromPopoWinBeanV2.FamousBean val$bean) {
                this.f69912b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                j3.this.N(this.f69912b.getId(), this.f69912b.getUid());
                Ext ext = new Ext();
                ext.setPosition("fromGameDetailP3");
                ext.setArticleId(this.f69912b.getId());
                com.papa.sim.statistic.t.l(j3.this.f69884f).R1(Event.enterUserGameList, ext);
            }
        }

        e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (j3.this.f69897s != null) {
                return j3.this.f69897s.size();
            }
            return 0;
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
                view = LayoutInflater.from(j3.this.f69884f).inflate(R.layout.gamelist_hongrentuijian_layout, (ViewGroup) null);
            }
            GameFromPopoWinBeanV2.FamousBean famousBean = (GameFromPopoWinBeanV2.FamousBean) j3.this.f69897s.get(i10);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.userIcon);
            TextView textView = (TextView) view.findViewById(R.id.userName);
            TextView textView2 = (TextView) view.findViewById(R.id.userTag);
            TextView textView3 = (TextView) view.findViewById(R.id.folloNum);
            View viewFindViewById = view.findViewById(R.id.main);
            com.join.android.app.common.utils.l.v(simpleDraweeView, R.drawable.papa_user_icon, famousBean.getPic());
            textView3.setText("收藏 " + famousBean.getCount() + "");
            textView.setText(famousBean.getName());
            textView2.setText(famousBean.getTitle());
            viewFindViewById.setOnClickListener(new a(famousBean));
            return view;
        }
    }

    class f extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f69914d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f69915e;

        public f(View itemView) {
            super(itemView);
            this.f69914d = (HListView) itemView.findViewById(R.id.hongrenlist);
            this.f69915e = (TextView) itemView.findViewById(R.id.title);
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f69917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f69918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f69919c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f69920d;

        public g(Object object, int type, String id2, int uid) {
            this.f69917a = object;
            this.f69918b = type;
            this.f69919c = id2;
            this.f69920d = uid;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(String id2, int uid) {
        Intent intent = new Intent(getActivity(), (Class<?>) GameDetailActivity_.class);
        intent.putExtra("fromid", id2);
        intent.putExtra("_from", 11103);
        intent.putExtra("groupuid", uid);
        intent.putExtra("gameid", this.f69891m);
        intent.putExtra("company_id", this.f69890l);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(int type, int pn) {
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(getActivity());
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setUid(AccountUtil_.getInstance_(this.f69884f).getAccountData().getUid());
        luckHistoryrequest.setPage(pn);
        luckHistoryrequest.setType(type);
        requestModel.setArgs(luckHistoryrequest);
        com.join.mgps.rpc.impl.i.P0().N0().V0(requestModel.makeSign()).enqueue(new b());
    }

    public static j3 W(int rankingtype) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isRanking", true);
        bundle.putInt("rankingType", rankingtype);
        k3 k3Var = new k3();
        k3Var.setArguments(bundle);
        return k3Var;
    }

    public static j3 X(String company_id, String gameid) {
        Bundle bundle = new Bundle();
        bundle.putString("company_id", company_id);
        bundle.putString("gameid", gameid);
        k3 k3Var = new k3();
        k3Var.setArguments(bundle);
        return k3Var;
    }

    @AfterViews
    void M() {
        this.f69884f = getActivity();
        this.f69892n = new ArrayList();
        this.f69888j = com.join.mgps.rpc.impl.a.c0();
        Bundle arguments = getArguments();
        this.f69883e = new c();
        this.f69881c.setLayoutManager(new LinearLayoutManager(this.f69884f));
        this.f69881c.setAdapter(this.f69883e);
        this.f69881c.setVerticalScrollBarEnabled(false);
        this.f69890l = arguments.getString("company_id");
        String string = arguments.getString("gameid");
        this.f69891m = string;
        if (string == null) {
            this.f69891m = "";
        }
        if (this.f69890l == null) {
            this.f69890l = "";
        }
        this.f69881c.setLoadingMoreEnabled(true);
        this.f69881c.setPreLoadCount(10);
        this.f69881c.setLoadingListener(new a());
        boolean z10 = getArguments().getBoolean("isRanking");
        this.f69896r = z10;
        if (!z10) {
            T();
            return;
        }
        int i10 = getArguments().getInt("rankingType");
        this.f69895q = i10;
        V(i10, this.f69889k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O() {
        LinearLayout linearLayout = this.f69882d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        U();
        XRecyclerView xRecyclerView = this.f69881c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        List<g> list = this.f69892n;
        if (list != null) {
            list.clear();
        }
        c cVar = this.f69883e;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T() {
        List<GameFromPopoWinBeanV2.FamousBean> list;
        try {
            if (!com.join.android.app.common.utils.m.j(this.f69884f)) {
                showLodingFailed();
                return;
            }
            if (this.f69889k == 1) {
                showLoding();
            }
            RequestBeanUtil.getInstance(this.f69884f);
            String versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            int i10 = this.f69889k;
            this.f69889k = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("company_id", this.f69890l);
            linkedMultiValueMap.add("game_id", this.f69891m);
            linkedMultiValueMap.add("device_id", "");
            linkedMultiValueMap.add("version", versionAndVersionName);
            ArrayList arrayList = new ArrayList();
            GameFromPopoWinBeanV2 gameFromPopoWinBeanV2U = this.f69888j.U(linkedMultiValueMap);
            if (gameFromPopoWinBeanV2U == null || gameFromPopoWinBeanV2U.getError() != 0 || gameFromPopoWinBeanV2U.getData() == null || gameFromPopoWinBeanV2U.getData().getFav_list() == null || gameFromPopoWinBeanV2U.getData().getFav_list().size() <= 0) {
                if (this.f69889k == 2) {
                    O();
                    return;
                } else {
                    Y();
                    return;
                }
            }
            U();
            a0();
            List<GameFromPopoWinBeanV2.DataBean> fav_list = gameFromPopoWinBeanV2U.getData().getFav_list();
            if (this.f69889k == 2) {
                this.f69897s = gameFromPopoWinBeanV2U.getData().getFamous_list();
            }
            if (fav_list.size() < 10) {
                this.f69898t = true;
            }
            for (int i11 = 0; i11 < fav_list.size(); i11++) {
                GameFromPopoWinBeanV2.DataBean dataBean = fav_list.get(i11);
                arrayList.add(new g(dataBean, 1, dataBean.getId(), dataBean.getUid()));
                if (i11 == 0 && (list = this.f69897s) != null && list.size() > 0 && this.f69889k == 2) {
                    arrayList.add(new g(this.f69897s, 2, dataBean.getId(), dataBean.getUid()));
                }
            }
            Z(arrayList);
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U() {
        LinearLayout linearLayout = this.f69886h;
        if (linearLayout == null || this.f69887i == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f69887i.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y() {
        XRecyclerView xRecyclerView = this.f69881c;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z(List<g> listData2) {
        if (this.f69892n != null) {
            U();
            a0();
            this.f69889k++;
            this.f69892n.addAll(listData2);
        }
        XRecyclerView xRecyclerView = this.f69881c;
        if (xRecyclerView != null) {
            xRecyclerView.loadMoreComplete();
        }
        c cVar = this.f69883e;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
        if (this.f69898t) {
            Y();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.identityHashCode(this.f69892n));
        sb2.append("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        XRecyclerView xRecyclerView = this.f69881c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(0);
        }
    }

    @Click
    void relodingimag() {
        this.f69889k = 1;
        if (!this.f69896r) {
            T();
            return;
        }
        showLoding();
        int i10 = getArguments().getInt("rankingType");
        this.f69895q = i10;
        V(i10, this.f69889k);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69884f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.f69886h;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f69887i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        XRecyclerView xRecyclerView = this.f69881c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout = this.f69887i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69886h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
