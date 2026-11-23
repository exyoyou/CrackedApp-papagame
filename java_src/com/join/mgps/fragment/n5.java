package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.RequestBbsTagListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_simulator_introduction)
public class n5 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f70324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ViewPager f70325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ImageView f70326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f70327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f70329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    RelativeLayout f70330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    View f70331j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Context f70333l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    View f70334m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    View f70335n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f70336o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f70337p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    com.join.mgps.rpc.k f70339r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<BbsTagListBean> f70340s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f70341t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c f70342u;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70332k = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f70338q = 1;

    class a extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f70343e;

        a(final com.join.mgps.base.decoration.b.a val$decoration) {
            this.f70343e = val$decoration;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f70343e;
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (n5.this.f70340s != null) {
                ((BbsTagListBean) n5.this.f70340s.get(n5.this.f70332k)).setSelected(false);
                n5.this.f70342u.notifyItemChanged(n5.this.f70332k);
                n5.this.f70332k = position;
                ((BbsTagListBean) n5.this.f70340s.get(n5.this.f70332k)).setSelected(true);
                n5.this.f70342u.notifyItemChanged(n5.this.f70332k);
                n5.this.f70324c.smoothScrollToPosition(position);
            }
        }
    }

    class c extends BaseQuickAdapter<BbsTagListBean, com.join.mgps.base.b> {
        public c() {
            super(R.layout.item_mod_introduction_type);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b helper, BbsTagListBean item) {
            helper.setText(R.id.tv_name, item.getName());
            if (item.isSelected()) {
                helper.setTextColor(R.id.tv_name, -1);
                helper.setBackgroundRes(R.id.tv_name, R.drawable.shape_rect_339cf4_3965bc_r6_solid);
            } else {
                helper.setTextColor(R.id.tv_name, Color.parseColor("#C1D0DD"));
                helper.setBackgroundRes(R.id.tv_name, R.drawable.shape_rect_2d3645_r6_solid);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$aftervidew$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<BbsTagListBean> list = this.f70340s;
        if (list != null) {
            list.get(this.f70332k).setSelected(false);
            this.f70342u.notifyItemChanged(this.f70332k);
            this.f70332k = i10;
            this.f70340s.get(i10).setSelected(true);
            this.f70342u.notifyItemChanged(this.f70332k);
            this.f70325d.setCurrentItem(this.f70332k);
            this.f70324c.smoothScrollToPosition(i10);
            com.papa.sim.statistic.t.l(getContext()).s1(Event.singleStartGamePageList, Event.ClickContentTag, "", new Ext().setFrom("1").setFromTabId(this.f70340s.get(this.f70332k).getId() + ""), new Data().setGameId(this.f70336o));
        }
    }

    @Click({R.id.ivExpand})
    void R() {
        ((GameMainActivity4) getActivity()).showExpandIntroduction();
    }

    public void S() {
        R();
    }

    @AfterViews
    void aftervidew() {
        this.f70333l = getActivity();
        this.f70339r = com.join.mgps.rpc.impl.i.P0();
        if (getArguments() != null) {
            this.f70336o = getArguments().getString("gameId");
            this.f70337p = getArguments().getString("draftUrl");
            this.f70341t = getArguments().getBoolean("isExpand");
        }
        this.f70327f.setVisibility(this.f70341t ? 0 : 8);
        this.f70338q = this.f70341t ? 2 : 1;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f70325d.getLayoutParams();
        layoutParams.topMargin = this.f70341t ? (int) getResources().getDimension(R.dimen.wdp26) : 0;
        this.f70325d.setLayoutParams(layoutParams);
        if (this.f70342u == null) {
            this.f70342u = new c();
        }
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp20);
        this.f70324c.addItemDecoration(new a(aVar));
        this.f70342u.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.fragment.m5
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f70210a.lambda$aftervidew$0(baseQuickAdapter, view, i10);
            }
        });
        this.f70325d.addOnPageChangeListener(new b());
        this.f70324c.setAdapter(this.f70342u);
        loadData();
    }

    public String getDraftUrl(String url) {
        if (!com.join.mgps.Util.t2.i(url)) {
            return url;
        }
        if (url.contains("?")) {
            return url + "&gameId=" + this.f70336o;
        }
        return url + "?gameId=" + this.f70336o;
    }

    @UiThread
    void hideLoading() {
        View view = this.f70334m;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f70335n;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f70324c;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    @Background
    void loadData() {
        showLoadingView();
        if (!com.join.android.app.common.utils.m.j(this.f70333l)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsTagListArgs requestBbsTagListArgs = new RequestBbsTagListArgs();
            requestBbsTagListArgs.setGameId(this.f70336o);
            UserInfo accountData = AccountUtil_.getInstance_(this.f70333l).getAccountData();
            if (accountData != null) {
                requestBbsTagListArgs.setUid(accountData.getUid());
                requestBbsTagListArgs.setUserToken(accountData.getToken());
            }
            RequestModel requestModel = new RequestModel(this.f70333l);
            requestModel.setArgs(requestBbsTagListArgs);
            ResponseModel<List<BbsTagListBean>> responseModelB = this.f70339r.b(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelB == null || responseModelB.getData() == null) {
                    showLoadFailed();
                } else {
                    showMain(responseModelB.getData());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLoadFailed();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showLoadFailed();
        }
    }

    @Click({R.id.tv_draft})
    void onDraftClick() {
        com.papa.sim.statistic.t.l(getContext()).s1(Event.singleStartGamePageDetail, Event.ClickcontributionButton, "", new Ext().setFrom("1"), new Data().setGameId(this.f70336o));
        IntentUtil.getInstance().goShareWebActivity(getContext(), getDraftUrl(this.f70337p));
    }

    @Click
    void relodingimag() {
        loadData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70333l);
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    @UiThread
    void showLoadingView() {
        List<BbsTagListBean> list = this.f70340s;
        if (list == null || list.size() <= 0) {
            RecyclerView recyclerView = this.f70324c;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            View view = this.f70334m;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            RecyclerView recyclerView2 = this.f70324c;
            if (recyclerView2 != null && recyclerView2.getVisibility() == 8) {
                this.f70324c.setVisibility(0);
            }
            View view2 = this.f70334m;
            if (view2 != null && view2.getVisibility() == 0) {
                this.f70334m.setVisibility(8);
            }
        }
        View view3 = this.f70335n;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<BbsTagListBean> types) {
        this.f70340s = types;
        if (types == null || types.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.f70340s.size(); i10++) {
            if (this.f70340s.get(i10).getId().intValue() == 0) {
                this.f70332k = i10;
                break;
            }
        }
        this.f70340s.get(this.f70332k).setSelected(true);
        this.f70342u.setNewData(this.f70340s);
        ArrayList arrayList = new ArrayList();
        for (BbsTagListBean bbsTagListBean : types) {
            ModIntroductionListFragmentForSimulator_ modIntroductionListFragmentForSimulator_ = new ModIntroductionListFragmentForSimulator_();
            Bundle bundle = new Bundle();
            bundle.putInt("tagId", bbsTagListBean.getId() == null ? 0 : bbsTagListBean.getId().intValue());
            bundle.putString("gameId", this.f70336o);
            bundle.putInt("column", this.f70338q);
            modIntroductionListFragmentForSimulator_.setArguments(bundle);
            arrayList.add(new com.join.mgps.adapter.h0.a(bbsTagListBean.getName(), modIntroductionListFragmentForSimulator_));
        }
        this.f70325d.setAdapter(new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList));
        this.f70325d.setOffscreenPageLimit(3);
        this.f70325d.setCurrentItem(this.f70332k);
    }

    @UiThread
    void showLoadFailed(String msg) {
        RecyclerView recyclerView = this.f70324c;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        View view = this.f70334m;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f70335n;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
