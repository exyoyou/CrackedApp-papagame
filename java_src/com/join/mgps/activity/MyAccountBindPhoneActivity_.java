package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
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
public final class MyAccountBindPhoneActivity_ extends MyAccountBindPhoneActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountBindPhoneActivity_.super.checkBindMobile();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountBindPhoneActivity_.super.bindMobile();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.getCodeTv();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.settingButn();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountBindPhoneActivity_.this.backImage();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54860b;

        f(final String val$account) {
            this.f54860b = val$account;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showDialog(this.f54860b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.finishActivity();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54863b;

        h(final String val$msg) {
            this.f54863b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showToast(this.f54863b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showLoding();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountBindPhoneActivity_.super.showLodingDismis();
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountBindPhoneActivity_.super.resendCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class l extends org.androidannotations.api.builder.a<l> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54868a;

        public l(Context context) {
            super(context, (Class<?>) MyAccountBindPhoneActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54868a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountBindPhoneActivity_.class);
            this.f54868a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
    }

    public static l intent(Context context) {
        return new l(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void bindMobile() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void checkBindMobile() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void finishActivity() {
        org.androidannotations.api.b.e("", new g(), 0L);
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
        setContentView(R.layout.bind_phone_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.myAccountTv = (TextView) hasViews.internalFindViewById(R.id.myAccountTv);
        this.securityLevel = (TextView) hasViews.internalFindViewById(R.id.securityLevel);
        this.securitySuggest = (TextView) hasViews.internalFindViewById(R.id.securitySuggest);
        this.inputPhone = (EditText) hasViews.internalFindViewById(R.id.inputPhone);
        this.inputCode = (EditText) hasViews.internalFindViewById(R.id.inputCode);
        this.getCodeTv = (TextView) hasViews.internalFindViewById(R.id.getCodeTv);
        this.settingButn = (Button) hasViews.internalFindViewById(R.id.settingButn);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        TextView textView = this.getCodeTv;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        Button button = this.settingButn;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void resendCode() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showDialog(final String account) {
        org.androidannotations.api.b.e("", new f(account), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountBindPhoneActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new h(msg), 0L);
    }

    public static l intent(Fragment supportFragment) {
        return new l(supportFragment);
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
