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
public final class FullShareWebActivity_ extends FullShareWebActivity implements xc.a, zc.a, zc.b {
    public static final String INTENTDATE_EXTRA = "intentdate";
    public static final String INTENT_DATA_MAIN_EXTRA = "intentDataMain";
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String SCREEN_ORIENTATION_EXTRA = "screenOrientation";
    public static final String SUPPORT_JAVASCRIPT_EXTRA = "supportJavascript";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver finishViewReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.FullShareWebActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FullShareWebActivity_.this.finishView(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showLodingFailed();
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity_.this.setNetwork();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showMain();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity_.this.search();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52237b;

        c(final String val$message) {
            this.f52237b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showTost(this.f52237b);
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity_.this.download();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f52240b;

        d(final DetailResultBean val$collectionBeanSub) {
            this.f52240b = val$collectionBeanSub;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.startDown(this.f52240b);
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f52243c;

        d0(final String val$url, final IntentDateBean val$intentDateBean) {
            this.f52242b = val$url;
            this.f52243c = val$intentDateBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.downGame(this.f52242b, this.f52243c);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f52245b;

        e(final DetailResultBean val$detialResultBean) {
            this.f52245b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.startDownv2(this.f52245b);
        }
    }

    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showLoding();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f52248b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52249c;

        f(final DomainInfoBean val$domainInfoBean, final String val$abUid) {
            this.f52248b = val$domainInfoBean;
            this.f52249c = val$abUid;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showDomainDialog(this.f52248b, this.f52249c);
        }
    }

    public static class f0 extends org.androidannotations.api.builder.a<f0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52251a;

        public f0(Context context) {
            super(context, (Class<?>) FullShareWebActivity_.class);
        }

        public f0 a(IntentDataMain intentDataMain) {
            return (f0) super.extra("intentDataMain", intentDataMain);
        }

        public f0 b(IntentDateBean intentdate) {
            return (f0) super.extra("intentdate", intentdate);
        }

        public f0 c(ExtBean parentExtBean) {
            return (f0) super.extra("parentExtBean", parentExtBean);
        }

        public f0 d(int screenOrientation) {
            return (f0) super.extra(FullShareWebActivity_.SCREEN_ORIENTATION_EXTRA, screenOrientation);
        }

        public f0 e(boolean supportJavascript) {
            return (f0) super.extra("supportJavascript", supportJavascript);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52251a;
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

        public f0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) FullShareWebActivity_.class);
            this.f52251a = fragment;
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52252b;

        g(final String val$romid) {
            this.f52252b = val$romid;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.loaclJumpGameMatch(this.f52252b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52254b;

        h(final boolean val$isShow) {
            this.f52254b = val$isShow;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.initSocket(this.f52254b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52256b;

        i(final String val$roomNum) {
            this.f52256b = val$roomNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.doSearchRoomCmd(this.f52256b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SocketError f52258b;

        j(final SocketError val$error) {
            this.f52258b = val$error;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.myError(this.f52258b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f52260b;

        k(final GameRoom val$gameRoom) {
            this.f52260b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.handleSearchRoomResponse(this.f52260b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f52262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52263c;

        l(final GameRoom val$gameRoom, final String val$pwd) {
            this.f52262b = val$gameRoom;
            this.f52263c = val$pwd;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.doJoinRoom(this.f52262b, this.f52263c);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f52265b;

        m(final GameRoom val$gameRoom) {
            this.f52265b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showInputGameRoomPwdDialog(this.f52265b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f52267b;

        n(final ArenaResponse val$response) {
            this.f52267b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.handleFailure(this.f52267b);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.showLoginDialog();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.dismissLoadingDialog();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CreateVipData f52271b;

        q(final CreateVipData val$vipData) {
            this.f52271b = val$vipData;
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.startPayVipOrder(this.f52271b);
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FullShareWebActivity_.super.dialogZ();
        }
    }

    class s extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52274b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52275c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52276d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f52277e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(String id2, long delay, String serial, final String val$gameId, final String val$url, final int val$from, final String val$extStr) {
            super(id2, delay, serial);
            this.f52274b = val$gameId;
            this.f52275c = val$url;
            this.f52276d = val$from;
            this.f52277e = val$extStr;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FullShareWebActivity_.super.getDetailData(this.f52274b, this.f52275c, this.f52276d, this.f52277e);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52279b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52280c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f52281d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(String id2, long delay, String serial, final int val$location, final String val$abUid, final String val$url) {
            super(id2, delay, serial);
            this.f52279b = val$location;
            this.f52280c = val$abUid;
            this.f52281d = val$url;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FullShareWebActivity_.super.getPrivateDomain(this.f52279b, this.f52280c, this.f52281d);
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
            FullShareWebActivity_.this.loding_faile();
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FullShareWebActivity_.super.getUserInfo();
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
                FullShareWebActivity_.super.checkToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52286b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(String id2, long delay, String serial, final int val$ordertype) {
            super(id2, delay, serial);
            this.f52286b = val$ordertype;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FullShareWebActivity_.super.createVip(this.f52286b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity_.this.back_imag();
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity_.this.backNew();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        this.accountUtil = AccountUtil_.getInstance_(this);
        getWindow().setFlags(1024, 1024);
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
            if (extras.containsKey(SCREEN_ORIENTATION_EXTRA)) {
                this.screenOrientation = extras.getInt(SCREEN_ORIENTATION_EXTRA);
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static f0 intent(Context context) {
        return new f0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void checkToken() {
        org.androidannotations.api.a.l(new w("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void createVip(final int ordertype) {
        org.androidannotations.api.a.l(new x("", 0L, "", ordertype));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void dialogZ() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void doJoinRoom(final GameRoom gameRoom, final String pwd) {
        org.androidannotations.api.b.e("", new l(gameRoom, pwd), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void doSearchRoomCmd(final String roomNum) {
        org.androidannotations.api.b.e("", new i(roomNum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void downGame(final String url, final IntentDateBean intentDateBean) {
        org.androidannotations.api.b.e("", new d0(url, intentDateBean), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void getDetailData(final String gameId, final String url, final int from, final String extStr) {
        org.androidannotations.api.a.l(new s("", 0L, "", gameId, url, from, extStr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void getPrivateDomain(final int location, final String abUid, final String url) {
        org.androidannotations.api.a.l(new t("", 0L, "", location, abUid, url));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void getUserInfo() {
        org.androidannotations.api.a.l(new v("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void handleFailure(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new n(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void handleSearchRoomResponse(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new k(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void initSocket(final boolean isShow) {
        org.androidannotations.api.b.e("", new h(isShow), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void loaclJumpGameMatch(final String romid) {
        org.androidannotations.api.b.e("", new g(romid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void myError(final SocketError error) {
        org.androidannotations.api.b.e("", new j(error), 0L);
    }

    @Override // com.join.mgps.activity.FullShareWebActivity, com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.full_share_activity_layout);
    }

    @Override // com.join.mgps.activity.FullShareWebActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.finishViewReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.failedMessage = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.video_view = (FrameLayout) hasViews.internalFindViewById(R.id.video_view);
        this.weblayout = (RelativeLayout) hasViews.internalFindViewById(R.id.weblayout);
        this.web = (LJWebView) hasViews.internalFindViewById(R.id.web);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_imag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.backNew);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.download);
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new u());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new y());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new z());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new a0());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new b0());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new c0());
        }
        this.video = this.video_view;
        afterview();
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
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showDomainDialog(final DomainInfoBean domainInfoBean, final String abUid) {
        org.androidannotations.api.b.e("", new f(domainInfoBean, abUid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showInputGameRoomPwdDialog(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new m(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showLoginDialog() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new c(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void startDown(final DetailResultBean collectionBeanSub) {
        org.androidannotations.api.b.e("", new d(collectionBeanSub), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void startDownv2(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new e(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FullShareWebActivity
    public void startPayVipOrder(final CreateVipData vipData) {
        org.androidannotations.api.b.e("", new q(vipData), 0L);
    }

    public static f0 intent(Fragment supportFragment) {
        return new f0(supportFragment);
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
