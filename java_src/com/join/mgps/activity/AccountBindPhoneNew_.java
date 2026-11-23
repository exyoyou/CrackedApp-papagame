package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountAnonymousReginRequest;
import com.join.mgps.dto.AccountRegisterThirdwaiRequestBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class AccountBindPhoneNew_ extends AccountBindPhoneNew implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String THIRD_REQUESTBEAN_EXTRA = "thirdRequestbean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.showEditPassView();
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.sendCode();
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
                AccountBindPhoneNew_.super.checkCode();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f50202b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final AccountAnonymousReginRequest val$accountAnonymousReginRequest) {
            super(id2, delay, serial);
            this.f50202b = val$accountAnonymousReginRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.reginAnonymousPhone(this.f50202b);
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
                AccountBindPhoneNew_.super.joinDevice();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f50205b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final AccountAnonymousReginRequest val$accountAnonymousReginRequest) {
            super(id2, delay, serial);
            this.f50205b = val$accountAnonymousReginRequest;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.reginAnonymousThird(this.f50205b);
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
                AccountBindPhoneNew_.super.phoneRegin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.thirdRegin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50209b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$nicknames) {
            super(id2, delay, serial);
            this.f50209b = val$nicknames;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.finishReginNickname(this.f50209b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50211b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final String val$nicknames) {
            super(id2, delay, serial);
            this.f50211b = val$nicknames;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                AccountBindPhoneNew_.super.finishReginNicknameThird(this.f50211b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.nextStep();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.codeTime();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.nextStep2();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.userIcon();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AccountBindPhoneNew_.this.nickNameBution();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50218b;

        p(final String val$message) {
            this.f50218b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.error(this.f50218b);
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.dissmissDialog();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f50221b;

        r(final UserInfo val$accountBean) {
            this.f50221b = val$accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.showFinishPage(this.f50221b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountAnonymousReginRequest f50223b;

        s(final AccountAnonymousReginRequest val$accountBean) {
            this.f50223b = val$accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBindPhoneNew_.super.showFinishPageAnony(this.f50223b);
        }
    }

    public static class t extends org.androidannotations.api.builder.a<t> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50225a;

        public t(Context context) {
            super(context, (Class<?>) AccountBindPhoneNew_.class);
        }

        public t a(int from) {
            return (t) super.extra("from", from);
        }

        public t b(AccountRegisterThirdwaiRequestBean thirdRequestbean) {
            return (t) super.extra("thirdRequestbean", thirdRequestbean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50225a;
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

        public t(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) AccountBindPhoneNew_.class);
            this.f50225a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("thirdRequestbean")) {
                this.thirdRequestbean = (AccountRegisterThirdwaiRequestBean) extras.getSerializable("thirdRequestbean");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
            }
        }
    }

    public static t intent(Context context) {
        return new t(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void checkCode() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void dissmissDialog() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void error(final String message) {
        org.androidannotations.api.b.e("", new p(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void finishReginNickname(final String nicknames) {
        org.androidannotations.api.a.l(new i("", 0L, "", nicknames));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void finishReginNicknameThird(final String nicknames) {
        org.androidannotations.api.a.l(new j("", 0L, "", nicknames));
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
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void joinDevice() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.bind_phone_activity_new);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.codeTime = (TextView) hasViews.internalFindViewById(R.id.codeTime);
        this.userIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIcon);
        this.hintPhone = (TextView) hasViews.internalFindViewById(R.id.hintPhone);
        this.phoneShow = (TextView) hasViews.internalFindViewById(R.id.phoneShow);
        this.phoneNumber = (EditText) hasViews.internalFindViewById(R.id.phoneNumber);
        this.password = (EditText) hasViews.internalFindViewById(R.id.password);
        this.code = (EditText) hasViews.internalFindViewById(R.id.code);
        this.nickName = (EditText) hasViews.internalFindViewById(R.id.nickName);
        this.setPassLayout = (LinearLayout) hasViews.internalFindViewById(R.id.setPassLayout);
        this.editPhone = (LinearLayout) hasViews.internalFindViewById(R.id.editPhone);
        this.changeNickNameLayout = (LinearLayout) hasViews.internalFindViewById(R.id.changeNickNameLayout);
        this.nextStep = (TextView) hasViews.internalFindViewById(R.id.nextStep);
        this.nextStep2 = (TextView) hasViews.internalFindViewById(R.id.nextStep2);
        this.nickNameBution = (TextView) hasViews.internalFindViewById(R.id.nickNameBution);
        TextView textView = this.nextStep;
        if (textView != null) {
            textView.setOnClickListener(new k());
        }
        TextView textView2 = this.codeTime;
        if (textView2 != null) {
            textView2.setOnClickListener(new l());
        }
        TextView textView3 = this.nextStep2;
        if (textView3 != null) {
            textView3.setOnClickListener(new m());
        }
        SimpleDraweeView simpleDraweeView = this.userIcon;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new n());
        }
        TextView textView4 = this.nickNameBution;
        if (textView4 != null) {
            textView4.setOnClickListener(new o());
        }
        afterview();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void phoneRegin() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void reginAnonymousPhone(final AccountAnonymousReginRequest accountAnonymousReginRequest) {
        org.androidannotations.api.a.l(new d("", 0L, "", accountAnonymousReginRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void reginAnonymousThird(final AccountAnonymousReginRequest accountAnonymousReginRequest) {
        org.androidannotations.api.a.l(new f("", 0L, "", accountAnonymousReginRequest));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void sendCode() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
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
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void showEditPassView() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void showFinishPage(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new r(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void showFinishPageAnony(final AccountAnonymousReginRequest accountBean) {
        org.androidannotations.api.b.e("", new s(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.AccountBindPhoneNew
    public void thirdRegin() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    public static t intent(Fragment supportFragment) {
        return new t(supportFragment);
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
