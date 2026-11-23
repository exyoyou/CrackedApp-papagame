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
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyTouchFrameLayout;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ModGameIndexActivity_ extends ModGameIndexActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String STAND_GAME_ID_EXTRA = "standGameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver startStdGameReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ModGameIndexActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f54782b = "from";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ModGameIndexActivity_.this.startStdGame((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("from"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.openVip();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.RecommendToggleExpand();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            ModGameIndexActivity_.this.relodingimag();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.ExpandMask();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.setNetwork();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.BgExpand();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.updateInstallStatus();
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.onCloudGameClick();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54793c;

        e(final boolean val$hasArchive, final DownloadTask val$downloadTask) {
            this.f54792b = val$hasArchive;
            this.f54793c = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.copyFinish(this.f54792b, this.f54793c);
        }
    }

    public static class e0 extends org.androidannotations.api.builder.a<e0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54795a;

        public e0(Context context) {
            super(context, (Class<?>) ModGameIndexActivity_.class);
        }

        public e0 a(String from) {
            return (e0) super.extra("from", from);
        }

        public e0 b(String gameId) {
            return (e0) super.extra("gameId", gameId);
        }

        public e0 c(ExtBean parentExtBean) {
            return (e0) super.extra("parentExtBean", parentExtBean);
        }

        public e0 d(String standGameId) {
            return (e0) super.extra("standGameId", standGameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54795a;
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

        public e0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ModGameIndexActivity_.class);
            this.f54795a = fragment;
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.refreshRvData();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showRecommendAd();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.hideRecommendAd();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showLodingFailed();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ModGameDetailBean f54800b;

        j(final ModGameDetailBean val$modgameBean) {
            this.f54800b = val$modgameBean;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            ModGameIndexActivity_.super.updateUi(this.f54800b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showLoding();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54803b;

        l(final DownloadTask val$task) {
            this.f54803b = val$task;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showProgress(this.f54803b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54805b;

        m(final DownloadTask val$task) {
            this.f54805b = val$task;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.showInstallButn(this.f54805b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f54808c;

        n(final DownloadTask val$task, final GamedetialModleFourBean val$bean) {
            this.f54807b = val$task;
            this.f54808c = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.updateButn(this.f54807b, this.f54808c);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54810b;

        o(final boolean val$needRetry) {
            this.f54810b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.updatePay(this.f54810b);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity_.super.disimissDialog();
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54813b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final DownloadTask val$downloadTask) {
            super(id2, delay, serial);
            this.f54813b = val$downloadTask;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.copyArchive(this.f54813b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {
        r(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.getDetialData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.getRecommendAd();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54817b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(String id2, long delay, String serial, final List val$modGameIds) {
            super(id2, delay, serial);
            this.f54817b = val$modGameIds;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.getModGameArchievePath(this.f54817b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.onBack();
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.checkBackUpArchieve();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54821b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w(String id2, long delay, String serial, final DownloadTask val$task) {
            super(id2, delay, serial);
            this.f54821b = val$task;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ModGameIndexActivity_.super.copyData(this.f54821b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.startModGame();
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.startStandGame();
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ModGameIndexActivity_.this.RecommendToggleShrink();
        }
    }

    private void init_(Bundle savedInstanceState) {
        ((ModGameIndexActivity) this).prefDef_ = new PrefDef_(this);
        zc.c.b(this);
        getWindow().setFlags(1024, 1024);
        injectExtras_();
        supportRequestWindowFeature(1);
        this.intentFilter1_.addAction(p5.a.f96224u0);
        registerReceiver(this.startStdGameReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("standGameId")) {
                this.standGameId = extras.getString("standGameId");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getString("from");
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static e0 intent(Context context) {
        return new e0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void checkBackUpArchieve() {
        org.androidannotations.api.a.l(new v("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void copyArchive(final DownloadTask downloadTask) {
        org.androidannotations.api.a.l(new q("", 0L, "", downloadTask));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void copyData(final DownloadTask task) {
        org.androidannotations.api.a.l(new w("", 0L, "", task));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void copyFinish(final boolean hasArchive, final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new e(hasArchive, downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void disimissDialog() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void getDetialData() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void getModGameArchievePath(final List<String> modGameIds) {
        org.androidannotations.api.a.l(new t("", 0L, "", modGameIds));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void getRecommendAd() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void hideRecommendAd() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.ModGameIndexActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_mod_game_index);
    }

    @Override // com.join.mgps.activity.ModGameIndexActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.startStdGameReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.iv_back = (ImageView) hasViews.internalFindViewById(R.id.iv_back);
        this.tv_game_name = (TextView) hasViews.internalFindViewById(R.id.tv_game_name);
        this.sdv_image = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_image);
        this.ll_mod_start = (LinearLayout) hasViews.internalFindViewById(R.id.ll_mod_start);
        this.ll_stand_start = (LinearLayout) hasViews.internalFindViewById(R.id.ll_stand_start);
        this.iv_mod_play = (ImageView) hasViews.internalFindViewById(R.id.iv_mod_play);
        this.tv_mod_type = (TextView) hasViews.internalFindViewById(R.id.tv_mod_type);
        this.tv_new_version = (TextView) hasViews.internalFindViewById(R.id.tv_new_version);
        this.tv_stand_type = (TextView) hasViews.internalFindViewById(R.id.tv_stand_type);
        this.tv_stand_new_version = (TextView) hasViews.internalFindViewById(R.id.tv_stand_new_version);
        this.tv_open_vip = (SimpleDraweeView) hasViews.internalFindViewById(R.id.tv_open_vip);
        this.iv_stand_font = (ImageView) hasViews.internalFindViewById(R.id.iv_stand_font);
        this.iv_mod_font = (ImageView) hasViews.internalFindViewById(R.id.iv_mod_font);
        this.tv_stand_status = (TextView) hasViews.internalFindViewById(R.id.tv_stand_status);
        this.tv_mod_status = (TextView) hasViews.internalFindViewById(R.id.tv_mod_status);
        this.cl_mod = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_mod);
        this.tv_mod_install_status = (TextView) hasViews.internalFindViewById(R.id.tv_mod_install_status);
        this.iv_mod_dot = (ImageView) hasViews.internalFindViewById(R.id.iv_mod_dot);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.tabLayout = (TabLayout) hasViews.internalFindViewById(R.id.tabLayout);
        this.rightLayout = hasViews.internalFindViewById(R.id.rightLayout);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        this.rvModGameRecommendShrink = (RecyclerView) hasViews.internalFindViewById(R.id.rvModGameRecommendShrink);
        this.rvModGameRecommendExpand = (RecyclerView) hasViews.internalFindViewById(R.id.rvModGameRecommendExpand);
        this.btnRecommendToggleShrink = (ImageView) hasViews.internalFindViewById(R.id.btnRecommendToggleShrink);
        this.btnRecommendToggleExpand = (ImageView) hasViews.internalFindViewById(R.id.btnRecommendToggleExpand);
        this.flRecommendShrink = (MyTouchFrameLayout) hasViews.internalFindViewById(R.id.flRecommendShrink);
        this.flRecommendExpand = (MyTouchFrameLayout) hasViews.internalFindViewById(R.id.flRecommendExpand);
        this.expandMask = hasViews.internalFindViewById(R.id.expandMask);
        this.llContainer = (LinearLayout) hasViews.internalFindViewById(R.id.llContainer);
        this.tvRecommendAdCount = (TextView) hasViews.internalFindViewById(R.id.tvRecommendAdCount);
        this.cl_cloud = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_cloud);
        this.iv_mod = (ImageView) hasViews.internalFindViewById(R.id.iv_mod);
        this.iv_cloud = (ImageView) hasViews.internalFindViewById(R.id.iv_cloud);
        this.iv_mod_1 = (ImageView) hasViews.internalFindViewById(R.id.iv_mod_1);
        this.iv_cloud_1 = (ImageView) hasViews.internalFindViewById(R.id.iv_cloud_1);
        this.tv_text_5 = (TextView) hasViews.internalFindViewById(R.id.tv_text_5);
        this.ll_vip = (LinearLayout) hasViews.internalFindViewById(R.id.ll_vip);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.bgExpand);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.iv_back;
        if (imageView != null) {
            imageView.setOnClickListener(new u());
        }
        LinearLayout linearLayout = this.ll_mod_start;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new x());
        }
        LinearLayout linearLayout2 = this.ll_stand_start;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new y());
        }
        ImageView imageView2 = this.btnRecommendToggleShrink;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new z());
        }
        ImageView imageView3 = this.btnRecommendToggleExpand;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new a0());
        }
        View view = this.expandMask;
        if (view != null) {
            view.setOnClickListener(new b0());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c0());
        }
        ConstraintLayout constraintLayout = this.cl_cloud;
        if (constraintLayout != null) {
            constraintLayout.setOnClickListener(new d0());
        }
        SimpleDraweeView simpleDraweeView = this.tv_open_vip;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void refreshRvData() {
        org.androidannotations.api.b.e("", new f(), 0L);
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
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showInstallButn(final DownloadTask task) {
        org.androidannotations.api.b.e("", new m(task), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showProgress(final DownloadTask task) {
        org.androidannotations.api.b.e("", new l(task), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void showRecommendAd() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void updateButn(final DownloadTask task, final GamedetialModleFourBean bean) {
        org.androidannotations.api.b.e("", new n(task, bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void updateInstallStatus() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void updatePay(final boolean needRetry) {
        org.androidannotations.api.b.e("", new o(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ModGameIndexActivity
    public void updateUi(final ModGameDetailBean modgameBean) {
        org.androidannotations.api.b.e("", new j(modgameBean), 0L);
    }

    public static e0 intent(Fragment supportFragment) {
        return new e0(supportFragment);
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
