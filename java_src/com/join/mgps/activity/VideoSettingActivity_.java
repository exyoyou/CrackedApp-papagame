package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoSettingActivity_ extends VideoSettingActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.videoAllNet();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.videoOnlyWifi();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.videoNotPlay();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.homevideoAllNet();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.homevideoOnlyWifi();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.homevideoNotPlay();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoSettingActivity_.this.back_image();
        }
    }

    public static class h extends org.androidannotations.api.builder.a<h> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56397a;

        public h(Context context) {
            super(context, (Class<?>) VideoSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56397a;
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
            super(fragment.getActivity(), (Class<?>) VideoSettingActivity_.class);
            this.f56397a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static h intent(Context context) {
        return new h(context);
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
        setContentView(R.layout.video_setting_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.videoAllNet = hasViews.internalFindViewById(R.id.videoAllNet);
        this.videoOnlyWifi = hasViews.internalFindViewById(R.id.videoOnlyWifi);
        this.videoNotPlay = hasViews.internalFindViewById(R.id.videoNotPlay);
        this.videoAllNetSwitch = (ImageView) hasViews.internalFindViewById(R.id.videoAllNetSwitch);
        this.videoOnlyWifiSwitch = (ImageView) hasViews.internalFindViewById(R.id.videoOnlyWifiSwitch);
        this.videoNotPlaySwitch = (ImageView) hasViews.internalFindViewById(R.id.videoNotPlaySwitch);
        this.homevideoAllNet = hasViews.internalFindViewById(R.id.homevideoAllNet);
        this.homevideoOnlyWifi = hasViews.internalFindViewById(R.id.homevideoOnlyWifi);
        this.homevideoNotPlay = hasViews.internalFindViewById(R.id.homevideoNotPlay);
        this.homevideoAllNetSwitch = (ImageView) hasViews.internalFindViewById(R.id.homevideoAllNetSwitch);
        this.homevideoOnlyWifiSwitch = (ImageView) hasViews.internalFindViewById(R.id.homevideoOnlyWifiSwitch);
        this.homevideoNotPlaySwitch = (ImageView) hasViews.internalFindViewById(R.id.homevideoNotPlaySwitch);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View view = this.videoAllNet;
        if (view != null) {
            view.setOnClickListener(new a());
        }
        View view2 = this.videoOnlyWifi;
        if (view2 != null) {
            view2.setOnClickListener(new b());
        }
        View view3 = this.videoNotPlay;
        if (view3 != null) {
            view3.setOnClickListener(new c());
        }
        View view4 = this.homevideoAllNet;
        if (view4 != null) {
            view4.setOnClickListener(new d());
        }
        View view5 = this.homevideoOnlyWifi;
        if (view5 != null) {
            view5.setOnClickListener(new e());
        }
        View view6 = this.homevideoNotPlay;
        if (view6 != null) {
            view6.setOnClickListener(new f());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new g());
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

    public static h intent(Fragment supportFragment) {
        return new h(supportFragment);
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
