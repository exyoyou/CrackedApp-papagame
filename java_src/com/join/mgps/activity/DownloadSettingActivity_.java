package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DownloadSettingActivity_ extends DownloadSettingActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver loginOutReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.DownloadSettingActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DownloadSettingActivity_.this.loginOut(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.downloadPath();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.back_image();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.goDeveloper();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.checkVerLayout();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51281b;

        e(final String val$error_msg) {
            this.f51281b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.showToast(this.f51281b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51283b;

        f(final String val$error_msg) {
            this.f51283b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.error(this.f51283b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ VersionDto f51285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f51286c;

        g(final VersionDto val$versionDto, final boolean val$mandatory) {
            this.f51285b = val$versionDto;
            this.f51286c = val$mandatory;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadSettingActivity_.super.showVersionDownLoadHint(this.f51285b, this.f51286c);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DownloadSettingActivity_.super.loginOutBack();
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
                DownloadSettingActivity_.super.checkVersion();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.accountManager();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.videoPlaySetting();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.autoPlayVideoWifi();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.pushLayout();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.exitLogin();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.autoDownImageViewWifi();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.autoDownLayoutWifi();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSettingActivity_.this.gprsNotice();
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51298a;

        public r(Context context) {
            super(context, (Class<?>) DownloadSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51298a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DownloadSettingActivity_.class);
            this.f51298a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.intentFilter1_.addAction(p5.a.f96217r);
        registerReceiver(this.loginOutReceiver_, this.intentFilter1_);
    }

    public static r intent(Context context) {
        return new r(context);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void checkVersion() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void error(final String error_msg) {
        org.androidannotations.api.b.e("", new f(error_msg), 0L);
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
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void loginOutBack() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.download_setting_activity);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.loginOutReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.gprsNotice = (RelativeLayout) hasViews.internalFindViewById(R.id.gprsNotice);
        this.downloadPath = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadPath);
        this.imageGprsNote = (ImageView) hasViews.internalFindViewById(R.id.imageGprsNote);
        this.imageViewWifi = (ImageView) hasViews.internalFindViewById(R.id.imageViewWifi);
        this.autoDownImageViewWifi = (ImageView) hasViews.internalFindViewById(R.id.autoDownImageViewWifi);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.textWifi = (TextView) hasViews.internalFindViewById(R.id.textWifi);
        this.nowPathInfo = (TextView) hasViews.internalFindViewById(R.id.nowPathInfo);
        this.textGprs = (TextView) hasViews.internalFindViewById(R.id.textGprs);
        this.papaVer = (TextView) hasViews.internalFindViewById(R.id.papaVer);
        this.exitLogin = hasViews.internalFindViewById(R.id.exitLogin);
        this.accountManager = hasViews.internalFindViewById(R.id.accountManager);
        this.autoPlayVideoWifi = (ImageView) hasViews.internalFindViewById(R.id.autoPlayVideoWifi);
        this.rl_developer = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_developer);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.videoPlaySetting);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.pushLayout);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.autoDownLayoutWifi);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.checkVerLayout);
        View view = this.accountManager;
        if (view != null) {
            view.setOnClickListener(new j());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.autoPlayVideoWifi;
        if (imageView != null) {
            imageView.setOnClickListener(new l());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new m());
        }
        View view2 = this.exitLogin;
        if (view2 != null) {
            view2.setOnClickListener(new n());
        }
        ImageView imageView2 = this.autoDownImageViewWifi;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new p());
        }
        RelativeLayout relativeLayout = this.gprsNotice;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new q());
        }
        RelativeLayout relativeLayout2 = this.downloadPath;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new a());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout3 = this.rl_developer;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new c());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new d());
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
    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void showToast(final String error_msg) {
        org.androidannotations.api.b.e("", new e(error_msg), 0L);
    }

    @Override // com.join.mgps.activity.DownloadSettingActivity
    public void showVersionDownLoadHint(final VersionDto versionDto, final boolean mandatory) {
        org.androidannotations.api.b.e("", new g(versionDto, mandatory), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
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
