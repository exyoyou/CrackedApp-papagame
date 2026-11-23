package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyAccountLoginActivity_ extends MyAccountLoginActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_INDEX_EXTRA = "fromIndex";
    public static final String INTENT_FROM_EXTRA = "intentFrom";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.xieyi();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showLoding();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showLodingDismis();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54927b;

        d(final String val$message) {
            this.f54927b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.error(this.f54927b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f54929b;

        e(final UserInfo val$accountBean) {
            this.f54929b = val$accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.loginSuccess(this.f54929b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54931b;

        f(final String val$msg) {
            this.f54931b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showToast(this.f54931b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountRegisterThirdwaiRequestBean f54933b;

        g(final AccountRegisterThirdwaiRequestBean val$thirdRequestbean) {
            this.f54933b = val$thirdRequestbean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.goRegin(this.f54933b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54935b;

        h(final String val$message) {
            this.f54935b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.showMessage(this.f54935b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.reginThirdWay();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f54938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RewardBean f54939c;

        j(final UserInfo val$user_info, final RewardBean val$rewardBean) {
            this.f54938b = val$user_info;
            this.f54939c = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountLoginActivity_.super.loginSuccess(this.f54938b, this.f54939c);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.signUp();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54942b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54943c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final String val$username, final String val$password) {
            super(id2, delay, serial);
            this.f54942b = val$username;
            this.f54943c = val$password;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.getLogin(this.f54942b, this.f54943c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.joinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.tokenHasLodingByOther();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f54949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f54950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f54951f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final int val$type, final String val$userId, final String val$name, final int val$gender, final String val$userIcon) {
            super(id2, delay, serial);
            this.f54947b = val$type;
            this.f54948c = val$userId;
            this.f54949d = val$name;
            this.f54950e = val$gender;
            this.f54951f = val$userIcon;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountLoginActivity_.super.login(this.f54947b, this.f54948c, this.f54949d, this.f54950e, this.f54951f);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.loginbutnClicked();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.fergetbutn();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.loginQQ();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.loginWechat();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.loginWeibo();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.login();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.back_image();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountLoginActivity_.this.shengming();
        }
    }

    public static class x extends org.androidannotations.api.builder.a<x> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54961a;

        public x(Context context) {
            super(context, (Class<?>) MyAccountLoginActivity_.class);
        }

        public x a(int fromIndex) {
            return (x) super.extra(MyAccountLoginActivity_.FROM_INDEX_EXTRA, fromIndex);
        }

        public x b(int intentFrom) {
            return (x) super.extra("intentFrom", intentFrom);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54961a;
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

        public x(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountLoginActivity_.class);
            this.f54961a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentFrom")) {
                this.intentFrom = extras.getInt("intentFrom");
            }
            if (extras.containsKey(FROM_INDEX_EXTRA)) {
                this.fromIndex = extras.getInt(FROM_INDEX_EXTRA);
            }
        }
    }

    public static x intent(Context context) {
        return new x(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void getLogin(final String username, final String password) {
        org.androidannotations.api.a.l(new l("", 0L, "", username, password));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void goRegin(final AccountRegisterThirdwaiRequestBean thirdRequestbean) {
        org.androidannotations.api.b.e("", new g(thirdRequestbean), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void joinDevice() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void login(final int type, final String userId, final String name, final int gender, final String userIcon) {
        org.androidannotations.api.a.l(new o("", 0L, "", type, userId, name, gender, userIcon));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void loginSuccess(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new e(accountBean), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.my_account_login_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.username = (EditText) hasViews.internalFindViewById(R.id.username);
        this.passwordTitle = (TextView) hasViews.internalFindViewById(R.id.passwordTitle);
        this.userNameTitle = (TextView) hasViews.internalFindViewById(R.id.userNameTitle);
        this.password = (EditText) hasViews.internalFindViewById(R.id.password);
        this.checkBox = (CheckBox) hasViews.internalFindViewById(R.id.checkBox);
        this.loginbutn = (TextView) hasViews.internalFindViewById(R.id.loginbutn);
        this.xieyi = (TextView) hasViews.internalFindViewById(R.id.xieyi);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.signUp);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.fergetbutn);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.loginQQ);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.loginWechat);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.loginWeibo);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.login);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.shengming);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        TextView textView = this.loginbutn;
        if (textView != null) {
            textView.setOnClickListener(new p());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new q());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new r());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new s());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new t());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new u());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new v());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new w());
        }
        TextView textView2 = this.xieyi;
        if (textView2 != null) {
            textView2.setOnClickListener(new a());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void reginThirdWay() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // com.join.mgps.activity.BaseAccountActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new f(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void tokenHasLodingByOther() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    public static x intent(Fragment supportFragment) {
        return new x(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountLoginActivity
    public void loginSuccess(final UserInfo user_info, final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new j(user_info, rewardBean), 0L);
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
