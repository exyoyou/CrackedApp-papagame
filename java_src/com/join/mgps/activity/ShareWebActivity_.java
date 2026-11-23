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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.pref.PrefDef_;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ShareWebActivity_ extends ShareWebActivity implements xc.a, zc.a, zc.b {
    public static final String INTENTDATE_EXTRA = "intentdate";
    public static final String INTENT_DATA_MAIN_EXTRA = "intentDataMain";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String SUPPORT_JAVASCRIPT_EXTRA = "supportJavascript";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver finishViewReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ShareWebActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ShareWebActivity_.this.finishView(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showLoding();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.backNew();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showLodingFailed();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.setNetwork();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showMain();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.search();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55930b;

        d(final String val$message) {
            this.f55930b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showTost(this.f55930b);
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.download();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f55933b;

        e(final DetailResultBean val$collectionBeanSub) {
            this.f55933b = val$collectionBeanSub;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.startDown(this.f55933b);
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.refresh();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f55936b;

        f(final DetailResultBean val$detialResultBean) {
            this.f55936b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.startDownv2(this.f55936b);
        }
    }

    class f0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f55939c;

        f0(final String val$url, final IntentDateBean val$intentDateBean) {
            this.f55938b = val$url;
            this.f55939c = val$intentDateBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.downGame(this.f55938b, this.f55939c);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f55941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55942c;

        g(final DomainInfoBean val$domainInfoBean, final String val$abUid) {
            this.f55941b = val$domainInfoBean;
            this.f55942c = val$abUid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showDomainDialog(this.f55941b, this.f55942c);
        }
    }

    public static class g0 extends org.androidannotations.api.builder.a<g0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55944a;

        public g0(Context context) {
            super(context, (Class<?>) ShareWebActivity_.class);
        }

        public g0 a(IntentDataMain intentDataMain) {
            return (g0) super.extra("intentDataMain", intentDataMain);
        }

        public g0 b(IntentDateBean intentdate) {
            return (g0) super.extra("intentdate", intentdate);
        }

        public g0 c(ExtBean parentExtBean) {
            return (g0) super.extra("parentExtBean", parentExtBean);
        }

        public g0 d(boolean supportJavascript) {
            return (g0) super.extra("supportJavascript", supportJavascript);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55944a;
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
            super(fragment.getActivity(), (Class<?>) ShareWebActivity_.class);
            this.f55944a = fragment;
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55945b;

        h(final String val$romid) {
            this.f55945b = val$romid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.loaclJumpGameMatch(this.f55945b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f55947b;

        i(final boolean val$isShow) {
            this.f55947b = val$isShow;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.initSocket(this.f55947b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55949b;

        j(final String val$roomNum) {
            this.f55949b = val$roomNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.doSearchRoomCmd(this.f55949b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SocketError f55951b;

        k(final SocketError val$error) {
            this.f55951b = val$error;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.myError(this.f55951b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f55953b;

        l(final GameRoom val$gameRoom) {
            this.f55953b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.handleSearchRoomResponse(this.f55953b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f55955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55956c;

        m(final GameRoom val$gameRoom, final String val$pwd) {
            this.f55955b = val$gameRoom;
            this.f55956c = val$pwd;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.doJoinRoom(this.f55955b, this.f55956c);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f55958b;

        n(final GameRoom val$gameRoom) {
            this.f55958b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showInputGameRoomPwdDialog(this.f55958b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f55960b;

        o(final ArenaResponse val$response) {
            this.f55960b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.handleFailure(this.f55960b);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.showLoginDialog();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.dismissLoadingDialog();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CreateVipData f55964b;

        r(final CreateVipData val$vipData) {
            this.f55964b = val$vipData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.startPayVipOrder(this.f55964b);
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareWebActivity_.super.dialogZ();
        }
    }

    class t extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55967b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55968c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f55969d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f55970e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(String id2, long delay, String serial, final String val$gameId, final String val$url, final int val$from, final String val$extStr) {
            super(id2, delay, serial);
            this.f55967b = val$gameId;
            this.f55968c = val$url;
            this.f55969d = val$from;
            this.f55970e = val$extStr;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.getDetailData(this.f55967b, this.f55968c, this.f55969d, this.f55970e);
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
            ShareWebActivity_.this.loding_faile();
        }
    }

    class v extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f55975d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v(String id2, long delay, String serial, final int val$location, final String val$abUid, final String val$url) {
            super(id2, delay, serial);
            this.f55973b = val$location;
            this.f55974c = val$abUid;
            this.f55975d = val$url;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.getPrivateDomain(this.f55973b, this.f55974c, this.f55975d);
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
                ShareWebActivity_.super.getUserInfo();
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
                ShareWebActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55979b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(String id2, long delay, String serial, final int val$ordertype) {
            super(id2, delay, serial);
            this.f55979b = val$ordertype;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareWebActivity_.super.createVip(this.f55979b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity_.this.back_imag();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.accountUtil = AccountUtil_.getInstance_(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.f96196g0);
        registerReceiver(this.finishViewReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentdate")) {
                this.intentdate = (IntentDateBean) extras.getSerializable("intentdate");
            }
            if (extras.containsKey("intentDataMain")) {
                this.intentDataMain = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
            if (extras.containsKey("supportJavascript")) {
                this.supportJavascript = extras.getBoolean("supportJavascript");
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static g0 intent(Context context) {
        return new g0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new x("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void createVip(final int ordertype) {
        org.androidannotations.api.a.l(new y("", 0L, "", ordertype));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void dialogZ() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void doJoinRoom(final GameRoom gameRoom, final String pwd) {
        org.androidannotations.api.b.e("", new m(gameRoom, pwd), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void doSearchRoomCmd(final String roomNum) {
        org.androidannotations.api.b.e("", new j(roomNum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void downGame(final String url, final IntentDateBean intentDateBean) {
        org.androidannotations.api.b.e("", new f0(url, intentDateBean), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void getDetailData(final String gameId, final String url, final int from, final String extStr) {
        org.androidannotations.api.a.l(new t("", 0L, "", gameId, url, from, extStr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void getPrivateDomain(final int location, final String abUid, final String url) {
        org.androidannotations.api.a.l(new v("", 0L, "", location, abUid, url));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void getUserInfo() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new o(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void handleSearchRoomResponse(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new l(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void initSocket(final boolean isShow) {
        org.androidannotations.api.b.e("", new i(isShow), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void loaclJumpGameMatch(final String romid) {
        org.androidannotations.api.b.e("", new h(romid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void myError(final SocketError error) {
        org.androidannotations.api.b.e("", new k(error), 0L);
    }

    @Override // com.join.mgps.activity.ShareWebActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.share_activity_layout);
    }

    @Override // com.join.mgps.activity.ShareWebActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.finishViewReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.v_status = hasViews.internalFindViewById(R.id.v_status);
        this.title = (RelativeLayout) hasViews.internalFindViewById(R.id.title);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.failedMessage = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.layout_share = (LinearLayout) hasViews.internalFindViewById(R.id.layout_share);
        this.video_view = (FrameLayout) hasViews.internalFindViewById(R.id.video_view);
        this.weblayout = (RelativeLayout) hasViews.internalFindViewById(R.id.weblayout);
        this.web = (LJWebView) hasViews.internalFindViewById(R.id.web);
        this.refresh = (ImageView) hasViews.internalFindViewById(R.id.refresh);
        this.search = (ImageView) hasViews.internalFindViewById(R.id.search);
        this.backNew = (ImageView) hasViews.internalFindViewById(R.id.backNew);
        this.back_imag = (ImageView) hasViews.internalFindViewById(R.id.back_imag);
        this.download = (ImageView) hasViews.internalFindViewById(R.id.download);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new u());
        }
        ImageView imageView = this.back_imag;
        if (imageView != null) {
            imageView.setOnClickListener(new z());
        }
        ImageView imageView2 = this.backNew;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a0());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b0());
        }
        ImageView imageView3 = this.search;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new c0());
        }
        ImageView imageView4 = this.download;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new d0());
        }
        ImageView imageView5 = this.refresh;
        if (imageView5 != null) {
            imageView5.setOnClickListener(new e0());
        }
        this.video = this.video_view;
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showDomainDialog(final DomainInfoBean domainInfoBean, final String abUid) {
        org.androidannotations.api.b.e("", new g(domainInfoBean, abUid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showInputGameRoomPwdDialog(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new n(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showLoginDialog() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void startDown(final DetailResultBean collectionBeanSub) {
        org.androidannotations.api.b.e("", new e(collectionBeanSub), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void startDownv2(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new f(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareWebActivity
    public void startPayVipOrder(final CreateVipData vipData) {
        org.androidannotations.api.b.e("", new r(vipData), 0L);
    }

    public static g0 intent(Fragment supportFragment) {
        return new g0(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
