package com.join.mgps.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.OemBean;
import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemRequestBean;
import com.join.mgps.dto.OemResponse;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_forum_gift_detail_activity)
public class OemDetailActivity extends FragmentActivity {
    public static final String KEY_OEM_DETAIL = "key_oem_detail";
    public static final int RESULT_CODE_OEMDETAIL = 1;

    @ViewById
    RelativeLayout actionbarLayout;

    @ViewById
    View back_image;

    @ViewById
    View bottom;

    @ViewById
    TextView cdkNum;

    @ViewById
    TextView giftContent;

    @ViewById
    TextView giftExpireDate;

    @ViewById
    SimpleDraweeView giftIcon;

    @ViewById
    TextView giftName;

    @ViewById
    TextView giftRetain;

    @ViewById
    LinearLayout giftRetainLayout;

    @ViewById
    TextView giftTip;

    @ViewById
    TextView giftTitle;

    @ViewById
    TextView giftUseContent;

    @ViewById
    TextView giftUseTitle;

    @ViewById
    Button goToOem;

    @ViewById
    TextView layout_title;

    @ViewById
    ForumLoadingView loadingView;

    @ViewById
    View myGiftPackage;

    @ViewById
    TextView myGiftPackageCount;
    OemBean.OemDetailBean oemDetail;

    @ViewById
    LinearLayout oemTypeLayout1;

    @ViewById
    LinearLayout oemTypeLayout2;

    @ViewById
    LinearLayout oemTypeLayout3;

    @ViewById
    Button receiveButton;
    com.join.mgps.rpc.m rpcOemClient;
    private String TAG = getClass().getSimpleName();
    boolean isLoading = false;
    final int SHOW_TOAST = 1;
    final int REFRESH_DETAIL = 2;
    Handler mHandler = new b();
    boolean receivingCdk = false;
    com.join.mgps.customview.t mSvipDialog = null;
    com.join.mgps.customview.t mVipDialog = null;

