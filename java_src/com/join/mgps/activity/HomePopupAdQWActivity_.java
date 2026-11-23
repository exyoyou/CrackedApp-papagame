package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomCircleProgressBar;
import com.join.mgps.dto.EverdayLogin;
import java.util.HashMap;
import java.util.Map;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class HomePopupAdQWActivity_ extends HomePopupAdQWActivity implements xc.a, zc.a, zc.b {
    public static final String B = "adJson";
    public static final String C = "everdayLogin";
    public static final String D = "isFromAccountCenter";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zc.c f54011v = new zc.c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Map<Class<?>, Object> f54012w = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final IntentFilter f54013x = new IntentFilter();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final BroadcastReceiver f54014y = new BroadcastReceiver() { // from class: com.join.mgps.activity.HomePopupAdQWActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdQWActivity_.this.f(intent);
        }
    };

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final IntentFilter f54015z = new IntentFilter();
    private final BroadcastReceiver A = new BroadcastReceiver() { // from class: com.join.mgps.activity.HomePopupAdQWActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdQWActivity_.this.d();
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HomePopupAdQWActivity_.this.l();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54019b;

        b(final String val$message) {
            this.f54019b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            HomePopupAdQWActivity_.super.m(this.f54019b);
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f54022c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$url, final String val$title) {
            super(id2, delay, serial);
            this.f54021b = val$url;
            this.f54022c = val$title;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HomePopupAdQWActivity_.super.g(this.f54021b, this.f54022c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class d extends org.androidannotations.api.builder.a<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54024a;

        public d(Context context) {
            super(context, (Class<?>) HomePopupAdQWActivity_.class);
        }

        public d a(String adJson) {
            return (d) super.extra("adJson", adJson);
        }

        public d b(EverdayLogin everdayLogin) {
            return (d) super.extra("everdayLogin", everdayLogin);
        }

        public d c(boolean isFromAccountCenter) {
            return (d) super.extra("isFromAccountCenter", isFromAccountCenter);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54024a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) HomePopupAdQWActivity_.class);
            this.f54024a = fragment;
        }
    }

    private void p(Bundle savedInstanceState) {
        zc.c.b(this);
        q();
        this.f54013x.addAction(p5.a.f96211o);
        this.f54015z.addAction(p5.a.A);
        registerReceiver(this.f54014y, this.f54013x);
        registerReceiver(this.A, this.f54015z);
    }

    private void q() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("adJson")) {
                this.f53978i = extras.getString("adJson");
            }
            if (extras.containsKey("everdayLogin")) {
                this.f53979j = (EverdayLogin) extras.getSerializable("everdayLogin");
            }
            if (extras.containsKey("isFromAccountCenter")) {
                this.f53980k = extras.getBoolean("isFromAccountCenter");
            }
        }
    }

    public static d r(Context context) {
        return new d(context);
    }

    public static d s(Fragment supportFragment) {
        return new d(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HomePopupAdQWActivity
    public void g(final String url, final String title) {
        org.androidannotations.api.a.l(new c("", 0L, "", url, title));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f54012w.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HomePopupAdQWActivity
    public void m(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f54011v);
        p(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.home_popup_adqw_activity);
    }

    @Override // com.join.mgps.activity.HomePopupAdQWActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f54014y);
        unregisterReceiver(this.A);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f53971b = (SimpleDraweeView) hasViews.internalFindViewById(R.id.more);
        this.f53972c = (MultiTouchViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.f53973d = (CircleIndicator) hasViews.internalFindViewById(R.id.indicator);
        this.f53974e = (CustomCircleProgressBar) hasViews.internalFindViewById(R.id.progressBar);
        this.f53975f = (TextView) hasViews.internalFindViewById(R.id.downFileName);
        this.f53976g = (TextView) hasViews.internalFindViewById(R.id.install);
        this.f53977h = (RelativeLayout) hasViews.internalFindViewById(R.id.downLoadlayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.parentLayout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        e();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f54012w.put(key, value);
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.f54011v.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        q();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.f54011v.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f54011v.a(this);
    }
}
