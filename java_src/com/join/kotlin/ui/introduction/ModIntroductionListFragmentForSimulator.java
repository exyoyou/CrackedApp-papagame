package com.join.kotlin.ui.introduction;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e0;
import com.join.mgps.activity.GameMainActivity4_;
import com.join.mgps.activity.IntroductionActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.RequestBbsListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Collection;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_mod_introduction_list_for_simulator)
public class ModIntroductionListFragmentForSimulator extends Fragment {
    Context context;
    private List<BbsListBean> datas;
    String gameId;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private ItemAdapter mItemAdapter;
    k rpcGameClient;

    @ViewById
    RecyclerView rv_list_data;

    @ViewById
    View setNetwork;
    int tagId;
    private int page = 1;
    private int defalutColumns = 1;

    class ItemAdapter extends BaseQuickAdapter<BbsListBean, com.join.mgps.base.b> {
        public ItemAdapter() {
            super(R.layout.item_mod_introduction_item);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b helper, BbsListBean item) {
            helper.setText(R.id.tv_title, item.getTitle());
            l.h((SimpleDraweeView) helper.getView(R.id.sdv_image), item.getPic());
            if (item.getType().intValue() == 1) {
                helper.setGone(R.id.tv_time, true);
                helper.setText(R.id.tv_time, e0.h(item.getDuration().intValue()));
            } else {
                helper.setGone(R.id.tv_time, false);
            }
            if (item.getIsCollection().intValue() != 1) {
                helper.setGone(R.id.tv_pic_num, false);
                return;
            }
            helper.setText(R.id.tv_pic_num, "合集·" + item.getVideos());
            helper.setGone(R.id.tv_pic_num, true);
        }
    }

    static /* synthetic */ int access$008(ModIntroductionListFragmentForSimulator modIntroductionListFragmentForSimulator) {
        int i10 = modIntroductionListFragmentForSimulator.page;
        modIntroductionListFragmentForSimulator.page = i10 + 1;
        return i10;
    }

    private int getUid() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$aftervidew$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        BbsListBean item = this.mItemAdapter.getItem(i10);
        if (getActivity() instanceof GameMainActivity4_) {
            Ext ext = new Ext();
            ext.setGameId(this.gameId);
            t.l(getContext()).R1(Event.clickModMainGbaSee, ext);
        } else {
            t.l(getContext()).s1(Event.singleStartGamePageList, Event.ClickContentCard, "", new Ext().setFrom("1").setArticleId(item.getId() + ""), new Data().setGameId(this.gameId));
        }
        IntroductionActivity_.intent(this.context).d(item.getId().intValue()).e(this.tagId).a(this.gameId).start();
    }

    @AfterViews
    void aftervidew() {
        this.context = getActivity();
        if (getArguments() != null) {
            this.gameId = getArguments().getString("gameId");
            this.tagId = getArguments().getInt("tagId", 0);
            this.defalutColumns = getArguments().getInt("column", 1);
        }
        this.rpcGameClient = i.P0();
        this.rv_list_data.setLayoutManager(new GridLayoutManager(this.context, this.defalutColumns));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
        }
        final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
        if (this.defalutColumns != 1) {
            aVar.f64118b = (int) getResources().getDimension(R.dimen.wdp8);
        }
        final com.join.mgps.base.decoration.b.a aVar2 = new com.join.mgps.base.decoration.b.a();
        aVar2.f64116f = 0;
        aVar2.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
        if (this.defalutColumns != 1) {
            aVar2.f64117a = (int) getResources().getDimension(R.dimen.wdp8);
        }
        this.rv_list_data.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator.1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                return position % 2 == 0 ? aVar : aVar2;
            }
        });
        this.mItemAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.introduction.d
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f49246a.lambda$aftervidew$0(baseQuickAdapter, view, i10);
            }
        });
        this.rv_list_data.setAdapter(this.mItemAdapter);
        this.mItemAdapter.setOnLoadMoreListener(new BaseQuickAdapter.l() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator.2
            @Override // com.join.mgps.base.BaseQuickAdapter.l
            public void onLoadMoreRequested() {
                ModIntroductionListFragmentForSimulator.access$008(ModIntroductionListFragmentForSimulator.this);
                ModIntroductionListFragmentForSimulator modIntroductionListFragmentForSimulator = ModIntroductionListFragmentForSimulator.this;
                modIntroductionListFragmentForSimulator.loadData(modIntroductionListFragmentForSimulator.page);
            }
        }, this.rv_list_data);
        this.page = 1;
        loadData(1);
    }

    public void changeColumn(int column) {
        if (this.defalutColumns == column) {
            return;
        }
        this.defalutColumns = column;
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new GridLayoutManager(this.context, column));
            this.mItemAdapter.setNewData(this.datas);
        }
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
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:26:0x0075 */
    @Background
    void loadData(int page) {
        showLoadingView();
        if (!m.j(this.context)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsListArgs requestBbsListArgs = new RequestBbsListArgs();
            requestBbsListArgs.setGameId(this.gameId);
            requestBbsListArgs.setPage(Integer.valueOf(page));
            requestBbsListArgs.setTagId(Integer.valueOf(this.tagId));
            requestBbsListArgs.setUid(Integer.valueOf(getUid()));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsListArgs);
            ResponseModel<List<BbsListBean>> responseModelD0 = this.rpcGameClient.d0(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelD0 == null || responseModelD0.getData() == null) {
                    showLoadFailed();
                } else {
                    List<BbsListBean> data = responseModelD0.getData();
                    boolean z10 = true;
                    if (page <= 1) {
                        z10 = false;
                    }
                    showMain(data, z10);
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

    @Click
    void relodingimag() {
        loadData(1);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    @UiThread
    void showLoadingView() {
        List<BbsListBean> list = this.datas;
        if (list == null || list.size() <= 0) {
            RecyclerView recyclerView = this.rv_list_data;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            View view = this.loding_layout;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            RecyclerView recyclerView2 = this.rv_list_data;
            if (recyclerView2 != null && recyclerView2.getVisibility() == 8) {
                this.rv_list_data.setVisibility(0);
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
    void showMain(List<BbsListBean> list, boolean loadMore) {
        this.datas = list;
        if (list == null || list.size() <= 0) {
            this.mItemAdapter.loadMoreEnd();
        } else if (!loadMore) {
            this.mItemAdapter.setNewData(this.datas);
        } else {
            this.mItemAdapter.loadMoreComplete();
            this.mItemAdapter.addData((Collection) this.datas);
        }
    }

    @UiThread
    void showLoadFailed(String msg) {
        RecyclerView recyclerView = this.rv_list_data;
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
