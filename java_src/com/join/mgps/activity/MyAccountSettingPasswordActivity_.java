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
public final class MyAccountSettingPasswordActivity_ extends MyAccountSettingPasswordActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountSettingPasswordActivity_.this.settingButn();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountSettingPasswordActivity_.this.backImage();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountSettingPasswordActivity_.super.finishActivity();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55014b;

        d(final String val$msg) {
            this.f55014b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyAccountSettingPasswordActivity_.super.showToast(this.f55014b);
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55016b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final String val$password) {
            super(id2, delay, serial);
            this.f55016b = val$password;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountSettingPasswordActivity_.super.modifySetPass(this.f55016b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55019c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final String val$old_password, final String val$new_password) {
            super(id2, delay, serial);
            this.f55018b = val$old_password;
            this.f55019c = val$new_password;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyAccountSettingPasswordActivity_.super.modifyPass(this.f55018b, this.f55019c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class g extends org.androidannotations.api.builder.a<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55021a;

        public g(Context context) {
            super(context, (Class<?>) MyAccountSettingPasswordActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55021a;
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

        public g(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MyAccountSettingPasswordActivity_.class);
            this.f55021a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static g intent(Context context) {
        return new g(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void finishActivity() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void modifyPass(final String old_password, final String new_password) {
        org.androidannotations.api.a.l(new f("", 0L, "", old_password, new_password));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void modifySetPass(final String password) {
        org.androidannotations.api.a.l(new e("", 0L, "", password));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.setting_password_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.settingButn = (Button) hasViews.internalFindViewById(R.id.settingButn);
        this.layoutTop = (LinearLayout) hasViews.internalFindViewById(R.id.layoutTop);
        this.recentPassword = (EditText) hasViews.internalFindViewById(R.id.recentPassword);
        this.password = (EditText) hasViews.internalFindViewById(R.id.password);
        this.repeatPassword = (EditText) hasViews.internalFindViewById(R.id.repeatPassword);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        Button button = this.settingButn;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyAccountSettingPasswordActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new d(msg), 0L);
    }

    public static g intent(Fragment supportFragment) {
        return new g(supportFragment);
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
