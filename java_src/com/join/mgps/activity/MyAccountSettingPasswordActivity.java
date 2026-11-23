package com.join.mgps.activity;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ModifyPasswordRequestBean;
import com.join.mgps.dto.SetPasswordRequestBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.setting_password_activity)
public class MyAccountSettingPasswordActivity extends BaseActivity {
    UserInfo accountBean;
    private Context context;

    @ViewById
    LinearLayout layoutTop;

    @ViewById
    EditText password;

    @ViewById
    EditText recentPassword;
    com.join.mgps.rpc.b recommendClient;

    @ViewById
    EditText repeatPassword;

    @ViewById
    Button settingButn;

    @ViewById
    TextView titleText;

    @AfterViews
    void afterViews() {
        this.recommendClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData.getPwdSetUp() == 0) {
            this.titleText.setText("设置密码");
            this.layoutTop.setVisibility(8);
        } else {
            this.titleText.setText("修改密码");
            this.layoutTop.setVisibility(0);
        }
    }

    @Click
    void backImage() {
        finish();
    }

    @UiThread
    void finishActivity() {
        this.accountBean = this.accountBean.toBuilder().setPwdSetUp(1).build();
        AccountUtil_.getInstance_(this.context).saveAccountData(this.accountBean, this.context);
        finish();
    }

    @Background
    void modifyPass(String old_password, String new_password) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络，请先检查网络。");
            return;
        }
        try {
            ModifyPasswordRequestBean modifyPasswordRequestBean = new ModifyPasswordRequestBean();
            modifyPasswordRequestBean.setToken(this.accountBean.getToken());
            modifyPasswordRequestBean.setDevice_id("");
            modifyPasswordRequestBean.setNew_passwd(new_password);
            modifyPasswordRequestBean.setOld_passwd(old_password);
            modifyPasswordRequestBean.setUid(this.accountBean.getUid());
            modifyPasswordRequestBean.setSign(com.join.mgps.Util.k2.g(modifyPasswordRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanR = this.recommendClient.r(modifyPasswordRequestBean.getParams());
            if (accountResultMainBeanR == null || accountResultMainBeanR.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (accountResultMainBeanR.getData().is_success()) {
                showToast("修改密码成功");
                finishActivity();
            } else {
                showToast(accountResultMainBeanR.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("连接失败，请稍后再试。");
        }
    }

    @Background
    void modifySetPass(String password) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络，请先检查网络。");
            return;
        }
        try {
            SetPasswordRequestBean setPasswordRequestBean = new SetPasswordRequestBean();
            setPasswordRequestBean.setToken(this.accountBean.getToken());
            setPasswordRequestBean.setDevice_id("");
            setPasswordRequestBean.setNew_passwd(password);
            setPasswordRequestBean.setUid(this.accountBean.getUid());
            setPasswordRequestBean.setSign(com.join.mgps.Util.k2.g(setPasswordRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanK = this.recommendClient.K(setPasswordRequestBean.getParams());
            if (accountResultMainBeanK == null || accountResultMainBeanK.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (accountResultMainBeanK.getData().is_success()) {
                showToast("设置私密成功");
                finishActivity();
            } else {
                showToast(accountResultMainBeanK.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("连接失败，请稍后再试。");
        }
    }

    @Click
    void settingButn() {
        if (this.accountBean.getPwdSetUp() == 0) {
            String string = this.password.getText().toString();
            if (string.length() < 6 || string.length() > 16) {
                com.join.mgps.Util.a3.b(this).d("密码格式有误，输入6至16位字母或数字");
                return;
            } else if (string.equals(this.repeatPassword.getText().toString())) {
                modifySetPass(string);
                return;
            } else {
                com.join.mgps.Util.a3.b(this.context).d("两次输入不同哦，请重新输入");
                return;
            }
        }
        String string2 = this.password.getText().toString();
        String string3 = this.recentPassword.getText().toString();
        String string4 = this.repeatPassword.getText().toString();
        if (string3.length() == 0) {
            com.join.mgps.Util.a3.b(this).d("请输入原密码");
            return;
        }
        if (string2.length() == 0) {
            com.join.mgps.Util.a3.b(this).d("请输入新密码");
            return;
        }
        if (string4.length() == 0) {
            com.join.mgps.Util.a3.b(this).d("请确认新密码");
            return;
        }
        if (string3.equals(string2)) {
            com.join.mgps.Util.a3.b(this).d("新密码不能和原密码一致");
            return;
        }
        if (string2.length() < 6 || string2.length() > 16) {
            com.join.mgps.Util.a3.b(this).d("密码格式有误，输入6至16位字母或数字");
        } else if (string2.equals(string4)) {
            modifyPass(string3, string2);
        } else {
            com.join.mgps.Util.a3.b(this.context).d("两次输入不同哦，请重新输入");
        }
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
    }
}
