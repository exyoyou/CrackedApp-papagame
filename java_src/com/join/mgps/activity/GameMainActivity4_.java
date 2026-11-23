package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameMainActivity4_ extends GameMainActivity4 implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f53015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f53016c;

        a(final GameMainV4DataBean val$dataBean, final boolean val$isGetData) {
            this.f53015b = val$dataBean;
            this.f53016c = val$isGetData;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.updateUI(this.f53015b, this.f53016c);
        }
    }

    class a0 extends org.androidannotations.api.a.c {
        a0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getAllAchievementsData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.toCommentAllList();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.back();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53021b;

        c(final boolean val$visible) {
            this.f53021b = val$visible;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.setForumVisibility(this.f53021b);
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.battleHall();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.setCommunityCommentDataUi();
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.startGame();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.setCommunityDataUi();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.ivTips();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f53028b;

        f(final GameMainV4DataBean val$gameMaindataImg) {
            this.f53028b = val$gameMaindataImg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.showImg(this.f53028b);
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.ivChoose();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.gameMainNewYueZhanRlDo();
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.mask();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.hideLoadingDialog();
        }
    }

    class h0 implements View.OnClickListener {
        h0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.tvBattle();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.showPspDialog();
        }
    }

    public static class i0 extends org.androidannotations.api.builder.a<i0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53036a;

        public i0(Context context) {
            super(context, (Class<?>) GameMainActivity4_.class);
        }

        public i0 a(String from) {
            return (i0) super.extra("from", from);
        }

        public i0 b(String gameId) {
            return (i0) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53036a;
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

        public i0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameMainActivity4_.class);
            this.f53036a = fragment;
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.checkUserInfoFailed();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.buyVip();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f53039b;

        l(final ArenaResponse val$response) {
            this.f53039b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.handleFailure(this.f53039b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f53041b;

        m(final OnlineCouponConfigBean val$data) {
            this.f53041b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.showOnlineCoupinDialog(this.f53041b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53043b;

        n(final int val$localnum) {
            this.f53043b = val$localnum;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity4_.super.upNum(this.f53043b);
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getSimulator();
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
                GameMainActivity4_.super.getDataFromDb();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getData();
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
                GameMainActivity4_.super.getNum();
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
                GameMainActivity4_.super.getCommentList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53050b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(String id2, long delay, String serial, final String val$pids) {
            super(id2, delay, serial);
            this.f53050b = val$pids;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getMulPostData(this.f53050b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u extends org.androidannotations.api.a.c {
        u(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getForumGroupIndex();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity4_.this.endGameEntrance();
        }
    }

    class w extends org.androidannotations.api.a.c {
        w(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getHomepageRecommendLabel();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x extends org.androidannotations.api.a.c {
        x(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.gameMainNewYueZhanRl();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y extends org.androidannotations.api.a.c {
        y(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getPspData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z extends org.androidannotations.api.a.c {
        z(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity4_.super.getOnlineCouponData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        getWindow().setFlags(1024, 1024);
        injectExtras_();
        requestWindowFeature(1);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                ((GameMainActivity4) this).gameId = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getString("from");
            }
        }
    }

    public static i0 intent(Context context) {
        return new i0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void checkUserInfoFailed() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void gameMainNewYueZhanRl() {
        org.androidannotations.api.a.l(new x("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void gameMainNewYueZhanRlDo() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getAllAchievementsData() {
        org.androidannotations.api.a.l(new a0("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getCommentList() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getData() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getDataFromDb() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getForumGroupIndex() {
        org.androidannotations.api.a.l(new u("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getHomepageRecommendLabel() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getMulPostData(final String pids) {
        org.androidannotations.api.a.l(new t("", 0L, "", pids));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getNum() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getOnlineCouponData() {
        org.androidannotations.api.a.l(new z("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getPspData() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void getSimulator() {
        org.androidannotations.api.a.l(new o("", 1500L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new l(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void hideLoadingDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.GameMainActivity4, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_main4);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.ll_loading = hasViews.internalFindViewById(R.id.ll_loading);
        this.gameName = (TextView) hasViews.internalFindViewById(R.id.gameName);
        this.roomCount = (TextView) hasViews.internalFindViewById(R.id.roomCount);
        this.battleHall = hasViews.internalFindViewById(R.id.battleHall);
        this.gameMainNewLeftGv = (GridView) hasViews.internalFindViewById(R.id.gameMainNewLeftGv);
        this.gameImg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.gameImg);
        this.leftContainer = hasViews.internalFindViewById(R.id.leftContainer);
        this.tabLayout = (TabLayout) hasViews.internalFindViewById(R.id.tabLayout);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.vipTitle = (TextView) hasViews.internalFindViewById(R.id.vipTitle);
        this.vipFunc = (WrapContentGridView) hasViews.internalFindViewById(R.id.vipFunc);
        this.mask = hasViews.internalFindViewById(R.id.mask);
        this.expandContainer = (FrameLayout) hasViews.internalFindViewById(R.id.expandContainer);
        this.ivTips = (ImageView) hasViews.internalFindViewById(R.id.ivTips);
        this.ivChoose = (ImageView) hasViews.internalFindViewById(R.id.ivChoose);
        this.friendContainer = (FrameLayout) hasViews.internalFindViewById(R.id.friendContainer);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.buyVip);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.endGameEntrance);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.startGame);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.tvBattle);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new v());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new b0());
        }
        View view = this.battleHall;
        if (view != null) {
            view.setOnClickListener(new c0());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new d0());
        }
        ImageView imageView = this.ivTips;
        if (imageView != null) {
            imageView.setOnClickListener(new e0());
        }
        ImageView imageView2 = this.ivChoose;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new f0());
        }
        View view2 = this.mask;
        if (view2 != null) {
            view2.setOnClickListener(new g0());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new h0());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void setCommunityCommentDataUi() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void setCommunityDataUi() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void setForumVisibility(final boolean visible) {
        org.androidannotations.api.b.e("", new c(visible), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void showImg(final GameMainV4DataBean gameMaindataImg) {
        org.androidannotations.api.b.e("", new f(gameMaindataImg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void showOnlineCoupinDialog(final OnlineCouponConfigBean data) {
        org.androidannotations.api.b.e("", new m(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void showPspDialog() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void toCommentAllList() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void upNum(final int localnum) {
        org.androidannotations.api.b.e("", new n(localnum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity4
    public void updateUI(final GameMainV4DataBean dataBean, final boolean isGetData) {
        org.androidannotations.api.b.e("", new a(dataBean, isGetData), 0L);
    }

    public static i0 intent(Fragment supportFragment) {
        return new i0(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
