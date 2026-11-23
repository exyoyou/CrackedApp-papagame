package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountRebindPhoneRequestbean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CheckBindRequestBean;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.TextChange;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.change_phone_activity)
public class MyAccountChangePhoneActivity extends BaseActivity {
    UserInfo accountBean;
    MApplication application;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;

    @ViewById
    TextView getCodeTv;
    private boolean isChangeBefore = true;

    @ViewById
    TextView myAccountTv;
    private com.join.mgps.customview.t myDialog;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    EditText newInputCode;

    @ViewById
    TextView newMessageTv;

    @Extra
    String newMobile;

    @ViewById
    EditText oldInputCode;

    @ViewById
    TextView oldMessageTv;
    com.join.mgps.rpc.b recommendClient;

    @ViewById
    Button settingButn;
    c time;

    @ViewById
    TextView titleText;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity.this.rebindCode();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MyAccountChangePhoneActivity.this.myDialog == null || !MyAccountChangePhoneActivity.this.myDialog.isShowing()) {
                return;
            }
            MyAccountChangePhoneActivity.this.myDialog.dismiss();
        }
    }

    class c extends CountDownTimer {
        public c(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountChangePhoneActivity.this.getCodeTv.setText("重新获取");
            MyAccountChangePhoneActivity.this.getCodeTv.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            MyAccountChangePhoneActivity.this.getCodeTv.setEnabled(false);
            MyAccountChangePhoneActivity.this.getCodeTv.setText("重新获取(" + (millisUntilFinished / 1000) + ")");
        }
    }

    @AfterViews
    void afterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        this.context = this;
        mApplication.i(this);
        this.titleText.setText("更换绑定手机号");
        this.time = new c(60000L, 1000L);
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.myAccountTv.setText("账号:" + this.accountBean.getNickname());
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        showContent();
        resendCode(this.accountBean.getMobile());
    }

    @Click
    void backImage() {
        if (this.isChangeBefore) {
            finish();
        } else {
            this.isChangeBefore = true;
            showContent();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkBindMobile() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(this.netExcption);
            showLodingDismis();
            return;
        }
        showLoding();
        try {
            try {
                CheckBindRequestBean checkBindRequestBean = new CheckBindRequestBean();
                checkBindRequestBean.setUid(this.accountBean.getUid());
                checkBindRequestBean.setCode(this.newInputCode.getText().toString());
                checkBindRequestBean.setMobile(this.newMobile);
                checkBindRequestBean.setToken(this.accountBean.getToken());
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanQ = this.recommendClient.Q(checkBindRequestBean.getParams());
                showLodingDismis();
                if (accountResultMainBeanQ != null && accountResultMainBeanQ.getError() == 0) {
                    if (accountResultMainBeanQ.getData().is_success()) {
                        if (com.join.mgps.Util.t2.i(accountResultMainBeanQ.getData().getError_msg())) {
                            showDialog(accountResultMainBeanQ.getData().getError_msg());
                            return;
                        }
                        return;
                    } else if (accountResultMainBeanQ.getData().getError_code().equals("226")) {
                        rebindCode();
                        return;
                    } else {
                        if (com.join.mgps.Util.t2.i(accountResultMainBeanQ.getData().getError_msg())) {
                            if ("验证码错误".equals(accountResultMainBeanQ.getData().getError_msg())) {
                                showToast("验证码错误");
                                return;
                            } else {
                                showDialog(accountResultMainBeanQ.getData().getError_msg());
                                return;
                            }
                        }
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingDismis();
            }
            showToast("连接失败，请稍后再试。");
        } catch (Throwable th) {
            showLodingDismis();
            showToast("连接失败，请稍后再试。");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkReBindMobile() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(this.netExcption);
            showLodingDismis();
            return;
        }
        showLoding();
        try {
            try {
                CheckBindRequestBean checkBindRequestBean = new CheckBindRequestBean();
                checkBindRequestBean.setUid(this.accountBean.getUid());
                checkBindRequestBean.setCode(this.newInputCode.getText().toString());
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanS = this.recommendClient.s(checkBindRequestBean.getParamsv2());
                showLodingDismis();
                if (accountResultMainBeanS != null && accountResultMainBeanS.getError() == 0) {
                    if (accountResultMainBeanS.getData().is_success()) {
                        this.isChangeBefore = false;
                        showContent();
                        return;
                    } else {
                        if (com.join.mgps.Util.t2.i(accountResultMainBeanS.getData().getError_msg())) {
                            String error_msg = accountResultMainBeanS.getData().getError_msg();
                            if ("验证码错误".equals(error_msg)) {
                                showToast("验证码错误");
                                return;
                            } else {
                                showDialog(error_msg);
                                return;
                            }
                        }
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingDismis();
            }
            showToast("连接失败，请稍后再试。");
        } catch (Throwable th) {
            showLodingDismis();
            showToast("连接失败，请稍后再试。");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSendCode() {
        int i10;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            AccountMMSCheckCodebean accountMMSCheckCodebean = new AccountMMSCheckCodebean();
            accountMMSCheckCodebean.setMobile(this.accountBean.getMobile());
            try {
                i10 = Integer.parseInt(this.oldInputCode.getText().toString());
            } catch (Exception e10) {
                e10.printStackTrace();
                i10 = 0;
            }
            accountMMSCheckCodebean.setCode(i10);
            accountMMSCheckCodebean.setSign(com.join.mgps.Util.k2.g(accountMMSCheckCodebean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanD = this.recommendClient.d(accountMMSCheckCodebean.getParams());
            if (accountResultMainBeanD == null || accountResultMainBeanD.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (accountResultMainBeanD.getData().is_success()) {
                this.isChangeBefore = false;
                showContent();
            } else if (com.join.mgps.Util.t2.i(accountResultMainBeanD.getData().getError_msg())) {
                String error_msg = accountResultMainBeanD.getData().getError_msg();
                if ("验证码错误".equals(error_msg)) {
                    showToast("验证码错误");
                } else {
                    showDialog(error_msg);
                }
            }
            showLodingDismis();
        } catch (Exception e11) {
            e11.printStackTrace();
            showToast("连接失败，请稍后再试。");
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishActivity() {
        this.accountBean = this.accountBean.toBuilder().setMobile(this.newMobile).build();
        AccountUtil_.getInstance_(this.context).saveAccountData(this.accountBean, this.context);
        this.application.j();
    }

    @Click
    void getCodeTv() {
        if (this.isChangeBefore) {
            resendCode(this.accountBean.getMobile());
        } else {
            this.isChangeBefore = true;
            resendCode(this.newMobile);
        }
    }

    @TextChange
    void newInputCode() {
        if (this.newInputCode.getText().toString().length() <= 0 || this.isChangeBefore) {
            this.settingButn.setEnabled(false);
        } else {
            this.settingButn.setEnabled(true);
        }
    }

    @TextChange
    void oldInputCode() {
        if (this.oldInputCode.getText().toString().length() <= 0 || !this.isChangeBefore) {
            this.settingButn.setEnabled(false);
        } else {
            this.settingButn.setEnabled(true);
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.dialog.dismiss();
        }
        com.join.mgps.customview.t tVar = this.myDialog;
        if (tVar != null && tVar.isShowing()) {
            this.myDialog.dismiss();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        if (this.isChangeBefore) {
            finish();
        } else {
            this.isChangeBefore = true;
            showContent();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void rebindCode() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(this.netExcption);
            return;
        }
        try {
            AccountRebindPhoneRequestbean accountRebindPhoneRequestbean = new AccountRebindPhoneRequestbean();
            accountRebindPhoneRequestbean.setNew_code(this.newInputCode.getText().toString());
            accountRebindPhoneRequestbean.setOld_code(this.oldInputCode.getText().toString());
            accountRebindPhoneRequestbean.setNew_mobile(this.newMobile);
            accountRebindPhoneRequestbean.setToken(this.accountBean.getToken());
            accountRebindPhoneRequestbean.setUid(this.accountBean.getUid());
            UploadResultMainBean<AccountTokenSuccess> uploadResultMainBeanP = this.recommendClient.p(accountRebindPhoneRequestbean.getParams());
            if (uploadResultMainBeanP == null || uploadResultMainBeanP.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (uploadResultMainBeanP.getData().is_success()) {
                showToast("修改绑定成功");
                finishActivity();
            } else {
                showToast(uploadResultMainBeanP.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("连接失败，请稍后再试。");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void resendCode(String mobile) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(this.netExcption);
            return;
        }
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(mobile);
            mMSRequesBean.setType(MMSRequesBean.TYPE_BIND);
            mMSRequesBean.setSign(com.join.mgps.Util.k2.g(mMSRequesBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanE = this.recommendClient.e(mMSRequesBean.getParams());
            if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (accountResultMainBeanE.getData().is_success()) {
                this.time.start();
                showToast("获取验证码成功");
            } else {
                showToast(accountResultMainBeanE.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("连接失败，请稍后再试。");
        }
    }

    @Click
    void settingButn() {
        if (this.isChangeBefore) {
            if (com.join.mgps.Util.t2.i(this.oldInputCode.getText().toString())) {
                checkSendCode();
                return;
            } else {
                showToast("请输入验证码");
                return;
            }
        }
        if (com.join.mgps.Util.t2.i(this.newInputCode.getText().toString())) {
            checkBindMobile();
        } else {
            showToast("请输入验证码");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showContent() {
        this.getCodeTv.setText("重新获取");
        if (this.isChangeBefore) {
            this.newMessageTv.setVisibility(8);
            this.oldMessageTv.setVisibility(0);
            this.newInputCode.setVisibility(8);
            this.oldInputCode.setVisibility(0);
            String mobile = this.accountBean.getMobile();
            if (com.join.mgps.Util.t2.i(mobile) && mobile.length() == 11) {
                this.oldMessageTv.setText("已向原号码" + this.accountBean.getMobile().substring(0, 3) + "****" + this.accountBean.getMobile().substring(7, 11) + "发送一条验证消息");
            }
            if (this.oldInputCode.getText().toString().length() > 0) {
                this.settingButn.setEnabled(true);
                return;
            } else {
                this.settingButn.setEnabled(false);
                return;
            }
        }
        this.newMessageTv.setVisibility(0);
        this.oldMessageTv.setVisibility(8);
        this.newInputCode.setVisibility(0);
        this.oldInputCode.setVisibility(8);
        this.newInputCode.setText("");
        String str = this.newMobile;
        if (com.join.mgps.Util.t2.i(str) && str.length() == 11) {
            this.newMessageTv.setText("已向新号码" + this.newMobile.substring(0, 3) + "****" + this.newMobile.substring(7, 11) + "发送一条验证消息");
        }
        if (this.newInputCode.getText().toString().length() > 0) {
            this.settingButn.setEnabled(true);
        } else {
            this.settingButn.setEnabled(false);
        }
        resendCode(this.newMobile);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog(String account) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText("该手机号已与账号“" + account + "”绑定，是否解除绑定关系？");
        textView3.setText("*绑定成功后将发送账号到你的手机");
        button2.setText("解除绑定");
        button.setText("取消");
        button2.setOnClickListener(new a());
        button.setOnClickListener(new b());
        com.join.mgps.customview.t tVar2 = this.myDialog;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.myDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || f1Var.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
    }
}
