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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.haima.hmcp.widgets.HmcpVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMZoomLayout;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.customview.GifView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class HMCloudMainActivity_ extends HMCloudMainActivity implements xc.a, zc.a, zc.b {
    public static final String ARCHIVE_DATA_EXTRA = "archiveData";
    public static final String ARCHIVE_PATH_DATA_EXTRA = "archivePathData";
    public static final String BBS_STRATEGY_SWITCH_EXTRA = "bbsStrategySwitch";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GOLD_FINGER_SWITCH_EXTRA = "goldFingerSwitch";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String PLAY_TIME_EXTRA = "playTime";
    public static final String SECRET_KEY_STR_EXTRA = "secretKeyStr";
    public static final String SHOW_TOP_TIP_EXTRA = "showTopTip";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver afterLoginReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.HMCloudMainActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HMCloudMainActivity_.this.afterLogin();
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingServerListResponse.ServerInfo f53634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f53635c;

        a(final MessageCloudGamingServerListResponse.ServerInfo val$serverInfo, final boolean val$init) {
            this.f53634b = val$serverInfo;
            this.f53635c = val$init;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.chooseBestLine(this.f53634b, this.f53635c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingServerListResponse.LineList f53637b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53638c;

        b(final MessageCloudGamingServerListResponse.LineList val$serverInfo, final int val$scene) {
            this.f53637b = val$serverInfo;
            this.f53638c = val$scene;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.updateLineUI(this.f53637b, this.f53638c);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53640b;

        c(final boolean val$show) {
            this.f53640b = val$show;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showQueueState(this.f53640b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.afterLogin();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingVipStateResponse.Info f53643b;

        e(final MessageCloudGamingVipStateResponse.Info val$info) {
            this.f53643b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.updateVipState(this.f53643b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f53645b;

        f(final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo) {
            this.f53645b = val$adCfgInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.lambda$initObserver$8(this.f53645b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53647b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final boolean val$show) {
            super(id2, delay, serial);
            this.f53647b = val$show;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HMCloudMainActivity_.super.getVipAdFeature(this.f53647b);
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
                HMCloudMainActivity_.super.sign();
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
                HMCloudMainActivity_.super.onDelayLoad();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53651b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final boolean val$auto) {
            super(id2, delay, serial);
            this.f53651b = val$auto;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HMCloudMainActivity_.super.loadServerList(this.f53651b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HMCloudMainActivity_.super.loadCloudVipState();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HMCloudMainActivity_.super.checkSign();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53655b;

        m(final String val$tipMsg) {
            this.f53655b = val$tipMsg;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showTip(this.f53655b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f53657b;

        n(final UserInfo val$userInfo) {
            this.f53657b = val$userInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showCloudCharge(this.f53657b);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showGameOver();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showRechargeResult();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showCloudNewUser();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f53662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53663c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f53664d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f53665e;

        r(final Activity val$parent, final String val$totalTime, final String val$freeTime, final String val$vipTime) {
            this.f53662b = val$parent;
            this.f53663c = val$totalTime;
            this.f53664d = val$freeTime;
            this.f53665e = val$vipTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showSignDialog(this.f53662b, this.f53663c, this.f53664d, this.f53665e);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult f53667b;

        s(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult val$result) {
            this.f53667b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.updateSignUI(this.f53667b);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f53671d;

        t(final String val$totalTime, final String val$freeTime, final String val$vipTime) {
            this.f53669b = val$totalTime;
            this.f53670c = val$freeTime;
            this.f53671d = val$vipTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMCloudMainActivity_.super.showSignDialog(this.f53669b, this.f53670c, this.f53671d);
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53673a;

        public u(Context context) {
            super(context, (Class<?>) HMCloudMainActivity_.class);
        }

        public u a(ArchiveData archiveData) {
            return (u) super.extra(HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, archiveData);
        }

        public u b(ModGameArchivePathData archivePathData) {
            return (u) super.extra(HMCloudMainActivity_.ARCHIVE_PATH_DATA_EXTRA, archivePathData);
        }

        public u c(int bbsStrategySwitch) {
            return (u) super.extra(HMCloudMainActivity_.BBS_STRATEGY_SWITCH_EXTRA, bbsStrategySwitch);
        }

        public u d(String gameId) {
            return (u) super.extra("gameId", gameId);
        }

        public u e(int goldFingerSwitch) {
            return (u) super.extra(HMCloudMainActivity_.GOLD_FINGER_SWITCH_EXTRA, goldFingerSwitch);
        }

        public u f(ExtBean parentExtBean) {
            return (u) super.extra("parentExtBean", parentExtBean);
        }

        public u g(long playTime) {
            return (u) super.extra("playTime", playTime);
        }

        public u h(String secretKeyStr) {
            return (u) super.extra(HMCloudMainActivity_.SECRET_KEY_STR_EXTRA, secretKeyStr);
        }

        public u i(String showTopTip) {
            return (u) super.extra(HMCloudMainActivity_.SHOW_TOP_TIP_EXTRA, showTopTip);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53673a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) HMCloudMainActivity_.class);
            this.f53673a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef_ = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        registerReceiver(this.afterLoginReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("playTime")) {
                this.playTime = extras.getLong("playTime");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey(SHOW_TOP_TIP_EXTRA)) {
                this.showTopTip = extras.getString(SHOW_TOP_TIP_EXTRA);
            }
            if (extras.containsKey(SECRET_KEY_STR_EXTRA)) {
                this.secretKeyStr = extras.getString(SECRET_KEY_STR_EXTRA);
            }
            if (extras.containsKey(GOLD_FINGER_SWITCH_EXTRA)) {
                this.goldFingerSwitch = extras.getInt(GOLD_FINGER_SWITCH_EXTRA);
            }
            if (extras.containsKey(BBS_STRATEGY_SWITCH_EXTRA)) {
                this.bbsStrategySwitch = extras.getInt(BBS_STRATEGY_SWITCH_EXTRA);
            }
            if (extras.containsKey(ARCHIVE_DATA_EXTRA)) {
                this.archiveData = (ArchiveData) extras.getSerializable(ARCHIVE_DATA_EXTRA);
            }
            if (extras.containsKey(ARCHIVE_PATH_DATA_EXTRA)) {
                this.archivePathData = (ModGameArchivePathData) extras.getSerializable(ARCHIVE_PATH_DATA_EXTRA);
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static u intent(Context context) {
        return new u(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void afterLogin() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void checkSign() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void chooseBestLine(final MessageCloudGamingServerListResponse.ServerInfo serverInfo, final boolean init) {
        org.androidannotations.api.b.e("", new a(serverInfo, init), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void getVipAdFeature(final boolean show) {
        org.androidannotations.api.a.l(new g("", 0L, "", show));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void loadCloudVipState() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void loadServerList(final boolean auto) {
        org.androidannotations.api.a.l(new j("", 0L, "", auto));
    }

    @Override // com.join.mgps.activity.HMCloudMainActivity, com.join.mgps.activity.HMCloudMenuActivity, com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_hm_cloud_main);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void onDelayLoad() {
        org.androidannotations.api.a.l(new i("", 1000L, ""));
    }

    @Override // com.join.mgps.activity.HMCloudMainActivity, com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.afterLoginReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.htv_1 = (HtmlTextView) hasViews.internalFindViewById(R.id.htv_1);
        this.cl_menu = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_menu);
        this.cl_time_tip = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_time_tip);
        this.cl_wait_state = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_wait_state);
        this.cl_load_state = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_load_state);
        this.tv_text_4 = (HtmlTextView) hasViews.internalFindViewById(R.id.tv_text_4);
        this.tv_btn_2 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_2);
        this.iv_close = (ImageView) hasViews.internalFindViewById(R.id.iv_close);
        this.gif_view = (GifView) hasViews.internalFindViewById(R.id.gif_view);
        this.gif_view_1 = (GifView) hasViews.internalFindViewById(R.id.gif_view_1);
        this.tv_text_5 = (TextView) hasViews.internalFindViewById(R.id.tv_text_5);
        this.tv_text_3 = (TextView) hasViews.internalFindViewById(R.id.tv_text_3);
        this.tv_text_6 = (TextView) hasViews.internalFindViewById(R.id.tv_text_6);
        this.tv_text_7 = (TextView) hasViews.internalFindViewById(R.id.tv_text_7);
        this.tv_btn_1 = (TextView) hasViews.internalFindViewById(R.id.tv_btn_1);
        this.g_1 = (Group) hasViews.internalFindViewById(R.id.g_1);
        this.v_mimi = hasViews.internalFindViewById(R.id.v_mimi);
        this.hm_video_view = (HmcpVideoView) hasViews.internalFindViewById(R.id.hm_video_view);
        this.rl_ad = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_ad);
        this.zoom_layout = (HMZoomLayout) hasViews.internalFindViewById(R.id.zoom_layout);
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showCloudCharge(final UserInfo userInfo) {
        org.androidannotations.api.b.e("", new n(userInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showCloudNewUser() {
        org.androidannotations.api.b.e("", new q(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    /* JADX INFO: renamed from: showCloudSignTip */
    public void lambda$initObserver$8(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        org.androidannotations.api.b.e("", new f(adCfgInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showGameOver() {
        org.androidannotations.api.b.e("", new o(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showQueueState(final boolean show) {
        org.androidannotations.api.b.e("", new c(show), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showRechargeResult() {
        org.androidannotations.api.b.e("", new p(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showSignDialog(final Activity parent, final String totalTime, final String freeTime, final String vipTime) {
        org.androidannotations.api.b.e("", new r(parent, totalTime, freeTime, vipTime), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showTip(final String tipMsg) {
        org.androidannotations.api.b.e("", new m(tipMsg), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void sign() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void updateLineUI(final MessageCloudGamingServerListResponse.LineList serverInfo, final int scene) {
        org.androidannotations.api.b.e("", new b(serverInfo, scene), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void updateSignUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        org.androidannotations.api.b.e("", new s(result), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void updateVipState(final MessageCloudGamingVipStateResponse.Info info) {
        org.androidannotations.api.b.e("", new e(info), 0L);
    }

    public static u intent(Fragment supportFragment) {
        return new u(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HMCloudMainActivity
    public void showSignDialog(final String totalTime, final String freeTime, final String vipTime) {
        org.androidannotations.api.b.e("", new t(totalTime, freeTime, vipTime), 500L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
