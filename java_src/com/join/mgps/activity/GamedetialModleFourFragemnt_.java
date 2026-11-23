package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GamedetialModleFourFragemnt_ extends d3 implements xc.a, zc.a, zc.b {
    private View Q2;
    private final zc.c P2 = new zc.c();
    private final Map<Class<?>, Object> R2 = new HashMap();
    private final IntentFilter S2 = new IntentFilter();
    private final BroadcastReceiver T2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GamedetialModleFourFragemnt_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GamedetialModleFourFragemnt_.this.I0();
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.b0();
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53476b;

        a0(final int val$number) {
            this.f53476b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.B0(this.f53476b);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.z0();
        }
    }

    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.E0();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.a0();
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.updateDownloadView();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.t0();
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53483b;

        d0(final boolean val$needRetry) {
            this.f53483b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.F0(this.f53483b);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.u0();
        }
    }

    class e0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f53486b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53487c;

        e0(final ResultMainBean val$result, final int val$type) {
            this.f53486b = val$result;
            this.f53487c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.updateTitleButn(this.f53486b, this.f53487c);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.c0();
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.P();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.w0();
        }
    }

    class g0 extends org.androidannotations.api.a.c {
        g0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.d0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.showLoding();
        }
    }

    class h0 extends org.androidannotations.api.a.c {
        h0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f53495b;

        i(final GamedetialModleFourBean val$modleFourBean) {
            this.f53495b = val$modleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.H0(this.f53495b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {
        i0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.N();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.Q();
        }
    }

    class j0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53500c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d3.v f53501d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j0(String id2, long delay, String serial, final String val$id, final String val$game_id, final d3.v val$holder) {
            super(id2, delay, serial);
            this.f53499b = val$id;
            this.f53500c = val$game_id;
            this.f53501d = val$holder;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.O(this.f53499b, this.f53500c, this.f53501d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.D0();
        }
    }

    class k0 extends org.androidannotations.api.a.c {
        k0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.Y();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.A0();
        }
    }

    class l0 extends org.androidannotations.api.a.c {
        l0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.k0();
        }
    }

    class m0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53508b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f53508b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFourFragemnt_.super.changeGameFollow(this.f53508b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53510b;

        n(final String val$sre) {
            this.f53510b = val$sre;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.v0(this.f53510b);
        }
    }

    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.setNetwork();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f53513b;

        o(final GameFromPopoWinBean val$data) {
            this.f53513b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.W(this.f53513b);
        }
    }

    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.iv_back();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.Z();
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.X();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53518b;

        q(final String val$s) {
            this.f53518b = val$s;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.showToast(this.f53518b);
        }
    }

    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.progress_layout();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.m0();
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.o0();
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d3.v f53523b;

        s(final d3.v val$holder) {
            this.f53523b = val$holder;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.s0(this.f53523b);
        }
    }

    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.instalButtomButn();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.showLodingFailed();
        }
    }

    public static class t0 extends org.androidannotations.api.builder.d<t0, d3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d3 build() {
            GamedetialModleFourFragemnt_ gamedetialModleFourFragemnt_ = new GamedetialModleFourFragemnt_();
            gamedetialModleFourFragemnt_.setArguments(this.args);
            return gamedetialModleFourFragemnt_;
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFourFragemnt_.this.relodingimag();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.showProgress();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.showInstallButn();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.updateButn();
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53531b;

        y(final String val$number) {
            this.f53531b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.setCommentNumber(this.f53531b);
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53533b;

        z(final int val$downloadingNumber) {
            this.f53533b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFourFragemnt_.super.C0(this.f53533b);
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.S2.addAction("com.broadcast.bespeak.sussess");
    }

    public static t0 o1() {
        return new t0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void A0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void B0(final int number) {
        org.androidannotations.api.b.e("", new a0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void C0(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new z(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void D0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void E0() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void F0(final boolean needRetry) {
        org.androidannotations.api.b.e("", new d0(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void H0(final GamedetialModleFourBean modleFourBean) {
        org.androidannotations.api.b.e("", new i(modleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void N() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void O(final String id2, final String game_id, final d3.v holder) {
        org.androidannotations.api.a.l(new j0("", 0L, "", id2, game_id, holder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void Q() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void W(final GameFromPopoWinBean data) {
        org.androidannotations.api.b.e("", new o(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void Y() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void Z() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new m0("", 0L, "", type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void d0() {
        org.androidannotations.api.a.l(new g0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void e0() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.R2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.Q2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void k0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void m0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.P2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.T2, this.S2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.Q2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.Q2 = inflater.inflate(R.layout.gamedetial_modle_four_fragment, container, false);
        }
        return this.Q2;
    }

    @Override // com.join.mgps.activity.d3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.T2);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.Q2 = null;
        this.f56994g = null;
        this.f56996h = null;
        this.f56998i = null;
        this.f57001j = null;
        this.f57003k = null;
        this.f57005l = null;
        this.f57008m = null;
        this.f57010n = null;
        this.f57012o = null;
        this.f57014p = null;
        this.f57018q = null;
        this.f57021r = null;
        this.f57024s = null;
        this.f57026t = null;
        this.f57028u = null;
        this.f57030v = null;
        this.f57033w = null;
        this.f57035x = null;
        this.f57037y = null;
        this.f57039z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.f57036x2 = null;
        this.f57038y2 = null;
        this.f57040z2 = null;
        this.A2 = null;
        this.B2 = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56994g = (RelativeLayout) hasViews.internalFindViewById(R.id.videolayout);
        this.f56996h = hasViews.internalFindViewById(R.id.nullView);
        this.f56998i = (StandardVideoView) hasViews.internalFindViewById(R.id.videoPlayer);
        this.f57001j = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_book_bg);
        this.f57003k = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tabs);
        this.f57005l = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.f57008m = (SlidingTabLayoutGameDetailImage) hasViews.internalFindViewById(R.id.tabLayout1);
        this.f57010n = hasViews.internalFindViewById(R.id.bottomLine);
        this.f57012o = (ViewPager) hasViews.internalFindViewById(R.id.viewPager1);
        this.f57014p = hasViews.internalFindViewById(R.id.stauView);
        this.f57018q = (AppBarLayout) hasViews.internalFindViewById(R.id.appBarLayout);
        this.f57021r = (CollapsingToolbarLayout) hasViews.internalFindViewById(R.id.collapsingToolbarLayout);
        this.f57024s = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.f57026t = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.f57028u = (RelativeLayout) hasViews.internalFindViewById(R.id.titleTransfer);
        this.f57030v = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f57033w = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f57035x = (RelativeLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f57037y = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f57039z = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.A = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.B = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.C = (ImageView) hasViews.internalFindViewById(R.id.search_detial_back);
        this.D = (ImageView) hasViews.internalFindViewById(R.id.download_bg);
        this.E = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.F = (ImageView) hasViews.internalFindViewById(R.id.followImage);
        this.G = (TextView) hasViews.internalFindViewById(R.id.followButton);
        this.H = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.I = (Toolbar) hasViews.internalFindViewById(R.id.toolbar);
        this.J = hasViews.internalFindViewById(R.id.main_content);
        this.K = hasViews.internalFindViewById(R.id.loding_layout);
        this.L = hasViews.internalFindViewById(R.id.loding_faile);
        this.M = hasViews.internalFindViewById(R.id.iv_backx);
        this.N = hasViews.internalFindViewById(R.id.setNetwork);
        this.O = (LinearLayout) hasViews.internalFindViewById(R.id.btTaglayout);
        this.P = (LinearLayout) hasViews.internalFindViewById(R.id.tipsLayout);
        this.Q = hasViews.internalFindViewById(R.id.cover);
        this.R = hasViews.internalFindViewById(R.id.statuHVIew);
        this.f57036x2 = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.f57038y2 = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.f57040z2 = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.A2 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.B2 = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.IKnow);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.iv_back);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.progress_layout);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.downImage);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.share);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.shareTwo);
        View viewInternalFindViewById9 = hasViews.internalFindViewById(R.id.followLayout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new u());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new f0());
        }
        View view = this.N;
        if (view != null) {
            view.setOnClickListener(new n0());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new o0());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new p0());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new q0());
        }
        View view2 = this.M;
        if (view2 != null) {
            view2.setOnClickListener(new r0());
        }
        TextView textView = this.f57030v;
        if (textView != null) {
            textView.setOnClickListener(new s0());
        }
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        CustomerDownloadView customerDownloadView = this.E;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new c());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new d());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new e());
        }
        if (viewInternalFindViewById9 != null) {
            viewInternalFindViewById9.setOnClickListener(new f());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.P2.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.R2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void s0(final d3.v holder) {
        org.androidannotations.api.b.e("", new s(holder), 0L);
    }

    @Override // com.join.mgps.activity.d3, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(final String number) {
        org.androidannotations.api.b.e("", new y(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void showProgress() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void showToast(final String s10) {
        org.androidannotations.api.b.e("", new q(s10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void updateButn() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new e0(result, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void v0(final String sre) {
        org.androidannotations.api.b.e("", new n(sre), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d3
    public void w0() {
        org.androidannotations.api.b.e("", new g(), 4000L);
    }
}
