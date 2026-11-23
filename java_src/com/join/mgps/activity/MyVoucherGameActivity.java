package com.join.mgps.activity;

import android.text.Html;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherAd;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_my_voucher_game)
public class MyVoucherGameActivity extends BaseLoadingActivity implements w6.a.InterfaceC1253a {

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private AccountVoucherAd f55172ad;

    @ViewById
    TextView gamrVoucherNumber;

    @ViewById
    XListView2 listview;
    private com.join.mgps.adapter.t4 mAdapter;
    private List<AccountVoucherGame> mBeans;
    com.join.mgps.rpc.o mRpcAccountClient;

    @Extra
    AccountVoucher mVoucher;
    private int pager = 1;

    @ViewById
    TextView textTopRight;

    @ViewById
    TextView title_textview;

    @ViewById
    LinearLayout voucherGameDetail;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MyVoucherGameActivity.access$008(MyVoucherGameActivity.this);
            MyVoucherGameActivity.this.loadData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MyVoucherGameActivity.this.pager = 1;
            MyVoucherGameActivity.this.loadData();
        }
    }

    static /* synthetic */ int access$008(MyVoucherGameActivity myVoucherGameActivity) {
        int i10 = myVoucherGameActivity.pager;
        myVoucherGameActivity.pager = i10 + 1;
        return i10;
    }

    @AfterViews
    void afterViews() {
        this.mRpcAccountClient = com.join.mgps.rpc.impl.n.i();
        this.mBeans = new ArrayList();
        this.listview.setPreLoadCount(10);
        this.textTopRight.setText(R.string.voucher_use);
        com.join.mgps.adapter.t4 t4Var = new com.join.mgps.adapter.t4(this.mBeans, this);
        this.mAdapter = t4Var;
        this.listview.setAdapter((ListAdapter) t4Var);
        this.listview.setPullLoadEnable(new a());
        this.listview.setPullRefreshEnable(new b());
        this.title_textview.setText(this.mVoucher.getGame_name());
        w6.a.b().a(this);
        loadData();
    }

    @Click
    void back_image() {
        finish();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.layout_my_voucher_game;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    @Background
    public void loadData() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
                linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(getApplicationContext()).getToken());
                linkedMultiValueMap.add("game_id", this.mVoucher.getGame_id() + "");
                linkedMultiValueMap.add("page", this.pager + "");
                linkedMultiValueMap.add("limit", "10");
                PapayVoucherResultMain<ResultMyVoucherGameBean> papayVoucherResultMainC = this.mRpcAccountClient.c(linkedMultiValueMap);
                if (papayVoucherResultMainC == null) {
                    showLodingFailed();
                } else if (papayVoucherResultMainC.getError() == 0) {
                    List<AccountVoucherGame> coupons = papayVoucherResultMainC.getData().getCoupons();
                    this.f55172ad = papayVoucherResultMainC.getData().getHelp();
                    if (coupons != null) {
                        if (coupons.size() > 0) {
                            if (this.pager == 1) {
                                this.mBeans.clear();
                                this.mBeans.addAll(coupons);
                            } else {
                                this.mBeans.addAll(coupons);
                            }
                            updateUi(papayVoucherResultMainC.getData());
                        } else if (this.pager != 1) {
                            noMore();
                        }
                    }
                } else if (this.pager == 1) {
                    showLodingFailed();
                } else {
                    noMore();
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

    @Override // w6.a.InterfaceC1253a
    public void onAppMsgChange() {
        this.pager = 1;
        loadData();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        w6.a.b().d(this);
    }

    @UiThread
    void showLodingFailed() {
        List<AccountVoucherGame> list = this.mBeans;
        if (list == null || list.size() == 0) {
            showFailLayout();
        }
    }

    @UiThread
    void showNoNet() {
        Toast.makeText(this, getString(R.string.net_connect_failed), 0).show();
    }

    @Click
    void textTopRight() {
        if (this.f55172ad != null) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f55172ad.getLink().getLink_type_val());
            intentDateBean.setObject(this.f55172ad.getTitle());
            IntentUtil.getInstance().intentActivity(this, intentDateBean);
        }
    }

    @UiThread
    void updateListFooter() {
        this.listview.u();
        this.listview.v();
    }

    @UiThread
    void updateUi(ResultMyVoucherGameBean result) {
        if (result.getMoney() != null) {
            this.voucherGameDetail.setVisibility(0);
            this.gamrVoucherNumber.setText(Html.fromHtml(String.format(getResources().getString(R.string.voucher_game_header), "<font color = '#D33D3E'>" + result.getMoney().getCount() + "</font>", "<font color = '#D33D3E'>" + result.getMoney().getMoney() + "</font>")));
        } else {
            this.voucherGameDetail.setVisibility(8);
        }
        hideLoadingLayout();
        this.mAdapter.notifyDataSetChanged();
    }

    @Click
    void voucherGameDetail() {
        IntentUtil.getInstance().goGameDetialActivity(this, this.mVoucher.getGame_id() + "", this.mVoucher.getGame_tpl(), this.mVoucher.getSp_tpl_two_position(), 0);
    }
}