    class a extends ForumLoadingView.e {
        a(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            if (v10.getId() == R.id.setNetwork) {
                OemDetailActivity.this.loading();
            }
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 1) {
                OemDetailActivity.this.showToast1((String) msg.obj);
            } else {
                if (i10 != 2) {
                    return;
                }
                try {
                    OemDetailActivity.this.refreshDetail1();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.M(v10.getContext(), OemDetailActivity.this.oemDetail.getGift_cdk());
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (OemDetailActivity.this.checkRight(OemDetailActivity.this.oemDetail.getType())) {
                OemDetailActivity.this.receveCdk();
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String url = OemDetailActivity.this.oemDetail.getUrl();
            if (com.join.mgps.Util.t2.h(url)) {
                OemDetailActivity.this.showToast("礼包获取失败");
            } else {
                com.join.mgps.Util.r0.P0(v10.getContext(), url);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.P0(v10.getContext(), OemDetailActivity.this.oemDetail.getUrl());
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (!OemDetailActivity.this.hasEnoughMoney()) {
                OemDetailActivity.this.showToast("您的銅板不足");
            } else {
                com.join.mgps.Util.r0.P0(v10.getContext(), OemDetailActivity.this.oemDetail.getUrl());
            }
        }
    }

    class i extends ForumLoadingView.e {
        i(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
            IntentUtil.getInstance().goWirelessSettings(v10.getContext());
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            OemDetailActivity.this.loading();
        }
    }

    class j extends ForumLoadingView.e {
        j(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            if (v10.getId() == R.id.setNetwork) {
                OemDetailActivity.this.loading();
            }
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkRight(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this).d(getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                showVipDialog();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            showSvipDialog();
            return false;
        }
        return true;
    }

    private void dismissSvipDialog() {
        com.join.mgps.customview.t tVar = this.mSvipDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mSvipDialog.dismiss();
    }

    private void dismissVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mVipDialog.dismiss();
    }

    private void initActionBar() {
        this.layout_title.setText("详情");
    }

    private void initViews() {
        changeLoadingState(1);
    }

    private void loadSrvData() {
        loadForumoemDetailData(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loading() {
        changeLoadingState(1);
        if (com.join.android.app.common.utils.m.j(this)) {
            loadSrvData();
        } else {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(9);
        }
    }

    private void processPost(int page, OemData.GiftDetailData obj) {
        if (this.oemDetail == null) {
            this.oemDetail = new OemBean.OemDetailBean();
        }
        JsonMapper.getInstance();
        this.oemDetail = (OemBean.OemDetailBean) JsonMapper.getInstance().fromJson(JsonMapper.toJsonString(obj), OemBean.OemDetailBean.class);
        refreshDetail();
    }

    private void processReceiveCdk(OemData.GiftGetCdkData data) {
        try {
            String gift_cdk = data.getGift_cdk();
            if (com.join.mgps.Util.t2.i(gift_cdk)) {
                this.oemDetail.setIs_used(Boolean.TRUE);
                this.oemDetail.setGift_cdk(gift_cdk);
                if (com.join.mgps.Util.t2.i(this.oemDetail.getMy_oem())) {
                    this.oemDetail.setMy_oem((Integer.parseInt(this.oemDetail.getMy_oem()) + 1) + "");
                }
                if (this.oemDetail.getSurplus() > 0) {
                    OemBean.OemDetailBean oemDetailBean = this.oemDetail;
                    oemDetailBean.setSurplus(oemDetailBean.getSurplus() - 1);
                }
            }
            refreshDetail();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        initActionBar();
        initViews();
        getIntentInfo();
        this.rpcOemClient = com.join.mgps.rpc.impl.m.c();
        this.loadingView.m();
        loading();
    }

    @Click
    void back_image() {
        setResult4Request();
        finish();
    }

    @UiThread
    void changeLoadingState(int state) {
        this.loadingView.setFailedReloadingRes(R.drawable.reload_butn_selector);
        this.loadingView.setFailedImgRes(R.drawable.set_net_butn);
        if (state == 1) {
            this.loadingView.j(1);
            return;
        }
        if (state == 2) {
            this.loadingView.j(2);
            return;
        }
        if (state == 9) {
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new i(forumLoadingView));
            this.loadingView.j(9);
            return;
        }
        if (state == 10) {
            this.loadingView.j(10);
            this.loadingView.setFailedMsg("没有更多详情哦~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new j(forumLoadingView2));
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.setFailedImgVisibility(0);
            this.loadingView.setFailedImgRes(R.drawable.btn_refresh);
            this.loadingView.setFailedReloadingRes(R.drawable.icon_no_rec);
            return;
        }
        if (state != 16) {
            return;
        }
        this.loadingView.j(10);
        this.loadingView.setFailedMsg("加载失败，再试试吧~");
        ForumLoadingView forumLoadingView3 = this.loadingView;
        forumLoadingView3.setListener(new a(forumLoadingView3));
        this.loadingView.setReloadingVisibility(0);
        this.loadingView.setFailedImgVisibility(0);
        this.loadingView.setFailedImgRes(R.drawable.btn_refresh);
        this.loadingView.setFailedReloadingRes(R.drawable.icon_no_rec);
    }

    public void getIntentInfo() {
        try {
            String str = (String) getIntent().getSerializableExtra(KEY_OEM_DETAIL);
            if (com.join.mgps.Util.t2.h(str)) {
                finish();
            } else {
                this.oemDetail = (OemBean.OemDetailBean) JsonMapper.getInstance().fromJson(str, OemBean.OemDetailBean.class);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    boolean hasEnoughMoney() {
        return AccountUtil_.getInstance_(this).getAccountData().getPapaMoney() >= ((long) (com.join.mgps.Util.t2.i(this.oemDetail.getMoney_num()) ? Integer.parseInt(this.oemDetail.getMoney_num()) : 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadForumoemDetailData(int page) {
        int uid;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        if (this.isLoading) {
            return;
        }
        try {
            try {
                OemRequestBean.GetOemDetailRequestBean getOemDetailRequestBean = new OemRequestBean.GetOemDetailRequestBean();
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                if (com.join.mgps.Util.r0.Y0(this)) {
                    uid = userInfoT.getUid();
                    userInfoT.getToken();
                } else {
                    uid = 0;
                }
                OemBean.OemDetailBean oemDetailBean = this.oemDetail;
                String id2 = oemDetailBean != null ? oemDetailBean.getId() : "";
                getOemDetailRequestBean.setUid(uid + "");
                getOemDetailRequestBean.setOid(id2);
                OemResponse<OemData.GiftDetailData> oemResponseB = this.rpcOemClient.b(uid, id2);
                if (oemResponseB == null || oemResponseB.getError() != 0 || oemResponseB.getData() == null) {
                    changeLoadingState(16);
                } else {
                    OemData.GiftDetailData data = oemResponseB.getData();
                    if (data == null) {
                        if (page == 1) {
                            changeLoadingState(10);
                        }
                    } else {
                        processPost(page, data);
                        changeLoadingState(2);
                    }
                }
            } catch (Exception e10) {
                changeLoadingState(16);
                e10.printStackTrace();
            }
        } finally {
            this.isLoading = false;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        dismissVipDialog();
        dismissSvipDialog();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void receveCdk() {
        String token;
        int uid;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            return;
        }
        if (this.receivingCdk) {
            return;
        }
        try {
            try {
                String str = "礼包码获取失败";
                OemRequestBean.ReceiveCdkRequestBean receiveCdkRequestBean = new OemRequestBean.ReceiveCdkRequestBean();
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                if (com.join.mgps.Util.r0.Y0(this)) {
                    uid = userInfoT.getUid();
                    token = userInfoT.getToken();
                } else {
                    token = "";
                    uid = 0;
                }
                OemBean.OemDetailBean oemDetailBean = this.oemDetail;
                String id2 = oemDetailBean != null ? oemDetailBean.getId() : "";
                receiveCdkRequestBean.setUid(uid + "");
                receiveCdkRequestBean.setOid(id2);
                OemResponse<OemData.GiftGetCdkData> oemResponseA = this.rpcOemClient.a(uid, token, id2);
                if (oemResponseA == null || oemResponseA.getError() != 0) {
                    showToast("礼包码获取失败");
                } else {
                    OemData.GiftGetCdkData data = oemResponseA.getData();
                    if (data == null || !com.join.mgps.Util.t2.i(data.getGift_cdk())) {
                        if (!com.join.mgps.Util.t2.h("")) {
                            str = "";
                        }
                        showToast(str);
                    } else {
                        processReceiveCdk(data);
                        showToast("礼包码获取成功");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.receivingCdk = false;
        }
    }

    void refreshDetail() {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.sendToTarget();
    }

    @UiThread
    void refreshDetail1() {
        this.giftName.setText(this.oemDetail.getName());
        this.giftExpireDate.setText(getString(R.string.cdk_expired_date, com.join.mgps.Util.e0.I(this.oemDetail.getEnd_time() * 1000)));
        String content = this.oemDetail.getContent();
        String use_method = this.oemDetail.getUse_method();
        this.giftContent.setText(content);
        this.giftUseContent.setText(use_method);
        if (com.join.mgps.Util.t2.h(content)) {
            this.giftTitle.setVisibility(8);
            this.giftContent.setVisibility(8);
        } else {
            this.giftTitle.setVisibility(0);
            this.giftContent.setVisibility(0);
        }
        if (com.join.mgps.Util.t2.h(use_method)) {
            this.giftUseTitle.setVisibility(8);
            this.giftUseContent.setVisibility(8);
        } else {
            this.giftUseTitle.setVisibility(0);
            this.giftUseContent.setVisibility(0);
        }
        this.myGiftPackage.setOnClickListener(new c());
        this.myGiftPackageCount.setText(getString(R.string.my_cdk_count, this.oemDetail.getMy_oem() + ""));
        this.giftName.setTextColor(getResources().getColor(R.color.gift_type_normal));
        String type = this.oemDetail.getType();
        this.oemTypeLayout1.setVisibility(8);
        this.oemTypeLayout2.setVisibility(8);
        this.oemTypeLayout3.setVisibility(8);
        this.giftRetainLayout.setVisibility(8);
        this.giftTip.setVisibility(8);
        if (com.join.mgps.Util.t2.i(type)) {
            if (type.equals("4")) {
                this.giftName.setTextColor(getResources().getColor(R.color.gift_type_exchange));
                refreshOem4();
            } else if (type.equals("3")) {
                this.giftName.setTextColor(getResources().getColor(R.color.gift_type_exclusive));
                refreshOem3();
            } else if (type.equals("2")) {
                refreshOem2();
            } else if (type.equals("1") || type.equals("5")) {
                refreshOem1();
            }
        }
        com.join.android.app.common.utils.l.h(this.giftIcon, this.oemDetail.getIcon());
    }

    void refreshOem1() {
        int i10;
        this.oemTypeLayout1.setVisibility(0);
        this.giftRetainLayout.setVisibility(0);
        this.receiveButton.setOnClickListener(null);
        getResources();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.oemDetail.getSurplus());
        sb3.append("");
        sb2.append(com.join.mgps.Util.t2.i(sb3.toString()) ? Integer.valueOf(this.oemDetail.getSurplus()) : "0");
        sb2.append("个");
        String string = getString(R.string.cdk_propotion, sb2.toString());
        if (com.join.mgps.Util.t2.h(this.oemDetail.getSurplus() + "")) {
            i10 = 0;
        } else {
            i10 = Integer.parseInt(this.oemDetail.getSurplus() + "");
        }
        this.giftRetain.setText(string);
        if (this.oemDetail.getIs_used().booleanValue()) {
            this.cdkNum.setText(this.oemDetail.getGift_cdk());
            this.receiveButton.setBackgroundResource(R.drawable.receive_orange);
            this.receiveButton.setText("复制");
            this.receiveButton.setOnClickListener(new d());
            return;
        }
        if (i10 < 1) {
            this.oemTypeLayout1.setVisibility(8);
            this.oemTypeLayout3.setVisibility(0);
        } else {
            this.cdkNum.setText(getString(R.string.receive_cdk_tip));
            this.receiveButton.setBackgroundResource(R.drawable.receive_orange);
            this.receiveButton.setText("领取");
            this.receiveButton.setOnClickListener(new e());
        }
    }

    void refreshOem2() {
        this.oemTypeLayout2.setVisibility(0);
        this.goToOem.setText(getString(R.string.receive_cdk_button2));
        this.goToOem.setOnClickListener(new f());
    }

    void refreshOem3() {
        this.oemTypeLayout2.setVisibility(0);
        this.giftTip.setVisibility(0);
        this.goToOem.setText(getString(R.string.receive_cdk_button3));
        this.goToOem.setOnClickListener(new g());
    }

    void refreshOem4() {
        this.oemTypeLayout2.setVisibility(0);
        this.giftTip.setVisibility(0);
        this.goToOem.setText(getString(R.string.receive_cdk_button4));
        this.goToOem.setOnClickListener(new h());
    }

    void setResult4Request() {
        OemBean.OemDetailBean oemDetailBean = this.oemDetail;
        if (oemDetailBean != null && oemDetailBean.getIs_used().booleanValue()) {
            Intent intent = new Intent();
            intent.putExtra("receivedOemDetail", JsonMapper.getInstance().toJson(this.oemDetail));
            setResult(1, intent);
        }
    }

    @UiThread
    void showSvipDialog() {
        com.join.mgps.customview.t tVar = this.mSvipDialog;
        if (tVar == null) {
            this.mSvipDialog = com.join.mgps.Util.h0.h0(this).e0(this);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mSvipDialog.show();
    }

    void showToast(String s10) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = s10;
        messageObtainMessage.sendToTarget();
    }

    void showToast1(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @UiThread
    void showVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null) {
            this.mVipDialog = com.join.mgps.Util.h0.h0(this).g0(this);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mVipDialog.show();
    }
}
