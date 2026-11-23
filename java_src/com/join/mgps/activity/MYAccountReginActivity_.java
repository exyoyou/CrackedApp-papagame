package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountReginBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MYAccountReginActivity_ extends MYAccountReginActivity implements xc.a, zc.a, zc.b {
    public static final String REGIN_BEAN_EXTRA = "reginBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountReginActivity_.this.backImage();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountReginActivity_.this.reginButton();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.showLodingDismis();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f54671d;

        e(final String val$nickname, final String val$telphone, final String val$password) {
            this.f54669b = val$nickname;
            this.f54670c = val$telphone;
            this.f54671d = val$password;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.loginSuccess(this.f54669b, this.f54670c, this.f54671d);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54673b;

        f(final String val$error_msg) {
            this.f54673b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginActivity_.super.error(this.f54673b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54675b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54676c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f54677d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final String val$nickname, final String val$telphone, final String val$password) {
            super(id2, delay, serial);
            this.f54675b = val$nickname;
            this.f54676c = val$telphone;
            this.f54677d = val$password;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginActivity_.super.getCode(this.f54675b, this.f54676c, this.f54677d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.a<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54679a;

        public h(Context context) {
            super(context, (Class<?>) MYAccountReginActivity_.class);
        }

        public h a(AccountReginBean reginBean) {
            return (h) super.extra(MYAccountReginActivity_.REGIN_BEAN_EXTRA, reginBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54679a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MYAccountReginActivity_.class);
            this.f54679a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(REGIN_BEAN_EXTRA)) {
            return;
        }
        this.reginBean = (AccountReginBean) extras.getSerializable(REGIN_BEAN_EXTRA);
    }

    public static h intent(Context context) {
        return new h(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new f(error_msg), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void getCode(final String nickname, final String telphone, final String password) {
        org.androidannotations.api.a.l(new g("", 0L, "", nickname, telphone, password));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void loginSuccess(final String nickname, final String telphone, final String password) {
        org.androidannotations.api.b.e("", new e(nickname, telphone, password), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.my_account_regin_activity_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.telPhone = (EditText) hasViews.internalFindViewById(R.id.telPhone);
        this.password = (EditText) hasViews.internalFindViewById(R.id.password);
        this.userName = (EditText) hasViews.internalFindViewById(R.id.userName);
        this.agreeCheckBox = (CheckBox) hasViews.internalFindViewById(R.id.agreeCheckBox);
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.reginButton = (Button) hasViews.internalFindViewById(R.id.reginButton);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        Button button = this.reginButton;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    public static h intent(Fragment supportFragment) {
        return new h(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
