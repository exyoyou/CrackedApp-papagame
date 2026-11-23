package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.MApplication;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.czhj.sdk.common.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenTimeOutRequestBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.UserLoginRequestParameters;
import com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_login_layout)
public class MyAccountLoginActivity extends BaseAccountActivity implements Handler.Callback, PlatformActionListener {
    private static final int MSG_AUTH_CANCEL = 2;
    private static final int MSG_AUTH_COMPLETE = 4;
    private static final int MSG_AUTH_ERROR = 3;
    private static final int MSG_SMSSDK_CALLBACK = 1;
    private static final int MSG_USERID_FOUND = 5;
    MApplication application;

    @ViewById
    CheckBox checkBox;
    Context context;
    private com.join.mgps.dialog.f1 dialog;

    @Extra
    int fromIndex;
    private Handler handler;

    @Extra
    int intentFrom;
    private boolean isWeichatLoding;
    private long lastClick;

    @ViewById
    TextView loginbutn;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    EditText password;

    @ViewById
    TextView passwordTitle;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.b recommendClient;
    com.join.mgps.rpc.c recommendClientV2;
    private AccountReginBean reginBean;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    TextView userNameTitle;

    @ViewById
    EditText username;

    @ViewById
    TextView xieyi;
    private int nameSize = 0;
    private int passSize = 0;
    boolean showDialog = true;
    private boolean alowLogin = true;

