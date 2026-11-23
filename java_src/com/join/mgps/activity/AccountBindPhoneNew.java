package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.dto.AccountAnonymousReginRequest;
import com.join.mgps.dto.AccountChangeNickNameRequest;
import com.join.mgps.dto.AccountCheckReginCodeRequest;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.wufan.user.service.protobuf.MessageMobileRegisterRequest;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.MessageSmsCodeRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.ContentType;
import com.wufan.user.service.protobuf.enumeration.SourceType;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.HashMap;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.bind_phone_activity_new)
public class AccountBindPhoneNew extends BaseAccountActivity {
    UserInfo accountBean;
    AccountAnonymousReginRequest accountBeanRequest;
    UserInfo accountpre;

    @ViewById
    LinearLayout changeNickNameLayout;
    com.join.mgps.rpc.b client;
    com.join.mgps.rpc.c clientV2;

    @ViewById
    EditText code;

    @ViewById
    TextView codeTime;
    Dialog dialogLoding;

    @ViewById
    LinearLayout editPhone;

    @Extra
    int from;

    @ViewById
    TextView hintPhone;

    @ViewById
    TextView nextStep;

    @ViewById
    TextView nextStep2;

    @ViewById
    EditText nickName;

    @ViewById
    TextView nickNameBution;

    @ViewById
    EditText password;

    @ViewById
    EditText phoneNumber;

    @ViewById
    TextView phoneShow;

    @ViewById
    LinearLayout setPassLayout;

    @Extra
    AccountRegisterThirdwaiRequestBean thirdRequestbean;

    @ViewById
    SimpleDraweeView userIcon;
    int passlenth = 0;
    int codelenth = 0;
    boolean anonymousAccount = false;
    int timeDown = 60;
    private Handler handler = new f();

