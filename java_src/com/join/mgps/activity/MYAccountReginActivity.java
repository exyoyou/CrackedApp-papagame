package com.join.mgps.activity;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MRegisterRequesBean;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_regin_activity_layout)
public class MYAccountReginActivity extends BaseFragmentActivity {

    @ViewById
    CheckBox agreeCheckBox;
    MApplication application;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;

    @ViewById
    EditText password;

    @Extra
    AccountReginBean reginBean;

    @ViewById
    Button reginButton;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    EditText telPhone;

    @ViewById
    TextView titleText;

    @ViewById
    EditText userName;
    private int phoneSize = 0;
    private int nameSize = 0;
    private int passwordSize = 0;
    private long lastClick = 0;

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
            MYAccountReginActivity.this.passwordSize = charSequence.length();
            MYAccountReginActivity.this.setButnShow();
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
            MYAccountReginActivity.this.phoneSize = charSequence.length();
            MYAccountReginActivity.this.setButnShow();
        }
    }

    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            MYAccountReginActivity.this.nameSize = charSequence.length();
            MYAccountReginActivity.this.setButnShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButnShow() {
        if (this.phoneSize == 0 || this.passwordSize <= 5 || this.nameSize <= 0) {
            this.reginButton.setEnabled(false);
        } else {
            this.reginButton.setEnabled(true);
        }
    }

    @AfterViews
    void afterView() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.context = this;
        this.titleText.setText("手机号注册");
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.password.addTextChangedListener(new a());
        this.telPhone.addTextChangedListener(new b());
        this.userName.addTextChangedListener(new c());
    }

    @Click
    void backImage() {
        finish();
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this).d(error_msg);
    }

    @Background
    void getCode(String nickname, String telphone, String password) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            MRegisterRequesBean mRegisterRequesBean = new MRegisterRequesBean();
            mRegisterRequesBean.setMobile(telphone);
            mRegisterRequesBean.setAccount(nickname);
            mRegisterRequesBean.setSign(com.join.mgps.Util.k2.g(mRegisterRequesBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanX = this.rpcAccountClient.X(mRegisterRequesBean.getParams());
            if (accountResultMainBeanX == null || accountResultMainBeanX.getError() != 0) {
                if (accountResultMainBeanX == null || accountResultMainBeanX.getError() != 601) {
                    error("注册失败");
                } else {
                    AccountTokenSuccess data = accountResultMainBeanX.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后...");
                    }
                }
            } else if (accountResultMainBeanX.getData().is_success()) {
                loginSuccess(nickname, telphone, password);
            } else {
                error(accountResultMainBeanX.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            error("注册失败");
            showLodingDismis();
        }
    }

    @UiThread
    void loginSuccess(String nickname, String telphone, String password) {
        if (this.reginBean == null) {
            this.reginBean = new AccountReginBean();
        }
        this.reginBean.setNickname(nickname);
        this.reginBean.setMobile(telphone);
        this.reginBean.setPassword(password);
        MyAccountMMSCodeReginFinish_.intent(this).a(this.reginBean).start();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Click
    void reginButton() {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        String strTrim = this.telPhone.getText().toString().trim();
        String strTrim2 = this.password.getText().toString().trim();
        String strTrim3 = this.userName.getText().toString().trim();
        if (!Pattern.matches("^[a-zA-Z0-9_一-龥]*$", strTrim3)) {
            com.join.mgps.Util.a3.b(this).d("用户名为中文/字母/数字/下划线\n请检查后重新输入");
            return;
        }
        if (strTrim3.length() > 12 || strTrim2.length() < 1) {
            com.join.mgps.Util.a3.b(this).d("用户名为1~12个字符,请检查后重新输入");
            return;
        }
        if (strTrim3.length() == 11 && strTrim3.matches("[0-9]+")) {
            com.join.mgps.Util.a3.b(this).d("为保护你的信息安全，用户名不能类似手机号哦");
            return;
        }
        if (strTrim.length() != 11 || !com.join.mgps.Util.t2.j(strTrim)) {
            com.join.mgps.Util.a3.b(this).d("手机号格式有误");
            return;
        }
        if (strTrim2.length() < 6 || strTrim2.length() > 16) {
            com.join.mgps.Util.a3.b(this).d("密码格式有误，输入6至16位字母或数字");
        } else if (com.join.mgps.Util.t2.i(strTrim) && com.join.mgps.Util.t2.i(strTrim2) && com.join.mgps.Util.t2.i(strTrim3)) {
            getCode(strTrim3, strTrim, strTrim2);
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