    class a implements View.OnFocusChangeListener {
        a() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean b10) {
            if (b10) {
                MyAccountLoginActivity.this.userNameTitle.setVisibility(0);
            } else {
                MyAccountLoginActivity.this.userNameTitle.setVisibility(4);
            }
        }
    }

    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean b10) {
            if (b10) {
                MyAccountLoginActivity.this.passwordTitle.setVisibility(0);
            } else {
                MyAccountLoginActivity.this.passwordTitle.setVisibility(4);
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
            MyAccountLoginActivity.this.nameSize = charSequence.length();
            MyAccountLoginActivity.this.changeButn();
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
            MyAccountLoginActivity.this.passSize = charSequence.length();
            MyAccountLoginActivity.this.changeButn();
        }
    }

    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            MyAccountLoginActivity.this.prefDef.loginPermissHasallow().g(Boolean.valueOf(isChecked));
        }
    }

    class f implements com.join.mgps.dialog.s2.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f54922a;

        f(final int val$fromIndex) {
            this.f54922a = val$fromIndex;
        }

        @Override // com.join.mgps.dialog.s2.c
        public void a() {
            MyAccountLoginActivity.this.checkBox.setChecked(true);
            int i10 = this.f54922a;
            if (i10 == 1) {
                AccountBindPhoneNew_.intent(MyAccountLoginActivity.this.context).a(1).startForResult(10001);
                return;
            }
            if (i10 == 2) {
                MyAccountLoginActivity.this.loginbutnClicked();
                return;
            }
            if (i10 == 3) {
                MyAccountLoginActivity.this.loginQQ();
            } else if (i10 == 4) {
                MyAccountLoginActivity.this.loginWechat();
            } else if (i10 == 5) {
                MyAccountLoginActivity.this.loginWeibo();
            }
        }
    }

    private void authorize(Platform plat) {
        if (System.currentTimeMillis() - this.lastClick <= 1000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("没有网络，请检查网络设置。");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void changeButn() {
        if (this.passSize == 0 || this.nameSize == 0) {
            this.loginbutn.setEnabled(false);
        } else {
            this.loginbutn.setEnabled(true);
        }
    }

    private boolean checkCheckbox(int fromIndex) {
        if (this.checkBox.isChecked()) {
            return true;
        }
        com.join.mgps.dialog.s2 s2Var = new com.join.mgps.dialog.s2(this, new f(fromIndex));
        s2Var.show();
        s2Var.a("是否同意" + com.join.mgps.Util.a0.a(this) + "《用户使用协议》和《免责声明》");
        return false;
    }

    @AfterViews
    void afterView() {
        this.recommendClient = com.join.mgps.rpc.impl.a.c0();
        this.recommendClientV2 = com.join.mgps.rpc.impl.b.C();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.loginbutn.setEnabled(false);
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        setTitle("登录");
        this.context = this;
        this.xieyi.setText("《" + com.join.mgps.Util.a0.a(this) + "用户使用协议》");
        this.username.setOnFocusChangeListener(new a());
        this.password.setOnFocusChangeListener(new b());
        this.username.addTextChangedListener(new c());
        this.password.addTextChangedListener(new d());
        if (this.prefDef.loginPermissHasallow().d().booleanValue()) {
            this.checkBox.setChecked(true);
        }
        this.checkBox.setOnCheckedChangeListener(new e());
        init();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Click
    void fergetbutn() {
        startActivity(new Intent(this, (Class<?>) MyAccountForgetPassActivity_.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:20:0x00c1 A[Catch: Exception -> 0x00c5, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c5, blocks: (B:5:0x000b, B:7:0x0057, B:9:0x005f, B:11:0x0065, B:20:0x00c1, B:12:0x009f, B:14:0x00a9, B:16:0x00b3, B:17:0x00bb), top: B:26:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    @Background
    public void getLogin(String username, String password) {
        boolean z10;
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            UserLoginRequestParameters.b bVarNewBuilder = UserLoginRequestParameters.newBuilder();
            bVarNewBuilder.setAccount(AESUtils.encrypt(username));
            bVarNewBuilder.setPassword(AESUtils.encrypt(password));
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put(GrantCredentialsPermissionActivity.f89265g, bVarNewBuilder.getAccount());
            map.put(GameRoomActivity_.PASSWORD_EXTRA, bVarNewBuilder.getPassword());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            ResponseResult responseResultY = this.recommendClientV2.y(bVarNewBuilder.build());
            if (responseResultY != null && responseResultY.getError() == 200) {
                if (responseResultY.getData() != null) {
                    responseResultY.getData().getUid();
                    responseResultY.getData().getAccount();
                    responseResultY.getData().getLevel();
                    responseResultY.getData();
                    UserInfo data = responseResultY.getData();
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(data, this);
                    UtilsMy.S4(this, data.getGameListPermissionList());
                    loginSuccess(responseResultY.getData());
                    UtilsMy.R(this);
                    z10 = false;
                } else {
                    error(responseResultY.getErrorMsg());
                }
                if (z10) {
                    showLodingDismis();
                }
            }
            if (responseResultY == null || !com.join.mgps.Util.t2.i(responseResultY.getErrorMsg())) {
                error("连接失败，请稍后再试。");
            } else {
                error(responseResultY.getErrorMsg());
            }
            z10 = true;
            if (z10) {
                showLodingDismis();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goRegin(AccountRegisterThirdwaiRequestBean thirdRequestbean) {
        AccountBindPhoneNew_.intent(this.context).a(2).b(thirdRequestbean).startForResult(10001);
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
            com.join.mgps.Util.a3.b(this).d("取消授权");
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
                            if (!com.join.mgps.Util.t2.i(str3) || !str3.equals("男")) {
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
                        iIntValue = (com.join.mgps.Util.t2.i(str4) && str4.equals(com.kuaishou.weapon.p0.t.f74888m)) ? 1 : 2;
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

    void init() {
        if (this.fromIndex == 701) {
            tokenHasLodingByOther();
        }
        AccountReginBean accountReginBean = new AccountReginBean();
        this.reginBean = accountReginBean;
        accountReginBean.setSource(this.intentFrom);
        this.handler = new Handler(this);
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

    @Click
    void login() {
        if (System.currentTimeMillis() - this.lastClick <= 2000) {
            return;
        }
        this.lastClick = System.currentTimeMillis();
        if (this.alowLogin) {
            MyAccountLoginActivity_.intent(this).b(this.intentFrom).start();
        }
    }

    @Click
    void loginQQ() {
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        if (checkCheckbox(3)) {
            authorize(platform);
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
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(accountBean, getApplicationContext());
        ((CommonService_.n0) CommonService_.P2(this.context).extra("accountloginSuccess", "xxx")).a();
        joinDevice();
        setResult(10011);
        this.application.j();
    }

    @Click
    void loginWechat() {
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        if (checkCheckbox(4)) {
            authorize(platform);
        }
    }

    @Click
    void loginWeibo() {
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        if (checkCheckbox(5)) {
            authorize(platform);
        }
    }

    @Click
    void loginbutnClicked() {
        String string = this.username.getText().toString();
        String string2 = this.password.getText().toString();
        if (!Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", string) || com.join.mgps.Util.y2.a(string) < 1 || com.join.mgps.Util.y2.a(string) > 24) {
            com.join.mgps.Util.a3.b(this).d("用户名格式有误，输入1至24位字母或数字或汉字");
            return;
        }
        if (string2.length() > 16 || string2.length() < 6) {
            com.join.mgps.Util.a3.b(this).d("密码格式有误，输入6至16位字母或数字");
        } else if (com.join.mgps.Util.t2.i(string) && com.join.mgps.Util.t2.i(string2) && checkCheckbox(2)) {
            getLogin(string, string2);
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 10001 && resultCode == 10001) {
            finish();
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.showDialog = false;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.showDialog = true;
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null && f1Var.isShowing() && this.isWeichatLoding) {
            this.dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void reginThirdWay() {
        finish();
    }

    @Click
    void shengming() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72349j + "/static/wf_mianze.html");
        intentDateBean.setObject("免责声明");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || f1Var.isShowing() || !this.showDialog) {
            return;
        }
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @Click
    void signUp() {
        if (checkCheckbox(1)) {
            AccountBindPhoneNew_.intent(this).a(1).startForResult(10001);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void tokenHasLodingByOther() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData == null) {
                    return;
                }
                AccountTokenTimeOutRequestBean accountTokenTimeOutRequestBean = new AccountTokenTimeOutRequestBean();
                accountTokenTimeOutRequestBean.setUid(accountData.getUid());
                accountTokenTimeOutRequestBean.setDevice_id("");
                accountTokenTimeOutRequestBean.setToke(accountData.getToken());
                accountTokenTimeOutRequestBean.setSign(com.join.mgps.Util.k2.g(accountTokenTimeOutRequestBean));
                GameWorldResponse<AccountResultMainBean> gameWorldResponseK = this.rpcAccountClient.k(accountTokenTimeOutRequestBean.getParams());
                if (gameWorldResponseK == null || gameWorldResponseK.getError() != 801) {
                    return;
                }
                showToast("你的登录已失效，请重新登录。");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void xieyi() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72349j + "/static/yhxkxy.html");
        intentDateBean.setObject("用户使用协议");
        IntentUtil.getInstance().intentActivity(this.context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void login(int type, String userId, String name, int gender, String userIcon) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters.b bVarNewBuilder = MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters.newBuilder();
                bVarNewBuilder.setUniqueId(com.join.mgps.Util.a.e(userId));
                TheThirdPartLoginType theThirdPartLoginType = TheThirdPartLoginType.UNRECOGNIZED;
                if (type == 1) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_QQ;
                } else if (type == 2) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_XIN;
                } else if (type == 3) {
                    theThirdPartLoginType = TheThirdPartLoginType.T_WEI_BO;
                }
                bVarNewBuilder.setTheThirdPartLoginType(theThirdPartLoginType);
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uniqueId", bVarNewBuilder.getUniqueId());
                map.put("theThirdPartLoginType", bVarNewBuilder.getTheThirdPartLoginType().name());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultQ = this.recommendClientV2.q(bVarNewBuilder.build());
                if (responseResultQ != null) {
                    if (responseResultQ.getData() != null && responseResultQ.getError() == 200) {
                        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(responseResultQ.getData(), this);
                        UtilsMy.S4(this, responseResultQ.getData().getGameListPermissionList());
                        loginSuccess(responseResultQ.getData(), null);
                        UtilsMy.R(this);
                        return;
                    }
                    if (responseResultQ.getError() == 1001) {
                        showLodingDismis();
                        AccountRegisterThirdwaiRequestBean accountRegisterThirdwaiRequestBean = new AccountRegisterThirdwaiRequestBean();
                        accountRegisterThirdwaiRequestBean.setUnique_id(userId);
                        accountRegisterThirdwaiRequestBean.setType(type);
                        accountRegisterThirdwaiRequestBean.setSource(this.intentFrom);
                        if (userIcon == null) {
                            accountRegisterThirdwaiRequestBean.setAvatar_src("");
                        } else {
                            accountRegisterThirdwaiRequestBean.setAvatar_src(userIcon);
                        }
                        accountRegisterThirdwaiRequestBean.setGender(1);
                        accountRegisterThirdwaiRequestBean.setNickname(name);
                        accountRegisterThirdwaiRequestBean.setMac("");
                        com.join.mgps.Util.t2.i("");
                        accountRegisterThirdwaiRequestBean.setDevice_id("");
                        accountRegisterThirdwaiRequestBean.setSign(com.join.mgps.Util.k2.g(accountRegisterThirdwaiRequestBean));
                        goRegin(accountRegisterThirdwaiRequestBean);
                        return;
                    }
                    showLodingDismis();
                    error(responseResultQ.getErrorMsg());
                    return;
                }
                error("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                showMessage("登录失败");
                showLodingDismis();
                return;
            }
        }
        showMessage("没有网络，请先检查网络。");
        showLodingDismis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void loginSuccess(UserInfo user_info, RewardBean rewardBean) {
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
        if (i10 != 1 && i10 != 3 && i10 != 4) {
            ((CommonService_.n0) CommonService_.P2(this.context).extra("accountloginSuccess", "xxx")).a();
            showLodingDismis();
            finish();
            return;
        }
        finish();
    }
}
