package com.join.mgps.activity;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_forgetpass_layout)
public class MyAccountForgetPassActivity extends BaseAccountActivity {
    MApplication application;
    private com.join.mgps.dialog.f1 dialog;

    @ViewById
    Button getpassByPhoneNumber;
    private long lastClick;
    private String phoneNumber;

    @ViewById
    EditText phoneText;
    com.join.mgps.rpc.b rpcAccountClient;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (charSequence.length() == 11) {
                MyAccountForgetPassActivity.this.getpassByPhoneNumber.setEnabled(true);
            } else {
                MyAccountForgetPassActivity.this.getpassByPhoneNumber.setEnabled(false);
            }
        }
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        setTitle("短信找回密码");
        this.getpassByPhoneNumber.setEnabled(false);
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.phoneText.addTextChangedListener(new a());
    }

    @Click
    void backImage() {
        finish();
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this).d(error_msg);
    }

    @Click
    void getpassByPhoneNumber() {
        String strTrim = this.phoneText.getText().toString().trim();
        this.phoneNumber = strTrim;
        if (!com.join.mgps.Util.t2.j(strTrim) || this.phoneNumber.length() != 11) {
            com.join.mgps.Util.a3.b(this).d("手机号格式有误，请重新输入");
        } else {
            if (System.currentTimeMillis() - this.lastClick <= 2000) {
                return;
            }
            this.lastClick = System.currentTimeMillis();
            resendgetCode();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @UiThread
    void reGetCodeSuccess() {
        Intent intent = new Intent(this, (Class<?>) MyAccountMMSCodeGetpassbackFinish_.class);
        intent.putExtra("phonenumber", this.phoneNumber);
        startActivity(intent);
    }

    @Background
    void resendgetCode() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.phoneNumber);
            mMSRequesBean.setType(MMSRequesBean.TYPE_FORGOT);
            mMSRequesBean.setSign(com.join.mgps.Util.k2.g(mMSRequesBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanE = this.rpcAccountClient.e(mMSRequesBean.getParams());
            if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 0) {
                if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 601) {
                    error("连接失败，请稍后再试。");
                } else {
                    AccountTokenSuccess data = accountResultMainBeanE.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后再试...");
                    }
                }
            } else if (accountResultMainBeanE.getData().is_success()) {
                reGetCodeSuccess();
            } else {
                error(accountResultMainBeanE.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }

    @UiThread
    void showLoding() {
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        this.dialog.dismiss();
    }
}
