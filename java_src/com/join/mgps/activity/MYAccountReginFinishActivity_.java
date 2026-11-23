package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MYAccountReginFinishActivity_ extends MYAccountReginFinishActivity implements xc.a, zc.a, zc.b {
    public static final String ACCOUNT_BEAN_EXTRA = "accountBean";
    public static final String FROM_WHERE_EXTRA = "fromWhere";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54682b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final String val$avatarSrc) {
            super(id2, delay, serial);
            this.f54682b = val$avatarSrc;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginFinishActivity_.super.updatedata(this.f54682b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54684b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$avatarSrc) {
            super(id2, delay, serial);
            this.f54684b = val$avatarSrc;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginFinishActivity_.super.registerByThirdWay(this.f54684b);
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
            MYAccountReginFinishActivity_.this.reginFinish();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showUi();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.lodingFailedButShowDefault();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54689b;

        f(final List val$strings) {
            this.f54689b = val$strings;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showSuccess(this.f54689b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showLoding();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.showLodingDismis();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.updateSuccess();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54694b;

        j(final String val$error_msg) {
            this.f54694b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountReginFinishActivity_.super.error(this.f54694b);
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountReginFinishActivity_.super.getUserHeadPortrait();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class l extends org.androidannotations.api.builder.a<l> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54697a;

        public l(Context context) {
            super(context, (Class<?>) MYAccountReginFinishActivity_.class);
        }

        public l a(AccountBean accountBean) {
            return (l) super.extra(MYAccountReginFinishActivity_.ACCOUNT_BEAN_EXTRA, accountBean);
        }

        public l b(int fromWhere) {
            return (l) super.extra(MYAccountReginFinishActivity_.FROM_WHERE_EXTRA, fromWhere);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54697a;
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
            super(fragment.getActivity(), (Class<?>) MYAccountReginFinishActivity_.class);
            this.f54697a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(ACCOUNT_BEAN_EXTRA)) {
                this.accountBean = (AccountBean) extras.getSerializable(ACCOUNT_BEAN_EXTRA);
            }
            if (extras.containsKey(FROM_WHERE_EXTRA)) {
                this.fromWhere = extras.getInt(FROM_WHERE_EXTRA);
            }
        }
    }

    public static l intent(Context context) {
        return new l(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new j(error_msg), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void getUserHeadPortrait() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void lodingFailedButShowDefault() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.my_account_reginfinish_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.chooseGridView = (MyGridView) hasViews.internalFindViewById(R.id.chooseGridView);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.scrollView = (ScrollView) hasViews.internalFindViewById(R.id.scrollView);
        Button button = (Button) hasViews.internalFindViewById(R.id.reginFinish);
        this.reginFinish = button;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void registerByThirdWay(final String avatarSrc) {
        org.androidannotations.api.a.l(new b("", 0L, "", avatarSrc));
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
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showSuccess(final List<String> strings) {
        org.androidannotations.api.b.e("", new f(strings), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void showUi() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void updateSuccess() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountReginFinishActivity
    public void updatedata(final String avatarSrc) {
        org.androidannotations.api.a.l(new a("", 0L, "", avatarSrc));
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
