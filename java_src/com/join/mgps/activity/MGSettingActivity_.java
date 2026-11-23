package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
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
public final class MGSettingActivity_ extends MGSettingActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.back_image();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.shareToFrendsLayout();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.checkVerLayout();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.papaAboutLayout();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGSettingActivity_.this.responsibility();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.showUI();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54611b;

        g(final String val$error_msg) {
            this.f54611b = val$error_msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.error(this.f54611b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ VersionDto f54613b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f54614c;

        h(final VersionDto val$versionDto, final boolean val$mandatory) {
            this.f54613b = val$versionDto;
            this.f54614c = val$mandatory;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGSettingActivity_.super.showVersionDownLoadHint(this.f54613b, this.f54614c);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGSettingActivity_.super.checkVersion();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.a<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54617a;

        public j(Context context) {
            super(context, (Class<?>) MGSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54617a;
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
            super(fragment.getActivity(), (Class<?>) MGSettingActivity_.class);
            this.f54617a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
    }

    public static j intent(Context context) {
        return new j(context);
    }

    @Override // com.join.mgps.activity.MGSettingActivity
    public void checkVersion() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGSettingActivity
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

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.setting_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.checkVerLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.checkVerLayout);
        this.responsibility = (RelativeLayout) hasViews.internalFindViewById(R.id.responsibility);
        this.papaAboutLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.papaAboutLayout);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.papaVer = (TextView) hasViews.internalFindViewById(R.id.papaVer);
        this.about = (TextView) hasViews.internalFindViewById(R.id.about);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.shareToFrendsLayout);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        RelativeLayout relativeLayout = this.checkVerLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new c());
        }
        RelativeLayout relativeLayout2 = this.papaAboutLayout;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new d());
        }
        RelativeLayout relativeLayout3 = this.responsibility;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnClickListener(new e());
        }
        AfterViews();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGSettingActivity
    public void showUI() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.join.mgps.activity.MGSettingActivity
    public void showVersionDownLoadHint(final VersionDto versionDto, final boolean mandatory) {
        org.androidannotations.api.b.e("", new h(versionDto, mandatory), 0L);
    }

    public static j intent(Fragment supportFragment) {
        return new j(supportFragment);
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
