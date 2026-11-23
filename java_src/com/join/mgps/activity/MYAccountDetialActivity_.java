package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MYAccountDetialActivity_ extends MYAccountDetialActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.unSubscribe();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.levelLayout();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.exitLogin();
        }
    }

    public static class b0 extends org.androidannotations.api.builder.a<b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54629a;

        public b0(Context context) {
            super(context, (Class<?>) MYAccountDetialActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54629a;
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

        public b0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) MYAccountDetialActivity_.class);
            this.f54629a = fragment;
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.back_image();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.bindWechartLayout();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.bindWeiboLayout();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.bindQQLayout();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.updateName();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54635b;

        h(final String val$message) {
            this.f54635b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.error(this.f54635b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54637b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54638c;

        i(final String val$error_msg, final String val$nickname) {
            this.f54637b = val$error_msg;
            this.f54638c = val$nickname;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.error(this.f54637b, this.f54638c);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54640b;

        j(final String val$error_msg) {
            this.f54640b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showToast(this.f54640b);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.iconLayout();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.dialogLoading();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showLodingDismis();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f54645b;

        n(final UserInfo val$accountData) {
            this.f54645b = val$accountData;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.checkUserInfoSuccess(this.f54645b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54647b;

        o(final String val$message) {
            this.f54647b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYAccountDetialActivity_.super.showMessage(this.f54647b);
        }
    }

    class p extends org.androidannotations.api.a.c {
        p(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.loginOutBack();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.updatedata();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {
        r(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.checkUserInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54652b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54653c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(String id2, long delay, String serial, final String val$nique_id, final int val$type) {
            super(id2, delay, serial);
            this.f54652b = val$nique_id;
            this.f54653c = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYAccountDetialActivity_.super.bindThirdAccount(this.f54652b, this.f54653c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.accountNameLayout();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.pabiLayout();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.xingbieLayout();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.nameLayout();
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.passwordLayout();
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.phoneLayout();
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYAccountDetialActivity_.this.llRealName();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static b0 intent(Context context) {
        return new b0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void bindThirdAccount(final String nique_id, final int type) {
        org.androidannotations.api.a.l(new s("", 0L, "", nique_id, type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void checkUserInfo() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void checkUserInfoSuccess(final UserInfo accountData) {
        org.androidannotations.api.b.e("", new n(accountData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void dialogLoading() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
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
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void loginOutBack() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.my_account_detial_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.levelTv = (TextView) hasViews.internalFindViewById(R.id.levelTv);
        this.name = (TextView) hasViews.internalFindViewById(R.id.name);
        this.pabi = (TextView) hasViews.internalFindViewById(R.id.pabi);
        this.xingbie = (TextView) hasViews.internalFindViewById(R.id.xingbie);
        this.expTv = (TextView) hasViews.internalFindViewById(R.id.expTv);
        this.iconImage = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iconImage);
        this.accountNameTv = (TextView) hasViews.internalFindViewById(R.id.accountNameTv);
        this.phoneTv = (TextView) hasViews.internalFindViewById(R.id.phoneTv);
        this.passwordTv = (TextView) hasViews.internalFindViewById(R.id.passwordTv);
        this.hasBindWechat = (TextView) hasViews.internalFindViewById(R.id.hasBindWechat);
        this.hasBindWebo = (TextView) hasViews.internalFindViewById(R.id.hasBindWebo);
        this.hasBindQQ = (TextView) hasViews.internalFindViewById(R.id.hasBindQQ);
        this.llRealName = (LinearLayout) hasViews.internalFindViewById(R.id.llRealName);
        this.tv_rank = (TextView) hasViews.internalFindViewById(R.id.tv_rank);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.iconLayout);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.accountNameLayout);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.pabiLayout);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.xingbieLayout);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.nameLayout);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.passwordLayout);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.phoneLayout);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.levelLayout);
        View viewInternalFindViewById9 = hasViews.internalFindViewById(R.id.unSubscribe);
        View viewInternalFindViewById10 = hasViews.internalFindViewById(R.id.exitLogin);
        View viewInternalFindViewById11 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById12 = hasViews.internalFindViewById(R.id.bindWechartLayout);
        View viewInternalFindViewById13 = hasViews.internalFindViewById(R.id.bindWeiboLayout);
        View viewInternalFindViewById14 = hasViews.internalFindViewById(R.id.bindQQLayout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new t());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new u());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new v());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new w());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new x());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new y());
        }
        LinearLayout linearLayout = this.llRealName;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new z());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new a0());
        }
        if (viewInternalFindViewById9 != null) {
            viewInternalFindViewById9.setOnClickListener(new a());
        }
        if (viewInternalFindViewById10 != null) {
            viewInternalFindViewById10.setOnClickListener(new b());
        }
        if (viewInternalFindViewById11 != null) {
            viewInternalFindViewById11.setOnClickListener(new c());
        }
        if (viewInternalFindViewById12 != null) {
            viewInternalFindViewById12.setOnClickListener(new d());
        }
        if (viewInternalFindViewById13 != null) {
            viewInternalFindViewById13.setOnClickListener(new e());
        }
        if (viewInternalFindViewById14 != null) {
            viewInternalFindViewById14.setOnClickListener(new f());
        }
        afterview();
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
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new o(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void showToast(final String error_msg) {
        org.androidannotations.api.b.e("", new j(error_msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void updateName() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void updatedata() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    public static b0 intent(Fragment supportFragment) {
        return new b0(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYAccountDetialActivity
    public void error(final String error_msg, final String nickname) {
        org.androidannotations.api.b.e("", new i(error_msg, nickname), 0L);
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
