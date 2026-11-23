package com.join.mgps.activity.login;

import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.MApplication;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
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
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountOnekeyLoginRequestBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.h;
import com.join.mgps.rpc.impl.j;
import com.join.mgps.service.CommonService_;
import com.kongzue.dialogx.interfaces.r;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
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
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.loginmain_activity)
public class LoginMainActivity extends AppCompatActivity implements Handler.Callback, PlatformActionListener {
    private static final int MSG_AUTH_CANCEL = 2;
    private static final int MSG_AUTH_COMPLETE = 4;
    private static final int MSG_AUTH_ERROR = 3;
    private static final int MSG_SMSSDK_CALLBACK = 1;
    private static final int MSG_USERID_FOUND = 5;
    MApplication application;

    @ViewById
    View cancleLogin;

    @ViewById
    CheckBox checkBox;

    @ViewById
    View clear;
    Context context;
    private f1 dialog;

    @Extra
    String gameId;
    private Handler handler;
    private boolean hasFinished;

    @Extra
    int intentFrom;

    @Extra
    boolean isForcedLogin;
    private boolean isWeichatLoding;

    @ViewById
    ImageView iv_tip;
    private long lastClick;

    @Extra
    LoginParams loginParams;

    @ViewById
    View nextStep;

    @ViewById
    View otherLogin;

    @ViewById
    EditText phoneNumber;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;

    @ViewById
    TextView title;

    @ViewById
    TextView xieyi;
    long clickTime = 0;
    private boolean alowLogin = true;
    boolean showDialog = true;

