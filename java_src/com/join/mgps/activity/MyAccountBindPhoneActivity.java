package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBindPhoneRequestbean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CheckBindRequestBean;
import com.join.mgps.dto.MMSRequesBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.bind_phone_activity)
public class MyAccountBindPhoneActivity extends BaseActivity {
    UserInfo accountBean;
    private String codeString;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;

    @ViewById
    TextView getCodeTv;

    @ViewById
    EditText inputCode;

    @ViewById
    EditText inputPhone;

    @ViewById
    TextView myAccountTv;
    private com.join.mgps.customview.t myDialog;

    @StringRes(resName = "net_excption")
    String netExcption;
    com.join.mgps.rpc.b recommendClient;

    @ViewById
    TextView securityLevel;

    @ViewById
    TextView securitySuggest;

    @ViewById
    Button settingButn;
    private String telString;
    c time;

    @ViewById
    TextView titleText;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity.this.bindMobile();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MyAccountBindPhoneActivity.this.myDialog == null || !MyAccountBindPhoneActivity.this.myDialog.isShowing()) {
                return;
            }
            MyAccountBindPhoneActivity.this.myDialog.dismiss();
        }
    }

    class c extends CountDownTimer {
        public c(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountBindPhoneActivity.this.getCodeTv.setText("重新获取");
            MyAccountBindPhoneActivity.this.getCodeTv.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            MyAccountBindPhoneActivity.this.getCodeTv.setEnabled(false);
            MyAccountBindPhoneActivity.this.getCodeTv.setText("重新获取(" + (millisUntilFinished / 1000) + ")");
        }
    }

    @AfterViews
    void afterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.myAccountTv.setText("账号 : " + this.accountBean.getAccount());
        this.titleText.setText("绑定手机号");
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.time = new c(60000L, 1000L);
    }

    @Click
    void backImage() {
        finish();
    }

    @Background
    void bindMobile() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(this.netExcption);
            showLodingDismis();
            return;
        }
        showLoding();
        try {
            try {
                AccountBindPhoneRequestbean accountBindPhoneRequestbean = new AccountBindPhoneRequestbean();
                accountBindPhoneRequestbean.setUid(this.accountBean.getUid());
                accountBindPhoneRequestbean.setCode(this.codeString);
                accountBindPhoneRequestbean.setMobile(this.telString);
                accountBindPhoneRequestbean.setSign(com.join.mgps.Util.k2.g(accountBindPhoneRequestbean));
                accountBindPhoneRequestbean.setToken(this.accountBean.getToken());
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanY = this.recommendClient.y(accountBindPhoneRequestbean.getParams());
                showLodingDismis();
                if (accountResultMainBeanY != null && accountResultMainBeanY.getError() == 0) {
                    if (!accountResultMainBeanY.getData().is_success()) {
                        showToast(accountResultMainBeanY.getData().getError_msg());
                        return;
                    } else {
                        showToast("绑定成功");
                        finishActivity();
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

    @Background
    void checkBindMobile() {
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
                checkBindRequestBean.setCode(this.codeString);
                checkBindRequestBean.setMobile(this.telString);
                checkBindRequestBean.setToken(this.accountBean.getToken());
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanQ = this.recommendClient.Q(checkBindRequestBean.getParams());
                if (accountResultMainBeanQ == null || accountResultMainBeanQ.getError() != 0) {
                    showToast("连接失败，请稍后再试。");
                } else if (accountResultMainBeanQ.getData().is_success()) {
                    if (com.join.mgps.Util.t2.i(accountResultMainBeanQ.getData().getError_msg())) {
                        showDialog(accountResultMainBeanQ.getData().getError_msg());
                    }
                } else if (accountResultMainBeanQ.getData().getError_code().equals("226")) {
                    bindMobile();
                } else if (com.join.mgps.Util.t2.i(accountResultMainBeanQ.getData().getError_msg())) {
                    if ("验证码错误".equals(accountResultMainBeanQ.getData().getError_msg())) {
                        showToast(accountResultMainBeanQ.getData().getError_msg());
                    } else {
                        showDialog(accountResultMainBeanQ.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    @UiThread
    void finishActivity() {
        this.accountBean = this.accountBean.toBuilder().setMobile(this.telString).build();
        AccountUtil_.getInstance_(this.context).saveAccountData(this.accountBean, this.context);
        finish();
    }

    @Click
    void getCodeTv() {
        this.telString = this.inputPhone.getText().toString();
        this.codeString = this.inputCode.getText().toString();
        resendCode();
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

    @Background
    void resendCode() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络，请先检查网络。");
            return;
        }
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.telString);
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
        this.telString = this.inputPhone.getText().toString();
        this.codeString = this.inputCode.getText().toString();
        if (this.telString.length() != 11 || !com.join.mgps.Util.t2.j(this.telString)) {
            com.join.mgps.Util.a3.b(this).d("手机号格式有误");
        } else if (this.codeString.replaceAll(" ", "").length() == 0) {
            com.join.mgps.Util.a3.b(this).d("验证码不能为空");
        } else {
            checkBindMobile();
        }
    }

    @UiThread
    void showDialog(String account) {
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

    @UiThread
    void showLoding() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || f1Var.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
    }
}
