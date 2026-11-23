package com.join.mgps.activity;

import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageInfoBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.enums.Dtype;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.gift_detail_activity)
public class GiftsDetailActivity extends BaseActivity {

    @Extra
    int Uid;
    private Context context;
    private DetailResultBean detailResultBean;
    private com.join.mgps.dialog.f1 dialog;
    private Button dialog_button_cancel;
    private DownloadTask downloadTask;

    @Extra("")
    String gameId;

    @ViewById
    TextView giftContent;

    @ViewById
    SimpleDraweeView giftIcon;

    @ViewById
    TextView giftMethod;

    @ViewById
    TextView giftNameTv;

    @Extra
    GiftPackageDataInfoBean giftPackageDataInfoBean;

    @ViewById
    TextView giftTime;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private com.join.mgps.customview.t mDialog;
    private com.join.mgps.customview.t mGiftDialog;
    com.join.mgps.customview.t mVipDialog = null;
    private TextView moneyText;
    private Dialog myDialog;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    TextView saveCodeContent;

    @ViewById
    TextView saveCodeTv;

    @ViewById
    ScrollView scrollView;

    @ViewById
    TextView title_textview;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (GiftsDetailActivity.this.myDialog != null && GiftsDetailActivity.this.myDialog.isShowing()) {
                GiftsDetailActivity.this.myDialog.dismiss();
            }
            int status = GiftsDetailActivity.this.downloadTask != null ? GiftsDetailActivity.this.downloadTask.getStatus() : 0;
            if (UtilsMy.x0(GiftsDetailActivity.this.detailResultBean.getPay_tag_info(), GiftsDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.k4(GiftsDetailActivity.this.context, GiftsDetailActivity.this.downloadTask);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (GiftsDetailActivity.this.detailResultBean != null) {
                if (UtilsMy.z0(GiftsDetailActivity.this.detailResultBean.getPay_tag_info(), GiftsDetailActivity.this.detailResultBean.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(GiftsDetailActivity.this.context, GiftsDetailActivity.this.downloadTask.getCrc_link_type_val());
                } else {
                    if (com.join.mgps.Util.t2.i(GiftsDetailActivity.this.downloadTask.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(GiftsDetailActivity.this.downloadTask.getCrc_link_type_val())) != null) {
                        UtilsMy.V4(GiftsDetailActivity.this.downloadTask, downloadTaskG);
                    }
                    UtilsMy.A1(GiftsDetailActivity.this.downloadTask, GiftsDetailActivity.this.detailResultBean);
                    if (!UtilsMy.o1(GiftsDetailActivity.this.context, GiftsDetailActivity.this.downloadTask)) {
                        if (GiftsDetailActivity.this.detailResultBean.getDown_status() == 5) {
                            UtilsMy.l1(GiftsDetailActivity.this.context, GiftsDetailActivity.this.downloadTask);
                        } else {
                            UtilsMy.U0(GiftsDetailActivity.this.context, GiftsDetailActivity.this.downloadTask, GiftsDetailActivity.this.detailResultBean.getTp_down_url(), GiftsDetailActivity.this.detailResultBean.getOther_down_switch(), GiftsDetailActivity.this.detailResultBean.getCdn_down_switch());
                        }
                    }
                }
            }
            GiftsDetailActivity.this.downloadTask.setStatus(2);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GiftsDetailActivity.this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(GiftsDetailActivity.this.giftPackageDataInfoBean.getGift_package_code());
            com.join.mgps.Util.a3.b(GiftsDetailActivity.this.context).d(GiftsDetailActivity.this.giftPackageDataInfoBean.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GiftsDetailActivity.this.myDialog == null || !GiftsDetailActivity.this.myDialog.isShowing()) {
                return;
            }
            GiftsDetailActivity.this.myDialog.dismiss();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            GiftsDetailActivity.this.setSaveCodeTv();
        }
    }

    private boolean checkRight(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.context).d(this.context.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                showVipDialog();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            showSvipGiftDialog();
            return false;
        }
        return true;
    }

    private void dismissVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mVipDialog.dismiss();
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        com.join.mgps.Util.j0.a().d(this);
        this.title_textview.setText("礼包详情");
        this.giftNameTv.setText(this.giftPackageDataInfoBean.getGift_package_title());
        this.saveCodeContent.setText(this.giftPackageDataInfoBean.getGift_package_code());
        this.giftTime.setText(com.join.mgps.Util.e0.C(this.giftPackageDataInfoBean.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.e0.C(this.giftPackageDataInfoBean.getGift_package_times_end()));
        com.join.android.app.common.utils.l.f(this.giftIcon, R.drawable.banner_normal_icon, this.giftPackageDataInfoBean.getGift_package_pic(), com.join.android.app.common.utils.l.E(this.context));
        setSaveCodeTv();
        showLoading2();
        this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
    }

