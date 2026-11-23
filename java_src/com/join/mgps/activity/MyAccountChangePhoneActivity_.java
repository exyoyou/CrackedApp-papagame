package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyAccountChangePhoneActivity_ extends MyAccountChangePhoneActivity implements xc.a, zc.a, zc.b {
    public static final String NEW_MOBILE_EXTRA = "newMobile";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showLodingDismis();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.finishActivity();
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54874b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$mobile) {
            super(id2, delay, serial);
            this.f54874b = val$mobile;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.resendCode(this.f54874b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.checkSendCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.checkReBindMobile();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.checkBindMobile();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountChangePhoneActivity_.super.rebindCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.settingButn();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.getCodeTv();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountChangePhoneActivity_.this.backImage();
        }
    }

    class k implements TextWatcher {
        k() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            MyAccountChangePhoneActivity_.this.oldInputCode();
        }
    }

    class l implements TextWatcher {
        l() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            MyAccountChangePhoneActivity_.this.newInputCode();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showContent();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54886b;

        n(final String val$msg) {
            this.f54886b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showToast(this.f54886b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54888b;

        o(final String val$account) {
            this.f54888b = val$account;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showDialog(this.f54888b);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountChangePhoneActivity_.super.showLoding();
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54891a;

        public q(Context context) {
            super(context, (Class<?>) MyAccountChangePhoneActivity_.class);
        }

        public q a(String newMobile) {
            return (q) super.extra(MyAccountChangePhoneActivity_.NEW_MOBILE_EXTRA, newMobile);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54891a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountChangePhoneActivity_.class);
            this.f54891a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(NEW_MOBILE_EXTRA)) {
            return;
        }
        this.newMobile = extras.getString(NEW_MOBILE_EXTRA);
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void checkBindMobile() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void checkReBindMobile() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void checkSendCode() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void finishActivity() {
        org.androidannotations.api.b.e("", new b(), 0L);
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
        setContentView(R.layout.change_phone_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.myAccountTv = (TextView) hasViews.internalFindViewById(R.id.myAccountTv);
        this.oldMessageTv = (TextView) hasViews.internalFindViewById(R.id.oldMessageTv);
        this.newMessageTv = (TextView) hasViews.internalFindViewById(R.id.newMessageTv);
        this.newInputCode = (EditText) hasViews.internalFindViewById(R.id.newInputCode);
        this.oldInputCode = (EditText) hasViews.internalFindViewById(R.id.oldInputCode);
        this.getCodeTv = (TextView) hasViews.internalFindViewById(R.id.getCodeTv);
        this.settingButn = (Button) hasViews.internalFindViewById(R.id.settingButn);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        Button button = this.settingButn;
        if (button != null) {
            button.setOnClickListener(new h());
        }
        TextView textView = this.getCodeTv;
        if (textView != null) {
            textView.setOnClickListener(new i());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new j());
        }
        TextView textView2 = (TextView) hasViews.internalFindViewById(R.id.oldInputCode);
        if (textView2 != null) {
            textView2.addTextChangedListener(new k());
        }
        TextView textView3 = (TextView) hasViews.internalFindViewById(R.id.newInputCode);
        if (textView3 != null) {
            textView3.addTextChangedListener(new l());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void rebindCode() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void resendCode(final String mobile) {
        org.androidannotations.api.a.l(new c("", 0L, "", mobile));
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
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showContent() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showDialog(final String account) {
        org.androidannotations.api.b.e("", new o(account), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountChangePhoneActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new n(msg), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
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
