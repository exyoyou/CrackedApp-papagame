package com.join.mgps.activity.login;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.res.ResourcesCompat;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.activity.CheckInviteDialogActivity;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountOnekeyLoginRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.h;
import com.join.mgps.rpc.impl.j;
import com.join.mgps.service.CommonService_;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.ClickEventListener;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
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
@EActivity(R.layout.wufunlogin_splash_activity)
public class LoginSplashActivity extends AppCompatActivity {
    private String TAG = "LoginSplashActivity";
    private AlertDialog alertDialog;
    MApplication application;

    @ViewById
    View close;
    Context context;

    @Extra
    String gameId;

    @Extra
    boolean isBackFromOtherLogin;

    @Extra
    boolean isForcedLogin;

    @ViewById
    View login;

    @Extra
    LoginParams loginParams;
    Activity mActivity;

    @Pref
    PrefDef_ prefDef;
    QuickLogin quickLogin;
    com.join.mgps.rpc.b rpcAccountClient;

    /* JADX INFO: Access modifiers changed from: private */
    public Ext getExt(Ext ext) {
        return ext == null ? new Ext() : ext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$gotoOneKeyLogin$0(Context context, View view) {
        LoginMainActivity_.intent(this).gameId(this.gameId).isForcedLogin(this.isForcedLogin).start();
        quitActivity();
        t.l(context).R1(Event.clickOtherLogin, getExt(null));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$gotoOneKeyLogin$1(Context context, View view) {
        quitActivity();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void originLogin() {
        overridePendingTransition(0, 0);
        LoginMainActivity_.intent(this).loginParams(this.loginParams).gameId(this.gameId).isForcedLogin(this.isForcedLogin).start();
        finish();
    }

    @AfterViews
    void afterview() {
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.mActivity = this;
        this.context = this;
        this.quickLogin = MApplication.s();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        t.l(this.context).R1(Event.userLogin, getExt(null));
        ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.prefDef.availableLoginMethod().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, String.class));
        if (MApplication.f3178r1 && arrayList != null && arrayList.contains("ONE_CLICK")) {
            quitActivity();
            gotoOneKeyLogin();
        } else if (!this.isForcedLogin) {
            originLogin();
        } else {
            quitActivity();
            finish();
        }
    }

    @UiThread
    public void dismissLoadingDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        a3.b(this).d(message);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    void gotoOneKeyLogin() {
        TextView textView = new TextView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = (int) getResources().getDimension(R.dimen.wdp909);
        layoutParams.addRule(14);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(Color.parseColor("#408DFF"));
        textView.setText("其他方式登录");
        textView.setTextSize(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp24)));
        ImageView imageView = new ImageView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) getResources().getDimension(R.dimen.wdp50), (int) getResources().getDimension(R.dimen.wdp50));
        layoutParams2.topMargin = (int) getResources().getDimension(R.dimen.wdp40);
        layoutParams2.leftMargin = (int) getResources().getDimension(R.dimen.wdp24);
        imageView.setLayoutParams(layoutParams2);
        imageView.setImageResource(R.drawable.back_f1);
        imageView.setPadding((int) getResources().getDimension(R.dimen.wdp14), (int) getResources().getDimension(R.dimen.wdp9), (int) getResources().getDimension(R.dimen.wdp14), (int) getResources().getDimension(R.dimen.wdp9));
        ImageView imageView2 = new ImageView(this);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) getResources().getDimension(R.dimen.wdp50), (int) getResources().getDimension(R.dimen.wdp50));
        layoutParams3.topMargin = (int) getResources().getDimension(R.dimen.wdp40);
        layoutParams3.leftMargin = (int) getResources().getDimension(R.dimen.wdp24);
        imageView2.setLayoutParams(layoutParams3);
        imageView2.setBackgroundColor(getResources().getColor(R.color.white));
        imageView2.setPadding((int) getResources().getDimension(R.dimen.wdp14), (int) getResources().getDimension(R.dimen.wdp9), (int) getResources().getDimension(R.dimen.wdp14), (int) getResources().getDimension(R.dimen.wdp9));
        UnifyUiConfig.Builder clickEventListener = new UnifyUiConfig.Builder().setStatusBarColor(getResources().getColor(R.color.white)).setStatusBarDarkColor(true).setHideNavigation(true).setLogoIconDrawable(ResourcesCompat.getDrawable(getResources(), R.drawable.ic_onekey_login, null)).setLogoWidth(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp164))).setLogoHeight(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp164))).setLogoTopYOffset(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp350))).setMaskNumberColor(Color.parseColor("#333333")).setMaskNumberDpSize(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp52))).setMaskNumberTopYOffset(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp540))).setSloganColor(Color.parseColor("#929292")).setSloganDpSize(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp24))).setSloganTopYOffset(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp610))).setLoginBtnText("一键登录").setLoginBtnTextDpSize(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp32))).setLoginBtnTextColor(getResources().getColor(R.color.white)).setLoginBtnWidth(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp568))).setLoginBtnHeight(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp88))).setLoginBtnBackgroundRes("shape_btn_onekey_login").setLoginBtnTopYOffset(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp795))).addCustomView(textView, "otherLogin", 0, new LoginUiHelper.CustomViewListener() { // from class: com.join.mgps.activity.login.e
            @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.CustomViewListener
            public final void onClick(Context context, View view) {
                this.f57451a.lambda$gotoOneKeyLogin$0(context, view);
            }
        }).setHidePrivacyCheckBox(false).setCheckBoxGravity(48).setPrivacyState(false).setCheckedImageName("checkbox_round_blue_selected").setUnCheckedImageName("checkbox_round_blue_default").setPrivacyCheckBoxHeight(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp28))).setPrivacyCheckBoxWidth(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp28))).setPrivacyTextMarginLeft(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp6))).setPrivacyBottomYOffset(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp132))).setPrivacyTextColor(Color.parseColor("#494949")).setPrivacyProtocolColor(Color.parseColor("#408DFF")).setPrivacyDpSize(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp24))).setPrivacyMarginLeft(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp100))).setPrivacyMarginRight(com.join.android.app.component.optimizetext.a.n((int) getResources().getDimension(R.dimen.wdp100))).setPrivacyTextGravityCenter(false).setPrivacyTextStart("已阅读并同意").setPrivacyTextEnd("").setProtocolText("《用户协议》").setProtocolLink(h.f72349j + "/static/yhxkxy.html").setProtocol2Text("《隐私政策》").setProtocol2Link(h.f72349j + com.constant.b.f24653e).setActivityTranslateAnimation(this.isBackFromOtherLogin ? "anim_onekey_login_in2" : "anim_onekey_login_in", "anim_onekey_login_out").setLoginListener(new LoginListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity.2
            @Override // com.netease.nis.quicklogin.listener.LoginListener
            public boolean onDisagreePrivacy(TextView privacyTv, Button btnLogin) {
                Toast toastMakeText = Toast.makeText(LoginSplashActivity.this.context, "请点击同意隐私协议", 0);
                toastMakeText.setGravity(17, 0, 0);
                toastMakeText.show();
                return true;
            }
        }).setBackPressedAvailable(!this.isForcedLogin).setClickEventListener(new ClickEventListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity.1
            @Override // com.netease.nis.quicklogin.listener.ClickEventListener
            public void onClick(int i10, int i11) {
                if (i10 == 4) {
                    MApplication.f3178r1 = false;
                    t.l(LoginSplashActivity.this.context).R1(Event.clickFastLoginButton, LoginSplashActivity.this.getExt(null));
                } else if (i10 == 1) {
                    LoginSplashActivity.this.quickLogin.setPrivacyState(true);
                }
            }
        });
        if (this.isForcedLogin) {
            clickEventListener.addCustomView(imageView2, "ivBack", 0, null);
        } else {
            clickEventListener.addCustomView(imageView, "ivBack", 0, new LoginUiHelper.CustomViewListener() { // from class: com.join.mgps.activity.login.f
                @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.CustomViewListener
                public final void onClick(Context context, View view) {
                    this.f57452a.lambda$gotoOneKeyLogin$1(context, view);
                }
            });
        }
        LoginParams loginParams = this.loginParams;
        if (loginParams != null && loginParams.sceneCode == 1) {
            ToastManager.show("启动云增强模式 将赠送您免费游戏时长 请先登录悟饭账号", 3000);
        }
        this.quickLogin.setUnifyUiConfig(clickEventListener.build(this.context));
        this.quickLogin.onePass(new QuickLoginTokenListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity.3
            @Override // com.netease.nis.quicklogin.listener.QuickLoginTokenListener
            public void onCancelGetToken() {
                LoginSplashActivity.this.quitActivity();
                LoginSplashActivity.this.finish();
            }

            @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
            public void onGetTokenError(String s10, String s11) {
                LoginSplashActivity.this.quitActivity();
                LoginSplashActivity.this.originLogin();
                LoginSplashActivity.this.finish();
            }

            @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
            public void onGetTokenSuccess(String s10, String s11) {
                LoginSplashActivity loginSplashActivity = LoginSplashActivity.this;
                loginSplashActivity.oneKeyLogin(s10, s11, loginSplashActivity.quickLogin);
            }
        });
        t.l(this.context).R1(Event.welcomePageShow, getExt(null));
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
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        ((CommonService_.n0) CommonService_.P2(this.context).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        finish();
        IntentUtil.getInstance().checkRealNameAndIntent(this.context, accountBean, "login", this.gameId);
        this.application.j();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        UtilsMy.J1(this);
        overridePendingTransition(0, 0);
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void oneKeyLogin(String token, String accessToken, QuickLogin quickLogin) {
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        try {
            AccountOnekeyLoginRequestBean accountOnekeyLoginRequestBean = new AccountOnekeyLoginRequestBean();
            accountOnekeyLoginRequestBean.setMobile("");
            accountOnekeyLoginRequestBean.setVersion(q.n(this).A());
            accountOnekeyLoginRequestBean.setDeviceId(q.n(this).i());
            accountOnekeyLoginRequestBean.setProvider("YI_DUN");
            accountOnekeyLoginRequestBean.setParams(new AccountOnekeyLoginRequestBean.Params(token, accessToken));
            j.b().a().e(accountOnekeyLoginRequestBean.getParamsMap()).enqueue(new Callback<AccountResultMainBean<AccountLoginresultData>>() { // from class: com.join.mgps.activity.login.LoginSplashActivity.4
                @Override // retrofit2.Callback
                public void onFailure(Call<AccountResultMainBean<AccountLoginresultData>> call, Throwable t10) {
                    LoginSplashActivity.this.error("连接失败，请使用账号登录。");
                    LoginSplashActivity.this.dismissLoadingDialog();
                    LoginSplashActivity.this.quitActivity();
                    LoginSplashActivity.this.originLogin();
                    Ext ext = new Ext();
                    ext.setPosition("0");
                    t.l(LoginSplashActivity.this.context).R1(Event.quickLoginResult, LoginSplashActivity.this.getExt(ext));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<AccountResultMainBean<AccountLoginresultData>> call, Response<AccountResultMainBean<AccountLoginresultData>> response) {
                    AccountResultMainBean<AccountLoginresultData> accountResultMainBeanBody = response.body();
                    if (accountResultMainBeanBody == null || accountResultMainBeanBody.getError() != 0) {
                        LoginSplashActivity.this.error("连接失败，请使用账号登录。");
                        LoginSplashActivity.this.dismissLoadingDialog();
                        LoginSplashActivity.this.quitActivity();
                        LoginSplashActivity.this.originLogin();
                        Ext ext = new Ext();
                        ext.setPosition("0");
                        t.l(LoginSplashActivity.this.context).R1(Event.quickLoginResult, LoginSplashActivity.this.getExt(ext));
                        LoginSplashActivity.this.finish();
                        return;
                    }
                    if (!accountResultMainBeanBody.getData().isIs_success()) {
                        LoginSplashActivity.this.error("一键登录失败，请使用账号登录。");
                        LoginSplashActivity.this.dismissLoadingDialog();
                        LoginSplashActivity.this.quitActivity();
                        LoginSplashActivity.this.originLogin();
                        Ext ext2 = new Ext();
                        ext2.setPosition("0");
                        t.l(LoginSplashActivity.this.context).R1(Event.quickLoginResult, LoginSplashActivity.this.getExt(ext2));
                        LoginSplashActivity.this.finish();
                        return;
                    }
                    LoginSplashActivity.this.error("登陆成功");
                    UserInfo userInfoA = g8.a.a(accountResultMainBeanBody.getData().getUser_info());
                    AccountUtil_.getInstance_(LoginSplashActivity.this.getApplicationContext()).saveAccountData(userInfoA, LoginSplashActivity.this.mActivity);
                    UtilsMy.S4(LoginSplashActivity.this.mActivity, accountResultMainBeanBody.getData().getGame_list_permission());
                    UtilsMy.R(LoginSplashActivity.this.mActivity);
                    LoginSplashActivity.this.loginSuccess(userInfoA);
                    LoginSplashActivity.this.dismissLoadingDialog();
                    LoginSplashActivity.this.quitActivity();
                    Ext ext3 = new Ext();
                    ext3.setPosition("1");
                    t.l(LoginSplashActivity.this.context).R1(Event.quickLoginResult, LoginSplashActivity.this.getExt(ext3));
                    LoginSplashActivity.this.finish();
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            Ext ext = new Ext();
            ext.setPosition("0");
            t.l(this.context).R1(Event.quickLoginResult, getExt(ext));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void quitActivity() {
        QuickLogin quickLogin = this.quickLogin;
        if (quickLogin != null) {
            quickLogin.quitActivity();
        }
    }

    @UiThread
    public void showLoadingDialog() {
        if (this.alertDialog == null) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
            this.alertDialog = alertDialogCreate;
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable());
            this.alertDialog.setCancelable(false);
            this.alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.join.mgps.activity.login.LoginSplashActivity.5
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                    return keyCode == 84 || keyCode == 4;
                }
            });
        }
        this.alertDialog.show();
        this.alertDialog.setContentView(R.layout.loading_alert);
        this.alertDialog.setCanceledOnTouchOutside(false);
    }
}
