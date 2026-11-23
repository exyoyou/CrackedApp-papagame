package com.join.mgps.activity;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.SendMobileCodeRequestBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.TouristPerfectInfoRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_account_upgrade)
public class AccountUpgradeActivity extends BaseActivity {

    @ViewById
    LinearLayout alternative;

    @ViewById
    Button getValidateCode;

    @ViewById
    TextView layout_title;
    com.join.mgps.customview.t mDialog = null;

    @ViewById
    EditText nickname;

    @ViewById
    EditText password;

    @ViewById
    EditText phone;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    Button submit;
    private c time;

    @ViewById
    EditText validateCode;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50295c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50296d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50297e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f50298f;

        a(final String val$nickname, final String val$pwd, final String val$phone, final String val$validateCode, final int val$subNum) {
            this.f50294b = val$nickname;
            this.f50295c = val$pwd;
            this.f50296d = val$phone;
            this.f50297e = val$validateCode;
            this.f50298f = val$subNum;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity.this.touristPerfectInfo(this.f50294b, this.f50295c, this.f50296d, this.f50297e, this.f50298f);
            AccountUpgradeActivity.this.dialogDismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity.this.dialogDismiss();
        }
    }

    class c extends CountDownTimer {
        public c(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            AccountUpgradeActivity.this.getValidateCode.setText("获取验证码");
            AccountUpgradeActivity.this.getValidateCode.setBackgroundResource(R.drawable.get_validate_code_default);
            AccountUpgradeActivity.this.getValidateCode.setClickable(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            AccountUpgradeActivity.this.getValidateCode.setClickable(false);
            AccountUpgradeActivity.this.getValidateCode.setBackgroundResource(R.drawable.get_validate_code_pressed);
            AccountUpgradeActivity.this.getValidateCode.setText((millisUntilFinished / 1000) + "秒");
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
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

    private void initActionBar() {
        this.layout_title.setText("完善资料，享受更多特权");
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private boolean matchStringLength(String s10, int min, int max) {
        int stringLength = getStringLength(s10);
        return stringLength >= min && stringLength <= max;
    }

    private boolean phoneMatch(String phone) {
        if (com.join.mgps.Util.t2.h(phone)) {
            error("手机号码不能为空！");
            return false;
        }
        if (Pattern.compile("^[1][0-9]{10}$").matcher(phone).matches()) {
            return true;
        }
        error("手机号码格式错误！");
        return false;
    }

    @AfterViews
    void afterViews() {
        this.time = new c(60000L, 1000L);
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        initActionBar();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Click
    void alternative() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Background
    void getSMSCOde(String mobile) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            resetTimeCount();
            error(getResources().getString(R.string.net_connect_failed));
            return;
        }
        if (!phoneMatch(mobile)) {
            resetTimeCount();
            return;
        }
        try {
            SendMobileCodeRequestBean sendMobileCodeRequestBean = new SendMobileCodeRequestBean();
            sendMobileCodeRequestBean.setMobile(mobile);
            sendMobileCodeRequestBean.setType(8);
            sendMobileCodeRequestBean.setSign(com.join.mgps.Util.k2.g(sendMobileCodeRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanE = this.rpcAccountClient.e(sendMobileCodeRequestBean.getParams());
            if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 0) {
                resetTimeCount();
                error("获取验证码失败，请稍后再试。");
            } else if (accountResultMainBeanE.getData().is_success()) {
                notifyGetSendMMSCodeSuccess();
            } else {
                resetTimeCount();
                error(accountResultMainBeanE.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            resetTimeCount();
            error("获取验证码失败，请稍后再试。");
        }
    }

    @Click
    void getValidateCode() {
        String string = this.phone.getText().toString();
        this.time.start();
        getSMSCOde(string);
    }

    @UiThread
    void notifyGetSendMMSCodeSuccess() {
    }

    @UiThread
    void notifyLoginSuccess() {
        submit();
    }

    @UiThread
    void notifyPerfectInfoSuccess() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar != null) {
            if (tVar.isShowing()) {
                this.mDialog.dismiss();
            }
            this.mDialog = null;
        }
    }

    @UiThread
    void resetTimeCount() {
        c cVar = this.time;
        if (cVar != null) {
            cVar.cancel();
            this.time.onFinish();
        }
    }

    @UiThread
    void showDialog(final String nickname, final String pwd, final String phone, final String validateCode, final int subNum) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        this.mDialog = tVar;
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) this.mDialog.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.mDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.mDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.mDialog.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.mDialog.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText("该手机已绑定，是否解除绑定关系？");
        textView3.setText("*绑定成功后将发送账号到你的手机");
        button2.setText("解除绑定");
        button.setText("取消");
        button2.setOnClickListener(new a(nickname, pwd, phone, validateCode, subNum));
        button.setOnClickListener(new b());
        com.join.mgps.customview.t tVar2 = this.mDialog;
        if (tVar2 == null || tVar2.isShowing()) {
            return;
        }
        this.mDialog.show();
    }

    @Click
    void submit() {
        String string = this.nickname.getText().toString();
        String string2 = this.password.getText().toString();
        String string3 = this.phone.getText().toString();
        String string4 = this.validateCode.getText().toString();
        if (isLogined(this)) {
            touristPerfectInfo(string, string2, string3, string4, 1);
        } else {
            touristLogin();
        }
    }

    @Background
    void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error(getResources().getString(R.string.net_connect_failed));
            return;
        }
        if (isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(getApplicationContext()).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(new PrefDef_(this).touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI == null || accountResultMainBeanI.getError() != 0) {
                error("信息完善失败，请稍后再试。");
            } else if (accountResultMainBeanI.getData().is_success()) {
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(g8.a.a(accountResultMainBeanI.getData().getUser_info()), getApplicationContext());
                notifyLoginSuccess();
            } else {
                error(accountResultMainBeanI.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            error("信息完善失败，请稍后再试。");
        }
    }

    @Background
    void touristPerfectInfo(String nickname, String pwd, String phone, String validateCode, int subNum) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error(getResources().getString(R.string.net_connect_failed));
            return;
        }
        if (!isLogined(this)) {
            touristLogin();
            return;
        }
        if (!matchStringLength(nickname, 1, 20)) {
            error("用户名格式有误，输入1至24位字母或数字或汉字");
            return;
        }
        if (!matchStringLength(pwd, 6, 16)) {
            error("密码格式有误，输入6至16位字母或数字");
            return;
        }
        if (phoneMatch(phone)) {
            if (com.join.mgps.Util.t2.h(validateCode)) {
                error("验证码不能为空！");
                return;
            }
            UserInfo userInfoAccountBean = accountBean(this);
            int uid = userInfoAccountBean != null ? userInfoAccountBean.getUid() : 0;
            try {
                TouristPerfectInfoRequestBean touristPerfectInfoRequestBean = new TouristPerfectInfoRequestBean();
                String strA = com.join.android.app.common.utils.q.n(getApplicationContext()).A();
                touristPerfectInfoRequestBean.setSubmit_number(subNum);
                touristPerfectInfoRequestBean.setVersion(strA);
                touristPerfectInfoRequestBean.setDevice_id("");
                touristPerfectInfoRequestBean.setMac("");
                touristPerfectInfoRequestBean.setSource("2");
                touristPerfectInfoRequestBean.setUid(uid);
                touristPerfectInfoRequestBean.setMobile(phone);
                touristPerfectInfoRequestBean.setCode(validateCode);
                touristPerfectInfoRequestBean.setNickname(nickname);
                touristPerfectInfoRequestBean.setPassword(pwd);
                touristPerfectInfoRequestBean.setSign(com.join.mgps.Util.k2.g(touristPerfectInfoRequestBean));
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanX = this.rpcAccountClient.x(touristPerfectInfoRequestBean.getParams());
                if (accountResultMainBeanX == null || accountResultMainBeanX.getError() != 0) {
                    resetTimeCount();
                    error("信息完善失败，请稍后再试。");
                } else if (accountResultMainBeanX.getData().is_success()) {
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(g8.a.a(accountResultMainBeanX.getData().getUser_info()), getApplicationContext());
                    notifyPerfectInfoSuccess();
                } else {
                    resetTimeCount();
                    AccountTokenSuccess data = accountResultMainBeanX.getData();
                    if (data == null) {
                        return;
                    }
                    error(data.getError_msg());
                    if (com.join.mgps.Util.t2.i(data.getError_code()) && data.getError_code().equals(PointType.ANTI_SPAM_TOUCH)) {
                        showDialog(nickname, pwd, phone, validateCode, 2);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                resetTimeCount();
                error("信息完善失败，请稍后再试。");
            }
        }
    }
}
