package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountReginBean;
import com.join.mgps.dto.RewardBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyAccountMMSCodeReginFinish_ extends MyAccountMMSCodeReginFinish implements xc.a, zc.a, zc.b {
    public static final String ACCOUNT_REGIN_BEAN_EXTRA = "accountReginBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.resendgetCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountReginBean f54992b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final AccountReginBean val$reginBean) {
            super(id2, delay, serial);
            this.f54992b = val$reginBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.registerSendCode(this.f54992b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54994b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$code) {
            super(id2, delay, serial);
            this.f54994b = val$code;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeReginFinish_.super.registerSendCode(this.f54994b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish_.this.backImage();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish_.this.sendCode();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeReginFinish_.this.resendCode();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.showLoding();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.showLodingDismis();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.reGetCodeSuccess();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55002b;

        j(final String val$error_msg) {
            this.f55002b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.error(this.f55002b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountBean f55004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RewardBean f55005c;

        k(final AccountBean val$user_info, final RewardBean val$rewardBean) {
            this.f55004b = val$user_info;
            this.f55005c = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.registerSuccess(this.f55004b, this.f55005c);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeReginFinish_.super.sendCodeSuccess();
        }
    }

    public static class m extends org.androidannotations.api.builder.a<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55008a;

        public m(Context context) {
            super(context, (Class<?>) MyAccountMMSCodeReginFinish_.class);
        }

        public m a(AccountReginBean accountReginBean) {
            return (m) super.extra(MyAccountMMSCodeReginFinish_.ACCOUNT_REGIN_BEAN_EXTRA, accountReginBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55008a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, requestCode);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, requestCode, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public m(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountMMSCodeReginFinish_.class);
            this.f55008a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(ACCOUNT_REGIN_BEAN_EXTRA)) {
            return;
        }
        this.accountReginBean = (AccountReginBean) extras.getSerializable(ACCOUNT_REGIN_BEAN_EXTRA);
    }

    public static m intent(Context context) {
        return new m(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new j(error_msg), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.my_account_regin_sendmmscode_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.mmsCode = (EditText) hasViews.internalFindViewById(R.id.mmsCode);
        this.resendCode = (TextView) hasViews.internalFindViewById(R.id.resendCode);
        this.phoneNumber = (TextView) hasViews.internalFindViewById(R.id.phoneNumber);
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.sendCode = (Button) hasViews.internalFindViewById(R.id.sendCode);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        Button button = this.sendCode;
        if (button != null) {
            button.setOnClickListener(new e());
        }
        TextView textView = this.resendCode;
        if (textView != null) {
            textView.setOnClickListener(new f());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void reGetCodeSuccess() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void registerSendCode(final AccountReginBean reginBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", reginBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void registerSuccess(final AccountBean user_info, final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new k(user_info, rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void resendgetCode() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void sendCodeSuccess() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    public static m intent(Fragment supportFragment) {
        return new m(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeReginFinish
    public void registerSendCode(final String code) {
        org.androidannotations.api.a.l(new c("", 0L, "", code));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
