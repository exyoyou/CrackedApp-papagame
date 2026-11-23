package com.join.mgps.activity;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.PapayHistoryInfo;
import com.join.mgps.dto.PapayInfo;
import com.join.mgps.dto.PapayRequest;
import com.join.mgps.dto.PapayResultData;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayAdinfo;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.papapay_center_layout)
public class PAPayCenterActivity extends BaseActivity implements View.OnClickListener, w6.b.a {

    @ViewById
    TextView aboutPabi;
    private UserInfo accountBean;
    SimpleDraweeView adIcon;
    com.join.mgps.adapter.g6 adapter;
    com.join.mgps.rpc.o client;
    Context context;
    com.join.mgps.dialog.f1 dialog;
    LinearLayout hongbaoLayout;

    @Extra
    int intentFrom;
    TextView listHead;
    TextView message;
    ImageView more;
    private TextView name;

    @ViewById
    LinearLayout nodata;
    TextView pabiNumber;
    List<PapayHistoryInfo> papayHistoryItems;
    private TextView payRedNumber;
    Button payStart;

    @ViewById
    TextView title_textview;

    @ViewById
    XListView xListView;
    int pn = 1;
    private boolean isRequesting = false;
    private boolean isFirstLoad = true;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (PAPayCenterActivity.this.isRequesting) {
                return;
            }
            PAPayCenterActivity pAPayCenterActivity = PAPayCenterActivity.this;
            pAPayCenterActivity.loadPayHistory(pAPayCenterActivity.accountBean, PAPayCenterActivity.this.pn);
        }
    }

    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            com.join.mgps.Util.g1.c("click position" + position);
            int i10 = position + (-2);
            if (i10 < 0) {
                return;
            }
            try {
                PapayPayDetialActivity_.intent(PAPayCenterActivity.this.context).a(PAPayCenterActivity.this.papayHistoryItems.get(i10)).start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PayAdinfo f55235b;

        c(final PayAdinfo val$inad) {
            this.f55235b = val$inad;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(PAPayCenterActivity.this.context, this.f55235b.getLink().getIntentDataBean());
        }
    }

    private void refreshData() {
        UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.accountBean = accountData;
        if (accountData == null) {
            IntentUtil.getInstance().goLogin(this.context);
            return;
        }
        if (!this.isFirstLoad) {
            this.pn = 1;
            loadPayHistory(accountData, 1);
            this.xListView.n();
        } else {
            this.isFirstLoad = false;
            this.dialog.b();
            this.pn = 1;
            loadPayHistory(this.accountBean, 1);
        }
    }

    @Click
    void aboutPabi() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_help_pa_money.html");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    @AfterViews
    void afterview() {
        this.client = com.join.mgps.rpc.impl.n.i();
        this.context = this;
        com.join.mgps.dialog.f1 f1VarX = com.join.mgps.Util.h0.h0(this).x(this.context);
        this.dialog = f1VarX;
        f1VarX.setCancelable(true);
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.papapayhead, (ViewGroup) null);
        this.pabiNumber = (TextView) viewInflate.findViewById(R.id.pabiNumber);
        this.message = (TextView) viewInflate.findViewById(R.id.message);
        this.adIcon = (SimpleDraweeView) viewInflate.findViewById(R.id.papaPayIcon);
        this.name = (TextView) viewInflate.findViewById(R.id.name);
        this.listHead = (TextView) viewInflate.findViewById(R.id.listHead);
        this.payStart = (Button) viewInflate.findViewById(R.id.payStart);
        this.more = (ImageView) viewInflate.findViewById(R.id.more);
        this.payRedNumber = (TextView) viewInflate.findViewById(R.id.payRedNumber);
        this.hongbaoLayout = (LinearLayout) viewInflate.findViewById(R.id.hongbaoLayout);
        if (this.intentFrom == 2) {
            this.title_textview.setText("悟饭红包");
            this.payStart.setVisibility(8);
            this.listHead.setText("红包交易记录");
            this.name.setText("余额(红包)");
        } else {
            this.title_textview.setText("我的饭票");
        }
        this.hongbaoLayout.setVisibility(8);
        com.join.mgps.adapter.g6 g6Var = new com.join.mgps.adapter.g6(this.context);
        this.adapter = g6Var;
        this.papayHistoryItems = g6Var.a();
        this.xListView.addHeaderView(viewInflate);
        this.xListView.setAdapter((ListAdapter) this.adapter);
        this.payStart.setOnClickListener(this);
        this.more.setOnClickListener(this);
        this.hongbaoLayout.setOnClickListener(this);
        this.xListView.setPreLoadCount(10);
        this.xListView.setPullLoadEnable(new a());
        this.xListView.c();
        this.xListView.setOnItemClickListener(new b());
        w6.b.b().a(this);
        refreshData();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dialogDismiss() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadPayHistory(UserInfo accountBean, int pn) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            dialogDismiss();
            updateListFooter();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                PapayRequest papayRequest = new PapayRequest();
                papayRequest.setLimit(10);
                papayRequest.setToken(accountBean.getToken());
                papayRequest.setUid(accountBean.getUid());
                papayRequest.setPage(pn);
                PapayWalletResultMain papayWalletResultMainB = this.intentFrom == 2 ? this.client.b(papayRequest.getParams()) : this.client.d(papayRequest.getParams());
                if (papayWalletResultMainB == null || papayWalletResultMainB.getError() != 0) {
                    updateListFooter();
                } else {
                    updateList(papayWalletResultMainB.getData(), pn);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
            }
        } finally {
            this.isRequesting = false;
            dialogDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void noMore() {
        this.xListView.setNoMore();
    }

    @Override // w6.b.a
    public void onAppMsgChange() {
        refreshData();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.hongbaoLayout || id2 == R.id.more) {
            PAPayCenterActivity_.intent(this.context).a(2).start();
        } else {
            if (id2 != R.id.payStart) {
                return;
            }
            PayStartActivity_.intent(this).start();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        w6.b.b().d(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateList(PapayResultData data, int pn) {
        if (data != null) {
            if (pn == 1) {
                PapayInfo wallet = data.getWallet();
                if (this.intentFrom == 2) {
                    this.pabiNumber.setText(wallet.getRed_envelope());
                    this.hongbaoLayout.setVisibility(8);
                } else {
                    this.pabiNumber.setText(wallet.getMoney());
                    this.hongbaoLayout.setVisibility(0);
                }
                this.papayHistoryItems.clear();
                PayAdinfo ad2 = data.getAd();
                this.message.setText(ad2.getTitle());
                this.message.getPaint().setFlags(8);
                this.message.getPaint().setAntiAlias(true);
                com.join.android.app.common.utils.l.h(this.adIcon, ad2.getIcon());
                this.message.setOnClickListener(new c(ad2));
                this.payRedNumber.setText(Html.fromHtml("余额<font color = '#fd5d58'>" + wallet.getRed_envelope() + "</font>"), TextView.BufferType.SPANNABLE);
            }
            List<PapayHistoryInfo> orders = data.getOrders();
            if (orders == null || orders.size() <= 0) {
                if (pn == 1) {
                    this.nodata.setVisibility(0);
                } else {
                    this.nodata.setVisibility(8);
                }
                noMore();
            } else {
                this.papayHistoryItems.addAll(orders);
                int i10 = this.pn;
                if (i10 == pn) {
                    this.pn = i10 + 1;
                }
                updateListFooter();
                if (orders.size() < 10) {
                    noMore();
                }
                this.nodata.setVisibility(8);
            }
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        this.xListView.q();
        this.xListView.r();
    }
}
