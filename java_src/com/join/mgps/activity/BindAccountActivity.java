package com.join.mgps.activity;

import android.os.Build;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageNewUserBindMobileRequest;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.MessageSmsCodeRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_bind_account)
public class BindAccountActivity extends BaseDialogActivity {
    boolean agree = false;
    private com.join.mgps.callbacks.b bindAccountCallback;

    @ViewById
    EditText et_1;

    @ViewById
    EditText et_2;

    @ViewById
    ImageView iv_1;

    @ViewById
    ImageView iv_btn_1;

    @ViewById
    ImageView iv_clear;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.c rpcAccountClientV2;
    c time;

    @ViewById
    TextView tv_btn_1;

    @ViewById
    TextView tv_btn_2;

    @ViewById
    TextView tv_btn_3;

    @ViewById
    TextView tv_text_8;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (s10.length() == 0) {
                BindAccountActivity.this.tv_btn_2.setEnabled(false);
                BindAccountActivity.this.iv_clear.setVisibility(8);
            } else {
                BindAccountActivity.this.iv_clear.setVisibility(0);
                BindAccountActivity bindAccountActivity = BindAccountActivity.this;
                bindAccountActivity.tv_btn_2.setEnabled(com.join.mgps.Util.t2.i(bindAccountActivity.et_2.getText().toString()));
            }
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (s10.length() == 0) {
                BindAccountActivity.this.tv_btn_2.setEnabled(false);
            } else {
                BindAccountActivity bindAccountActivity = BindAccountActivity.this;
                bindAccountActivity.tv_btn_2.setEnabled(com.join.mgps.Util.t2.i(bindAccountActivity.et_1.getText().toString()));
            }
        }
    }

    class c extends CountDownTimer {
        public c(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            BindAccountActivity.this.tv_btn_1.setText("获取验证码");
            BindAccountActivity.this.tv_btn_1.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            BindAccountActivity.this.tv_btn_1.setEnabled(false);
            BindAccountActivity.this.tv_btn_1.setText("" + (millisUntilFinished / 1000) + "S");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$afterViews$0(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return false;
        }
        onSubmitClick();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindAccount$2() {
        ToastManager.show("没有网络，请检查网络设置");
        this.tv_btn_1.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindCode$1() {
        ToastManager.show("没有网络，请检查网络设置");
        this.tv_btn_1.setEnabled(true);
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.p2.v(this);
        this.tv_btn_2.setEnabled(false);
        if (Build.BRAND.toLowerCase().contains("samsung")) {
            this.et_1.setRawInputType(1);
        } else {
            this.et_1.setRawInputType(2);
        }
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback instanceof com.join.mgps.callbacks.b) {
            this.bindAccountCallback = (com.join.mgps.callbacks.b) iDialogActivityCallback;
        }
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.et_1.addTextChangedListener(new a());
        this.et_2.addTextChangedListener(new b());
        com.join.mgps.Util.t.g(this.et_1);
        this.et_1.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return this.f56873b.lambda$afterViews$0(textView, i10, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void bindAccount(String phoneNumber, String code) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f56748b.lambda$bindAccount$2();
                }
            });
            return;
        }
        try {
            MessageNewUserBindMobileRequest.NewUserBindMobileRequestParameters.b bVarNewBuilder = MessageNewUserBindMobileRequest.NewUserBindMobileRequestParameters.newBuilder();
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.prefDef.lastLoginAccount().g(phoneNumber);
            bVarNewBuilder.setMobile(phoneNumber);
            bVarNewBuilder.setSmsCode(code);
            bVarNewBuilder.setUid(accountData.getUid());
            bVarNewBuilder.setToken(accountData.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", accountData.getUid() + "");
            map.put(Constants.TOKEN, accountData.getToken());
            map.put("mobile", bVarNewBuilder.getMobile());
            map.put("smsCode", code);
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            ResponseResult responseResultI = this.rpcAccountClientV2.i(bVarNewBuilder.build());
            if (responseResultI != null && responseResultI.getError() == 200) {
                loginSuccess(responseResultI.getData());
            } else if (responseResultI == null || !com.join.mgps.Util.t2.i(responseResultI.getErrorMsg())) {
                ToastManager.show("绑定失败，请检查后重试");
            } else {
                ToastManager.show(responseResultI.getErrorMsg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void bindCode(String phoneNumber) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f56450b.lambda$bindCode$1();
                }
            });
            return;
        }
        try {
            MessageSmsCodeRequest.SmsCodeRequestParameters.b bVarNewBuilder = MessageSmsCodeRequest.SmsCodeRequestParameters.newBuilder();
            bVarNewBuilder.setUid(0);
            bVarNewBuilder.setMobile(com.join.mgps.Util.a.e(phoneNumber));
            bVarNewBuilder.setSourceType(SourceType.PLATFORM);
            bVarNewBuilder.setContentType(ContentType.BIND_MOBILE);
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", "0");
            map.put("mobile", bVarNewBuilder.getMobile());
            map.put("sourceType", bVarNewBuilder.getSourceType().name());
            map.put("contentType", bVarNewBuilder.getContentType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            updateCodeUI(this.rpcAccountClientV2.k(bVarNewBuilder.build()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loginSuccess(UserInfo result) {
        com.papa.sim.statistic.t.l(this).R1(Event.accountLoginSuccess, new Ext());
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(result, this);
        UtilsMy.S4(this, result.getGameListPermissionList());
        UtilsMy.R(this);
        UtilsMy.J2(this);
        finish();
        com.join.mgps.callbacks.b bVar = this.bindAccountCallback;
        if (bVar != null) {
            bVar.onBindSuccess(result);
        }
    }

    @Click({R.id.iv_1, R.id.tv_label_6})
    void onAgreeClick() {
        if (this.agree) {
            this.agree = false;
            this.iv_1.setImageResource(R.drawable.ic_chk_simulator_n);
        } else {
            this.agree = true;
            this.iv_1.setImageResource(R.drawable.ic_chk_simulator_h);
        }
    }

    @Click({R.id.iv_clear})
    void onClearClick() {
        this.et_1.setText("");
    }

    @Click({R.id.iv_btn_1})
    void onClose() {
        finish();
    }

    @Click({R.id.tv_btn_1})
    void onCodeClick() {
        String string = this.et_1.getText().toString();
        if (com.join.mgps.Util.t2.h(string)) {
            ToastManager.show("请输入手机号码");
        } else if (!this.agree) {
            ToastManager.show("请先阅读并同意用户协议");
        } else {
            this.tv_btn_1.setEnabled(false);
            bindCode(string);
        }
    }

    @Click({R.id.tv_btn_3})
    void onOtherLoginClick() {
        finish();
        IntentUtil.getInstance().goLogin(this);
    }

    @Click({R.id.tv_btn_2})
    void onSubmitClick() {
        String string = this.et_1.getText().toString();
        if (com.join.mgps.Util.t2.h(string)) {
            ToastManager.show("请输入手机号码");
            return;
        }
        String string2 = this.et_2.getText().toString();
        if (com.join.mgps.Util.t2.h(string2)) {
            ToastManager.show("请输入手机验证码");
        } else if (this.agree) {
            bindAccount(string, string2);
        } else {
            ToastManager.show("请先阅读并同意用户协议");
        }
    }

    @Click({R.id.tv_text_8})
    void onXYClick() {
        r7.a.b(this.et_1);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72349j + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateCodeUI(MessageResponseStatus.ResponseStatusResult result) {
        if (result != null && result.getError() == 200) {
            ToastManager.show("验证码已发送");
            c cVar = new c(60000L, 1000L);
            this.time = cVar;
            cVar.start();
        } else if (result == null || !com.join.mgps.Util.t2.i(result.getErrorMsg())) {
            ToastManager.show("请求失败，请重试");
        } else {
            ToastManager.show(result.getErrorMsg());
        }
        this.tv_btn_1.setEnabled(true);
    }
}
