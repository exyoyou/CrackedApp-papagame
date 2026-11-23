package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.AccountRegisterRequestBean;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import com.join.mgps.dto.RewardBean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_regin_sendmmscode_layout)
public class MyAccountMMSCodeReginFinish extends BaseActivity {

    @Extra
    AccountReginBean accountReginBean;
    MApplication application;
    private String code;
    private com.join.mgps.dialog.f1 dialog;

    @ViewById
    EditText mmsCode;

    @ViewById
    TextView phoneNumber;
    private String phonemuber;

    @ViewById
    TextView resendCode;
    com.join.mgps.rpc.b rpcAccountClient;

    @ViewById
    Button sendCode;
    private e smsObserver;
    f time;

    @ViewById
    TextView titleText;
    int codeSize = 0;
    public Handler smsHandler = new a();
    private Uri SMS_INBOX = Uri.parse("content://sms/");

    class a extends Handler {
        a() {
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
            MyAccountMMSCodeReginFinish.this.codeSize = charSequence.length();
            MyAccountMMSCodeReginFinish myAccountMMSCodeReginFinish = MyAccountMMSCodeReginFinish.this;
            if (myAccountMMSCodeReginFinish.codeSize == 6) {
                myAccountMMSCodeReginFinish.sendCode.setEnabled(true);
            } else {
                myAccountMMSCodeReginFinish.sendCode.setEnabled(false);
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f54985b;

        c(final Dialog val$dialog) {
            this.f54985b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f54985b.dismiss();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f54987b;

        d(final Dialog val$dialog) {
            this.f54987b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish.this.finish();
            this.f54987b.dismiss();
        }
    }

    class e extends ContentObserver {
        public e(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            MyAccountMMSCodeReginFinish.this.getSmsFromPhone();
        }
    }

    class f extends CountDownTimer {
        public f(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountMMSCodeReginFinish.this.resendCode.setText("重新获取");
            MyAccountMMSCodeReginFinish.this.resendCode.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            MyAccountMMSCodeReginFinish.this.resendCode.setEnabled(false);
            MyAccountMMSCodeReginFinish.this.resendCode.setText("重新获取(" + (millisUntilFinished / 1000) + ")");
        }
    }

    private void showDialog() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        Button button3 = (Button) tVar.findViewById(R.id.dialog_button_cancle);
        button2.setText("返回");
        button3.setText("等待");
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("接收短信稍有延迟，确认返回吗？");
        button.setOnClickListener(new c(tVar));
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new d(tVar));
        tVar.show();
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.sendCode.setEnabled(false);
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.titleText.setText("填写验证码");
        String mobile = this.accountReginBean.getMobile();
        this.phonemuber = mobile;
        String strReplace = mobile.replace("+86", "");
        this.phonemuber = strReplace;
        try {
            String strSubstring = strReplace.substring(0, 3);
            String strSubstring2 = this.phonemuber.substring(3, 7);
            String strSubstring3 = this.phonemuber.substring(7, 11);
            this.phoneNumber.setText("+86 " + strSubstring + " " + strSubstring2 + " " + strSubstring3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        f fVar = new f(60000L, 1000L);
        this.time = fVar;
        fVar.start();
        this.mmsCode.addTextChangedListener(new b());
    }

    @Click
    void backImage() {
        showDialog();
    }

    @UiThread
    void error(String error_msg) {
        com.join.mgps.Util.a3.b(this).d(error_msg);
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
                        this.mmsCode.setText(strGroup);
                        return;
                    }
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        showDialog();
        return false;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @UiThread
    void reGetCodeSuccess() {
        com.join.mgps.Util.a3.b(this).d("获取验证码成功");
    }

    @Background
    void registerSendCode(AccountReginBean reginBean) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        showLoding();
        try {
            AccountRegisterRequestBean accountRegisterRequestBean = new AccountRegisterRequestBean();
            accountRegisterRequestBean.setMobile(reginBean.getMobile());
            accountRegisterRequestBean.setPassword(reginBean.getPassword());
            accountRegisterRequestBean.setSource(reginBean.getSource());
            accountRegisterRequestBean.setCode(reginBean.getCode());
            accountRegisterRequestBean.setAvatar_src("");
            accountRegisterRequestBean.setGender(1);
            accountRegisterRequestBean.setNick_name(reginBean.getNickname());
            accountRegisterRequestBean.setAccount("");
            accountRegisterRequestBean.setMac("");
            com.join.mgps.Util.t2.i("");
            accountRegisterRequestBean.setDevice_id("");
            accountRegisterRequestBean.setSign(com.join.mgps.Util.k2.g(accountRegisterRequestBean));
            AccountResultBean<AccountLoginresultData<AccountBean>> accountResultBeanA = this.rpcAccountClient.a(accountRegisterRequestBean.getParams());
            if (accountResultBeanA == null || accountResultBeanA.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultBeanA.getData().isIs_success()) {
                AccountUtil_.getInstance_(this).saveAccountData(g8.a.a(accountResultBeanA.getData().getUser_info()), this);
                UtilsMy.S4(this, accountResultBeanA.getData().getGame_list_permission());
                UtilsMy.R(this);
                UtilsMy.J2(this);
                registerSuccess(accountResultBeanA.getData().getUser_info(), accountResultBeanA.getData().getReward());
            } else {
                error(accountResultBeanA.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e10) {
            e10.printStackTrace();
            error("连接失败，请稍后再试。");
            showLodingDismis();
        }
    }

    @UiThread
    void registerSuccess(AccountBean user_info, RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
        this.application.j();
        MYAccountReginFinishActivity_.intent(this).a(user_info).b(1).start();
    }

    @Click
    void resendCode() {
        resendgetCode();
    }

    @Background
    void resendgetCode() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        this.time.start();
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.phonemuber);
            mMSRequesBean.setType(MMSRequesBean.TYPE_REGISTER);
            mMSRequesBean.setSign(com.join.mgps.Util.k2.g(mMSRequesBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanE = this.rpcAccountClient.e(mMSRequesBean.getParams());
            if (accountResultMainBeanE == null || accountResultMainBeanE.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultMainBeanE.getData().is_success()) {
                reGetCodeSuccess();
            } else {
                error(accountResultMainBeanE.getData().getError_msg());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            error("连接失败，请稍后再试。");
        }
    }

    @Click
    void sendCode() {
        String strTrim = this.mmsCode.getText().toString().trim();
        this.code = strTrim;
        if (com.join.mgps.Util.t2.i(strTrim) && com.join.mgps.Util.t2.j(this.code) && this.code.length() == 6) {
            registerSendCode(this.code);
        } else {
            com.join.mgps.Util.a3.b(this).d("输入格式有误");
        }
    }

    @UiThread
    void sendCodeSuccess() {
        this.accountReginBean.setCode(Integer.parseInt(this.code));
        registerSendCode(this.accountReginBean);
    }

    @UiThread
    void showLoding() {
        this.dialog.show();
    }

    @UiThread
    void showLodingDismis() {
        this.dialog.dismiss();
    }

    @Background
    void registerSendCode(String code) {
        int i10;
        if (com.join.android.app.common.utils.m.j(this)) {
            showLoding();
            try {
                AccountMMSCheckCodebean accountMMSCheckCodebean = new AccountMMSCheckCodebean();
                accountMMSCheckCodebean.setMobile(this.phonemuber);
                try {
                    i10 = Integer.parseInt(code);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    i10 = 0;
                }
                accountMMSCheckCodebean.setCode(i10);
                accountMMSCheckCodebean.setSign(com.join.mgps.Util.k2.g(accountMMSCheckCodebean));
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanD = this.rpcAccountClient.d(accountMMSCheckCodebean.getParams());
                if (accountResultMainBeanD != null && accountResultMainBeanD.getError() == 0) {
                    if (accountResultMainBeanD.getData().is_success()) {
                        sendCodeSuccess();
                    } else {
                        error(accountResultMainBeanD.getData().getError_msg());
                    }
                } else {
                    error("连接失败，请稍后再试。");
                }
                showLodingDismis();
                return;
            } catch (Exception e11) {
                e11.printStackTrace();
                error("连接失败，请稍后再试。");
                showLodingDismis();
                return;
            }
        }
        error("没有网络，请先检查网络。");
    }
}
