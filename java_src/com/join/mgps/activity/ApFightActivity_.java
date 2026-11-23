package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ApFightActivity_ extends ApFightActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver connectToChosenReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ApFightActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ApFightActivity_.this.connectToChosen(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.modeIconWifi();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.afterStartGame();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameServer();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameClient();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApFightActivity_.super.startGameClientWifi();
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ApFightActivity_.super.disConnectWifiFightAPClient();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ApFightActivity_.super.disConnectWifiFightClient();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ApFightActivity_.super.fightStartClicked();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingTipBtn();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingCloseBtn();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.serverBtn();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.zxingBtn();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.clientBtn();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.backClicked();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.fightStartClicked();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApFightActivity_.this.modeIconAP();
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50367a;

        public q(Context context) {
            super(context, (Class<?>) ApFightActivity_.class);
        }

        public q a(String gameId) {
            return (q) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50367a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ApFightActivity_.class);
            this.f50367a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(k6.b.f92139a);
        registerReceiver(this.connectToChosenReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.gameId = extras.getString("gameId");
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void afterStartGame() {
        org.androidannotations.api.b.e("", new b(), BaseCloudFileManager.ACK_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void disConnectWifiFightAPClient() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void disConnectWifiFightClient() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void fightStartClicked() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
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
        setContentView(R.layout.fight_activity);
    }

    @Override // com.join.mgps.activity.ApFightActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.connectToChosenReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.hint = (TextView) hasViews.internalFindViewById(R.id.hint);
        this.lcon = (ImageView) hasViews.internalFindViewById(R.id.lcon);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.fightStart = (ImageView) hasViews.internalFindViewById(R.id.fightStart);
        this.fightClientIcon = (ImageView) hasViews.internalFindViewById(R.id.fightClientIcon);
        this.fightServerIcon = (ImageView) hasViews.internalFindViewById(R.id.fightServerIcon);
        this.modeIconAP = (ImageView) hasViews.internalFindViewById(R.id.modeIconAP);
        this.modeIconWifi = (ImageView) hasViews.internalFindViewById(R.id.modeIconWifi);
        this.waitHint = (TextView) hasViews.internalFindViewById(R.id.waitHint);
        this.serverBrandName = (TextView) hasViews.internalFindViewById(R.id.serverBrandName);
        this.clientBrandName = (TextView) hasViews.internalFindViewById(R.id.clientBrandName);
        this.num = (TextView) hasViews.internalFindViewById(R.id.num);
        this.serverBtn = (Button) hasViews.internalFindViewById(R.id.serverBtn);
        this.clientBtn = (Button) hasViews.internalFindViewById(R.id.clientBtn);
        this.zxingBtn = (Button) hasViews.internalFindViewById(R.id.zxingBtn);
        this.p1status_btn_around_img = (ImageView) hasViews.internalFindViewById(R.id.p1status_btn_around_img);
        this.ap_net_match_info_1p_frame = (ImageView) hasViews.internalFindViewById(R.id.ap_net_match_info_1p_frame);
        this.ap_net_match_info_2p_frame = (ImageView) hasViews.internalFindViewById(R.id.ap_net_match_info_2p_frame);
        this.ssidTxt = (TextView) hasViews.internalFindViewById(R.id.ssidTxt);
        this.ipTxt = (TextView) hasViews.internalFindViewById(R.id.ipTxt);
        this.zxingImg = (ImageView) hasViews.internalFindViewById(R.id.zxingImg);
        this.zxing_lay = (FrameLayout) hasViews.internalFindViewById(R.id.zxing_lay);
        this.zxing_tip_lay = (LinearLayout) hasViews.internalFindViewById(R.id.zxing_tip_lay);
        this.zxingTip1 = (TextView) hasViews.internalFindViewById(R.id.zxingTip1);
        this.zxingTip2 = (TextView) hasViews.internalFindViewById(R.id.zxingTip2);
        this.tipWifi = (TextView) hasViews.internalFindViewById(R.id.tipWifi);
        this.apfight_zxing_content_lay = (RelativeLayout) hasViews.internalFindViewById(R.id.apfight_zxing_content_lay);
        this.tipTxt2 = (TextView) hasViews.internalFindViewById(R.id.tipTxt2);
        this.tipTxt1 = (TextView) hasViews.internalFindViewById(R.id.tipTxt1);
        this.ip_lay = (LinearLayout) hasViews.internalFindViewById(R.id.ip_lay);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.zxingTipBtn);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.zxingCloseBtn);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new j());
        }
        Button button = this.serverBtn;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        Button button2 = this.zxingBtn;
        if (button2 != null) {
            button2.setOnClickListener(new l());
        }
        Button button3 = this.clientBtn;
        if (button3 != null) {
            button3.setOnClickListener(new m());
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new n());
        }
        ImageView imageView2 = this.fightStart;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        ImageView imageView3 = this.modeIconAP;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new p());
        }
        ImageView imageView4 = this.modeIconWifi;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new a());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameClient() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameClientWifi() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ApFightActivity
    public void startGameServer() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
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
