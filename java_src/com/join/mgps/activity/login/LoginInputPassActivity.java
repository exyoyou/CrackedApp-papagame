package com.join.mgps.activity.login;

import android.content.ClipboardManager;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.CheckInviteDialogActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.AccountGetBackRequest;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.h;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.MessageMobileRegisterRequest;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.MessageSmsCodeRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.ThirdPartyLoginProto;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.UserLoginRequestParameters;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.wufunlogin_inputpass_layout)
public class LoginInputPassActivity extends AppCompatActivity {
    MApplication application;

    @ViewById
    TextView bindmessage;

    @ViewById
    ImageView clear;

    @ViewById
    RelativeLayout codeLayout;
    Context context;
    private f1 dialog;

    @ViewById
    TextView fergetPass;

    @Extra
    int from;

    @Extra
    String gameId;

    @ViewById
    TextView getCode;

    @ViewById
    EditText inputCode;

    @ViewById
    EditText inputPass;

    @Extra
    boolean isForcedLogin;
    boolean isOnekeyLogin;

    @Extra
    boolean isSetPwd;

    @ViewById
    TextView loginMessage;

    @ViewById
    RelativeLayout passLayout;

    @ViewById
    View permissLayout;

    @Extra
    String phoneNumber;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;

    @ViewById
    CheckBox seePass;

    @ViewById
    TextView sendLogin;

    @Extra
    AccountRegisterThirdwaiRequestBean thirdRequestbean;
    TimeCount time;

    @ViewById
    TextView titleMessage;
    int passLenth = 0;
    int codeLenth = 0;
    long clickTime = 0;
    boolean showDialog = true;
    private Uri SMS_INBOX = Uri.parse("content://sms/");

    class SmsObserver extends ContentObserver {
        public SmsObserver(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            LoginInputPassActivity.this.getSmsFromPhone();
        }
    }

    class TimeCount extends CountDownTimer {
        public TimeCount(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            LoginInputPassActivity.this.getCode.setText("重新获取");
            LoginInputPassActivity.this.getCode.setEnabled(true);
            LoginInputPassActivity.this.getCode.setTextColor(Color.parseColor("#408DFF"));
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            LoginInputPassActivity.this.getCode.setEnabled(false);
            LoginInputPassActivity.this.getCode.setTextColor(Color.parseColor("#494949"));
            LoginInputPassActivity.this.getCode.setText("" + (millisUntilFinished / 1000) + "S后重新获取");
        }
    }

