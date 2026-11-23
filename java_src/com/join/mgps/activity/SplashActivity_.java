package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SplashActivity_ extends SplashActivity implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final String f56148b1 = "thAdSwitchDataBean";

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final String f56149f1 = "splashVideoCfg";
    private final zc.c Z = new zc.c();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Map<Class<?>, Object> f56150p0 = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SplashActivity_.super.e0();
        }
    }

    public static class b extends org.androidannotations.api.builder.a<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56152a;

        public b(Context context) {
            super(context, (Class<?>) SplashActivity_.class);
        }

        public b a(PlayCfgBean splashVideoCfg) {
            return (b) super.extra(SplashActivity_.f56149f1, splashVideoCfg);
        }

        public b b(ThAdSwitchDataBean thAdSwitchDataBean) {
            return (b) super.extra(SplashActivity_.f56148b1, thAdSwitchDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56152a;
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

        public b(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SplashActivity_.class);
            this.f56152a = fragment;
        }
    }

    private void i0(Bundle savedInstanceState) {
        this.f56104g = new PrefDef_(this);
        zc.c.b(this);
        j0();
    }

    private void j0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f56148b1)) {
                this.f56108k = (ThAdSwitchDataBean) extras.getSerializable(f56148b1);
            }
            if (extras.containsKey(f56149f1)) {
                this.f56109l = (PlayCfgBean) extras.getSerializable(f56149f1);
            }
        }
    }

    public static b k0(Context context) {
        return new b(context);
    }

    public static b l0(Fragment supportFragment) {
        return new b(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SplashActivity
    public void e0() {
        org.androidannotations.api.b.e("", new a(), 100L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f56150p0.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.SplashActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.Z);
        i0(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.splash_main_layout);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56099b = (FrameLayout) hasViews.internalFindViewById(R.id.main);
        this.f56110m = (ImageView) hasViews.internalFindViewById(R.id.splash_holder);
        this.f56111n = (TextView) hasViews.internalFindViewById(R.id.skip_view);
        u();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f56150p0.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.Z.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        j0();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.Z.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.Z.a(this);
    }
}
