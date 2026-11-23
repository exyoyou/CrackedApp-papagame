package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import com.join.mgps.dto.ForumResponse;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.discovery_tab_fragment_layout)
public class d0 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XRecyclerView f69209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    SwipeRefresh f69210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69212f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f69213g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f69214h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f69215i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f69216j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f69217k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Context f69218l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.join.mgps.rpc.i f69219m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f69220n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<DiscoverListItemBean> f69221o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    List<DiscoverListWeiboItemBean> f69222p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    e f69223q;

    class a implements SwipeRefresh.j {
        a() {
        }

        @Override // com.join.mgps.customview.swiperefresh.SwipeRefresh.j
        public void onRefresh() {
            d0 d0Var = d0.this;
            d0Var.f69220n = 1;
            d0Var.f69209c.reset();
            d0 d0Var2 = d0.this;
            if (d0Var2.f69216j == 2) {
                d0Var2.N(d0Var2.f69220n);
            } else {
                d0Var2.loadData(d0Var2.f69220n);
            }
        }
    }

    class b implements XRecyclerView.f {
        b() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            d0 d0Var = d0.this;
            if (d0Var.f69216j == 2) {
                d0Var.N(d0Var.f69220n);
            } else {
                d0Var.loadData(d0Var.f69220n);
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            d0 d0Var = d0.this;
            d0Var.f69220n = 1;
            d0Var.f69209c.reset();
            d0 d0Var2 = d0.this;
            if (d0Var2.f69216j == 2) {
                d0Var2.N(d0Var2.f69220n);
            } else {
                d0Var2.loadData(d0Var2.f69220n);
            }
        }
    }

    class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f69226d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f69227e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f69228f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f69229g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f69230h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        SimpleDraweeView f69231i;

        public c(View itemView) {
            super(itemView);
            this.f69226d = (TextView) itemView.findViewById(R.id.content);
            this.f69227e = (TextView) itemView.findViewById(R.id.gameType);
            this.f69228f = (TextView) itemView.findViewById(R.id.seeNumber);
            this.f69229g = (TextView) itemView.findViewById(R.id.commentNumber);
            this.f69231i = (SimpleDraweeView) itemView.findViewById(R.id.image);
            this.f69230h = (LinearLayout) itemView.findViewById(R.id.main);
        }
    }

    class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f69233d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f69234e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f69235f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f69236g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f69237h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        LinearLayout f69238i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        SimpleDraweeView f69239j;

        public d(View itemView) {
            super(itemView);
            this.f69233d = (TextView) itemView.findViewById(R.id.content);
            this.f69234e = (TextView) itemView.findViewById(R.id.userName);
            this.f69235f = (TextView) itemView.findViewById(R.id.time);
            this.f69236g = (TextView) itemView.findViewById(R.id.vidioTip);
            this.f69237h = (TextView) itemView.findViewById(R.id.imagTip);
            this.f69239j = (SimpleDraweeView) itemView.findViewById(R.id.userImg);
            this.f69238i = (LinearLayout) itemView.findViewById(R.id.main);
        }
    }

    class e extends RecyclerView.Adapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DiscoverListWeiboItemBean f69242b;

            a(final DiscoverListWeiboItemBean val$itemBean) {
                this.f69242b = val$itemBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                IntentUtil.getInstance().goShareWebActivity(d0.this.f69218l, this.f69242b.getLink_url());
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DiscoverListItemBean f69244b;

            b(final DiscoverListItemBean val$benan) {
                this.f69244b = val$benan;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                IntentUtil.getInstance().goFormDetial(d0.this.f69218l, this.f69244b.getPid() + "");
            }
        }

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            d0 d0Var = d0.this;
            return d0Var.f69216j == 2 ? d0Var.f69222p.size() : d0Var.f69221o.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return d0.this.f69216j;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            d0 d0Var = d0.this;
            if (d0Var.f69216j == 2) {
                d dVar = (d) viewHolder;
                DiscoverListWeiboItemBean discoverListWeiboItemBean = d0Var.f69222p.get(i10);
                dVar.f69233d.setText(discoverListWeiboItemBean.getContent());
                dVar.f69234e.setText(discoverListWeiboItemBean.getNickname());
                dVar.f69235f.setText(discoverListWeiboItemBean.getSend_time());
                com.join.android.app.common.utils.l.h(dVar.f69239j, discoverListWeiboItemBean.getAvatar_src());
                if (!com.join.mgps.Util.t2.i(discoverListWeiboItemBean.getVideo_url()) || "{}".equals(discoverListWeiboItemBean.getVideo_url())) {
                    dVar.f69236g.setVisibility(8);
                } else {
                    dVar.f69236g.setVisibility(0);
                }
                if (!com.join.mgps.Util.t2.i(discoverListWeiboItemBean.getImage_url()) || "{}".equals(discoverListWeiboItemBean.getImage_url())) {
                    dVar.f69237h.setVisibility(8);
                } else {
                    dVar.f69237h.setVisibility(0);
                }
                dVar.f69238i.setOnClickListener(new a(discoverListWeiboItemBean));
                return;
            }
            c cVar = (c) viewHolder;
            DiscoverListItemBean discoverListItemBean = d0Var.f69221o.get(i10);
            cVar.f69226d.setText(discoverListItemBean.getSubject());
            cVar.f69229g.setText(discoverListItemBean.getCommit() + "");
            cVar.f69228f.setText(com.join.mgps.Util.t2.e(discoverListItemBean.getView()) + "");
            cVar.f69227e.setText(discoverListItemBean.getNickname());
            com.join.android.app.common.utils.l.d(cVar.f69231i, R.drawable.rect_normal_icon, discoverListItemBean.getBig_pic());
            cVar.f69230h.setOnClickListener(new b(discoverListItemBean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            if (getItemViewType(i10) == 2) {
                return d0.this.new d(LayoutInflater.from(d0.this.f69218l).inflate(R.layout.discover_weibo_list_item, viewGroup, false));
            }
            return d0.this.new c(LayoutInflater.from(d0.this.f69218l).inflate(R.layout.discover_list_item, viewGroup, false));
        }
    }

    @Receiver(actions = {"com.join.update.position2"})
    void M(Intent intent) {
        try {
            if (this.f69222p.size() > 0 || this.f69221o.size() > 0) {
                this.f69209c.smoothScrollToPosition(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void N(int pn) {
        if (this.f69222p.size() == 0) {
            showLoding();
        }
        try {
            ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> forumResponseB = this.f69219m.b(AccountUtil_.getInstance_(this.f69218l).getAccountData().getUid(), pn, this.f69217k);
            if (forumResponseB == null || forumResponseB.getData() == null) {
                Q();
            } else {
                List<DiscoverListWeiboItemBean> news_list = forumResponseB.getData().getNews_list();
                if (pn == 1 && news_list != null && news_list.size() == 0) {
                    R();
                } else {
                    T(news_list, pn);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Q();
        }
    }

    @UiThread
    void O() {
        try {
            this.f69211e.setVisibility(8);
            this.f69213g.setVisibility(0);
            this.f69210d.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void P() {
        try {
            this.f69211e.setVisibility(8);
            this.f69213g.setVisibility(8);
            this.f69210d.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void Q() {
        XRecyclerView xRecyclerView = this.f69209c;
        if (xRecyclerView != null) {
            xRecyclerView.loadMoreComplete();
            this.f69209c.refreshComplete();
        }
        this.f69210d.setRefreshing(false);
        if (this.f69221o.size() == 0 && this.f69222p.size() == 0) {
            O();
        } else {
            P();
        }
    }

    @UiThread
    void R() {
        try {
            this.f69211e.setVisibility(8);
            this.f69213g.setVisibility(8);
            this.f69210d.setVisibility(8);
            this.f69212f.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void S(List<DiscoverListItemBean> itemBeansx, int pnx) {
        int i10 = this.f69220n;
        if (i10 == pnx) {
            if (i10 == 1) {
                this.f69221o.clear();
            }
            if (itemBeansx.size() > 0) {
                this.f69220n++;
            }
            this.f69221o.addAll(itemBeansx);
        }
        if (this.f69221o.size() <= 0 || itemBeansx.size() != 0) {
            Q();
        } else {
            this.f69209c.setNoMore();
        }
        this.f69223q.notifyDataSetChanged();
    }

    @UiThread
    void T(List<DiscoverListWeiboItemBean> itemBeansx, int pnx) {
        int i10 = this.f69220n;
        if (i10 == pnx) {
            if (i10 == 1) {
                this.f69222p.clear();
            }
            if (itemBeansx.size() > 0) {
                this.f69220n++;
            }
            this.f69222p.addAll(itemBeansx);
        }
        if (this.f69222p.size() <= 0 || itemBeansx.size() != 0) {
            Q();
        } else {
            this.f69209c.setNoMore();
        }
        this.f69223q.notifyDataSetChanged();
    }

    @AfterViews
    void afterviews() {
        this.f69218l = getActivity();
        this.f69219m = com.join.mgps.rpc.impl.g.A0();
        this.f69221o = new ArrayList();
        this.f69222p = new ArrayList();
        this.f69209c.setLayoutManager(new LinearLayoutManager(this.f69218l));
        e eVar = new e();
        this.f69223q = eVar;
        this.f69209c.setAdapter(eVar);
        this.f69220n = 1;
        this.f69215i.setText("没有找到相关数据");
        this.f69210d.setOnRefreshListener(new a());
        this.f69209c.setLoadingListener(new b());
        int i10 = getArguments().getInt(u.b.f97417c);
        this.f69217k = i10;
        if (i10 == 2) {
            this.f69216j = 2;
        }
        if (this.f69216j == 2) {
            N(this.f69220n);
        } else {
            loadData(this.f69220n);
        }
    }

    @Background
    void loadData(int pn) {
        if (this.f69221o.size() == 0) {
            showLoding();
        }
        try {
            ForumResponse<DiscoverListData<DiscoverListItemBean>> forumResponseQ = this.f69219m.q(AccountUtil_.getInstance_(this.f69218l).getAccountData().getUid(), pn, this.f69217k);
            if (forumResponseQ == null || forumResponseQ.getData() == null) {
                Q();
            } else {
                List<DiscoverListItemBean> news_list = forumResponseQ.getData().getNews_list();
                if (pn == 1 && news_list != null && news_list.size() == 0) {
                    R();
                } else {
                    S(news_list, pn);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Q();
        }
    }

    @Click
    void relodingimag() {
        this.f69220n = 1;
        if (this.f69216j == 2) {
            N(1);
        } else {
            loadData(1);
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69218l);
    }

    @UiThread
    void showLoding() {
        this.f69211e.setVisibility(0);
        this.f69213g.setVisibility(8);
        this.f69210d.setVisibility(8);
    }
}
