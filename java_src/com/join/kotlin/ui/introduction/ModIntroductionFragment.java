package com.join.kotlin.ui.introduction;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.adapter.h0;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.RequestBbsTagListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_mod_introduction)
public class ModIntroductionFragment extends Fragment {
    Context context;
    String draftUrl;
    String gameId;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private TypeAdapter mTypeAdapter;
    k rpcGameClient;

    @ViewById
    RecyclerView rv_list_type;
    private List<BbsTagListBean> typeList;

    @ViewById
    ViewPager view_pager;
    private int defSelectPos = 0;
    List<h0.a> items = new ArrayList();
    private boolean isAddData = false;

    class TypeAdapter extends BaseQuickAdapter<BbsTagListBean, com.join.mgps.base.b> {
        public TypeAdapter() {
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
        List<BbsTagListBean> list = this.typeList;
        if (list != null) {
            list.get(this.defSelectPos).setSelected(false);
            this.mTypeAdapter.notifyItemChanged(this.defSelectPos);
            this.defSelectPos = i10;
            this.typeList.get(i10).setSelected(true);
            this.mTypeAdapter.notifyItemChanged(this.defSelectPos);
            this.view_pager.setCurrentItem(this.defSelectPos);
            this.rv_list_type.smoothScrollToPosition(i10);
            t.l(getContext()).s1(Event.singleStartGamePageList, Event.ClickContentTag, "", new Ext().setFrom("1").setFromTabId(this.typeList.get(this.defSelectPos).getId() + ""), new Data().setGameId(this.gameId));
        }
    }

    @AfterViews
    void aftervidew() {
        this.context = getActivity();
        this.rpcGameClient = i.P0();
        if (getArguments() != null) {
            this.gameId = getArguments().getString("gameId");
            this.draftUrl = getArguments().getString("draftUrl");
        }
        if (this.mTypeAdapter == null) {
            this.mTypeAdapter = new TypeAdapter();
        }
        final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp20);
        this.rv_list_type.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment.1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                return aVar;
            }
        });
        this.mTypeAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.introduction.b
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f49244a.lambda$aftervidew$0(baseQuickAdapter, view, i10);
            }
        });
        this.view_pager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (ModIntroductionFragment.this.typeList != null) {
                    ((BbsTagListBean) ModIntroductionFragment.this.typeList.get(ModIntroductionFragment.this.defSelectPos)).setSelected(false);
                    ModIntroductionFragment.this.mTypeAdapter.notifyItemChanged(ModIntroductionFragment.this.defSelectPos);
                    ModIntroductionFragment.this.defSelectPos = position;
                    ((BbsTagListBean) ModIntroductionFragment.this.typeList.get(ModIntroductionFragment.this.defSelectPos)).setSelected(true);
                    ModIntroductionFragment.this.mTypeAdapter.notifyItemChanged(ModIntroductionFragment.this.defSelectPos);
                    ModIntroductionFragment.this.rv_list_type.smoothScrollToPosition(position);
                }
            }
        });
        this.rv_list_type.setAdapter(this.mTypeAdapter);
        loadData();
    }

    public String getDraftUrl(String url) {
        if (!t2.i(url)) {
            return url;
        }
        if (url.contains("?")) {
            return url + "&gameId=" + this.gameId;
        }
        return url + "?gameId=" + this.gameId;
    }

    @UiThread
    void hideLoading() {
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RecyclerView recyclerView = this.rv_list_type;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    @Background
    void loadData() {
        showLoadingView();
        if (!m.j(this.context)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsTagListArgs requestBbsTagListArgs = new RequestBbsTagListArgs();
            requestBbsTagListArgs.setGameId(this.gameId);
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            if (accountData != null) {
                requestBbsTagListArgs.setUid(accountData.getUid());
                requestBbsTagListArgs.setUserToken(accountData.getToken());
            }
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsTagListArgs);
            ResponseModel<List<BbsTagListBean>> responseModelB = this.rpcGameClient.b(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelB == null || responseModelB.getData() == null) {
                    showLoadFailed();
                } else {
                    List<BbsTagListBean> data = responseModelB.getData();
                    this.typeList = data;
                    showMain(data);
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
        t.l(getContext()).s1(Event.singleStartGamePageDetail, Event.ClickcontributionButton, "", new Ext().setFrom("1"), new Data().setGameId(this.gameId));
        IntentUtil.getInstance().goShareWebActivity(getContext(), getDraftUrl(this.draftUrl));
    }

    @Click
    void relodingimag() {
        loadData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        List<BbsTagListBean> list;
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser || this.isAddData || (list = this.typeList) == null) {
            return;
        }
        this.isAddData = true;
        showMain(list);
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    @UiThread
    void showLoadingView() {
        List<BbsTagListBean> list = this.typeList;
        if (list == null || list.size() <= 0) {
            RecyclerView recyclerView = this.rv_list_type;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            View view = this.loding_layout;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            RecyclerView recyclerView2 = this.rv_list_type;
            if (recyclerView2 != null && recyclerView2.getVisibility() == 8) {
                this.rv_list_type.setVisibility(0);
            }
            View view2 = this.loding_layout;
            if (view2 != null && view2.getVisibility() == 0) {
                this.loding_layout.setVisibility(8);
            }
        }
        View view3 = this.loding_faile;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<BbsTagListBean> types) {
        try {
            List<BbsTagListBean> list = this.typeList;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < this.typeList.size(); i10++) {
                if (this.typeList.get(i10).getId().intValue() == 0) {
                    this.defSelectPos = i10;
                    break;
                }
            }
            this.typeList.get(this.defSelectPos).setSelected(true);
            this.mTypeAdapter.setNewData(this.typeList);
            this.items.clear();
            for (BbsTagListBean bbsTagListBean : this.typeList) {
                ModIntroductionListFragment_ modIntroductionListFragment_ = new ModIntroductionListFragment_();
                Bundle bundle = new Bundle();
                bundle.putInt("tagId", bbsTagListBean.getId() == null ? 0 : bbsTagListBean.getId().intValue());
                bundle.putString("gameId", this.gameId);
                modIntroductionListFragment_.setArguments(bundle);
                this.items.add(new h0.a(String.valueOf(bbsTagListBean.getId()), modIntroductionListFragment_));
            }
            if (isAdded()) {
                this.isAddData = true;
                h0 h0Var = new h0(getChildFragmentManager(), this.items);
                ViewPager viewPager = this.view_pager;
                if (viewPager != null) {
                    viewPager.setAdapter(h0Var);
                    this.view_pager.setOffscreenPageLimit(3);
                    this.view_pager.setCurrentItem(this.defSelectPos);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLoadFailed(String msg) {
        RecyclerView recyclerView = this.rv_list_type;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