    @Click
    void back_image() {
        setResult4Request();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadStatus() {
        DetailResultBean detailResultBean = this.detailResultBean;
        if (detailResultBean == null || detailResultBean.getCrc_sign_id() == null) {
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.detailResultBean.getCrc_sign_id());
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            this.downloadTask = this.detailResultBean.getDownloadtaskDown();
            if (UtilsMy.p0(this.detailResultBean.getTag_info())) {
                this.downloadTask.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.g.t0(getApplicationContext()).e(getApplicationContext(), this.detailResultBean.getPackage_name())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(getApplicationContext()).n(getApplicationContext(), this.detailResultBean.getPackage_name());
                    if (!com.join.mgps.Util.t2.i(this.detailResultBean.getVer()) || aVarN.d() >= Integer.parseInt(this.detailResultBean.getVer())) {
                        this.downloadTask.setStatus(5);
                    } else {
                        this.downloadTask.setStatus(9);
                    }
                } else {
                    this.downloadTask.setStatus(0);
                }
            } else {
                this.downloadTask.setStatus(0);
            }
        } else {
            downloadTaskG.setDownloadType(this.detailResultBean.getDownloadType());
            this.downloadTask.setScreenshot_pic(this.detailResultBean.getScreenshot_pic());
        }
        showDownloadUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameGiftPackageInfo() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            loadFailed();
            return;
        }
        try {
            GiftPackageInfoBean giftPackageInfoBeanK1 = this.rpcClient.k1(getRequestBean());
            if (giftPackageInfoBeanK1 != null) {
                GiftPackageDataInfoBean data = giftPackageInfoBeanK1.getMessages().getData();
                this.giftPackageDataInfoBean = data;
                if (data != null) {
                    showMain();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            loadFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGiftPackageOperation() {
        try {
            if (com.join.android.app.common.utils.m.j(this)) {
                try {
                    GiftPackageOperationBean giftPackageOperationBeanN0 = this.rpcClient.N0(RequestBeanUtil.getInstance(this).getGiftPackageOperationRequestBean(this.Uid, this.giftPackageDataInfoBean.getGift_package_id(), this.gameId));
                    if (giftPackageOperationBeanN0 == null) {
                        showToast("领取失败");
                    } else {
                        if (giftPackageOperationBeanN0.getFlag().equals("0")) {
                            String error_info = giftPackageOperationBeanN0.getError_info();
                            if (error_info != null && giftPackageOperationBeanN0.getCode().equals(HmIMEManager.ERROR_CODE_NOT_ENABLE)) {
                                showToast(error_info);
                            }
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = giftPackageOperationBeanN0.getMessages().getData();
                        if (data == null || data.size() <= 0) {
                            showToast("领取失败");
                        } else {
                            GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                            showDialog(giftPackageDataOperationBean);
                            GiftPackageDataInfoBean gift_info = giftPackageDataOperationBean.getGift_info();
                            if (gift_info != null) {
                                setEdtitextCode(gift_info.getGift_package_code());
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                goneLoding();
            } else {
                showToast("领取失败");
            }
        } finally {
            goneLoding();
        }
    }

    public CommonRequestBean getRequestBean() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            this.Uid = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.context).getGiftPackageInfoRequestBean(this.Uid, this.giftPackageDataInfoBean.getGift_package_id());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goneLoding() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loadFailed() {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.scrollView.setVisibility(8);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult4Request();
        super.onBackPressed();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        dismissVipDialog();
        com.join.mgps.Util.j0.a().e(this);
        Dialog dialog = this.myDialog;
        if (dialog != null && dialog.isShowing()) {
            this.myDialog.dismiss();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA == null || this.downloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.downloadTask = downloadTaskA;
        int iC = downloadTaskEvent.c();
        if (iC != 5) {
            if (iC == 8) {
                DownloadTask downloadTask = this.downloadTask;
                if (downloadTask == null || downloadTask.getPath() == null) {
                    return;
                }
                UtilsMy.U4(this.downloadTask);
                return;
            }
            if (iC != 11 && iC != 48) {
                return;
            }
        }
        if (this.downloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.downloadTask = downloadTaskA;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getGameGiftPackageInfo();
    }

    @Click
    void relodingimag() {
        showLoading2();
        getGameGiftPackageInfo();
    }

    @Click
    void saveCodeTv() {
        if (this.giftPackageDataInfoBean.getGift_package_status() == 1) {
            if (this.giftPackageDataInfoBean.getGift_package_overdue() == 1) {
                com.join.mgps.Util.a3.b(this.context).d("该礼包已过期");
                return;
            }
            ((ClipboardManager) this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.giftPackageDataInfoBean.getGift_package_code());
            com.join.mgps.Util.a3.b(this.context).d(this.giftPackageDataInfoBean.getGift_package_code() + "已复制到剪贴板");
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (IntentUtil.getInstance().goLoginNetGame(this) || !checkRight(this.giftPackageDataInfoBean.getGift_package_type())) {
            return;
        }
        this.Uid = accountData.getUid();
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null) {
            f1Var.b();
        }
        getGiftPackageOperation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setEdtitextCode(String code) {
        this.saveCodeContent.setText(code);
        this.saveCodeTv.setText("复制");
    }

    void setResult4Request() {
        if (this.giftPackageDataInfoBean == null) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("receivedOemDetail", JsonMapper.getInstance().toJson(this.giftPackageDataInfoBean));
        setResult(100, intent);
    }

    void setSaveCodeTv() {
        if (this.giftPackageDataInfoBean.getGift_package_status() != 1) {
            this.saveCodeTv.setText("领取");
            this.saveCodeTv.setTextColor(-358375);
            this.saveCodeTv.setBackgroundResource(R.drawable.recom_maincolor_butn);
        } else if (this.giftPackageDataInfoBean.getGift_package_overdue() == 1) {
            this.saveCodeTv.setText("已过期");
            this.saveCodeTv.setTextColor(-7763575);
            this.saveCodeTv.setBackgroundResource(R.drawable.recom_grey_butn);
        } else {
            this.saveCodeTv.setText("复制");
            this.saveCodeTv.setTextColor(-358375);
            this.saveCodeTv.setBackgroundResource(R.drawable.recom_maincolor_butn);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog(GiftPackageDataOperationBean bean) {
        GiftPackageDataInfoBean gift_info = bean.getGift_info();
        this.giftPackageDataInfoBean.setGift_package_status(1);
        this.giftPackageDataInfoBean.setGift_package_overdue(gift_info.getGift_package_overdue());
        this.giftPackageDataInfoBean.setGift_package_code(gift_info.getGift_package_code());
        this.saveCodeTv.setBackgroundResource(R.drawable.recom_maincolor_butn);
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        this.dialog_button_cancel = (Button) this.myDialog.findViewById(R.id.dialog_button_cancle);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.saveCodeTv);
        this.moneyText = (TextView) this.myDialog.findViewById(R.id.moneyText);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.saveCodeContent);
        textView2.setText("领取");
        textView.setText("领号成功");
        button.setText("关闭");
        textView3.setText(this.giftPackageDataInfoBean.getGift_package_code());
        this.dialog_button_cancel.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
        button.setOnClickListener(new c());
        this.myDialog.setOnDismissListener(new d());
        this.detailResultBean = bean.getGame_info();
        getDownloadStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    @UiThread
    public void showDownloadUi() {
        DetailResultBean detailResultBean;
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            this.dialog_button_cancel.setText("下载游戏");
            detailResultBean = this.detailResultBean;
            if (detailResultBean != null) {
                UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.I3(this.dialog_button_cancel, this.detailResultBean.getDown_status(), this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.B3(this.detailResultBean.getSp_tag_info(), this.moneyText);
            }
        } else if (status == 5) {
            this.dialog_button_cancel.setText("启动游戏");
        } else if (status == 9 || status == 43) {
            this.dialog_button_cancel.setText("下载游戏");
            detailResultBean = this.detailResultBean;
            if (detailResultBean != null) {
                UtilsMy.x0(detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.I3(this.dialog_button_cancel, this.detailResultBean.getDown_status(), this.detailResultBean.getPay_tag_info(), this.detailResultBean.getCrc_sign_id());
                UtilsMy.B3(this.detailResultBean.getSp_tag_info(), this.moneyText);
            }
        } else {
            this.dialog_button_cancel.setText("下载中..");
        }
        this.saveCodeContent.setText(this.giftPackageDataInfoBean.getGift_package_code());
        Dialog dialog = this.myDialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.myDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading2() {
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.scrollView.setVisibility(0);
        this.giftNameTv.setText(this.giftPackageDataInfoBean.getGift_package_title());
        this.saveCodeContent.setText(this.giftPackageDataInfoBean.getGift_package_code());
        com.join.android.app.common.utils.l.f(this.giftIcon, R.drawable.banner_normal_icon, this.giftPackageDataInfoBean.getGift_package_pic(), com.join.android.app.common.utils.l.E(this.context));
        this.giftContent.setText(this.giftPackageDataInfoBean.getGift_package_content());
        this.giftTime.setText(com.join.mgps.Util.e0.C(this.giftPackageDataInfoBean.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.e0.C(this.giftPackageDataInfoBean.getGift_package_times_end()));
        this.giftMethod.setText(this.giftPackageDataInfoBean.getGift_package_explain());
        setSaveCodeTv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSvipGiftDialog() {
        com.join.mgps.customview.t tVar = this.mGiftDialog;
        if (tVar == null) {
            this.mGiftDialog = com.join.mgps.Util.h0.h0(this.context).e0(this.context);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mGiftDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null) {
            this.mVipDialog = com.join.mgps.Util.h0.h0(this).g0(this);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mVipDialog.show();
    }
}
