package com.join.mgps.activity;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.LoginInputPassActivity_;
import com.join.mgps.dto.AccountGetBackRequest;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_getpassbyphone)
public class MyAccountGetpassByPhone extends BaseAccountActivity {
    private String MMSCode;
    MApplication application;
    private com.join.mgps.dialog.f1 dialog;
    private long lastClick;

    @ViewById
    EditText newPass;

    @ViewById
    Button okChange;
    private int pass1Size = 0;
    private int pass2Size = 0;
    private String phonenumber;

    @ViewById
    EditText reWhitePass;
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
            MyAccountGetpassByPhone.this.pass1Size = charSequence.length();
            MyAccountGetpassByPhone.this.updateButn();
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            MyAccountGetpassByPhone.this.pass2Size = charSequence.length();
            MyAccountGetpassByPhone.this.updateButn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButn() {
        if (this.pass1Size < 6 || this.pass2Size < 6) {
            this.okChange.setEnabled(false);
        } else {
            this.okChange.setEnabled(true);
        }
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.application = (MApplication) getApplication();
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.titleText.setText("设置新密码");
        this.phonenumber = getIntent().getStringExtra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA);
        this.MMSCode = getIntent().getStringExtra("MMSCode");
        this.okChange.setEnabled(false);
        this.newPass.addTextChangedListener(new a());
        this.reWhitePass.addTextChangedListener(new b());
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this).d(error_msg);
    }

    @Click
    void okChange() {
        String strTrim = this.newPass.getText().toString().trim();
        String string = this.reWhitePass.getText().toString();
        if (string.length() > 16 || string.length() < 6) {
            com.join.mgps.Util.a3.b(this).d("密码格式有误，输入6至16位字母或数字");
            return;
        }
        if (!com.join.mgps.Util.t2.i(strTrim)) {
            com.join.mgps.Util.a3.b(this).d("密码不能为空");
            return;
        }
        if (!com.join.mgps.Util.t2.i(string)) {
            com.join.mgps.Util.a3.b(this).d("再次输入的密码不能为空");
            return;
        }
        if (!strTrim.equals(string)) {
            com.join.mgps.Util.a3.b(this).d("两次输入密码不一致");
        } else {
            if (System.currentTimeMillis() - this.lastClick <= 2000) {
                return;
            }
            this.lastClick = System.currentTimeMillis();
            updatePass(strTrim);
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
    void showLoding() {
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        this.dialog.dismiss();
    }

    @UiThread
    void success() {
        com.join.mgps.Util.a3.b(this).d("重置密码成功");
        this.application.j();
        finish();
        startActivity(new Intent(this, (Class<?>) MyAccountLoginActivity_.class));
    }

    @Background
    void updatePass(String password) {
        int i10;
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            AccountGetBackRequest accountGetBackRequest = new AccountGetBackRequest();
            accountGetBackRequest.setMobile(this.phonenumber);
            accountGetBackRequest.setPassword(password);
            try {
                i10 = Integer.parseInt(this.MMSCode.trim());
            } catch (Exception e10) {
                e10.printStackTrace();
                i10 = 0;
            }
            accountGetBackRequest.setCode(i10 + "");
            accountGetBackRequest.setSign(com.join.mgps.Util.k2.g(accountGetBackRequest));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanA0 = this.rpcAccountClient.a0(accountGetBackRequest.getParams());
            if (accountResultMainBeanA0 == null || accountResultMainBeanA0.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultMainBeanA0.getData().is_success()) {
                success();
            } else {
                error(accountResultMainBeanA0.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e11) {
            e11.printStackTrace();
            showLodingDismis();
        }
    }
}
