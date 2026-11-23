package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorExitPanel;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SimulatorExitPlayActivity1_ extends SimulatorExitPlayActivity1 implements xc.a, zc.a, zc.b {
    public static final String BATTLE_UIDS_EXTRA = "battleUids";
    public static final String END_ID_EXTRA = "endId";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String HIDE_LEVEL_EXTRA = "hideLevel";
    public static final String IS_STAT_END_GAME_FAILED_POINT_EXTRA = "isStatEndGameFailedPoint";
    public static final String LEVEL_EXTRA = "level";
    public static final String LEVEL_URL_EXTRA = "levelUrl";
    public static final String MAX_EXTRA = "max";
    public static final String PROGRESS_EXTRA = "progress";
    public static final String SNAPSHOT_PATH_EXTRA = "snapshotPath";
    public static final String TIME_EXTRA = "time";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver receiveScreenShotReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.SimulatorExitPlayActivity1_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f56026b = "imagePath";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorExitPlayActivity1_.this.receiveScreenShot((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("imagePath"));
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver afterLoginReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.SimulatorExitPlayActivity1_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorExitPlayActivity1_.this.afterLogin();
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.resume();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.exit();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.setLevel();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResponseModel f56032b;

        d(final ResponseModel val$result) {
            this.f56032b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.updateReward(this.f56032b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAchievementBean f56034b;

        e(final SimulatorAchievementBean val$data) {
            this.f56034b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.showAchievement(this.f56034b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAchievementBean f56036b;

        f(final SimulatorAchievementBean val$data) {
            this.f56036b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.showTouristAchievement(this.f56036b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorExitPlayResponseData f56038b;

        g(final SimulatorExitPlayResponseData val$data) {
            this.f56038b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.setData(this.f56038b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56040b;

        h(final String val$msg) {
            this.f56040b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.toast(this.f56040b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommonAdBean f56042b;

        i(final CommonAdBean val$item) {
            this.f56042b = val$item;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity1_.super.bindRecommendAd(this.f56042b);
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity1_.super.loadReward();
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
                SimulatorExitPlayActivity1_.super.loadRewardAd();
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
                SimulatorExitPlayActivity1_.super.getAchievementData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity1_.super.getExitPanel();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity1_.super.load();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity1_.super.afterLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {
        p(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity1_.super.loadRecommendAd();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.btn_share();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.share_wx();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.share_wx_comments();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.share_qq();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.share_qzone();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.save();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity1_.this.info();
        }
    }

    public static class x extends org.androidannotations.api.builder.a<x> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56058a;

        public x(Context context) {
            super(context, (Class<?>) SimulatorExitPlayActivity1_.class);
        }

        public x a(int[] battleUids) {
            return (x) super.extra("battleUids", battleUids);
        }

        public x b(String endId) {
            return (x) super.extra("endId", endId);
        }

        public x c(String gameId) {
            return (x) super.extra("gameId", gameId);
        }

        public x d(boolean hideLevel) {
            return (x) super.extra("hideLevel", hideLevel);
        }

        public x e(boolean isStatEndGameFailedPoint) {
            return (x) super.extra("isStatEndGameFailedPoint", isStatEndGameFailedPoint);
        }

        public x f(int level) {
            return (x) super.extra("level", level);
        }

        public x g(String levelUrl) {
            return (x) super.extra("levelUrl", levelUrl);
        }

        public x h(int max) {
            return (x) super.extra("max", max);
        }

        public x i(int progress) {
            return (x) super.extra("progress", progress);
        }

        public x j(String snapshotPath) {
            return (x) super.extra(SimulatorExitPlayActivity1_.SNAPSHOT_PATH_EXTRA, snapshotPath);
        }

        public x k(int time) {
            return (x) super.extra("time", time);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56058a;
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

        public x(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SimulatorExitPlayActivity1_.class);
            this.f56058a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction("com.join.android.app.mgsim.wufun.broadcast.ShowShare.main");
        this.intentFilter2_.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        registerReceiver(this.receiveScreenShotReceiver_, this.intentFilter1_);
        registerReceiver(this.afterLoginReceiver_, this.intentFilter2_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("time")) {
                ((SimulatorExitPlayActivity1) this).time = extras.getInt("time");
            }
            if (extras.containsKey("hideLevel")) {
                this.hideLevel = extras.getBoolean("hideLevel");
            }
            if (extras.containsKey("level")) {
                this.level = extras.getInt("level");
            }
            if (extras.containsKey("progress")) {
                this.progress = extras.getInt("progress");
            }
            if (extras.containsKey("max")) {
                this.max = extras.getInt("max");
            }
            if (extras.containsKey("levelUrl")) {
                this.levelUrl = extras.getString("levelUrl");
            }
            if (extras.containsKey("battleUids")) {
                this.battleUids = extras.getIntArray("battleUids");
            }
            if (extras.containsKey("isStatEndGameFailedPoint")) {
                this.isStatEndGameFailedPoint = extras.getBoolean("isStatEndGameFailedPoint");
            }
            if (extras.containsKey("endId")) {
                this.endId = extras.getString("endId");
            }
            if (extras.containsKey(SNAPSHOT_PATH_EXTRA)) {
                this.snapshotPath = extras.getString(SNAPSHOT_PATH_EXTRA);
            }
        }
    }

    public static x intent(Context context) {
        return new x(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void afterLogin() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void bindRecommendAd(final CommonAdBean item) {
        org.androidannotations.api.b.e("", new i(item), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void getAchievementData() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void getExitPanel() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void load() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void loadRecommendAd() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void loadReward() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void loadRewardAd() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_simulator_exit_play_v1);
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.receiveScreenShotReceiver_);
        unregisterReceiver(this.afterLoginReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.game_cover = (SimpleDraweeView) hasViews.internalFindViewById(R.id.game_cover);
        this.game_bg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.game_bg);
        this.adIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.adIcon);
        this.adTitle = (TextView) hasViews.internalFindViewById(R.id.adTitle);
        this.save = hasViews.internalFindViewById(R.id.save);
        this.info = hasViews.internalFindViewById(R.id.info);
        this.play_time = (TextView) hasViews.internalFindViewById(R.id.play_time);
        this.levelName = (TextView) hasViews.internalFindViewById(R.id.levelName);
        this.progressTv = (TextView) hasViews.internalFindViewById(R.id.progressTv);
        this.levelIcon = (ImageView) hasViews.internalFindViewById(R.id.levelIcon);
        this.progressBar = (ProgressBar) hasViews.internalFindViewById(R.id.progressBar);
        this.tvTips = (TextView) hasViews.internalFindViewById(R.id.tvTips);
        this.reward_title = (TextView) hasViews.internalFindViewById(R.id.reward_title);
        this.game_block = hasViews.internalFindViewById(R.id.game_block);
        this.reward_ad = (FrameLayout) hasViews.internalFindViewById(R.id.reward_ad);
        this.level_bar = (ConstraintLayout) hasViews.internalFindViewById(R.id.level_bar);
        this.reward = hasViews.internalFindViewById(R.id.reward);
        this.reward1 = hasViews.internalFindViewById(R.id.reward1);
        this.reward_bg = (ImageView) hasViews.internalFindViewById(R.id.reward_bg);
        this.reward1_icon = (ImageView) hasViews.internalFindViewById(R.id.reward1_icon);
        this.reward2_icon = (ImageView) hasViews.internalFindViewById(R.id.reward2_icon);
        this.btn_share = hasViews.internalFindViewById(R.id.btn_share);
        this.se_reward_title = hasViews.internalFindViewById(R.id.se_reward_title);
        this.r1_name = (TextView) hasViews.internalFindViewById(R.id.r1_name);
        this.r1_desc = (TextView) hasViews.internalFindViewById(R.id.r1_desc);
        this.btn_receive_r1 = (TextView) hasViews.internalFindViewById(R.id.btn_receive_r1);
        this.reward2 = hasViews.internalFindViewById(R.id.reward2);
        this.r2_name = (TextView) hasViews.internalFindViewById(R.id.r2_name);
        this.r2_desc = (TextView) hasViews.internalFindViewById(R.id.r2_desc);
        this.btn_receive_r2 = (TextView) hasViews.internalFindViewById(R.id.btn_receive_r2);
        this.share_container = hasViews.internalFindViewById(R.id.share_container);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.share_wx);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.share_wx_comments);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.share_qq);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.share_qzone);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.resume);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.exit);
        View view = this.btn_share;
        if (view != null) {
            view.setOnClickListener(new q());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new r());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new s());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new t());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new u());
        }
        View view2 = this.save;
        if (view2 != null) {
            view2.setOnClickListener(new v());
        }
        View view3 = this.info;
        if (view3 != null) {
            view3.setOnClickListener(new w());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new a());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new b());
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void setData(final SimulatorExitPlayResponseData data) {
        org.androidannotations.api.b.e("", new g(data), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void setLevel() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void showAchievement(final SimulatorAchievementBean data) {
        org.androidannotations.api.b.e("", new e(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void showTouristAchievement(final SimulatorAchievementBean data) {
        org.androidannotations.api.b.e("", new f(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void toast(final String msg) {
        org.androidannotations.api.b.e("", new h(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity1
    public void updateReward(final ResponseModel<SimulatorExitPanel> result) {
        org.androidannotations.api.b.e("", new d(result), 0L);
    }

    public static x intent(Fragment supportFragment) {
        return new x(supportFragment);
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
