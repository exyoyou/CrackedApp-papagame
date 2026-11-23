package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.wechat.friends.Wechat;
import com.BaseActivity;
import com.baidu.mobads.sdk.api.ArticleInfo;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.account.UnbindThirdPartyActivity;
import com.join.kotlin.ui.account.modle.UnBindPlatform;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AccountBindThirdwaiRequestBean;
import com.join.mgps.dto.AccountChangeUserinfoRequestBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccoutLoginOutRequest;
import com.join.mgps.dto.ShareDataBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import external.org.apache.commons.lang3.ObjectUtils;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_detial_layout)
public class MYAccountDetialActivity extends BaseActivity implements com.join.mgps.dialog.r.c, com.join.mgps.dialog.z0.c, w6.a.InterfaceC1253a, PlatformActionListener, Handler.Callback {
    private static final int MSG_AUTH_CANCEL = 2;
    private static final int MSG_AUTH_COMPLETE = 4;
    private static final int MSG_AUTH_ERROR = 3;
    UserInfo accountBean;

    @ViewById
    TextView accountNameTv;
    private Context context;
    private com.join.mgps.dialog.f1 dialog;
    private com.join.mgps.dialog.z0 dialogChangeGender;
    private com.join.mgps.dialog.r dialogChangeName;

    @ViewById
    TextView expTv;
    private Handler handler;

    @ViewById
    TextView hasBindQQ;

    @ViewById
    TextView hasBindWebo;

    @ViewById
    TextView hasBindWechat;

    @ViewById
    SimpleDraweeView iconImage;
    private boolean isWeichatLoding;
    private long lastClick;

    @ViewById
    TextView levelTv;

    @ViewById
    LinearLayout llRealName;

    @ViewById
    TextView name;
    private com.join.mgps.dialog.t1 nameCheckDiaog;

    @ViewById
    TextView pabi;

    @ViewById
    TextView passwordTv;

    @ViewById
    TextView phoneTv;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tv_rank;

    @ViewById
    TextView xingbie;
    private String nameOld = "";
    private String avatarSrcOld = "";
    private boolean distroyed = false;
    boolean hasPhoneNumber = true;
    private boolean alowLogin = true;

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
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EditText f54622b;

