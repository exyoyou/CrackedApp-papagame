package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class BuildQRCodeActivity_ extends BuildQRCodeActivity implements xc.a, zc.a, zc.b {
    public static final String SSID_EXTRA = "ssid";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BuildQRCodeActivity_.this.goBack();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuildQRCodeActivity_.super.buildQrCode();
        }
    }

    public static class c extends org.androidannotations.api.builder.a<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50424a;

        public c(Context context) {
            super(context, (Class<?>) BuildQRCodeActivity_.class);
        }

        public c a(String ssid) {
            return (c) super.extra(BuildQRCodeActivity_.SSID_EXTRA, ssid);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50424a;
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

        public c(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) BuildQRCodeActivity_.class);
            this.f50424a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.title = resources.getString(R.string.title_build_qr_code);
        this.str_creating_ap_wifi_hint = resources.getString(R.string.hint_msg_creating_ap_wifi);
        this.str_create_ap_wifi_failed_hint = resources.getString(R.string.hint_msg_create_ap_wifi_failed);
        injectExtras_();
        doSomeAfterInject();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(SSID_EXTRA)) {
            return;
        }
        this.ssid = extras.getString(SSID_EXTRA);
    }

    public static c intent(Context context) {
        return new c(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BuildQRCodeActivity
    public void buildQrCode() {
        org.androidannotations.api.b.e("", new b(), 0L);
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
        setContentView(R.layout.activity_build_qr_code);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.hearTitleTxt = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.build_qr_code_title = (RelativeLayout) hasViews.internalFindViewById(R.id.build_qr_code_title);
        this.viewStub = (ViewStub) hasViews.internalFindViewById(R.id.qr_code_vstub);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        doSomeAfterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    public static c intent(Fragment supportFragment) {
        return new c(supportFragment);
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
