package com.join.mgps.activity;

import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGameBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_listview)
public class HotVoucherActivity extends BaseLoadingActivity {

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private AccountVoucherAd f54025ad;

    @ViewById
    XListView2 listview;
    private com.join.mgps.adapter.d3 mAdapter;
    private List<AccountVoucherGameBean> mBeans;
    com.join.mgps.rpc.o mRpcAccountClient;
    private int pager = 1;

    @ViewById
    TextView textTopRight;

    @ViewById
    TextView title_textview;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            HotVoucherActivity.access$008(HotVoucherActivity.this);
            HotVoucherActivity.this.loadData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            HotVoucherActivity.this.pager = 1;
            HotVoucherActivity.this.loadData();
        }
    }

    static /* synthetic */ int access$008(HotVoucherActivity hotVoucherActivity) {
        int i10 = hotVoucherActivity.pager;
        hotVoucherActivity.pager = i10 + 1;
        return i10;
    }

    @AfterViews
    void afterViews() {
        this.mRpcAccountClient = com.join.mgps.rpc.impl.n.i();
        this.title_textview.setText("热门代金券");
        this.textTopRight.setVisibility(8);
        this.mBeans = new ArrayList();
        com.join.mgps.adapter.d3 d3Var = new com.join.mgps.adapter.d3(this, this.mBeans);
        this.mAdapter = d3Var;
        this.listview.setAdapter((ListAdapter) d3Var);
        this.listview.setPreLoadCount(10);
        this.listview.setPullLoadEnable(new a());
        this.listview.setPullRefreshEnable(new b());
        loadData();
    }

    @Click
    void back_image() {
        finish();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.activity_listview;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.m.j(getApplicationContext())) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(getApplicationContext()).getToken());
                linkedMultiValueMap.add("page", this.pager + "");
                linkedMultiValueMap.add("limit", "10");
                PapayVoucherResultMain<ResultMyVoucherBean> papayVoucherResultMainG = this.mRpcAccountClient.g(linkedMultiValueMap);
                if (papayVoucherResultMainG == null || papayVoucherResultMainG.getError() != 0 || papayVoucherResultMainG.getData() == null) {
                    showLodingFailed();
                } else {
                    List<AccountVoucherGameBean> recommend = papayVoucherResultMainG.getData().getRecommend();
                    this.mBeans.addAll(recommend);
                    updateUi();
                    if (recommend.size() < 10) {
                        noMore();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingFailed();
            }
        } else {
            showLodingFailed();
            showNoNet();
        }
        updateListFooter();
    }

    @UiThread
    void noMore() {
        this.listview.setNoMore();
    }

    @UiThread
    void showLodingFailed() {
        List<AccountVoucherGameBean> list = this.mBeans;
        if (list == null || list.size() == 0) {
            showFailLayout();
        }
    }

    @UiThread
    void showNoNet() {
        Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
    }

    @UiThread
    void updateListFooter() {
        this.listview.u();
        this.listview.v();
    }

    @UiThread
    void updateUi() {
        if (this.mBeans.size() == 0) {
            this.listview.setNoMore();
            showNoDataLayoutTwo();
            setTextViewNoData(getString(R.string.voucher_recommend_no));
        } else {
            this.listview.q();
            hideLoadingLayout();
        }
        this.mAdapter.notifyDataSetChanged();
    }
}
