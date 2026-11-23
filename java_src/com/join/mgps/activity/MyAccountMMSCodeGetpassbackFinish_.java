package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
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
public final class MyAccountMMSCodeGetpassbackFinish_ extends MyAccountMMSCodeGetpassbackFinish implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish_.this.sendCode();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountMMSCodeGetpassbackFinish_.this.resendCode();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.showLodingDismis();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.sendCodeSuccess();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.reGetCodeSuccess();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54977b;

        g(final String val$error_msg) {
            this.f54977b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountMMSCodeGetpassbackFinish_.super.error(this.f54977b);
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54979b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final String val$code) {
            super(id2, delay, serial);
            this.f54979b = val$code;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeGetpassbackFinish_.super.registerSendCode(this.f54979b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountMMSCodeGetpassbackFinish_.super.resendgetCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54982a;

        public j(Context context) {
            super(context, (Class<?>) MyAccountMMSCodeGetpassbackFinish_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54982a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountMMSCodeGetpassbackFinish_.class);
            this.f54982a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static j intent(Context context) {
        return new j(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new g(error_msg), 0L);
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
        this.phoneNumber = (TextView) hasViews.internalFindViewById(R.id.phoneNumber);
        this.resendCode = (TextView) hasViews.internalFindViewById(R.id.resendCode);
        Button button = (Button) hasViews.internalFindViewById(R.id.sendCode);
        this.sendCode = button;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        TextView textView = this.resendCode;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void reGetCodeSuccess() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void registerSendCode(final String code) {
        org.androidannotations.api.a.l(new h("", 0L, "", code));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void resendgetCode() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void sendCodeSuccess() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.join.mgps.activity.BaseAccountActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountMMSCodeGetpassbackFinish
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    public static j intent(Fragment supportFragment) {
        return new j(supportFragment);
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
