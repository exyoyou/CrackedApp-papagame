package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaResponse;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.AlwaysMarqueeTextView;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.Notification;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameRoomListActivity_ extends GameRoomListActivity implements xc.a, zc.a, zc.b {
    public static final String FILTER_GAME_EXTRA = "filterGame";
    public static final String IS_FORM_HALL_EXTRA = "isFormHall";
    public static final String M_GAME_INFO_EXTRA = "mGameInfo";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56586b;

        a(final int val$refreshType) {
            this.f56586b = val$refreshType;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.refreshGameRoomList(this.f56586b);
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.checkUserInfoFailed();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AreaOnlinePeopleCount f56589b;

        b(final AreaOnlinePeopleCount val$count) {
            this.f56589b = val$count;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.updateOnlineCounts(this.f56589b);
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56591b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f56592c;

        b0(final String val$gameId, final int val$challengeCoins) {
            this.f56591b = val$gameId;
            this.f56592c = val$challengeCoins;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.startCreateRoom(this.f56591b, this.f56592c);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Notification f56594b;

        c(final Notification val$notification) {
            this.f56594b = val$notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handleMsgBroadcast(this.f56594b);
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.onGameSeriesSelected();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f56597b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56598c;

        d(final ArenaResponse val$response, final boolean val$isElite) {
            this.f56597b = val$response;
            this.f56598c = val$isElite;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.updateRoomCount(this.f56597b, this.f56598c);
        }
    }

    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.getUiData();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showLoginDialog();
        }
    }

    class e0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56603c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(String id2, long delay, String serial, final int val$roomType, final boolean val$isRefreshing) {
            super(id2, delay, serial);
            this.f56602b = val$roomType;
            this.f56603c = val$isRefreshing;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.subscribeRoomList(this.f56602b, this.f56603c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.finishActivity();
        }
    }

    class f0 extends org.androidannotations.api.a.c {
        f0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.requestServer();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f56607b;

        g(final boolean val$isElite) {
            this.f56607b = val$isElite;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.stopRefreshing(this.f56607b);
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.iv_back();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f56610b;

        h(final ArenaResponse val$response) {
            this.f56610b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handleFailure(this.f56610b);
        }
    }

    class h0 extends org.androidannotations.api.a.c {
        h0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.getGameConfig();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleArea f56613b;

        i(final BattleArea val$battleArea) {
            this.f56613b = val$battleArea;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showBattleArea(this.f56613b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56615b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f56615b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameRoomListActivity_.super.getChallengeConfig(this.f56615b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f56617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56618c;

        j(final ArenaResponse val$response, final boolean val$isFinished) {
            this.f56617b = val$response;
            this.f56618c = val$isFinished;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handlePushRoomListData(this.f56617b, this.f56618c);
        }
    }

    class j0 implements View.OnClickListener {
        j0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.iv_list();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.selecterLayout();
        }
    }

    class k0 implements View.OnClickListener {
        k0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.btnCreateRoom();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56623b;

        l(final List val$datas) {
            this.f56623b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handleRoomListDelete(this.f56623b);
        }
    }

    class l0 implements View.OnClickListener {
        l0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.btnFastGameM();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f56626b;

        m(final List val$datas) {
            this.f56626b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.handleRoomListUpdate(this.f56626b);
        }
    }

    class m0 implements View.OnClickListener {
        m0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.close();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f56629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56630c;

        n(final boolean val$isElite, final boolean val$isRefreshing) {
            this.f56629b = val$isElite;
            this.f56630c = val$isRefreshing;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.delaySubscribeGameList(this.f56629b, this.f56630c);
        }
    }

    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.myDragImageView();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.finishActivityForGetConfigFailure();
        }
    }

    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.quanmingxing();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56635b;

        p(final int val$battle_area) {
            this.f56635b = val$battle_area;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.setBattleAreaView(this.f56635b);
        }
    }

    public static class p0 extends org.androidannotations.api.builder.a<p0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f56637a;

        public p0(Context context) {
            super(context, (Class<?>) GameRoomListActivity_.class);
        }

        public p0 a(boolean filterGame) {
            return (p0) super.extra(GameRoomListActivity_.FILTER_GAME_EXTRA, filterGame);
        }

        public p0 b(boolean isFormHall) {
            return (p0) super.extra(GameRoomListActivity_.IS_FORM_HALL_EXTRA, isFormHall);
        }

        public p0 c(GameInfoBean mGameInfo) {
            return (p0) super.extra("mGameInfo", mGameInfo);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f56637a;
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

        public p0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameRoomListActivity_.class);
            this.f56637a = fragment;
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaGameRoomListConfig f56638b;

        q(final ArenaGameRoomListConfig val$config) {
            this.f56638b = val$config;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.initViewPagerByConfig(this.f56638b);
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showLoadingView();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showNodataView();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showFailedView();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.hideLoadingView();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameRoomListActivity_.this.btnRefresh();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.dismissFastJoinRoomDialog();
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56646b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f56647c;

        x(final int val$newSize, final boolean val$isElite) {
            this.f56646b = val$newSize;
            this.f56647c = val$isElite;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.updateRoomCountsChanged(this.f56646b, this.f56647c);
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56649b;

        y(final String val$info) {
            this.f56649b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.showToast(this.f56649b);
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity_.super.hideLoadingDialog();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.pref = new PrefDef_(this);
        zc.c.b(this);
        this.accountUtil = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("mGameInfo")) {
                ((GameRoomListActivity) this).mGameInfo = (GameInfoBean) extras.getSerializable("mGameInfo");
            }
            if (extras.containsKey(IS_FORM_HALL_EXTRA)) {
                this.isFormHall = extras.getBoolean(IS_FORM_HALL_EXTRA);
            }
            if (extras.containsKey(FILTER_GAME_EXTRA)) {
                this.filterGame = extras.getBoolean(FILTER_GAME_EXTRA);
            }
        }
    }

    public static p0 intent(Context context) {
        return new p0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void checkUserInfoFailed() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void delaySubscribeGameList(final boolean isElite, final boolean isRefreshing) {
        org.androidannotations.api.b.e("", new n(isElite, isRefreshing), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void dismissFastJoinRoomDialog() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void finishActivity() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void finishActivityForGetConfigFailure() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void getChallengeConfig(final String gameId) {
        org.androidannotations.api.a.l(new i0("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void getGameConfig() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void getUiData() {
        org.androidannotations.api.b.e("", new d0(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new h(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handleMsgBroadcast(final Notification notification) {
        org.androidannotations.api.b.e("", new c(notification), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handlePushRoomListData(final ArenaResponse response, final boolean isFinished) {
        org.androidannotations.api.b.e("", new j(response, isFinished), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handleRoomListDelete(final List<SimpleRoom> datas) {
        org.androidannotations.api.b.e("", new l(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void handleRoomListUpdate(final List<SimpleRoom> datas) {
        org.androidannotations.api.b.e("", new m(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void hideLoadingDialog() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void hideLoadingView() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void initViewPagerByConfig(final ArenaGameRoomListConfig config) {
        org.androidannotations.api.b.e("", new q(config), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.arena.GameRoomListActivity, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_room_list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void onGameSeriesSelected() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.tv_area = (TextView) hasViews.internalFindViewById(R.id.tv_area);
        this.tv_title = (TextView) hasViews.internalFindViewById(R.id.tv_title);
        this.redPoint = hasViews.internalFindViewById(R.id.redPoint);
        this.iv_list = (LinearLayout) hasViews.internalFindViewById(R.id.iv_list);
        this.ll_standard_room = (LinearLayout) hasViews.internalFindViewById(R.id.ll_standard_room);
        this.tv_standard__room_count = (TextView) hasViews.internalFindViewById(R.id.tv_standard__room_count);
        this.tv_standard_room_name = (TextView) hasViews.internalFindViewById(R.id.tv_standard_room_name);
        this.ll_elite_room = (LinearLayout) hasViews.internalFindViewById(R.id.ll_elite_room);
        this.tv_elite_room_count = (TextView) hasViews.internalFindViewById(R.id.tv_elite_room_count);
        this.tv_elite_room_name = (TextView) hasViews.internalFindViewById(R.id.tv_elite_room_name);
        this.ll_race_room = (LinearLayout) hasViews.internalFindViewById(R.id.ll_race_room);
        this.tv_race_room_name = (TextView) hasViews.internalFindViewById(R.id.tv_race_room_name);
        this.tv_race_room_info = (TextView) hasViews.internalFindViewById(R.id.tv_race_room_info);
        this.tv_loading_info = (TextView) hasViews.internalFindViewById(R.id.tv_loading_info);
        this.progressLoding = (ProgressBar) hasViews.internalFindViewById(R.id.progressLoding);
        this.ll_broadcast = (LinearLayout) hasViews.internalFindViewById(R.id.ll_broadcast);
        this.imgIconList = (ImageView) hasViews.internalFindViewById(R.id.imgIconList);
        this.myDragImageView = hasViews.internalFindViewById(R.id.myDragImageView);
        this.tv_broadcast = (AlwaysMarqueeTextView) hasViews.internalFindViewById(R.id.tv_broadcast);
        this.mViewPager = (ViewPager) hasViews.internalFindViewById(R.id.mViewPager);
        this.rl_top = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_top);
        this.ll_battle_area = (LinearLayout) hasViews.internalFindViewById(R.id.ll_battle_area);
        this.ll_tab = (LinearLayout) hasViews.internalFindViewById(R.id.ll_tab);
        this.iv_battle_area_arrow = (ImageView) hasViews.internalFindViewById(R.id.iv_battle_area_arrow);
        this.ll_error = (LinearLayout) hasViews.internalFindViewById(R.id.ll_error);
        this.ll_loading = (LinearLayout) hasViews.internalFindViewById(R.id.ll_loading);
        this.btnFastGame = (ImageView) hasViews.internalFindViewById(R.id.btnFastGame);
        this.btnCreateRoom = (ImageView) hasViews.internalFindViewById(R.id.btnCreateRoom);
        this.footer = (LinearLayout) hasViews.internalFindViewById(R.id.footer);
        ((GameRoomListActivity) this).recyclerViewGamelist = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerViewGamelist);
        ((GameRoomListActivity) this).recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.selecterLayout = hasViews.internalFindViewById(R.id.selecterLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.btnRefresh);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.iv_back);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.btnFastGameM);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.close);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.quanmingxing);
        View view = this.selecterLayout;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new v());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new g0());
        }
        LinearLayout linearLayout = this.iv_list;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new j0());
        }
        ImageView imageView = this.btnCreateRoom;
        if (imageView != null) {
            imageView.setOnClickListener(new k0());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new l0());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new m0());
        }
        View view2 = this.myDragImageView;
        if (view2 != null) {
            view2.setOnClickListener(new n0());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new o0());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void refreshGameRoomList(final int refreshType) {
        org.androidannotations.api.b.e("", new a(refreshType), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void requestServer() {
        org.androidannotations.api.a.l(new f0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void setBattleAreaView(final int battle_area) {
        org.androidannotations.api.b.e("", new p(battle_area), 0L);
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
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showBattleArea(final BattleArea battleArea) {
        org.androidannotations.api.b.e("", new i(battleArea), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showFailedView() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showLoginDialog() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showNodataView() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new y(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void startCreateRoom(final String gameId, final int challengeCoins) {
        org.androidannotations.api.b.e("", new b0(gameId, challengeCoins), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void stopRefreshing(final boolean isElite) {
        org.androidannotations.api.b.e("", new g(isElite), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void subscribeRoomList(final int roomType, final boolean isRefreshing) {
        org.androidannotations.api.a.l(new e0("", 0L, "", roomType, isRefreshing));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void updateOnlineCounts(final AreaOnlinePeopleCount count) {
        org.androidannotations.api.b.e("", new b(count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void updateRoomCount(final ArenaResponse response, final boolean isElite) {
        org.androidannotations.api.b.e("", new d(response, isElite), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.GameRoomListActivity
    public void updateRoomCountsChanged(final int newSize, final boolean isElite) {
        org.androidannotations.api.b.e("", new x(newSize, isElite), 0L);
    }

    public static p0 intent(Fragment supportFragment) {
        return new p0(supportFragment);
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
