package com.join.mgps.activity;

import android.content.Context;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.TextChange;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.instead_phone_activity)
public class MyAccountInsteadPhoneActivity extends BaseActivity {
    UserInfo accountBean;
    MApplication application;
    private Context context;

    @ViewById
    EditText inputPhone;

    @ViewById
    Button insteadButn;

    @ViewById
    TextView myAccountTv;

    @ViewById
    TextView titleText;

    @AfterViews
    void afterViews() {
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        this.context = this;
        mApplication.i(this);
        this.titleText.setText("更换绑定手机号");
        this.insteadButn.setEnabled(false);
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData.getMobile().length() == 11) {
            this.myAccountTv.setText("当前绑定号码 : " + this.accountBean.getMobile().substring(0, 3) + "****" + this.accountBean.getMobile().substring(7, 11));
        }
    }

    @Click
    void backImage() {
        finish();
    }

    @TextChange
    void inputPhone() {
        if (this.inputPhone.getText().toString().length() == 11) {
            this.insteadButn.setEnabled(true);
        } else {
            this.insteadButn.setEnabled(false);
        }
    }

    @Click
    void insteadButn() {
        String string = this.inputPhone.getText().toString();
        if (string.length() != 11 || !com.join.mgps.Util.t2.j(string)) {
            com.join.mgps.Util.a3.b(this).d("手机号格式有误");
        } else if (string.equals(this.accountBean.getMobile())) {
            com.join.mgps.Util.a3.b(this).d("新手机号和旧手机号不能一致");
        } else {
            MyAccountChangePhoneActivity_.intent(this.context).a(string).start();
        }
    }
}
