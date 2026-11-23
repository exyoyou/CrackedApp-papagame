package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
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
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.LoginInputPassActivity_;
import com.join.mgps.dto.AccountMMSCheckCodebean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.MMSRequesBean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.my_account_regin_sendmmscode_layout)
public class MyAccountMMSCodeGetpassbackFinish extends BaseAccountActivity {
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
    private f smsObserver;
    g time;
    int codeSize = 0;
    public Handler smsHandler = new a();
    private Uri SMS_INBOX = Uri.parse("content://sms/");

    class a extends Handler {
        a() {
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish.this.showDialog();
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
            MyAccountMMSCodeGetpassbackFinish.this.codeSize = charSequence.length();
            MyAccountMMSCodeGetpassbackFinish myAccountMMSCodeGetpassbackFinish = MyAccountMMSCodeGetpassbackFinish.this;
            if (myAccountMMSCodeGetpassbackFinish.codeSize == 6) {
                myAccountMMSCodeGetpassbackFinish.sendCode.setEnabled(true);
            } else {
                myAccountMMSCodeGetpassbackFinish.sendCode.setEnabled(false);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f54965b;

        d(final Dialog val$dialog) {
            this.f54965b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f54965b.dismiss();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Dialog f54967b;

        e(final Dialog val$dialog) {
            this.f54967b = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish.this.finish();
            this.f54967b.dismiss();
        }
    }

    class f extends ContentObserver {
        public f(Context context, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            MyAccountMMSCodeGetpassbackFinish.this.getSmsFromPhone();
        }
    }

    class g extends CountDownTimer {
        public g(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            MyAccountMMSCodeGetpassbackFinish.this.resendCode.setText("重新获取");
            MyAccountMMSCodeGetpassbackFinish.this.resendCode.setEnabled(true);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            MyAccountMMSCodeGetpassbackFinish.this.resendCode.setEnabled(false);
            MyAccountMMSCodeGetpassbackFinish.this.resendCode.setText("" + (millisUntilFinished / 1000) + "S");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog() {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this, R.style.MyDialog);
        tVar.setContentView(R.layout.delete_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        Button button3 = (Button) tVar.findViewById(R.id.dialog_button_cancle);
        button2.setText("返回");
        button3.setText("等待");
        ((TextView) tVar.findViewById(R.id.tip_title)).setText("接收短信稍有延迟，确认返回吗？");
        button.setOnClickListener(new d(tVar));
        ((Button) tVar.findViewById(R.id.dialog_button_ok)).setOnClickListener(new e(tVar));
        tVar.show();
    }

    @AfterViews
    void afterview() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.titleText.setText("填写验证码");
        this.sendCode.setEnabled(false);
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        String stringExtra = getIntent().getStringExtra("phonenumber");
        this.phonemuber = stringExtra;
        this.phonemuber = stringExtra.replace("+86", "");
        this.sendCode.setEnabled(false);
        setOnclickBack(new b());
        this.phoneNumber.setText(this.phonemuber);
        try {
            this.phonemuber.substring(0, 3);
            this.phonemuber.substring(3, 7);
            this.phonemuber.substring(7, 11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        g gVar = new g(60000L, 1000L);
        this.time = gVar;
        gVar.start();
        this.mmsCode.addTextChangedListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String error_msg) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void reGetCodeSuccess() {
        com.join.mgps.Util.a3.b(this).d("获取验证码成功");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void registerSendCode(String code) {
        int i10;
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
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
            if (accountResultMainBeanD == null || accountResultMainBeanD.getError() != 0) {
                error("连接失败，请稍后再试。");
            } else if (accountResultMainBeanD.getData().is_success()) {
                sendCodeSuccess();
            } else {
                error(accountResultMainBeanD.getData().getError_msg());
            }
            showLodingDismis();
        } catch (Exception e11) {
            e11.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }

    @Click
    void resendCode() {
        resendgetCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void resendgetCode() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        this.time.start();
        try {
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.phonemuber);
            mMSRequesBean.setType(MMSRequesBean.TYPE_FORGOT);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sendCodeSuccess() {
        Intent intent = new Intent(this, (Class<?>) MyAccountGetpassByPhone_.class);
        intent.putExtra(LoginInputPassActivity_.PHONE_NUMBER_EXTRA, this.phonemuber);
        intent.putExtra("MMSCode", this.code);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingDismis() {
        this.dialog.dismiss();
    }
}
