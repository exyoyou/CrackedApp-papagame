package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.GameVerByBg;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class LinkProxyActivity_ extends LinkProxyActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54098b;

        a(final boolean val$show) {
            this.f54098b = val$show;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.showSubLoading(this.f54098b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.goMain();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameVerByBg f54101b;

        c(final GameVerByBg val$bean) {
            this.f54101b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.goGameDetail(this.f54101b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54103b;

        d(final String val$message) {
            this.f54103b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.showMessage(this.f54103b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54105b;

        e(final int val$state) {
            this.f54105b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.changeLoadingState(this.f54105b);
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54107b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54108c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f54109d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final String val$pkg, final int val$versionCode, final String val$versionName) {
            super(id2, delay, serial);
            this.f54107b = val$pkg;
            this.f54108c = val$versionCode;
            this.f54109d = val$versionName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LinkProxyActivity_.super.requestGameVerByBg(this.f54107b, this.f54108c, this.f54109d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class g extends org.androidannotations.api.builder.a<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54111a;

        public g(Context context) {
            super(context, (Class<?>) LinkProxyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54111a;
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
            super(fragment.getActivity(), (Class<?>) LinkProxyActivity_.class);
            this.f54111a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static g intent(Context context) {
        return new g(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new e(state), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void goGameDetail(final GameVerByBg bean) {
        org.androidannotations.api.b.e("", new c(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void goMain() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_link_proxy);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void requestGameVerByBg(final String pkg, final int versionCode, final String versionName) {
        org.androidannotations.api.a.l(new f("", 0L, "", pkg, versionCode, versionName));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void showSubLoading(final boolean show) {
        org.androidannotations.api.b.e("", new a(show), 0L);
    }

    public static g intent(Fragment supportFragment) {
        return new g(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
