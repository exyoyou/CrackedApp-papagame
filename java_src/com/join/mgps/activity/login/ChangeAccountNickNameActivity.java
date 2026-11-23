package com.join.mgps.activity.login;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.t;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.MGChooseIconActivity_;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.rpc.impl.j;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.change_account_nickname_layout)
public class ChangeAccountNickNameActivity extends BaseAppCompatActivity {
    UserInfo accountBean;

    @ViewById
    View close;
    Context context;
    Dialog dialogLoding;

    @ViewById
    EditText nickName;

    @ViewById
    TextView nickNameBution;

    @ViewById
    SimpleDraweeView userIcon;

    private void changeNickName(final String nickname) {
        ChangeNiknameRequest changeNiknameRequest = new ChangeNiknameRequest();
        changeNiknameRequest.setDeviceId("");
        changeNiknameRequest.setMac("");
        changeNiknameRequest.setNickName(nickname);
        changeNiknameRequest.setUid(this.accountBean.getUid());
        changeNiknameRequest.setUserToken(this.accountBean.getToken());
        changeNiknameRequest.setVersion(q.n(this).z() + "_" + q.n(this).A());
        j.b().a().b(changeNiknameRequest).enqueue(new Callback<LoginResultMain<AccountresultData>>() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginResultMain<AccountresultData>> call, Throwable t10) {
                ChangeAccountNickNameActivity.this.dialogLoding.dismiss();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginResultMain<AccountresultData>> call, Response<LoginResultMain<AccountresultData>> response) {
                if (response == null || response.body() == null) {
                    ChangeAccountNickNameActivity.this.error("数据异常");
                } else {
                    LoginResultMain<AccountresultData> loginResultMainBody = response.body();
                    if (loginResultMainBody != null && loginResultMainBody.getError() == 0 && loginResultMainBody.getData() != null && loginResultMainBody.getData().isIs_success()) {
                        ChangeAccountNickNameActivity changeAccountNickNameActivity = ChangeAccountNickNameActivity.this;
                        changeAccountNickNameActivity.accountBean = changeAccountNickNameActivity.accountBean.toBuilder().setNickname(nickname).build();
                        AccountUtil_ instance_ = AccountUtil_.getInstance_(ChangeAccountNickNameActivity.this.context);
                        ChangeAccountNickNameActivity changeAccountNickNameActivity2 = ChangeAccountNickNameActivity.this;
                        instance_.saveAccountData(changeAccountNickNameActivity2.accountBean, changeAccountNickNameActivity2.context);
                        ChangeAccountNickNameActivity.this.finish();
                    } else if (loginResultMainBody.getError() != 0) {
                        ChangeAccountNickNameActivity.this.error(loginResultMainBody.getMsg());
                    } else if (loginResultMainBody.getData() != null) {
                        ChangeAccountNickNameActivity.this.error(loginResultMainBody.getData().getError_msg());
                    }
                }
                ChangeAccountNickNameActivity.this.dialogLoding.dismiss();
            }
        });
    }

    private int getChineseCount(String str) {
        Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
        int i10 = 0;
        while (matcher.find()) {
            for (int i11 = 0; i11 <= matcher.groupCount(); i11++) {
                i10++;
            }
        }
        return i10;
    }

    private int getStringLength(String s10) {
        if (t2.h(s10)) {
            return 0;
        }
        return s10.length() + getChineseCount(s10);
    }

    private boolean matchStringLength(String s10, int min, int max) {
        int stringLength = getStringLength(s10);
        return stringLength >= min && stringLength <= max;
    }

    @AfterViews
    void afterview() {
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.dialogLoding = h0.h0(this).x(this);
        showFinishPage(this.accountBean);
        this.context = this;
        this.nickName.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.ChangeAccountNickNameActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                if (charSequence.length() > 0) {
                    ChangeAccountNickNameActivity.this.nickNameBution.setEnabled(true);
                } else {
                    ChangeAccountNickNameActivity.this.nickNameBution.setEnabled(false);
                }
            }
        });
        t.g(this.nickName);
        com.papa.sim.statistic.t.l(this.context).R1(Event.showNicknameEditPage, new Ext());
    }

    @Click
    void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        a3.b(this).d(message);
    }

    @Click
    void nickNameBution() {
        String string = this.nickName.getText().toString();
        if (!matchStringLength(string, 1, 20)) {
            error("昵称格式有误，输入1至24位字母或数字或汉字");
        } else {
            if (string.equals(this.accountBean.getAccount())) {
                error("昵称不能和账号相同");
                return;
            }
            com.papa.sim.statistic.t.l(this.context).R1(Event.submitNewNickname, new Ext());
            this.dialogLoding.show();
            changeNickName(string);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 10001 && resultCode == 10001) {
            l.u(this.userIcon, AccountUtil_.getInstance_(this).getAccountData().getAvatarSrc());
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Dialog dialog = this.dialogLoding;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        l.u(this.userIcon, accountData.getAvatarSrc());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFinishPage(UserInfo accountBean) {
        if (accountBean.getAvatarSrc().startsWith("http")) {
            l.d(this.userIcon, R.drawable.unloginstatus, accountBean.getAvatarSrc());
        } else {
            l.u(this.userIcon, accountBean.getAvatarSrc());
        }
        this.nickName.setText(accountBean.getNickname());
        EditText editText = this.nickName;
        editText.setSelection(editText.getText().toString().length());
        showKeyborad(this.nickName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void showKeyborad(EditText commentEditText) {
        commentEditText.setFocusable(true);
        commentEditText.setFocusableInTouchMode(true);
        commentEditText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    @Click
    void userIcon() {
        MGChooseIconActivity_.intent(this).a(1).startForResult(10001);
    }
}
