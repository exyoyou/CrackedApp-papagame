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
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SimulatorExitPlayActivity_ extends SimulatorExitPlayActivity implements xc.a, zc.a, zc.b {
    public static final String BATTLE_UIDS_EXTRA = "battleUids";
    public static final String END_ID_EXTRA = "endId";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String HIDE_LEVEL_EXTRA = "hideLevel";
    public static final String IS_STAT_END_GAME_FAILED_POINT_EXTRA = "isStatEndGameFailedPoint";
    public static final String LEVEL_EXTRA = "level";
    public static final String LEVEL_URL_EXTRA = "levelUrl";
    public static final String MAX_EXTRA = "max";
    public static final String PROGRESS_EXTRA = "progress";
    public static final String TIME_EXTRA = "time";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver afterLoginReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.SimulatorExitPlayActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimulatorExitPlayActivity_.this.afterLogin();
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorExitPlayResponseData f56060b;

        a(final SimulatorExitPlayResponseData val$data) {
            this.f56060b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.setData(this.f56060b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56062b;

        b(final String val$msg) {
            this.f56062b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.toast(this.f56062b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56064b;

        c(final int val$ruid) {
            this.f56064b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.addSuccess(this.f56064b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56066b;

        d(final int val$ruid) {
            this.f56066b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.likeSuccess(this.f56066b);
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.getAchievementData();
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
                SimulatorExitPlayActivity_.super.load();
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
                SimulatorExitPlayActivity_.super.afterLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56071b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$ruid) {
            super(id2, delay, serial);
            this.f56071b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.add(this.f56071b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56073b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final int val$ruid) {
            super(id2, delay, serial);
            this.f56073b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorExitPlayActivity_.super.like1(this.f56073b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.save();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.info();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.resume();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorExitPlayActivity_.this.exit();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.setLevel();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.updateTitle();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAchievementBean f56081b;

        p(final SimulatorAchievementBean val$data) {
            this.f56081b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.showAchievement(this.f56081b);
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAchievementBean f56083b;

        q(final SimulatorAchievementBean val$data) {
            this.f56083b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorExitPlayActivity_.super.showTouristAchievement(this.f56083b);
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56085a;

        public r(Context context) {
            super(context, (Class<?>) SimulatorExitPlayActivity_.class);
        }

        public r a(int[] battleUids) {
            return (r) super.extra("battleUids", battleUids);
        }

        public r b(String endId) {
            return (r) super.extra("endId", endId);
        }

        public r c(String gameId) {
            return (r) super.extra("gameId", gameId);
        }

        public r d(boolean hideLevel) {
            return (r) super.extra("hideLevel", hideLevel);
        }

        public r e(boolean isStatEndGameFailedPoint) {
            return (r) super.extra("isStatEndGameFailedPoint", isStatEndGameFailedPoint);
        }

        public r f(int level) {
            return (r) super.extra("level", level);
        }

        public r g(String levelUrl) {
            return (r) super.extra("levelUrl", levelUrl);
        }

        public r h(int max) {
            return (r) super.extra("max", max);
        }

        public r i(int progress) {
            return (r) super.extra("progress", progress);
        }

        public r j(int time) {
            return (r) super.extra("time", time);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56085a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) SimulatorExitPlayActivity_.class);
            this.f56085a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        registerReceiver(this.afterLoginReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("time")) {
                ((SimulatorExitPlayActivity) this).time = extras.getInt("time");
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
        }
    }

    public static r intent(Context context) {
        return new r(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void add(final int ruid) {
        org.androidannotations.api.a.l(new h("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void addSuccess(final int ruid) {
        org.androidannotations.api.b.e("", new c(ruid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void afterLogin() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void getAchievementData() {
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

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void like1(final int ruid) {
        org.androidannotations.api.a.l(new i("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void likeSuccess(final int ruid) {
        org.androidannotations.api.b.e("", new d(ruid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void load() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_simulator_exit_play);
    }

    @Override // com.join.mgps.activity.SimulatorExitPlayActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.afterLoginReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.title = (TextView) hasViews.internalFindViewById(R.id.title);
        this.adIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.adIcon);
        this.adTitle = (TextView) hasViews.internalFindViewById(R.id.adTitle);
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.save = hasViews.internalFindViewById(R.id.save);
        this.info = hasViews.internalFindViewById(R.id.info);
        this.levelName = (TextView) hasViews.internalFindViewById(R.id.levelName);
        this.progressTv = (TextView) hasViews.internalFindViewById(R.id.progressTv);
        this.levelIcon = (ImageView) hasViews.internalFindViewById(R.id.levelIcon);
        this.progressBar = (ProgressBar) hasViews.internalFindViewById(R.id.progressBar);
        this.tvTips = (TextView) hasViews.internalFindViewById(R.id.tvTips);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.resume);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.exit);
        View view = this.save;
        if (view != null) {
            view.setOnClickListener(new j());
        }
        View view2 = this.info;
        if (view2 != null) {
            view2.setOnClickListener(new k());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new l());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new m());
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
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void setData(final SimulatorExitPlayResponseData data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void setLevel() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void showAchievement(final SimulatorAchievementBean data) {
        org.androidannotations.api.b.e("", new p(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void showTouristAchievement(final SimulatorAchievementBean data) {
        org.androidannotations.api.b.e("", new q(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void toast(final String msg) {
        org.androidannotations.api.b.e("", new b(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SimulatorExitPlayActivity
    public void updateTitle() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
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
