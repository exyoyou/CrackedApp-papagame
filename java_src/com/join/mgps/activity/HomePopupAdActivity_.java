package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EverdayLogin;
import java.util.HashMap;
import java.util.Map;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class HomePopupAdActivity_ extends HomePopupAdActivity implements xc.a, zc.a, zc.b {
    public static final String AD_JSON_EXTRA = "adJson";
    public static final String EVERDAY_LOGIN_EXTRA = "everdayLogin";
    public static final String IS_FROM_ACCOUNT_CENTER_EXTRA = "isFromAccountCenter";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver accountChangeReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.HomePopupAdActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdActivity_.this.accountChange();
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HomePopupAdActivity_.this.parentLayout();
        }
    }

    public static class b extends org.androidannotations.api.builder.a<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53970a;

        public b(Context context) {
            super(context, (Class<?>) HomePopupAdActivity_.class);
        }

        public b a(String adJson) {
            return (b) super.extra("adJson", adJson);
        }

        public b b(EverdayLogin everdayLogin) {
            return (b) super.extra("everdayLogin", everdayLogin);
        }

        public b c(boolean isFromAccountCenter) {
            return (b) super.extra("isFromAccountCenter", isFromAccountCenter);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53970a;
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
            super(fragment.getActivity(), (Class<?>) HomePopupAdActivity_.class);
            this.f53970a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.A);
        registerReceiver(this.accountChangeReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("adJson")) {
                this.adJson = extras.getString("adJson");
            }
            if (extras.containsKey("everdayLogin")) {
                this.everdayLogin = (EverdayLogin) extras.getSerializable("everdayLogin");
            }
            if (extras.containsKey("isFromAccountCenter")) {
                this.isFromAccountCenter = extras.getBoolean("isFromAccountCenter");
            }
        }
    }

    public static b intent(Context context) {
        return new b(context);
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
        setContentView(R.layout.home_popup_ad_activity);
    }

    @Override // com.join.mgps.activity.HomePopupAdActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.accountChangeReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.more = (SimpleDraweeView) hasViews.internalFindViewById(R.id.more);
        this.viewPager = (MultiTouchViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.indicator = (CircleIndicator) hasViews.internalFindViewById(R.id.indicator);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.parentLayout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterViews();
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

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    public static b intent(Fragment supportFragment) {
        return new b(supportFragment);
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
