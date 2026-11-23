package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class AccountUpgradeActivity_ extends AccountUpgradeActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50303c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50304d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50305e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f50306f;

        a(final String val$nickname, final String val$pwd, final String val$phone, final String val$validateCode, final int val$subNum) {
            this.f50302b = val$nickname;
            this.f50303c = val$pwd;
            this.f50304d = val$phone;
            this.f50305e = val$validateCode;
            this.f50306f = val$subNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.showDialog(this.f50302b, this.f50303c, this.f50304d, this.f50305e, this.f50306f);
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50308b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50309c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50310d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50311e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f50312f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$nickname, final String val$pwd, final String val$phone, final String val$validateCode, final int val$subNum) {
            super(id2, delay, serial);
            this.f50308b = val$nickname;
            this.f50309c = val$pwd;
            this.f50310d = val$phone;
            this.f50311e = val$validateCode;
            this.f50312f = val$subNum;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountUpgradeActivity_.super.touristPerfectInfo(this.f50308b, this.f50309c, this.f50310d, this.f50311e, this.f50312f);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountUpgradeActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50315b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final String val$mobile) {
            super(id2, delay, serial);
            this.f50315b = val$mobile;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountUpgradeActivity_.super.getSMSCOde(this.f50315b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.back_image();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.alternative();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.submit();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountUpgradeActivity_.this.getValidateCode();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.notifyPerfectInfoSuccess();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50322b;

        j(final String val$message) {
            this.f50322b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.error(this.f50322b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.notifyLoginSuccess();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.notifyGetSendMMSCodeSuccess();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountUpgradeActivity_.super.resetTimeCount();
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50327a;

        public n(Context context) {
            super(context, (Class<?>) AccountUpgradeActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50327a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) AccountUpgradeActivity_.class);
            this.f50327a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static n intent(Context context) {
        return new n(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new j(message), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void getSMSCOde(final String mobile) {
        org.androidannotations.api.a.l(new d("", 0L, "", mobile));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void notifyGetSendMMSCodeSuccess() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void notifyLoginSuccess() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void notifyPerfectInfoSuccess() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_account_upgrade);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.nickname = (EditText) hasViews.internalFindViewById(R.id.nickname);
        this.password = (EditText) hasViews.internalFindViewById(R.id.password);
        this.phone = (EditText) hasViews.internalFindViewById(R.id.phone);
        this.validateCode = (EditText) hasViews.internalFindViewById(R.id.validateCode);
        this.getValidateCode = (Button) hasViews.internalFindViewById(R.id.getValidateCode);
        this.submit = (Button) hasViews.internalFindViewById(R.id.submit);
        this.alternative = (LinearLayout) hasViews.internalFindViewById(R.id.alternative);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        LinearLayout linearLayout = this.alternative;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new f());
        }
        Button button = this.submit;
        if (button != null) {
            button.setOnClickListener(new g());
        }
        Button button2 = this.getValidateCode;
        if (button2 != null) {
            button2.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void resetTimeCount() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void showDialog(final String nickname, final String pwd, final String phone, final String validateCode, final int subNum) {
        org.androidannotations.api.b.e("", new a(nickname, pwd, phone, validateCode, subNum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountUpgradeActivity
    public void touristPerfectInfo(final String nickname, final String pwd, final String phone, final String validateCode, final int subNum) {
        org.androidannotations.api.a.l(new b("", 0L, "", nickname, pwd, phone, validateCode, subNum));
    }

    public static n intent(Fragment supportFragment) {
        return new n(supportFragment);
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