    private boolean checkFastClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.clickTime <= 300) {
            return true;
        }
        this.clickTime = jCurrentTimeMillis;
        return false;
    }

    private void doHWToastCovered() {
        if (Build.MANUFACTURER.equalsIgnoreCase("huawei")) {
            View viewFindFocus = getWindow().getDecorView().findFocus();
            if (viewFindFocus instanceof EditText) {
                int inputType = ((EditText) viewFindFocus).getInputType();
                if (inputType == 128 || inputType == 144 || inputType == 129) {
                    r7.a.b(this.inputPass);
                }
            }
        }
    }

    private Ext getExt(Ext ext) {
        if (ext == null) {
            ext = new Ext();
        }
        ext.setFrom(this.isForcedLogin ? "1" : "2");
        return ext;
    }

    public static boolean isPhoneNumber(String input) {
        Pattern.compile("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}");
        return Pattern.matches("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}", input);
    }

    private boolean passwordCheck(String passwordT) {
        if (passwordT.length() <= 16 && passwordT.length() >= 6) {
            return t2.i(passwordT) && t2.i(passwordT);
        }
        a3.b(this).d("密码格式有误，输入6至16位字母或数字");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoginButn() {
        int i10 = this.from;
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            int i11 = this.passLenth;
            if (i11 < 6 || this.codeLenth != 6 || i11 > 16) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        } else if (i10 == 4 || i10 == 6) {
            if (this.passLenth == 0) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        } else if (i10 == 5) {
            if (this.codeLenth != 11) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        } else if (i10 == 8) {
            if (this.codeLenth < 4) {
                this.sendLogin.setEnabled(false);
            } else {
                this.sendLogin.setEnabled(true);
            }
        }
        if (this.passLenth == 0) {
            this.clear.setVisibility(4);
            this.seePass.setVisibility(4);
        } else {
            this.clear.setVisibility(0);
            this.seePass.setVisibility(0);
        }
    }

    @AfterViews
    void afterview() {
        this.context = this;
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.sendLogin.setEnabled(false);
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.dialog = h0.h0(this).x(this);
        int i10 = this.from;
        if (i10 == 4 || i10 == 6 || i10 == 7) {
            this.titleMessage.setText("账号登录");
            this.loginMessage.setText("当前登录：" + this.phoneNumber);
            this.codeLayout.setVisibility(8);
            this.fergetPass.setVisibility(0);
            this.fergetPass.setText(Html.fromHtml("忘记了？<font color=#408DFF>找回密码</font>"), TextView.BufferType.SPANNABLE);
            if (this.from != 7) {
                showKeyborad(this.inputPass);
            }
            this.sendLogin.setText("登录");
            if (this.from == 4 && !this.isSetPwd) {
                resendgetCode(MMSRequesBean.TYPE_FORGOT);
                this.titleMessage.setText("设置密码");
                this.fergetPass.setVisibility(8);
                this.codeLayout.setVisibility(0);
                this.loginMessage.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
                showKeyborad(this.inputCode);
                this.isOnekeyLogin = true;
                this.from = 3;
            }
            if (this.from == 7) {
                this.titleMessage.setText("账号绑定");
                this.passLayout.setVisibility(8);
                this.fergetPass.setVisibility(8);
                this.codeLayout.setVisibility(0);
                this.loginMessage.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
                this.from = 8;
            } else {
                t.l(this.context).R1(Event.loginAuthPageShow, new Ext());
            }
        } else if (i10 == 1 || i10 == 2) {
            this.titleMessage.setText("设置密码");
            if (isPhoneNumber(this.phoneNumber)) {
                this.loginMessage.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
            } else {
                this.loginMessage.setVisibility(4);
            }
            this.fergetPass.setVisibility(8);
            showKeyborad(this.inputCode);
            this.sendLogin.setText("登录");
        } else if (i10 == 5) {
            this.passLayout.setVisibility(8);
            this.getCode.setVisibility(8);
            this.inputCode.setHint("请输入手机号");
            this.titleMessage.setText("绑定手机号");
            this.bindmessage.setVisibility(0);
            this.permissLayout.setVisibility(0);
            this.loginMessage.setVisibility(8);
            this.sendLogin.setText("获取短信验证码");
            showKeyborad(this.inputCode);
        } else if (i10 == 3) {
            this.loginMessage.setText("验证码已通过短信发送至" + this.phoneNumber + "\n密码请输入6至16位字母或数字。");
            this.titleMessage.setText("忘记密码");
            showKeyborad(this.inputCode);
        } else if (i10 == 1 || i10 == 3) {
            this.titleMessage.setText("忘记密码");
            showKeyborad(this.inputCode);
        }
        if (this.from == 1) {
            getCode();
        }
        int i11 = this.from;
        if (i11 == 1 || i11 == 3 || i11 == 5 || i11 == 2 || i11 == 7 || i11 == 8) {
            TimeCount timeCount = new TimeCount(60000L, 1000L);
            this.time = timeCount;
            timeCount.start();
        }
        int i12 = this.from;
        if (i12 == 1 || i12 == 2 || this.isOnekeyLogin) {
            t.l(this.context).R1(Event.accountRegisterShow, new Ext());
        } else if (i12 == 3) {
            t.l(this.context).R1(Event.resetPasswordShow, new Ext());
        }
        this.inputCode.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s10) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s10, int start, int before, int count) {
                LoginInputPassActivity.this.codeLenth = s10.length();
                LoginInputPassActivity.this.updateLoginButn();
            }
        });
        this.inputPass.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s10) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s10, int start, int before, int count) {
                LoginInputPassActivity.this.passLenth = s10.length();
                LoginInputPassActivity.this.updateLoginButn();
                if (start == 0 && before == count) {
                    LoginInputPassActivity loginInputPassActivity = LoginInputPassActivity.this;
                    loginInputPassActivity.inputPass.setSelection(loginInputPassActivity.passLenth);
                }
            }
        });
        com.join.mgps.Util.t.g(this.inputPass);
        this.inputPass.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
                if (actionId != 4) {
                    return false;
                }
                LoginInputPassActivity.this.sendLogin();
                return false;
            }
        });
        this.inputCode.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.4
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
                if (actionId != 5) {
                    return false;
                }
                LoginInputPassActivity loginInputPassActivity = LoginInputPassActivity.this;
                if (loginInputPassActivity.from != 5) {
                    return false;
                }
                loginInputPassActivity.sendLogin();
                return false;
            }
        });
        this.seePass.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.activity.login.LoginInputPassActivity.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    LoginInputPassActivity.this.inputPass.setInputType(144);
                } else {
                    LoginInputPassActivity.this.inputPass.setInputType(129);
                }
            }
        });
    }

    @Click
    void back() {
        r7.a.b(this.inputPass);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void bindCode() {
        try {
            if (!m.j(this)) {
                error("没有网络，请检查网络设置");
                showLodingDismis();
                return;
            }
            try {
                MessageSmsCodeRequest.SmsCodeRequestParameters.b bVarNewBuilder = MessageSmsCodeRequest.SmsCodeRequestParameters.newBuilder();
                bVarNewBuilder.setUid(0);
                bVarNewBuilder.setMobile(com.join.mgps.Util.a.e(this.phoneNumber));
                bVarNewBuilder.setSourceType(SourceType.PLATFORM);
                bVarNewBuilder.setContentType(ContentType.MOBILE_REG);
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put("mobile", bVarNewBuilder.getMobile());
                map.put("sourceType", bVarNewBuilder.getSourceType().name());
                map.put("contentType", bVarNewBuilder.getContentType().name());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(k2.d(map));
                MessageResponseStatus.ResponseStatusResult responseStatusResultK = this.rpcAccountClientV2.k(bVarNewBuilder.build());
                if (responseStatusResultK == null || responseStatusResultK.getError() != 200) {
                    if (responseStatusResultK == null || !t2.i(responseStatusResultK.getErrorMsg())) {
                        error("请求失败，请重试");
                    } else {
                        error(responseStatusResultK.getErrorMsg());
                    }
                } else if (!responseStatusResultK.getStatus()) {
                    error(responseStatusResultK.getErrorMsg());
                } else if (responseStatusResultK.getRegister()) {
                    LoginInputPassActivity_.intent(this.context).from(7).phoneNumber(this.phoneNumber).thirdRequestbean(this.thirdRequestbean).isForcedLogin(this.isForcedLogin).start();
                } else if (this.from == 5) {
                    LoginInputPassActivity_.intent(this.context).from(2).phoneNumber(this.phoneNumber).thirdRequestbean(this.thirdRequestbean).isForcedLogin(this.isForcedLogin).start();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    @Click
    void clear() {
        this.inputPass.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        a3.b(this).d(message);
    }

    @Click
    void fergetPass() {
        if (checkFastClick()) {
            return;
        }
        if (isPhoneNumber(this.phoneNumber)) {
            resendgetCode(MMSRequesBean.TYPE_FORGOT);
            LoginInputPassActivity_.intent(this.context).from(3).phoneNumber(this.phoneNumber).isForcedLogin(this.isForcedLogin).start();
        } else {
            doHWToastCovered();
            a3.b(this.context).d("请输入手机号码后重试！");
        }
    }

    @Click
    void getCode() {
        TimeCount timeCount = this.time;
        if (timeCount != null) {
            timeCount.start();
        }
        int i10 = this.from;
        if (i10 == 3 || i10 == 8) {
            resendgetCode(MMSRequesBean.TYPE_FORGOT);
        } else if (i10 == 5 || i10 == 2 || i10 == 1) {
            bindCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getLogin(String username, String password) {
        boolean z10;
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            UserLoginRequestParameters.b bVarNewBuilder = UserLoginRequestParameters.newBuilder();
            bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(username));
            bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(password));
            bVarNewBuilder.setAppVersion("");
            HashMap map = new HashMap();
            map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
            map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
            map.put("appVersion", "");
            bVarNewBuilder.setSign(k2.d(map));
            ResponseResult responseResultY = this.rpcAccountClientV2.y(bVarNewBuilder.build());
            if (responseResultY == null || responseResultY.getError() != 200) {
                if (responseResultY != null) {
                    error(responseResultY.getErrorMsg());
                } else {
                    error("连接失败，请稍后再试。");
                }
                z10 = true;
            } else {
                t.l(this.context).R1(Event.accountLoginSuccess, new Ext());
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(responseResultY.getData(), this);
                UtilsMy.S4(this, responseResultY.getData().getGameListPermissionList());
                loginSuccess(responseResultY.getData());
                UtilsMy.R(this);
                z10 = false;
            }
            if (z10) {
                showLodingDismis();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }

    public void getSmsFromPhone() {
        Cursor cursorQuery = getContentResolver().query(this.SMS_INBOX, new String[]{"body"}, "date >  " + (System.currentTimeMillis() - 600000), null, "date desc");
        if (cursorQuery != null && cursorQuery.moveToNext()) {
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("body"));
            if (string.contains(com.join.android.app.mgsim.wufun.b.f35536i)) {
                Matcher matcher = Pattern.compile("\\d+").matcher(string);
                while (matcher.find()) {
                    String strGroup = matcher.group();
                    if (strGroup.length() == 6) {
                        this.inputCode.setText(strGroup);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this.context).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBeanC = this.rpcAccountClient.C(linkedMultiValueMap);
        if (accountResultMainBeanC != null && accountResultMainBeanC.getError() == 0 && accountResultMainBeanC.getData().isResult()) {
            accountResultMainBeanC.getData().getMsg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void loginSuccess(UserInfo accountBean) {
        this.prefDef.singleGameShowDialog().g("");
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.copyData)) {
            ((ClipboardManager) getSystemService(com.haima.hmcp.Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(CheckInviteDialogActivity.copyData);
            CheckInviteDialogActivity.copyData = "";
        }
        showLodingDismis();
        ((CommonService_.n0) CommonService_.P2(this.context).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        IntentUtil.getInstance().checkRealNameAndIntent(this.context, accountBean, "login", this.gameId);
        this.application.j();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.showDialog = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void phoneRegin() {
        try {
            if (!m.j(this)) {
                error("没有网络，请检查网络设置");
                showLodingDismis();
                return;
            }
            try {
                MessageMobileRegisterRequest.MobileRegisterRequestParameters.b bVarNewBuilder = MessageMobileRegisterRequest.MobileRegisterRequestParameters.newBuilder();
                bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(this.phoneNumber));
                bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(this.inputPass.getText().toString()));
                bVarNewBuilder.setSmsCode(this.inputCode.getText().toString());
                bVarNewBuilder.setCodeType("mob");
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
                map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
                map.put("smsCode", bVarNewBuilder.getSmsCode());
                map.put("codeType", bVarNewBuilder.getCodeType());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(k2.d(map));
                ResponseResult responseResultP = this.rpcAccountClientV2.p(bVarNewBuilder.build());
                if (responseResultP != null && responseResultP.getData() != null) {
                    if (responseResultP.getError() == 200) {
                        UserInfo data = responseResultP.getData();
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(data, getApplicationContext());
                        loginSuccess(data);
                        UtilsMy.R(this);
                        UtilsMy.J2(this);
                        t.l(this.context).R1(Event.accountRegistertSuccess, getExt(null));
                    } else {
                        error(responseResultP.getErrorMsg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void resendgetCode(int type) {
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.phoneNumber);
            mMSRequesBean.setType(type);
            mMSRequesBean.setSign(k2.g(mMSRequesBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanE = this.rpcAccountClient.e(mMSRequesBean.getParams());
            if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 0) {
                if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 601) {
                    error("连接失败，请稍后再试。");
                } else {
                    AccountTokenSuccess data = accountResultMainBeanE.getData();
                    if (data != null) {
                        error(data.getError_msg());
                    } else {
                        error("系统繁忙，请稍后...");
                    }
                }
            } else if (!accountResultMainBeanE.getData().is_success()) {
                error(accountResultMainBeanE.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void resetPass(String password, String codex) {
        int i10;
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            AccountGetBackRequest accountGetBackRequest = new AccountGetBackRequest();
            accountGetBackRequest.setMobile(this.phoneNumber);
            accountGetBackRequest.setPassword(password);
            try {
                i10 = Integer.parseInt(codex.trim());
            } catch (Exception e10) {
                e10.printStackTrace();
                i10 = 0;
            }
            accountGetBackRequest.setCode(i10 + "");
            accountGetBackRequest.setSign(k2.g(accountGetBackRequest));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanA0 = this.rpcAccountClient.a0(accountGetBackRequest.getParams());
            if (accountResultMainBeanA0 == null || accountResultMainBeanA0.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultMainBeanA0.getData().is_success()) {
                success();
                if (this.isOnekeyLogin) {
                    t.l(this.context).R1(Event.accountRegistertSuccess, getExt(null));
                } else {
                    t.l(this.context).R1(Event.resetPasswordSuccess, new Ext());
                }
            } else {
                error(accountResultMainBeanA0.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e11) {
            e11.printStackTrace();
            showLodingDismis();
        }
    }

    @Click
    void sendLogin() {
        if (checkFastClick()) {
            return;
        }
        r7.a.b(this.inputPass);
        int i10 = this.from;
        if (i10 == 1) {
            String string = this.inputPass.getText().toString();
            if (!passwordCheck(string) || !Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", string)) {
                a3.b(this.context).d("密码格式有误，输入6至16位字母或数字");
                return;
            } else {
                t.l(this.context).R1(Event.accountRegisterSubmit, new Ext());
                phoneRegin();
                return;
            }
        }
        if (i10 == 2) {
            String string2 = this.inputPass.getText().toString();
            if (!passwordCheck(string2) || !Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", string2)) {
                a3.b(this.context).d("密码格式有误，输入6至16位字母或数字");
                return;
            } else {
                t.l(this.context).R1(Event.accountRegisterSubmit, new Ext());
                thirdRegin();
                return;
            }
        }
        if (i10 == 3) {
            String strTrim = this.inputCode.getText().toString().trim();
            String string3 = this.inputPass.getText().toString();
            if (!t2.i(strTrim) || !t2.j(strTrim) || strTrim.length() != 6) {
                a3.b(this).d("输入格式有误");
                return;
            }
            if (!Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", string3)) {
                a3.b(this.context).d("密码格式有误，输入6至16位字母或数字");
                return;
            } else {
                if (passwordCheck(string3)) {
                    if (this.isOnekeyLogin) {
                        t.l(this.context).R1(Event.accountRegisterSubmit, new Ext());
                    } else {
                        t.l(this.context).R1(Event.resetPasswordSubmit, new Ext());
                    }
                    resetPass(string3, strTrim);
                    return;
                }
                return;
            }
        }
        if (i10 != 6 && i10 != 4 && i10 != 8) {
            if (i10 == 5) {
                String string4 = this.inputCode.getText().toString();
                this.phoneNumber = string4;
                if (t2.i(string4.trim()) && isPhoneNumber(this.phoneNumber)) {
                    bindCode();
                    return;
                } else {
                    a3.b(this.context).d("请输入正确的手机号码");
                    return;
                }
            }
            return;
        }
        t.l(this.context).R1(Event.accountLoginSubmit, new Ext());
        if (this.from == 8) {
            thirdPartyLogin();
            return;
        }
        String string5 = this.inputPass.getText().toString();
        if (string5.length() > 16 || string5.length() < 6) {
            a3.b(this).d("密码格式有误，输入6至16位字母或数字");
        } else if (t2.i(string5)) {
            getLogin(this.phoneNumber, string5);
        }
    }

    @Click
    void shengming() {
        r7.a.b(this.inputPass);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(h.f72349j + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void showKeyborad(EditText view) {
        r7.a.c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        f1 f1Var = this.dialog;
        if (f1Var == null || f1Var.isShowing() || !this.showDialog) {
            return;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void success() {
        a3.b(this).d(this.isOnekeyLogin ? "设置密码成功" : "重置密码成功");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void thirdPartyLogin() {
        try {
            if (!m.j(this)) {
                error("没有网络，请检查网络设置");
                showLodingDismis();
                return;
            }
            try {
                ThirdPartyLoginProto.Request.b bVarNewBuilder = ThirdPartyLoginProto.Request.newBuilder();
                TheThirdPartLoginType theThirdPartLoginType = TheThirdPartLoginType.UNRECOGNIZED;
                if (this.thirdRequestbean.getType() == 1) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_QQ;
                } else if (this.thirdRequestbean.getType() == 2) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_XIN;
                } else if (this.thirdRequestbean.getType() == 3) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_BO;
                }
                bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(this.phoneNumber));
                bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(this.inputPass.getText().toString()));
                bVarNewBuilder.setUniqueId(com.join.mgps.Util.a.e(this.thirdRequestbean.getUnique_id()));
                bVarNewBuilder.setTheThirdPartLoginType(theThirdPartLoginType);
                bVarNewBuilder.setSmsCode(this.inputCode.getText().toString());
                bVarNewBuilder.setCodeType("mob");
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                bVarNewBuilder.setAppId(com.switfpass.pay.utils.e.f82770a);
                HashMap map = new HashMap();
                map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
                map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
                map.put("uniqueId", bVarNewBuilder.getUniqueId());
                map.put("theThirdPartLoginType", bVarNewBuilder.getTheThirdPartLoginType().name());
                map.put("smsCode", bVarNewBuilder.getSmsCode());
                map.put("codeType", bVarNewBuilder.getCodeType());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                map.put("appId", bVarNewBuilder.getAppId());
                bVarNewBuilder.setSign(k2.d(map));
                ResponseResult responseResultJ = this.rpcAccountClientV2.j(bVarNewBuilder.build());
                if (responseResultJ == null || responseResultJ.getError() != 200) {
                    if (responseResultJ != null) {
                        if (t2.i(responseResultJ.getErrorMsg())) {
                            error(responseResultJ.getErrorMsg());
                        } else {
                            error("登录失败，请重试");
                        }
                    }
                } else if (responseResultJ.hasData()) {
                    UserInfo data = responseResultJ.getData();
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(data, getApplicationContext());
                    loginSuccess(data);
                    UtilsMy.R(this);
                    t.l(this.context).R1(Event.thirdPartyRegisterSuccess, new Ext());
                } else {
                    error(responseResultJ.getErrorMsg());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void thirdRegin() {
        try {
            if (!m.j(this)) {
                error("没有网络，请检查网络设置");
                showLodingDismis();
                return;
            }
            try {
                MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters.b bVarNewBuilder = MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters.newBuilder();
                TheThirdPartLoginType theThirdPartLoginType = TheThirdPartLoginType.UNRECOGNIZED;
                if (this.thirdRequestbean.getType() == 1) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_QQ;
                } else if (this.thirdRequestbean.getType() == 2) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_XIN;
                } else if (this.thirdRequestbean.getType() == 3) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_BO;
                }
                bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(this.phoneNumber));
                bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(this.inputPass.getText().toString()));
                bVarNewBuilder.setUniqueId(com.join.mgps.Util.a.e(this.thirdRequestbean.getUnique_id()));
                bVarNewBuilder.setTheThirdPartLoginType(theThirdPartLoginType);
                bVarNewBuilder.setSmsCode(this.inputCode.getText().toString());
                bVarNewBuilder.setCodeType("mob");
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
                map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
                map.put("uniqueId", bVarNewBuilder.getUniqueId());
                map.put("theThirdPartLoginType", bVarNewBuilder.getTheThirdPartLoginType().name());
                map.put("smsCode", bVarNewBuilder.getSmsCode());
                map.put("codeType", bVarNewBuilder.getCodeType());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(k2.d(map));
                ResponseResult responseResultZ = this.rpcAccountClientV2.z(bVarNewBuilder.build());
                if (responseResultZ == null || responseResultZ.getError() != 200) {
                    if (responseResultZ != null) {
                        if (t2.i(responseResultZ.getErrorMsg())) {
                            error(responseResultZ.getErrorMsg());
                        } else {
                            error("登录失败，请重试");
                        }
                    }
                } else if (responseResultZ.hasData()) {
                    UserInfo data = responseResultZ.getData();
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(data, getApplicationContext());
                    loginSuccess(data);
                    UtilsMy.R(this);
                    UtilsMy.J2(this);
                    t.l(this.context).R1(Event.thirdPartyRegisterSuccess, new Ext());
                } else {
                    error(responseResultZ.getErrorMsg());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    @Click
    void xieyi() {
        r7.a.b(this.inputPass);
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(h.f72349j + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }
}