        b(final EditText val$editText) {
            this.f54622b = val$editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (TextUtils.isEmpty(this.f54622b.getText().toString().trim())) {
                MYAccountDetialActivity.this.showToast("昵称不能为空！");
            } else {
                MYAccountDetialActivity mYAccountDetialActivity = MYAccountDetialActivity.this;
                mYAccountDetialActivity.accountBean = mYAccountDetialActivity.accountBean.toBuilder().setNickname(this.f54622b.getText().toString()).build();
                MYAccountDetialActivity.this.updatedata();
            }
            MYAccountDetialActivity.this.nameCheckDiaog.dismiss();
        }
    }

    class c implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f54624a;

        c(final String val$platformType) {
            this.f54624a = val$platformType;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            MYAccountDetialActivity mYAccountDetialActivity = MYAccountDetialActivity.this;
            if (mYAccountDetialActivity.hasPhoneNumber) {
                Intent intent = new Intent(MYAccountDetialActivity.this.context, (Class<?>) UnbindThirdPartyActivity.class);
                intent.putExtra("type", this.f54624a);
                MYAccountDetialActivity.this.startActivity(intent);
            } else {
                MyAccountBindPhoneActivity_.intent(mYAccountDetialActivity.context).start();
            }
            dialog.dismiss();
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
            dialogLoading();
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

    private void clearCheckIn() {
        this.prefDef.lastCheckInTime().g(0L);
    }

    @Click
    void accountNameLayout() {
        ((ClipboardManager) this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.accountBean.getAccount());
        com.join.mgps.Util.a3.b(this.context).d(this.accountBean.getAccount() + "已复制到剪贴板");
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.dialogChangeGender = com.join.mgps.Util.h0.h0(this).v(this);
        this.nameCheckDiaog = new com.join.mgps.dialog.t1(this, R.style.HKDialogLoading);
        this.dialogChangeName = com.join.mgps.Util.h0.h0(this).q(this);
        this.context = this;
        this.title_textview.setText("个人信息");
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        showUI();
        w6.a.b().a(this);
        this.handler = new Handler(this);
    }

    @Override // com.join.mgps.dialog.r.c
    public void backName(String nameS) {
        this.name.setText(nameS);
        if (this.accountBean.getNickname().equals(nameS)) {
            return;
        }
        this.accountBean = this.accountBean.toBuilder().setNickname(nameS).build();
        updatedata();
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void bindQQLayout() {
        if (this.accountBean.getIsBindQq() != 1) {
            authorize(ShareSDK.getPlatform(QQ.NAME));
        } else {
            checkUnbind(UnBindPlatform.QQ_OPENID.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void bindThirdAccount(String nique_id, int type) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingDismis();
            return;
        }
        try {
            try {
                AccountBindThirdwaiRequestBean accountBindThirdwaiRequestBean = new AccountBindThirdwaiRequestBean();
                accountBindThirdwaiRequestBean.setUid(this.accountBean.getUid());
                accountBindThirdwaiRequestBean.setToken(this.accountBean.getToken());
                accountBindThirdwaiRequestBean.setUnique_id(nique_id);
                accountBindThirdwaiRequestBean.setType(type);
                accountBindThirdwaiRequestBean.setSign(com.join.mgps.Util.k2.g(accountBindThirdwaiRequestBean));
                AccountResultMainBean<AccountLoginresultData> accountResultMainBeanM = this.rpcAccountClient.M(accountBindThirdwaiRequestBean.getParams());
                if (accountResultMainBeanM != null && accountResultMainBeanM.getData() != null) {
                    if (accountResultMainBeanM.getData().is_success()) {
                        checkUserInfo();
                        error("绑定成功");
                    } else {
                        error(accountResultMainBeanM.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            showLodingDismis();
        }
    }

    @Click
    void bindWechartLayout() {
        if (this.accountBean.getIsBindWx() != 1) {
            authorize(ShareSDK.getPlatform(Wechat.NAME));
        } else {
            checkUnbind(UnBindPlatform.WEIXIN_OPENID.name());
        }
    }

    @Click
    void bindWeiboLayout() {
        if (this.accountBean.getIsBindWb() != 1) {
            authorize(ShareSDK.getPlatform(SinaWeibo.NAME));
        } else {
            checkUnbind(UnBindPlatform.WB_OPENID.name());
        }
    }

    public void checkUnbind(String platformType) {
        String str;
        String str2;
        String str3;
        String str4;
        if (platformType.equals(UnBindPlatform.QQ_OPENID.name())) {
            str = "QQ";
        } else if (platformType.equals(UnBindPlatform.WEIXIN_OPENID.name())) {
            str = "微信";
        } else {
            str = platformType.equals(UnBindPlatform.WB_OPENID.name()) ? "微博" : "";
        }
        if (com.join.mgps.Util.t2.h(this.accountBean.getMobile())) {
            this.hasPhoneNumber = false;
            str4 = "无法解除绑定";
            str3 = "解除第三方帐号必须绑定手机号";
            str2 = "绑定手机";
        } else {
            String str5 = "是否解除" + str + "绑定？";
            this.hasPhoneNumber = true;
            str2 = "解除绑定";
            str3 = "解绑后将无法使用" + str + "帐号登录悟饭游戏厅";
            str4 = str5;
        }
        new com.join.mgps.dialog.b(this.context, R.style.HKDialogLoading).d("取消").g(str3).j(str2).k(str4).i(new c(platformType)).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkUserInfo() {
        UserInfo userInfo = (UserInfo) ObjectUtils.b(AccountUtil_.getInstance_(getApplicationContext()).getAccountData());
        this.accountBean = userInfo;
        if (userInfo != null && com.join.android.app.common.utils.m.j(this.context)) {
            try {
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.accountBean.getUid());
                bVarNewBuilder.setToken(this.accountBean.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
                if (responseResultA != null) {
                    if (responseResultA.getError() == 200) {
                        checkUserInfoSuccess(responseResultA.getData());
                    } else if (responseResultA.getError() == 701) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                        finish();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkUserInfoSuccess(UserInfo accountData) {
        if (this.accountBean == null || accountData == null || accountData.getUid() == 0) {
            return;
        }
        this.accountBean = this.accountBean.toBuilder().setAccount(accountData.getAccount()).setAvatarSrc(accountData.getAvatarSrc()).setPapaMoney(accountData.getPapaMoney()).setMobile(accountData.getMobile()).setGender(accountData.getGender()).setUid(accountData.getUid()).setLevel(accountData.getLevel()).setAccount(accountData.getAccount()).setNickname(accountData.getNickname()).setExp(accountData.getExp()).setGameTime(accountData.getGameTime()).setSecretKey(accountData.getSecretKey()).setPwdSetUp(accountData.getPwdSetUp()).setIsAnchor(accountData.getIsAnchor()).setIsBindWx(accountData.getIsBindWx()).setIsBindWb(accountData.getIsBindWb()).setIsBindQq(accountData.getIsBindQq()).build();
        AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
        showUI();
    }

    @Override // com.join.mgps.dialog.z0.c
    public void checkedGender(int gender) {
        if (this.accountBean.getGender() == gender) {
            return;
        }
        this.accountBean = this.accountBean.toBuilder().setGender(gender).build();
        if (gender == 1) {
            this.xingbie.setText("男");
        } else {
            this.xingbie.setText("女");
        }
        updatedata();
    }

    void deleteLocalUserIcon() {
        try {
            String localUserIcon = AccountUtil_.getInstance_(this).getLocalUserIcon();
            if (com.join.mgps.Util.t2.i(localUserIcon)) {
                File file = new File(localUserIcon);
                if (file.exists()) {
                    file.delete();
                    Fresco.getImagePipeline().e(com.join.android.app.common.utils.l.H(file));
                }
            }
            AccountUtil_.getInstance_(this).setLocalUserIcon(null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dialogLoading() {
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Click
    void exitLogin() {
        deleteLocalUserIcon();
        loginOutBack();
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
        this.accountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        clearCheckIn();
        k6.a.a(this.context);
        com.join.mgps.Util.a3.b(this.context).d("退出登录成功");
        this.prefDef.singleGameShowDialog().g("");
        finish();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        int i10;
        int i11 = msg.what;
        int i12 = 2;
        if (i11 == 2) {
            com.join.mgps.Util.a3.b(this).d("取消授权");
        } else if (i11 == 4) {
            this.isWeichatLoding = false;
            ShareDataBean shareDataBean = (ShareDataBean) msg.obj;
            HashMap<String, Object> res = shareDataBean.getRes();
            Iterator<String> it2 = res.keySet().iterator();
            String type = shareDataBean.getType();
            if (type.equals(QQ.NAME)) {
                while (it2.hasNext()) {
                    String next = it2.next();
                    if (next.equals("nickname")) {
                    }
                    if (next.equals("gender")) {
                        String str = (String) res.get(next);
                        if (com.join.mgps.Util.t2.i(str)) {
                            str.equals("男");
                        }
                    }
                }
                i10 = 1;
            } else {
                i10 = -1;
            }
            if (type.equals(Wechat.NAME)) {
                while (it2.hasNext()) {
                    String next2 = it2.next();
                    if (next2.equals("nickname")) {
                    }
                    if (next2.equals(ArticleInfo.USER_SEX)) {
                        ((Integer) res.get(next2)).intValue();
                    }
                }
            } else {
                i12 = i10;
            }
            if (type.equals(SinaWeibo.NAME)) {
                while (it2.hasNext()) {
                    String next3 = it2.next();
                    if (next3.equals("name")) {
                    }
                    if (next3.equals("gender")) {
                        String str2 = (String) res.get(next3);
                        if (com.join.mgps.Util.t2.i(str2)) {
                            str2.equals(com.kuaishou.weapon.p0.t.f74888m);
                        }
                    }
                }
                i12 = 3;
            }
            dialogLoading();
            this.dialog.setCancelable(true);
            this.dialog.setCanceledOnTouchOutside(false);
            bindThirdAccount(shareDataBean.getUserId(), i12);
        }
        return false;
    }

    @Click
    void iconLayout() {
        this.accountBean = (UserInfo) ObjectUtils.b(AccountUtil_.getInstance_(getApplicationContext()).getAccountData());
        MGChooseIconActivity_.intent(this.context).a(1).start();
    }

    @Click
    void levelLayout() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72382s);
        ShareWebActivity_.intent(this).b(intentDateBean).start();
    }

    @Click
    void llRealName() {
        IntentUtil.getInstance().goShareWebActivity(this.context, com.join.mgps.rpc.h.H + "/user/activity/real_name/index");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loginOutBack() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                AccoutLoginOutRequest accoutLoginOutRequest = new AccoutLoginOutRequest();
                accoutLoginOutRequest.setUid(this.accountBean.getUid() + "");
                accoutLoginOutRequest.setSign(com.join.mgps.Util.k2.g(accoutLoginOutRequest));
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanG = this.rpcAccountClient.g(accoutLoginOutRequest.getParams());
                if (accountResultMainBeanG != null && accountResultMainBeanG.getError() == 0) {
                    if (accountResultMainBeanG.getData().is_success()) {
                        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(getApplicationContext());
                        deleteLocalUserIcon();
                    } else {
                        showToast(accountResultMainBeanG.getData().getError_msg());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Click
    void nameLayout() {
        this.nameCheckDiaog.show();
        EditText editText = (EditText) this.nameCheckDiaog.findViewById(R.id.name);
        Button button = (Button) this.nameCheckDiaog.findViewById(R.id.ok);
        TextView textView = (TextView) this.nameCheckDiaog.findViewById(R.id.changeNickNameNotice);
        editText.addTextChangedListener(new a());
        com.join.mgps.Util.t.g(editText);
        button.setOnClickListener(new b(editText));
        textView.setText(new PrefDef_(this.context).changeNickNameNotice().d());
    }

    @Override // w6.a.InterfaceC1253a
    public void onAppMsgChange() {
        checkUserInfoSuccess(AccountUtil_.getInstance_(getApplicationContext()).getAccountData());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
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
        this.distroyed = true;
        super.onDestroy();
        w6.a.b().d(this);
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
    protected void onResume() {
        super.onResume();
        checkUserInfo();
    }

    @Click
    void pabiLayout() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72382s);
        ShareWebActivity_.intent(this).b(intentDateBean).start();
    }

    @Click
    void passwordLayout() {
        MyAccountSettingPasswordActivity_.intent(this.context).start();
    }

    @Click
    void phoneLayout() {
        if (com.join.mgps.Util.t2.h(this.accountBean.getMobile())) {
            MyAccountBindPhoneActivity_.intent(this.context).start();
        } else {
            MyAccountInsteadPhoneActivity_.intent(this.context).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        com.join.mgps.dialog.f1 f1Var;
        if (this.distroyed || (f1Var = this.dialog) == null) {
            return;
        }
        f1Var.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String error_msg) {
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }

    void showUI() {
        this.avatarSrcOld = this.accountBean.getAvatarSrc();
        com.join.android.app.common.utils.l.u(this.iconImage, this.accountBean.getAvatarSrc());
        if (this.accountBean.getIsBindWx() != 1) {
            this.hasBindWechat.setText("未绑定");
            this.hasBindWechat.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.hasBindWechat.setText("已绑定");
            this.hasBindWechat.setTextColor(Color.parseColor("#8a8a8a"));
        }
        if (this.accountBean.getIsBindWb() != 1) {
            this.hasBindWebo.setText("未绑定");
            this.hasBindWebo.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.hasBindWebo.setText("已绑定");
            this.hasBindWebo.setTextColor(Color.parseColor("#8a8a8a"));
        }
        if (this.accountBean.getIsBindQq() != 1) {
            this.hasBindQQ.setText("未绑定");
            this.hasBindQQ.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.hasBindQQ.setText("已绑定");
            this.hasBindQQ.setTextColor(Color.parseColor("#8a8a8a"));
        }
        this.accountNameTv.setText(this.accountBean.getAccount());
        this.name.setText(this.accountBean.getNickname());
        this.nameOld = this.accountBean.getNickname();
        this.pabi.setText(this.accountBean.getPapaMoney() + "");
        if (this.accountBean.getGender() == 1) {
            this.xingbie.setText("男");
        } else {
            this.xingbie.setText("女");
        }
        if (this.accountBean.getPwdSetUp() == 0) {
            this.passwordTv.setText("未设置");
            this.passwordTv.setTextColor(-49602);
        } else {
            this.passwordTv.setText("点击修改");
            this.passwordTv.setTextColor(-7697782);
        }
        if (com.join.mgps.Util.t2.i(this.accountBean.getMobile())) {
            if (this.accountBean.getMobile().length() == 11) {
                try {
                    this.phoneTv.setText(this.accountBean.getMobile().substring(0, 3) + "****" + this.accountBean.getMobile().substring(7, 11));
                } catch (Exception unused) {
                }
            }
            this.phoneTv.setTextColor(-7697782);
        } else {
            this.phoneTv.setText("未绑定");
            this.phoneTv.setTextColor(-49602);
        }
        if (this.accountBean.getMemberTitle() == null || TextUtils.isEmpty(this.accountBean.getMemberTitle().getBattleTitle())) {
            this.tv_rank.setText("--");
        } else {
            this.tv_rank.setText(this.accountBean.getMemberTitle().getBattleTitle());
        }
    }

    @Click
    void unSubscribe() {
        IntentUtil.getInstance().goShareWebActivity(this.context, com.join.mgps.rpc.h.f72349j + "/static/cancelAccount/index.html");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateName() {
        UserInfo userInfo = this.accountBean;
        if (userInfo != null) {
            this.name.setText(userInfo.getNickname());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void updatedata() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("没有网络，请先检查网络。");
            return;
        }
        dialogLoading();
        try {
            AccountChangeUserinfoRequestBean accountChangeUserinfoRequestBean = new AccountChangeUserinfoRequestBean();
            accountChangeUserinfoRequestBean.setGender(this.accountBean.getGender());
            accountChangeUserinfoRequestBean.setAccount(this.accountBean.getAccount());
            accountChangeUserinfoRequestBean.setNick_name(this.accountBean.getNickname());
            accountChangeUserinfoRequestBean.setUid(this.accountBean.getUid());
            accountChangeUserinfoRequestBean.setToken(this.accountBean.getToken());
            accountChangeUserinfoRequestBean.setAvatar_src(this.accountBean.getAvatarSrc());
            accountChangeUserinfoRequestBean.setSign(com.join.mgps.Util.k2.g(accountChangeUserinfoRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanH = this.rpcAccountClient.h(accountChangeUserinfoRequestBean.getParams());
            if (accountResultMainBeanH == null || accountResultMainBeanH.getError() != 0) {
                showToast("连接失败，请稍后再试。");
            } else if (accountResultMainBeanH.getData().is_success()) {
                AccountUtil_.getInstance_(this.context).saveAccountData(this.accountBean, this.context);
                updateName();
            } else {
                error(accountResultMainBeanH.getData().getError_msg(), this.accountBean.getNickname());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            showToast("连接失败，请稍后再试。");
        }
    }

    @Click
    void xingbieLayout() {
        this.dialogChangeGender.b(this);
        this.dialogChangeGender.c(this.accountBean.getGender());
        this.dialogChangeGender.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String error_msg, String nickname) {
        if (error_msg.contains("一个月")) {
            this.accountBean = this.accountBean.toBuilder().setNickname(this.nameOld).build();
            this.name.setText(this.nameOld);
        }
        com.join.mgps.Util.a3.b(this.context).d(error_msg);
    }
}