    /* JADX INFO: renamed from: com.join.mgps.activity.login.LoginMainActivity$3, reason: invalid class name */
    class AnonymousClass3 extends r<com.kongzue.dialogx.dialogs.a> {
        final /* synthetic */ Runnable val$onAgreeAction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(int layoutResId, final Runnable val$onAgreeAction) {
            super(layoutResId);
            this.val$onAgreeAction = val$onAgreeAction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBind$1(com.kongzue.dialogx.dialogs.a aVar, Runnable runnable, View view) {
            LoginMainActivity.this.checkBox.setChecked(true);
            aVar.b2();
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final com.kongzue.dialogx.dialogs.a dialog1, View v10) {
            if (dialog1.j2().f73730e != null) {
                ((ViewGroup) dialog1.j2().f73730e.getParent()).removeView(dialog1.j2().f73730e);
            }
            dialog1.j2().f73729d.setBackgroundResource(R.drawable.transparent_bg);
            ImageView imageView = (ImageView) v10.findViewById(R.id.iv_close);
            TextView textView = (TextView) v10.findViewById(R.id.tv_content);
            TextView textView2 = (TextView) v10.findViewById(R.id.tv_agree);
            TextUtils.isEmpty("wufun");
            String str = "为了更好的使用悟饭服务，登录前请先阅读并同意《用户协议》及《隐私协议》";
            SpannableString spannableString = new SpannableString(str);
            int iIndexOf = str.indexOf("《用户协议》");
            int iIndexOf2 = str.indexOf("《隐私协议》");
            final int color = Color.parseColor("#077BD4");
            if (iIndexOf >= 0) {
                spannableString.setSpan(new ClickableSpan() { // from class: com.join.mgps.activity.login.LoginMainActivity.3.1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View widget) {
                        LoginMainActivity.this.xieyi();
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint ds) {
                        super.updateDrawState(ds);
                        ds.setColor(color);
                        ds.setUnderlineText(false);
                    }
                }, iIndexOf, iIndexOf + 6, 33);
            }
            if (iIndexOf2 >= 0) {
                spannableString.setSpan(new ClickableSpan() { // from class: com.join.mgps.activity.login.LoginMainActivity.3.2
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View widget) {
                        LoginMainActivity.this.shengming();
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint ds) {
                        super.updateDrawState(ds);
                        ds.setColor(color);
                        ds.setUnderlineText(false);
                    }
                }, iIndexOf2, iIndexOf2 + 6, 33);
            }
            textView.setText(spannableString);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setHighlightColor(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog1.b2();
                }
            });
            final Runnable runnable = this.val$onAgreeAction;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57448b.lambda$onBind$1(dialog1, runnable, view);
                }
            });
        }
    }

    private void authorize(Platform plat) {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (!m.j(this)) {
            a3.b(this).d("没有网络，请检查网络设置。");
            return;
        }
        if (plat != null && this.alowLogin) {
            this.alowLogin = false;
            if (plat.isAuthValid()) {
                plat.removeAccount(true);
            }
            plat.setPlatformActionListener(this);
            plat.SSOSetting(false);
            plat.showUser(null);
            showLoding();
            if (!plat.getName().equals(Wechat.NAME)) {
                this.dialog.setCancelable(true);
                this.dialog.setCanceledOnTouchOutside(false);
                this.isWeichatLoding = false;
            } else {
                this.dialog.setCancelable(true);
                this.dialog.setCanceledOnTouchOutside(false);
                this.alowLogin = true;
                this.isWeichatLoding = true;
            }
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

    private Ext getExt(Ext ext) {
        return ext == null ? new Ext() : ext;
    }

    public static boolean isPhoneNumber(String input) {
        Pattern.compile("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}");
        return Pattern.matches("(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}", input);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toOtherLogin$0() {
        this.otherLogin.setVisibility(0);
        clearEditTextState(this.phoneNumber);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginWithPwd(final String number) {
        LoginUserStatuRequest loginUserStatuRequest = new LoginUserStatuRequest();
        loginUserStatuRequest.getData(this.context);
        loginUserStatuRequest.setLoginId(number);
        loginUserStatuRequest.setLoginType(6);
        showLoding();
        j.b().a().i(loginUserStatuRequest).enqueue(new Callback<LoginResultMain<LoginUserStatuDataBean>>() { // from class: com.join.mgps.activity.login.LoginMainActivity.5
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginResultMain<LoginUserStatuDataBean>> call, Throwable t10) {
                LoginMainActivity.this.showMessage("网络不给力，请检查网络设置。");
                LoginMainActivity.this.showLodingDismis();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginResultMain<LoginUserStatuDataBean>> call, Response<LoginResultMain<LoginUserStatuDataBean>> response) {
                LoginResultMain<LoginUserStatuDataBean> loginResultMainBody = response.body();
                if (loginResultMainBody != null && loginResultMainBody.getError() == 0) {
                    LoginUserStatuDataBean data = loginResultMainBody.getData();
                    if (data != null) {
                        if (data.isNewMembers()) {
                            if (data.isMobilePhone()) {
                                LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(1).phoneNumber(number.trim()).gameId(LoginMainActivity.this.gameId).isForcedLogin(LoginMainActivity.this.isForcedLogin).start();
                            } else {
                                LoginMainActivity.this.showMessage("用户名不存在，请先用手机号注册账号！");
                            }
                        } else if (data.isMobilePhone()) {
                            LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(4).phoneNumber(number.trim()).isSetPwd(data.isSetPwd()).isForcedLogin(LoginMainActivity.this.isForcedLogin).gameId(LoginMainActivity.this.gameId).start();
                        } else {
                            LoginInputPassActivity_.intent(LoginMainActivity.this.context).from(6).phoneNumber(number.trim()).gameId(LoginMainActivity.this.gameId).isForcedLogin(LoginMainActivity.this.isForcedLogin).start();
                        }
                    }
                } else if (loginResultMainBody != null && loginResultMainBody.getError() == -1) {
                    LoginMainActivity.this.showMessage(loginResultMainBody.getMsg());
                }
                LoginMainActivity.this.showLodingDismis();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: proceedNextStepLogin, reason: merged with bridge method [inline-methods] */
    public void lambda$nextStep$1(final String number) {
        this.prefDef.lastLoginAccount().g(number);
        ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.prefDef.availableLoginMethod().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, String.class));
        final QuickLogin quickLoginM = MApplication.m();
        showLoding();
        if (!isPhoneNumber(number) || quickLoginM == null || m.k(this.context) || !(arrayList == null || arrayList.contains("MOBILE_CHECK"))) {
            loginWithPwd(number);
        } else {
            quickLoginM.getToken(number, new QuickLoginTokenListener() { // from class: com.join.mgps.activity.login.LoginMainActivity.4
                @Override // com.netease.nis.quicklogin.listener.QuickLoginTokenListener
                public void onCancelGetToken() {
                    LoginMainActivity.this.finish();
                }

                @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
                public void onGetTokenError(String s10, String s11) {
                    Ext ext = new Ext();
                    ext.setPosition("0");
                    t.l(LoginMainActivity.this.context).R1(Event.tokenLoginResult, ext);
                    LoginMainActivity.this.loginWithPwd(number);
                }

                @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
                public void onGetTokenSuccess(String s10, String s11) {
                    LoginMainActivity.this.checkPhoneLogin(s10, s11, quickLoginM, number);
                }
            });
        }
    }

    private void showLoginPrivacyBottomDialog(Runnable onAgreeAction) {
        new com.kongzue.dialogx.dialogs.a(new AnonymousClass3(R.layout.dialog_login_privacy, onAgreeAction)).i3(Color.parseColor("#90000000")).Y2(true).L2(false).M0();
    }

    @AfterViews
    void afterview() {
        this.context = this;
        t.l(this).R1(Event.otherLoginPageShow, getExt(null));
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.nextStep.setEnabled(false);
        if (Build.BRAND.toLowerCase().contains("samsung")) {
            this.phoneNumber.setRawInputType(1);
        } else {
            this.phoneNumber.setRawInputType(2);
        }
        this.dialog = h0.h0(this).x(this);
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.handler = new Handler(this);
        this.phoneNumber.addTextChangedListener(new TextWatcher() { // from class: com.join.mgps.activity.login.LoginMainActivity.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s10) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s10, int start, int before, int count) {
                if (s10.length() == 0) {
                    LoginMainActivity.this.nextStep.setEnabled(false);
                    LoginMainActivity.this.clear.setVisibility(8);
                } else {
                    LoginMainActivity.this.clear.setVisibility(0);
                    LoginMainActivity.this.nextStep.setEnabled(true);
                }
            }
        });
        com.join.mgps.Util.t.g(this.phoneNumber);
        this.phoneNumber.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.join.mgps.activity.login.LoginMainActivity.2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
                if (actionId != 4) {
                    return false;
                }
                LoginMainActivity.this.nextStep();
                return false;
            }
        });
        LoginCfgsBean loginCfgsBean = MApplication.V;
        if ((loginCfgsBean != null && loginCfgsBean.getLogin_is_allow_skip() == 0) || t2.h(this.gameId)) {
            this.cancleLogin.setVisibility(4);
        }
        showKeyborad(this.phoneNumber);
        this.phoneNumber.setText(this.prefDef.lastLoginAccount().d());
        TextUtils.isEmpty("wufun");
        this.xieyi.setText("用户协议");
        this.checkBox.setText("已阅读并同意悟饭");
        LoginParams loginParams = this.loginParams;
        if (loginParams == null || loginParams.sceneCode != 1) {
            return;
        }
        ToastManager.show("启动云增强模式 将赠送您免费游戏时长 请先登录悟饭账号", 3000);
    }

    @Click
    void back() {
        clearEditTextState(this.phoneNumber);
        delayFinish();
    }

    @Click
    void cancle() {
        this.otherLogin.setVisibility(8);
    }

    @Click
    void cancleLogin() {
        LoginCfgsBean loginCfgsBean;
        finish();
        if (t2.i(this.gameId) && (loginCfgsBean = MApplication.V) != null && loginCfgsBean.getLogin_is_allow_skip() == 1) {
            UtilsMy.p4(this.context, q5.f.M().G(this.gameId), "login");
        }
        this.application.j();
    }

    @Background
    void checkPhoneLogin(String token, String accessToken, QuickLogin quickLogin, final String phone) {
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            showLodingDismis();
            return;
        }
        AccountOnekeyLoginRequestBean accountOnekeyLoginRequestBean = new AccountOnekeyLoginRequestBean();
        accountOnekeyLoginRequestBean.setMobile(phone);
        accountOnekeyLoginRequestBean.setVersion(q.n(this).A());
        accountOnekeyLoginRequestBean.setDeviceId(q.n(this).i());
        accountOnekeyLoginRequestBean.setProvider("YI_DUN");
        accountOnekeyLoginRequestBean.setParams(new AccountOnekeyLoginRequestBean.Params(token, accessToken));
        j.b().a().h(accountOnekeyLoginRequestBean.getParamsMap()).enqueue(new Callback<AccountResultMainBean<AccountLoginresultData>>() { // from class: com.join.mgps.activity.login.LoginMainActivity.6
            @Override // retrofit2.Callback
            public void onFailure(Call<AccountResultMainBean<AccountLoginresultData>> call, Throwable t10) {
                LoginMainActivity.this.loginWithPwd(phone);
                Ext ext = new Ext();
                ext.setPosition("0");
                t.l(LoginMainActivity.this.context).R1(Event.tokenLoginResult, ext);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<AccountResultMainBean<AccountLoginresultData>> call, Response<AccountResultMainBean<AccountLoginresultData>> response) {
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanBody = response.body();
                if (accountResultMainBeanBody == null || accountResultMainBeanBody.getError() != 0) {
                    LoginMainActivity.this.loginWithPwd(phone);
                    Ext ext = new Ext();
                    ext.setPosition("0");
                    t.l(LoginMainActivity.this.context).R1(Event.tokenLoginResult, ext);
                    return;
                }
                if (!accountResultMainBeanBody.getData().isIs_success()) {
                    Ext ext2 = new Ext();
                    ext2.setPosition("0");
                    t.l(LoginMainActivity.this.context).R1(Event.tokenLoginResult, ext2);
                    LoginMainActivity.this.loginWithPwd(phone);
                    return;
                }
                LoginMainActivity.this.error("登陆成功");
                UserInfo userInfoA = g8.a.a(accountResultMainBeanBody.getData().getUser_info());
                AccountUtil_.getInstance_(LoginMainActivity.this.getApplicationContext()).saveAccountData(userInfoA, LoginMainActivity.this.context);
                UtilsMy.S4(LoginMainActivity.this.context, accountResultMainBeanBody.getData().getGame_list_permission());
                UtilsMy.R(LoginMainActivity.this.context);
                Ext ext3 = new Ext();
                ext3.setPosition("1");
                t.l(LoginMainActivity.this.context).R1(Event.tokenLoginResult, ext3);
                LoginMainActivity.this.loginSuccess(userInfoA, accountResultMainBeanBody.getData().getReward());
                LoginMainActivity.this.showLodingDismis();
            }
        });
    }

    @Click
    void clear() {
        this.phoneNumber.setText("");
    }

    void clearEditTextState(EditText commentEditText) {
        commentEditText.clearFocus();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(commentEditText.getWindowToken(), 0);
    }

    @UiThread(delay = 300)
    void delayFinish() {
        finish();
    }

    @UiThread
    void error(String message) {
        a3.b(this).d(message);
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.hasFinished) {
            return;
        }
        this.hasFinished = true;
        super.finish();
        if (this.isForcedLogin && AccountUtil_.getInstance_(this.context).isTourist()) {
            LoginSplashActivity_.intent(this.context).gameId(this.gameId).isForcedLogin(this.isForcedLogin).isBackFromOtherLogin(true).start();
        }
    }

    @UiThread
    void goRegin(AccountRegisterThirdwaiRequestBean thirdRequestbean) {
        LoginInputPassActivity_.intent(this.context).from(5).thirdRequestbean(thirdRequestbean).gameId(this.gameId).isForcedLogin(this.isForcedLogin).start();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        String str;
        int iIntValue;
        int i10;
        int i11;
        int i12;
        int i13 = msg.what;
        if (i13 == 2) {
            a3.b(this).d("取消授权");
        } else if (i13 == 4) {
            this.isWeichatLoding = false;
            ShareDataBean shareDataBean = (ShareDataBean) msg.obj;
            HashMap<String, Object> res = shareDataBean.getRes();
            Iterator<String> it2 = res.keySet().iterator();
            String type = shareDataBean.getType();
            String str2 = "";
            if (type.equals(QQ.NAME)) {
                loop0: while (true) {
                    iIntValue = 1;
                    while (true) {
                        if (!it2.hasNext()) {
                            break loop0;
                        }
                        String next = it2.next();
                        if (next.equals("nickname")) {
                            str2 = (String) res.get(next);
                        }
                        if (next.equals("gender")) {
                            String str3 = (String) res.get(next);
                            if (!t2.i(str3) || !str3.equals("男")) {
                                iIntValue = 2;
                            }
                        }
                    }
                }
                str = str2;
                i10 = 1;
            } else {
                str = "";
                iIntValue = 1;
                i10 = -1;
            }
            if (type.equals(Wechat.NAME)) {
                while (it2.hasNext()) {
                    String next2 = it2.next();
                    if (next2.equals("nickname")) {
                        str = (String) res.get(next2);
                    }
                    if (next2.equals(ArticleInfo.USER_SEX)) {
                        iIntValue = ((Integer) res.get(next2)).intValue();
                    }
                }
                i10 = 2;
            }
            if (type.equals(SinaWeibo.NAME)) {
                while (it2.hasNext()) {
                    String next3 = it2.next();
                    if (next3.equals("name")) {
                        str = (String) res.get(next3);
                    }
                    if (next3.equals("gender")) {
                        String str4 = (String) res.get(next3);
                        iIntValue = (t2.i(str4) && str4.equals(com.kuaishou.weapon.p0.t.f74888m)) ? 1 : 2;
                    }
                }
                i12 = 3;
                i11 = iIntValue;
            } else {
                i11 = iIntValue;
                i12 = i10;
            }
            showLoding();
            this.dialog.setCancelable(true);
            this.dialog.setCanceledOnTouchOutside(false);
            login(i12, shareDataBean.getUserId(), str, i11, shareDataBean.getUserIcon());
        }
        return false;
    }

    @Background
    void joinDevice() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(this.context).getToken());
        AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBeanC = this.rpcAccountClient.C(linkedMultiValueMap);
        if (accountResultMainBeanC != null && accountResultMainBeanC.getError() == 0 && accountResultMainBeanC.getData().isResult()) {
            accountResultMainBeanC.getData().getMsg();
        }
    }

    @Background
    void login(int type, String userId, String name, int gender, String userIcon) {
        if (!m.j(this)) {
            showMessage("没有网络，请先检查网络。");
            showLodingDismis();
            return;
        }
        try {
            MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters.b bVarNewBuilder = MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters.newBuilder();
            TheThirdPartLoginType theThirdPartLoginType = TheThirdPartLoginType.UNRECOGNIZED;
            if (type == 1) {
                theThirdPartLoginType = TheThirdPartLoginType.T_QQ;
            }
            if (type == 2) {
                theThirdPartLoginType = TheThirdPartLoginType.T_WEI_XIN;
            }
            if (type == 3) {
                theThirdPartLoginType = TheThirdPartLoginType.T_WEI_BO;
            }
            bVarNewBuilder.setUniqueId(com.join.mgps.Util.a.e(userId));
            bVarNewBuilder.setTheThirdPartLoginType(theThirdPartLoginType);
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uniqueId", bVarNewBuilder.getUniqueId());
            map.put("theThirdPartLoginType", bVarNewBuilder.getTheThirdPartLoginType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(k2.d(map));
            ResponseResult responseResultQ = this.rpcAccountClientV2.q(bVarNewBuilder.build());
            if (responseResultQ != null && responseResultQ.getError() == 200) {
                if (!responseResultQ.hasData()) {
                    showLodingDismis();
                    error(responseResultQ.getErrorMsg());
                    return;
                }
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(responseResultQ.getData(), this);
                UtilsMy.S4(this, responseResultQ.getData().getGameListPermissionList());
                loginSuccess(responseResultQ.getData(), null);
                UtilsMy.R(this);
                t.l(this.context).R1(Event.thirdPartyLoginSuccess, new Ext());
                return;
            }
            if (responseResultQ.getError() != 10001) {
                if (t2.i(responseResultQ.getErrorMsg())) {
                    error(responseResultQ.getErrorMsg());
                } else {
                    error("登录失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            }
            showLodingDismis();
            AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
            accountRegisterThirdwaiRequestBean.setUnique_id(userId);
            accountRegisterThirdwaiRequestBean.setType(type);
            accountRegisterThirdwaiRequestBean.setSource(this.intentFrom);
            String strT = MApplication.f3182z.t();
            if (t2.h(strT) || "null".equals(strT)) {
                accountRegisterThirdwaiRequestBean.setShare_code("");
            }
            if (userIcon == null) {
                accountRegisterThirdwaiRequestBean.setAvatar_src("");
            } else {
                accountRegisterThirdwaiRequestBean.setAvatar_src(userIcon);
            }
            accountRegisterThirdwaiRequestBean.setGender(1);
            accountRegisterThirdwaiRequestBean.setNickname(name);
            accountRegisterThirdwaiRequestBean.setMac("");
            t2.i("");
            accountRegisterThirdwaiRequestBean.setDevice_id("");
            accountRegisterThirdwaiRequestBean.setSign(k2.g(accountRegisterThirdwaiRequestBean));
            accountRegisterThirdwaiRequestBean.setNickname(name + new Random().nextInt(1000));
            goRegin(accountRegisterThirdwaiRequestBean);
        } catch (Exception e10) {
            e10.printStackTrace();
            showMessage("登录失败");
            showLodingDismis();
        }
    }

    @Click
    void loginQQLayout() {
        Ext ext = new Ext();
        ext.setPosition("0");
        t.l(this.context).R1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(QQ.NAME));
        this.otherLogin.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    void loginSuccess(UserInfo user_info, RewardBean rewardBean) {
        if (!TextUtils.isEmpty(CheckInviteDialogActivity.copyData)) {
            ((ClipboardManager) getSystemService(com.haima.hmcp.Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(CheckInviteDialogActivity.copyData);
            CheckInviteDialogActivity.copyData = "";
        }
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(user_info, getApplicationContext());
        joinDevice();
        int i10 = this.intentFrom;
        if (i10 == 1 || i10 == 3 || i10 == 4) {
            finish();
            return;
        }
        ((CommonService_.n0) CommonService_.P2(this.context).extra("accountloginSuccess", "xxx")).a();
        showLodingDismis();
        this.application.j();
        finish();
        IntentUtil.getInstance().checkRealNameAndIntent(this.context, user_info, "login", this.gameId);
    }

    @Click
    void loginWechatLayout() {
        Ext ext = new Ext();
        ext.setPosition("1");
        t.l(this.context).R1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(Wechat.NAME));
        this.otherLogin.setVisibility(8);
    }

    @Click
    void loginWeiboLayout() {
        Ext ext = new Ext();
        ext.setPosition("2");
        t.l(this.context).R1(Event.clickThirdpartyLogin, ext);
        authorize(ShareSDK.getPlatform(SinaWeibo.NAME));
        this.otherLogin.setVisibility(8);
    }

    @Click
    void nextStep() {
        if (checkFastClick()) {
            return;
        }
        final String string = this.phoneNumber.getText().toString();
        if (t2.h(string.trim())) {
            a3.b(this.context).d("请输入手机号/用户名");
        } else if (this.checkBox.isChecked()) {
            lambda$nextStep$1(string);
        } else {
            showLoginPrivacyBottomDialog(new Runnable() { // from class: com.join.mgps.activity.login.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57444b.lambda$nextStep$1(string);
                }
            });
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int action) {
        showLodingDismis();
        this.alowLogin = true;
        if (action == 8) {
            this.handler.sendEmptyMessage(2);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int action, HashMap<String, Object> res) {
        this.alowLogin = true;
        showLodingDismis();
        if (action == 8) {
            String userId = platform.getDb().getUserId();
            String userName = platform.getDb().getUserName();
            String name = platform.getName();
            ShareDataBean shareDataBean = new ShareDataBean();
            shareDataBean.setType(name);
            shareDataBean.setUserId(userId);
            shareDataBean.setRes(res);
            shareDataBean.setUserIcon(platform.getDb().getUserIcon());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userId);
            sb2.append("   ");
            sb2.append(userName);
            Message message = new Message();
            message.what = 4;
            message.obj = shareDataBean;
            this.handler.sendMessage(message);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int action, Throwable throwable) {
        showLodingDismis();
        platform.removeAccount(true);
        this.alowLogin = true;
        String simpleName = throwable.getClass().getSimpleName();
        if ("WechatClientNotExistException".equals(simpleName) || "WechatTimelineNotSupportedException".equals(simpleName) || "WechatFavoriteNotSupportedException".equals(simpleName)) {
            showMessage("没有安装微信客端，请先安装微信客户端。");
        } else {
            showMessage("授权失败");
        }
        if (action == 8) {
            this.handler.sendEmptyMessage(3);
        }
        throwable.printStackTrace();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.showDialog = false;
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean hasCapture) {
    }

    @Click
    void otherLogin() {
        this.otherLogin.setVisibility(8);
    }

    @Click
    void shengming() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(h.f72349j + com.constant.b.f24653e);
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    @UiThread(delay = 400)
    void showKeyborad(EditText commentEditText) {
        commentEditText.setFocusable(true);
        commentEditText.setFocusableInTouchMode(true);
        commentEditText.requestFocus();
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
        commentEditText.setSelection(commentEditText.getText().toString().length());
    }

    @UiThread
    void showLoding() {
        f1 f1Var = this.dialog;
        if (f1Var == null || f1Var.isShowing() || !this.showDialog) {
            return;
        }
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        f1 f1Var;
        if (this.hasFinished || isDestroyed() || (f1Var = this.dialog) == null || !f1Var.isShowing() || isFinishing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @UiThread
    void showMessage(String message) {
        a3.b(this).d(message);
    }

    @Click
    void toOtherLogin() {
        if (!this.checkBox.isChecked()) {
            showLoginPrivacyBottomDialog(new Runnable() { // from class: com.join.mgps.activity.login.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57446b.lambda$toOtherLogin$0();
                }
            });
        } else {
            this.otherLogin.setVisibility(0);
            clearEditTextState(this.phoneNumber);
        }
    }

    @Click
    void xieyi() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(h.f72349j + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }
}
