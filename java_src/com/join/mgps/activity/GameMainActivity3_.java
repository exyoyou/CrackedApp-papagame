package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaResponse;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameMainActivity3_ extends GameMainActivity3 implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver recvedDownDataReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameMainActivity3_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.recvedDownData(intent);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver showDialogDowningReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameMainActivity3_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.showDialogDowning();
        }
    };
    private final IntentFilter intentFilter3_ = new IntentFilter();
    private final BroadcastReceiver recvedDownDatav2Receiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameMainActivity3_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameMainActivity3_.this.recvedDownDatav2(intent);
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52944b;

        a(final boolean val$visible) {
            this.f52944b = val$visible;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.setForumVisibility(this.f52944b);
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.buyVip();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.setCommunityCommentDataUi();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.back();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.setCommunityDataUi();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.battleHall();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f52951b;

        d(final GameMainV4DataBean val$gameMaindataImg) {
            this.f52951b = val$gameMaindataImg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.showImg(this.f52951b);
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameMainActivity3_.this.startGame();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52954b;

        e(final String val$msg) {
            this.f52954b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.showToast(this.f52954b);
        }
    }

    class e0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainV4DataBean f52956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f52957c;

        e0(final GameMainV4DataBean val$dataBean, final boolean val$isGetData) {
            this.f52956b = val$dataBean;
            this.f52957c = val$isGetData;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.updateUI(this.f52956b, this.f52957c);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.gameMainNewYueZhanRlDo();
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.toCommentAllList();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.hideLoadingDialog();
        }
    }

    public static class g0 extends org.androidannotations.api.builder.a<g0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52962a;

        public g0(Context context) {
            super(context, (Class<?>) GameMainActivity3_.class);
        }

        public g0 a(String from) {
            return (g0) super.extra("from", from);
        }

        public g0 b(String gameId) {
            return (g0) super.extra("gameId", gameId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52962a;
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

        public g0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameMainActivity3_.class);
            this.f52962a = fragment;
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.showPspDialog();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.checkUserInfoFailed();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f52965b;

        j(final ArenaResponse val$response) {
            this.f52965b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.handleFailure(this.f52965b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52967b;

        k(final int val$localnum) {
            this.f52967b = val$localnum;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.upNum(this.f52967b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f52969b;

        l(final OnlineCouponConfigBean val$data) {
            this.f52969b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.showOnlineCoupinDialog(this.f52969b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f52971b;

        m(final CloudListDataBean val$dataBean) {
            this.f52971b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameMainActivity3_.super.updateStatu(this.f52971b);
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.checkBackupArchieve();
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
                GameMainActivity3_.super.getDataFromDb();
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
                GameMainActivity3_.super.getData();
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
                GameMainActivity3_.super.getCommentList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52977b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final String val$pids) {
            super(id2, delay, serial);
            this.f52977b = val$pids;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.getMulPostData(this.f52977b);
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
                GameMainActivity3_.super.getForumGroupIndex();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {
        t(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.getHomepageRecommendLabel();
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
                GameMainActivity3_.super.gameMainNewYueZhanRl();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.getPspData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w extends org.androidannotations.api.a.c {
        w(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.getNum();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f52984b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f52984b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.downFinishToCopy(this.f52984b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52986b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52987c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52988d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(String id2, long delay, String serial, final String val$imageUrl, final String val$filePath, final String val$fileName) {
            super(id2, delay, serial);
            this.f52986b = val$imageUrl;
            this.f52987c = val$filePath;
            this.f52988d = val$fileName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameMainActivity3_.super.downLodingImage(this.f52986b, this.f52987c, this.f52988d);
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
                GameMainActivity3_.super.getAllAchievementsData();
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
        this.intentFilter1_.addAction(p5.a.f96200i0);
        this.intentFilter2_.addAction("com.wufun.cloud.game.main.showDownDialog");
        this.intentFilter3_.addAction("com.cloud.downCloud.all");
        registerReceiver(this.recvedDownDataReceiver_, this.intentFilter1_);
        registerReceiver(this.showDialogDowningReceiver_, this.intentFilter2_);
        registerReceiver(this.recvedDownDatav2Receiver_, this.intentFilter3_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                ((GameMainActivity3) this).gameId = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getString("from");
            }
        }
    }

    public static g0 intent(Context context) {
        return new g0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void checkBackupArchieve() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void checkUserInfoFailed() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void downFinishToCopy(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new x("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void downLodingImage(final String imageUrl, final String filePath, final String fileName) {
        org.androidannotations.api.a.l(new y("", 0L, "", imageUrl, filePath, fileName));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void gameMainNewYueZhanRl() {
        org.androidannotations.api.a.l(new u("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void gameMainNewYueZhanRlDo() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getAllAchievementsData() {
        org.androidannotations.api.a.l(new z("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getCommentList() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getData() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getDataFromDb() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getForumGroupIndex() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getHomepageRecommendLabel() {
        org.androidannotations.api.a.l(new t("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getMulPostData(final String pids) {
        org.androidannotations.api.a.l(new r("", 0L, "", pids));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getNum() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void getPspData() {
        org.androidannotations.api.a.l(new v("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new j(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void hideLoadingDialog() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.join.mgps.activity.GameMainActivity3, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_game_main_3);
    }

    @Override // com.join.mgps.activity.GameMainActivity3, com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.recvedDownDataReceiver_);
        unregisterReceiver(this.showDialogDowningReceiver_);
        unregisterReceiver(this.recvedDownDatav2Receiver_);
        super.onDestroy();
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
        this.gameMainNewRv = (RecyclerView) hasViews.internalFindViewById(R.id.gameMainNewRv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.buyVip);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.startGame);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b0());
        }
        View view = this.battleHall;
        if (view != null) {
            view.setOnClickListener(new c0());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new d0());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void setCommunityCommentDataUi() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void setCommunityDataUi() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void setForumVisibility(final boolean visible) {
        org.androidannotations.api.b.e("", new a(visible), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void showImg(final GameMainV4DataBean gameMaindataImg) {
        org.androidannotations.api.b.e("", new d(gameMaindataImg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void showOnlineCoupinDialog(final OnlineCouponConfigBean data) {
        org.androidannotations.api.b.e("", new l(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void showPspDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new e(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void toCommentAllList() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void upNum(final int localnum) {
        org.androidannotations.api.b.e("", new k(localnum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void updateStatu(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new m(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameMainActivity3
    public void updateUI(final GameMainV4DataBean dataBean, final boolean isGetData) {
        org.androidannotations.api.b.e("", new e0(dataBean, isGetData), 0L);
    }

    public static g0 intent(Fragment supportFragment) {
        return new g0(supportFragment);
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
