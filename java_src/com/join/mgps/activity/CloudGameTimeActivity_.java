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
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ExtBean;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudGameTimeActivity_ extends CloudGameTimeActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String PLAY_TIME_EXTRA = "playTime";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onVipChangedReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.CloudGameTimeActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CloudGameTimeActivity_.this.onVipChanged();
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f50676b;

        a(final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo) {
            this.f50676b = val$adCfgInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameTimeActivity_.super.showCloudSign(this.f50676b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult f50678b;

        b(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult val$result) {
            this.f50678b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameTimeActivity_.super.updateSignUI(this.f50678b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50680b;

        c(final String val$jsonParams) {
            this.f50680b = val$jsonParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameTimeActivity_.super.onShowSignDialog(this.f50680b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50682b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50683c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50684d;

        d(final String val$totalTime, final String val$freeTime, final String val$vipTime) {
            this.f50682b = val$totalTime;
            this.f50683c = val$freeTime;
            this.f50684d = val$vipTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameTimeActivity_.super.showSignDialog(this.f50682b, this.f50683c, this.f50684d);
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameTimeActivity_.super.checkSign();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameTimeActivity_.super.sign();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class g extends org.androidannotations.api.builder.a<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50688a;

        public g(Context context) {
            super(context, (Class<?>) CloudGameTimeActivity_.class);
        }

        public g a(String gameId) {
            return (g) super.extra("gameId", gameId);
        }

        public g b(ExtBean parentExtBean) {
            return (g) super.extra("parentExtBean", parentExtBean);
        }

        public g c(int playTime) {
            return (g) super.extra("playTime", playTime);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50688a;
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
            super(fragment.getActivity(), (Class<?>) CloudGameTimeActivity_.class);
            this.f50688a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        getWindow().setFlags(1024, 1024);
        injectExtras_();
        this.intentFilter1_.addAction("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        registerReceiver(this.onVipChangedReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("playTime")) {
                this.playTime = extras.getInt("playTime");
            }
        }
    }

    public static g intent(Context context) {
        return new g(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void checkSign() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_cloud_game_time);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onVipChangedReceiver_);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void onShowSignDialog(final String jsonParams) {
        org.androidannotations.api.b.e("", new c(jsonParams), 800L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.iv_close = (ImageView) hasViews.internalFindViewById(R.id.iv_close);
        this.tv_text_2 = (TextView) hasViews.internalFindViewById(R.id.tv_text_2);
        this.tv_btn_1 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_1);
        this.tv_btn_2 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_2);
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        org.androidannotations.api.b.e("", new a(adCfgInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void showSignDialog(final String totalTime, final String freeTime, final String vipTime) {
        org.androidannotations.api.b.e("", new d(totalTime, freeTime, vipTime), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void sign() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameTimeActivity
    public void updateSignUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        org.androidannotations.api.b.e("", new b(result), 0L);
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