    class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean b10) {
            if (b10) {
                AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
                accountBindPhoneNew.showKeyborad(accountBindPhoneNew.phoneNumber);
            }
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
            int length = charSequence.length();
            if (length > 0) {
                AccountBindPhoneNew.this.hintPhone.setVisibility(0);
            } else {
                AccountBindPhoneNew.this.hintPhone.setVisibility(8);
            }
            if (length == 11) {
                AccountBindPhoneNew.this.nextStep.setEnabled(true);
            } else {
                AccountBindPhoneNew.this.nextStep.setEnabled(false);
            }
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
            AccountBindPhoneNew.this.passlenth = charSequence.length();
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            if (accountBindPhoneNew.passlenth <= 0 || accountBindPhoneNew.codelenth <= 0) {
                accountBindPhoneNew.nextStep2.setEnabled(false);
            } else {
                accountBindPhoneNew.nextStep2.setEnabled(true);
            }
        }
    }

    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            AccountBindPhoneNew.this.codelenth = charSequence.length();
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            if (accountBindPhoneNew.codelenth <= 0 || accountBindPhoneNew.passlenth <= 0) {
                accountBindPhoneNew.nextStep2.setEnabled(false);
            } else {
                accountBindPhoneNew.nextStep2.setEnabled(true);
            }
        }
    }

    class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (charSequence.length() > 0) {
                AccountBindPhoneNew.this.nickNameBution.setEnabled(true);
            } else {
                AccountBindPhoneNew.this.nickNameBution.setEnabled(false);
            }
        }
    }

    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            AccountBindPhoneNew accountBindPhoneNew = AccountBindPhoneNew.this;
            accountBindPhoneNew.timeDown--;
            accountBindPhoneNew.codeTime.setText(AccountBindPhoneNew.this.timeDown + "S");
            AccountBindPhoneNew accountBindPhoneNew2 = AccountBindPhoneNew.this;
            if (accountBindPhoneNew2.timeDown <= 0) {
                accountBindPhoneNew2.codeTime.setEnabled(true);
                AccountBindPhoneNew.this.codeTime.setText("重新获取");
            } else {
                accountBindPhoneNew2.handler.sendEmptyMessageDelayed(1, 1000L);
                AccountBindPhoneNew.this.codeTime.setEnabled(false);
            }
        }
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
        if (com.join.mgps.Util.t2.h(s10)) {
            return 0;
        }
        return s10.length() + getChineseCount(s10);
    }

    private boolean matchStringLength(String s10, int min, int max) {
        int stringLength = getStringLength(s10);
        return stringLength >= min && stringLength <= max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeyborad(EditText commentEditText) {
        commentEditText.setFocusable(true);
        commentEditText.setFocusableInTouchMode(true);
        commentEditText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    @AfterViews
    void afterview() {
        setTitle("绑定手机号");
        this.dialogLoding = com.join.mgps.Util.h0.h0(this).x(this);
        this.client = com.join.mgps.rpc.impl.a.c0();
        this.clientV2 = com.join.mgps.rpc.impl.b.C();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountpre = accountData;
        if (accountData != null && accountData.getAccountType() == 2) {
            this.anonymousAccount = true;
            this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        }
        this.phoneNumber.setOnFocusChangeListener(new a());
        this.phoneNumber.addTextChangedListener(new b());
        this.password.addTextChangedListener(new c());
        this.code.addTextChangedListener(new d());
        this.nickName.addTextChangedListener(new e());
        com.join.mgps.Util.t.g(this.nickName);
    }

    @Background
    void checkCode() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                AccountCheckReginCodeRequest accountCheckReginCodeRequest = new AccountCheckReginCodeRequest();
                accountCheckReginCodeRequest.setMobile(this.phoneNumber.getText().toString());
                accountCheckReginCodeRequest.setCode(this.code.getText().toString());
                accountCheckReginCodeRequest.setDevice_id("");
                accountCheckReginCodeRequest.setMac("");
                accountCheckReginCodeRequest.setSign(com.join.mgps.Util.k2.g(accountCheckReginCodeRequest));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanV = this.client.v(accountCheckReginCodeRequest.getParams());
                if (accountResultMainBeanV != null && accountResultMainBeanV.getData() != null) {
                    if (accountResultMainBeanV.getData().is_success()) {
                        AccountAnonymousReginRequest accountAnonymousReginRequest = new AccountAnonymousReginRequest();
                        accountAnonymousReginRequest.setMobile(this.phoneNumber.getText().toString());
                        accountAnonymousReginRequest.setCode(this.code.getText().toString());
                        accountAnonymousReginRequest.setPassword(this.password.getText().toString());
                        showFinishPageAnony(accountAnonymousReginRequest);
                    } else {
                        error(accountResultMainBeanV.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Click
    void codeTime() {
        this.dialogLoding.show();
        this.timeDown = 60;
        sendCode();
    }

    @UiThread
    void dissmissDialog() {
        this.dialogLoding.dismiss();
        this.codeTime.setEnabled(false);
    }

    @UiThread
    void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Background
    void finishReginNickname(String nicknames) {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                AccountChangeNickNameRequest accountChangeNickNameRequest = new AccountChangeNickNameRequest();
                accountChangeNickNameRequest.setUid(this.accountBean.getUid() + "");
                accountChangeNickNameRequest.setToken(this.accountBean.getToken());
                accountChangeNickNameRequest.setNick_name(nicknames);
                accountChangeNickNameRequest.setAvatar_src(this.accountBean.getAvatarSrc());
                accountChangeNickNameRequest.setSign(com.join.mgps.Util.k2.g(accountChangeNickNameRequest));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanR = this.client.R(accountChangeNickNameRequest.getParams());
                if (accountResultMainBeanR != null && accountResultMainBeanR.getData() != null) {
                    if (accountResultMainBeanR.getData().is_success()) {
                        setResult(10001);
                        finish();
                    } else {
                        error(accountResultMainBeanR.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Background
    void finishReginNicknameThird(String nicknames) {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                AccountChangeNickNameRequest accountChangeNickNameRequest = new AccountChangeNickNameRequest();
                accountChangeNickNameRequest.setUid(this.accountBean.getUid() + "");
                accountChangeNickNameRequest.setToken(this.accountBean.getToken());
                accountChangeNickNameRequest.setNick_name(nicknames);
                accountChangeNickNameRequest.setAvatar_src(this.accountBean.getAvatarSrc());
                accountChangeNickNameRequest.setSign(com.join.mgps.Util.k2.g(accountChangeNickNameRequest));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanG = this.client.G(accountChangeNickNameRequest.getParams());
                if (accountResultMainBeanG != null && accountResultMainBeanG.getData() != null) {
                    if (accountResultMainBeanG.getData().is_success()) {
                        setResult(10001);
                        finish();
                    } else {
                        error(accountResultMainBeanG.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Background
    void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this).getUid() + "");
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBeanC = this.client.C(linkedMultiValueMap);
        if (accountResultMainBeanC != null && accountResultMainBeanC.getError() == 0 && accountResultMainBeanC.getData().isResult()) {
            accountResultMainBeanC.getData().getMsg();
        }
        UtilsMy.R(this);
        UtilsMy.J2(this);
    }

    @Click
    void nextStep() {
        this.dialogLoding.show();
        sendCode();
    }

    @Click
    void nextStep2() {
        if (!matchStringLength(this.password.getText().toString(), 6, 16)) {
            error("密码格式有误，输入6至16位字母或数字");
            return;
        }
        this.dialogLoding.show();
        if (this.anonymousAccount) {
            checkCode();
        } else if (this.from == 1) {
            phoneRegin();
        } else {
            thirdRegin();
        }
    }

    @Click
    void nickNameBution() {
        String string = this.nickName.getText().toString();
        if (!matchStringLength(string, 1, 20)) {
            error("用户名格式有误，输入1至24位字母或数字或汉字");
            return;
        }
        this.dialogLoding.show();
        if (!this.anonymousAccount) {
            if (this.from == 1) {
                finishReginNickname(string);
                return;
            } else {
                finishReginNicknameThird(string);
                return;
            }
        }
        int i10 = this.from;
        if (i10 == 1) {
            reginAnonymousPhone(this.accountBeanRequest);
        } else if (i10 == 2) {
            reginAnonymousThird(this.accountBeanRequest);
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 10001 && resultCode == 10001) {
            com.join.android.app.common.utils.l.u(this.userIcon, AccountUtil_.getInstance_(this).getAccountData().getAvatarSrc());
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        com.join.android.app.common.utils.l.u(this.userIcon, accountData.getAvatarSrc());
    }

    @Background
    void phoneRegin() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                MessageMobileRegisterRequest.MobileRegisterRequestParameters.b bVarNewBuilder = MessageMobileRegisterRequest.MobileRegisterRequestParameters.newBuilder();
                bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(this.phoneNumber.getText().toString()));
                bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(this.password.getText().toString()));
                bVarNewBuilder.setSmsCode(this.code.getText().toString());
                bVarNewBuilder.setCodeType("mob");
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
                map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
                map.put("smsCode", bVarNewBuilder.getSmsCode());
                map.put("codeType", bVarNewBuilder.getCodeType());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultP = this.clientV2.p(bVarNewBuilder.build());
                if (responseResultP != null && responseResultP.getData() != null) {
                    if (responseResultP.getError() == 200) {
                        this.accountBean = responseResultP.getData();
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
                        joinDevice();
                        showFinishPage(responseResultP.getData());
                    } else if (com.join.mgps.Util.t2.i(responseResultP.getErrorMsg())) {
                        error(responseResultP.getErrorMsg());
                    } else {
                        error("数据获取异常，请重试");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Background
    void reginAnonymousPhone(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请检查网络设置");
            dissmissDialog();
            return;
        }
        try {
            try {
                accountAnonymousReginRequest.setUid(this.accountpre.getUid());
                accountAnonymousReginRequest.setToken(this.accountpre.getToken());
                accountAnonymousReginRequest.setNick_name(this.nickName.getText().toString());
                accountAnonymousReginRequest.setDevice_id("");
                accountAnonymousReginRequest.setMac("");
                accountAnonymousReginRequest.setSign(com.join.mgps.Util.k2.g(accountAnonymousReginRequest));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanS = this.client.S(accountAnonymousReginRequest.getParamsPhone());
                if (accountResultMainBeanS != null && accountResultMainBeanS.getData() != null) {
                    if (accountResultMainBeanS.getData().is_success()) {
                        this.accountBean = g8.a.a(accountResultMainBeanS.getData().getUser_info());
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
                        joinDevice();
                        setResult(10001);
                        finish();
                    } else {
                        error(accountResultMainBeanS.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Background
    void reginAnonymousThird(AccountAnonymousReginRequest accountAnonymousReginRequest) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请检查网络设置");
            dissmissDialog();
            return;
        }
        try {
            try {
                accountAnonymousReginRequest.setUid(this.accountpre.getUid());
                accountAnonymousReginRequest.setToken(this.accountpre.getToken());
                accountAnonymousReginRequest.setUnique_id(this.thirdRequestbean.getUnique_id());
                accountAnonymousReginRequest.setType(this.thirdRequestbean.getType());
                accountAnonymousReginRequest.setNick_name(this.nickName.getText().toString());
                accountAnonymousReginRequest.setDevice_id("");
                accountAnonymousReginRequest.setMac("");
                accountAnonymousReginRequest.setSign(com.join.mgps.Util.k2.g(accountAnonymousReginRequest));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanN = this.client.n(accountAnonymousReginRequest.getParamsThird());
                if (accountResultMainBeanN != null && accountResultMainBeanN.getData() != null) {
                    if (accountResultMainBeanN.getData().is_success()) {
                        this.accountBean = g8.a.a(accountResultMainBeanN.getData().getUser_info());
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
                        joinDevice();
                        setResult(10001);
                        finish();
                    } else {
                        error(accountResultMainBeanN.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Background
    void sendCode() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                MessageSmsCodeRequest.SmsCodeRequestParameters.b bVarNewBuilder = MessageSmsCodeRequest.SmsCodeRequestParameters.newBuilder();
                UserInfo userInfo = this.accountBean;
                if (userInfo != null) {
                    bVarNewBuilder.setUid(userInfo.getUid());
                }
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                bVarNewBuilder.setMobile(AESUtils.encrypt(this.phoneNumber.getText().toString()));
                bVarNewBuilder.setSourceType(SourceType.PLATFORM);
                bVarNewBuilder.setContentType(ContentType.MOBILE_REG);
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put("mobile", bVarNewBuilder.getMobile());
                map.put("sourceType", bVarNewBuilder.getSourceType().name());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                map.put("contentType", bVarNewBuilder.getContentType().name());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                MessageResponseStatus.ResponseStatusResult responseStatusResultK = this.clientV2.k(bVarNewBuilder.build());
                if (responseStatusResultK != null && responseStatusResultK.getError() == 200) {
                    if (responseStatusResultK.getStatus()) {
                        showEditPassView();
                    } else {
                        error(responseStatusResultK.getErrorMsg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @UiThread
    void showEditPassView() {
        setTitle("设置密码");
        this.setPassLayout.setVisibility(0);
        this.editPhone.setVisibility(8);
        this.phoneShow.setText(this.phoneNumber.getText());
        this.handler.sendEmptyMessageDelayed(1, 1000L);
        this.codeTime.setEnabled(false);
    }

    @UiThread
    void showFinishPage(UserInfo accountBean) {
        setTitle("设置头像/昵称");
        this.setPassLayout.setVisibility(8);
        this.changeNickNameLayout.setVisibility(0);
        if (this.from == 1) {
            com.join.android.app.common.utils.l.d(this.userIcon, R.drawable.unloginstatus, accountBean.getAvatarSrc());
            this.nickName.setText(accountBean.getAccount());
            return;
        }
        Random random = new Random();
        this.nickName.setText(this.thirdRequestbean.getNickname() + random.nextInt(1000));
        com.join.android.app.common.utils.l.d(this.userIcon, R.drawable.unloginstatus, this.thirdRequestbean.getAvatar_src());
    }

    @UiThread
    void showFinishPageAnony(AccountAnonymousReginRequest accountBean) {
        setTitle("设置头像/昵称");
        this.setPassLayout.setVisibility(8);
        this.changeNickNameLayout.setVisibility(0);
        this.accountBeanRequest = accountBean;
    }

    @Background
    void thirdRegin() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                error("没有网络，请检查网络设置");
                dissmissDialog();
                return;
            }
            try {
                MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters.b bVarNewBuilder = MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters.newBuilder();
                bVarNewBuilder.setAccount(com.join.mgps.Util.a.e(this.phoneNumber.getText().toString()));
                bVarNewBuilder.setPassword(com.join.mgps.Util.a.e(this.password.getText().toString()));
                bVarNewBuilder.setUniqueId(com.join.mgps.Util.a.e(this.thirdRequestbean.getUnique_id()));
                TheThirdPartLoginType theThirdPartLoginType = TheThirdPartLoginType.UNRECOGNIZED;
                if (this.thirdRequestbean.getType() == 1) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_QQ;
                } else if (this.thirdRequestbean.getType() == 2) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_XIN;
                } else if (this.thirdRequestbean.getType() == 3) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_BO;
                }
                bVarNewBuilder.setTheThirdPartLoginType(theThirdPartLoginType);
                bVarNewBuilder.setSmsCode(this.code.getText().toString());
                bVarNewBuilder.setCodeType("mob");
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("theThirdPartLoginType", bVarNewBuilder.getTheThirdPartLoginType().name());
                map.put("smsCode", bVarNewBuilder.getSmsCode());
                map.put("codeType", bVarNewBuilder.getCodeType());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultZ = this.clientV2.z(bVarNewBuilder.build());
                if (responseResultZ != null && responseResultZ.getError() == 200) {
                    if (responseResultZ.hasData()) {
                        this.accountBean = responseResultZ.getData();
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
                        joinDevice();
                        showFinishPage(this.accountBean);
                    } else {
                        error(responseResultZ.getErrorMsg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            dissmissDialog();
        }
    }

    @Click
    void userIcon() {
        MGChooseIconActivity_.intent(this).a(1).startForResult(10001);
    }
}
