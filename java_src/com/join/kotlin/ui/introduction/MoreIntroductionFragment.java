package com.join.kotlin.ui.introduction;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.callbacks.i;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.GameBbsPostListBean;
import com.join.mgps.dto.RequestBbsRecommendArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.k;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Collection;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_more_introduction)
public class MoreIntroductionFragment extends Fragment implements View.OnClickListener {
    Context context;
    private GameBbsPostListBean datas;
    String gameId;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private ItemAdapter mItemAdapter;
    k rpcGameClient;

    @ViewById
    RecyclerView rv_list_data;
    int tagId;
    private int page = 1;
    private int next_page = 1;
    private boolean dataChanged = false;

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

    private int getUid() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$aftervidew$0() {
        int i10 = this.page + 1;
        this.page = i10;
        loadData(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$aftervidew$1(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        BbsListBean item = this.mItemAdapter.getItem(i10);
        t.l(getContext()).s1(Event.singleStartGamePageDetail, Event.ClickMoreContent, "", new Ext().setFrom("1").setFromTabId(String.valueOf(1)).setArticleId(item.getId() + ""), new Data().setGameId(this.gameId));
        if (getActivity() instanceof i) {
            ((i) getActivity()).onItemClick(item.getId().intValue(), item.getType().intValue(), item.getIsCollection().intValue() == 1);
        }
        onClockClick();
    }

    @AfterViews
    void aftervidew() {
        this.context = getActivity();
        if (getArguments() != null) {
            this.gameId = getArguments().getString("gameId");
            this.tagId = getArguments().getInt("tagId", 0);
        }
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.rv_list_data.setLayoutManager(new GridLayoutManager(this.context, 2));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
            final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp26);
            aVar.f64117a = (int) getResources().getDimension(R.dimen.wdp24);
            this.rv_list_data.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment.1
                @Override // com.join.mgps.base.decoration.b
                public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                    return aVar;
                }
            });
            this.mItemAdapter.setOnLoadMoreListener(new BaseQuickAdapter.l() { // from class: com.join.kotlin.ui.introduction.e
                @Override // com.join.mgps.base.BaseQuickAdapter.l
                public final void onLoadMoreRequested() {
                    this.f49247a.lambda$aftervidew$0();
                }
            }, this.rv_list_data);
            this.mItemAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.introduction.f
                @Override // com.join.mgps.base.BaseQuickAdapter.j
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    this.f49248a.lambda$aftervidew$1(baseQuickAdapter, view, i10);
                }
            });
            this.rv_list_data.setAdapter(this.mItemAdapter);
        }
        loadData(1);
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

    @Background
    void loadData(int page) {
        showLoadingView();
        if (!m.j(this.context)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsRecommendArgs requestBbsRecommendArgs = new RequestBbsRecommendArgs();
            requestBbsRecommendArgs.setFirstReqInCurPage(Boolean.valueOf(page == 1));
            requestBbsRecommendArgs.setGameId(this.gameId);
            requestBbsRecommendArgs.setPostId(Integer.valueOf(this.tagId));
            requestBbsRecommendArgs.setPage(Integer.valueOf(this.next_page));
            requestBbsRecommendArgs.setUid(Integer.valueOf(getUid()));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsRecommendArgs);
            ResponseModel<GameBbsPostListBean> responseModelY = this.rpcGameClient.Y(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelY == null || responseModelY.getData() == null) {
                    showLoadFailed();
                } else {
                    showMain(responseModelY.getData(), page > 1);
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

    public void notifyDataChanged(int tid) {
        boolean z10 = this.tagId != tid;
        this.dataChanged = z10;
        if (z10) {
            this.tagId = tid;
            this.page = 1;
            this.next_page = 1;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Click({R.id.iv_close})
    void onClockClick() {
        if (getActivity() instanceof i) {
            ((i) getActivity()).onHide(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!this.dataChanged || hidden) {
            return;
        }
        loadData(1);
        this.dataChanged = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        view.setOnClickListener(this);
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
        GameBbsPostListBean gameBbsPostListBean = this.datas;
        if (gameBbsPostListBean == null || gameBbsPostListBean.getGame_bbs_post_list() == null || this.datas.getGame_bbs_post_list().size() <= 0) {
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
    void showMain(GameBbsPostListBean list, boolean loadMore) {
        this.datas = list;
        if (list != null) {
            this.next_page = list.getNext_page().intValue();
        }
        GameBbsPostListBean gameBbsPostListBean = this.datas;
        if (gameBbsPostListBean == null || gameBbsPostListBean.getGame_bbs_post_list() == null || this.datas.getGame_bbs_post_list().size() <= 0) {
            this.mItemAdapter.loadMoreComplete();
            this.mItemAdapter.loadMoreEnd();
        } else {
            if (loadMore) {
                this.mItemAdapter.addData((Collection) this.datas.getGame_bbs_post_list());
            } else {
                this.mItemAdapter.setNewData(this.datas.getGame_bbs_post_list());
            }
            this.mItemAdapter.loadMoreComplete();
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
