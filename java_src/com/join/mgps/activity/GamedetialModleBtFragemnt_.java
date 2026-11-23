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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GamedetialModleBtFragemnt_ extends s2 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: d3, reason: collision with root package name */
    private View f53330d3;

    /* JADX INFO: renamed from: c3, reason: collision with root package name */
    private final zc.c f53329c3 = new zc.c();

    /* JADX INFO: renamed from: e3, reason: collision with root package name */
    private final Map<Class<?>, Object> f53331e3 = new HashMap();

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    private final IntentFilter f53332f3 = new IntentFilter();

    /* JADX INFO: renamed from: g3, reason: collision with root package name */
    private final BroadcastReceiver f53333g3 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GamedetialModleBtFragemnt_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GamedetialModleBtFragemnt_.this.g1();
        }
    };

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    private final BroadcastReceiver f53334h3 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GamedetialModleBtFragemnt_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GamedetialModleBtFragemnt_.this.I0(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.progress_layout();
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53338b;

        a0(final String val$number) {
            this.f53338b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.setCommentNumber(this.f53338b);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.x0();
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53341b;

        b0(final int val$downloadingNumber) {
            this.f53341b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.Z0(this.f53341b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.instalButtomButn();
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53344b;

        c0(final int val$number) {
            this.f53344b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.Y0(this.f53344b);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.i0();
        }
    }

    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.b1();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.V0();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.relodingimag();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.h0();
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.updateDownloadView();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.N0();
        }
    }

    class g0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53353b;

        g0(final boolean val$needRetry) {
            this.f53353b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.d1(this.f53353b);
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.O0();
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f53356b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53357c;

        h0(final ResultMainBean val$result, final int val$type) {
            this.f53356b = val$result;
            this.f53357c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.updateTitleButn(this.f53356b, this.f53357c);
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.j0();
        }
    }

    class i0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53360b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53361c;

        i0(final String val$gameId, final int val$game_book) {
            this.f53360b = val$gameId;
            this.f53361c = val$game_book;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.X0(this.f53360b, this.f53361c);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.S0();
        }
    }

    class j0 extends org.androidannotations.api.a.c {
        j0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.k0();
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
            GamedetialModleBtFragemnt_.super.showLoding();
        }
    }

    class k0 extends org.androidannotations.api.a.c {
        k0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.l0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f53367b;

        l(final GamedetialModleFourBean val$modleFourBean) {
            this.f53367b = val$modleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.f1(this.f53367b);
        }
    }

    class l0 extends org.androidannotations.api.a.c {
        l0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.T();
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
            GamedetialModleBtFragemnt_.super.W();
        }
    }

    class m0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53371b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53372c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ s2.b0 f53373d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(String id2, long delay, String serial, final String val$id, final String val$game_id, final s2.b0 val$holder) {
            super(id2, delay, serial);
            this.f53371b = val$id;
            this.f53372c = val$game_id;
            this.f53373d = val$holder;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.U(this.f53371b, this.f53372c, this.f53373d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.a1();
        }
    }

    class n0 extends org.androidannotations.api.a.c {
        n0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.W0();
        }
    }

    class o0 extends org.androidannotations.api.a.c {
        o0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.s0();
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.V();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53381b;

        q(final String val$sre) {
            this.f53381b = val$sre;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.Q0(this.f53381b);
        }
    }

    class q0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53383b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f53383b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.changeGameFollow(this.f53383b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f53385b;

        r(final GameFromPopoWinBean val$data) {
            this.f53385b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.c0(this.f53385b);
        }
    }

    class r0 extends org.androidannotations.api.a.c {
        r0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleBtFragemnt_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.f0();
        }
    }

    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.setNetwork();
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53390b;

        t(final String val$s) {
            this.f53390b = val$s;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.showToast(this.f53390b);
        }
    }

    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.g0();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.u0();
        }
    }

    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.w0();
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s2.b0 f53395b;

        v(final s2.b0 val$holder) {
            this.f53395b = val$holder;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.M0(this.f53395b);
        }
    }

    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.iv_back();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.showLodingFailed();
        }
    }

    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleBtFragemnt_.this.d0();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.showProgress();
        }
    }

    public static class x0 extends org.androidannotations.api.builder.d<x0, s2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s2 build() {
            GamedetialModleBtFragemnt_ gamedetialModleBtFragemnt_ = new GamedetialModleBtFragemnt_();
            gamedetialModleBtFragemnt_.setArguments(this.args);
            return gamedetialModleBtFragemnt_;
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.showInstallButn();
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleBtFragemnt_.super.updateButn();
        }
    }

    public static x0 O1() {
        return new x0();
    }

    private void init_(Bundle savedInstanceState) {
        this.f58017p0 = new PrefDef_(getActivity());
        zc.c.b(this);
        this.f53332f3.addAction("com.broadcast.bespeak.sussess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void F0() {
        org.androidannotations.api.a.l(new r0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void M0(final s2.b0 holder) {
        org.androidannotations.api.b.e("", new v(holder), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void Q0(final String sre) {
        org.androidannotations.api.b.e("", new q(sre), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void S0() {
        org.androidannotations.api.b.e("", new j(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void T() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void U(final String id2, final String game_id, final s2.b0 holder) {
        org.androidannotations.api.a.l(new m0("", 0L, "", id2, game_id, holder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void W() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void W0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void X0(final String gameId, final int game_book) {
        org.androidannotations.api.b.e("", new i0(gameId, game_book), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void Y0(final int number) {
        org.androidannotations.api.b.e("", new c0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void Z0(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new b0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void a1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void b1() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void c0(final GameFromPopoWinBean data) {
        org.androidannotations.api.b.e("", new r(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new q0("", 0L, "", type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void d1(final boolean needRetry) {
        org.androidannotations.api.b.e("", new g0(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void e0() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void f0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void f1(final GamedetialModleFourBean modleFourBean) {
        org.androidannotations.api.b.e("", new l(modleFourBean), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f53331e3.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new o0("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f53330d3;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void k0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void l0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f53329c3);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f53333g3, this.f53332f3);
        getActivity().registerReceiver(this.f53334h3, this.f53332f3);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f53330d3 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f53330d3 = inflater.inflate(R.layout.gamedetial_modle_bt_fragment, container, false);
        }
        return this.f53330d3;
    }

    @Override // com.join.mgps.activity.s2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f53333g3);
        getActivity().unregisterReceiver(this.f53334h3);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f53330d3 = null;
        this.f57996g = null;
        this.f57998h = null;
        this.f58000i = null;
        this.f58003j = null;
        this.f58005k = null;
        this.f58007l = null;
        this.f58010m = null;
        this.f58012n = null;
        this.f58014o = null;
        this.f58016p = null;
        this.f58020q = null;
        this.f58023r = null;
        this.f58026s = null;
        this.f58028t = null;
        this.f58030u = null;
        this.f58032v = null;
        this.f58035w = null;
        this.f58037x = null;
        this.f58039y = null;
        this.f58041z = null;
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
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.K2 = null;
        this.L2 = null;
        this.M2 = null;
        this.N2 = null;
        this.O2 = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57996g = (RelativeLayout) hasViews.internalFindViewById(R.id.videolayout);
        this.f57998h = hasViews.internalFindViewById(R.id.nullView);
        this.f58000i = (StandardVideoView) hasViews.internalFindViewById(R.id.videoPlayer);
        this.f58003j = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_book_bg);
        this.f58005k = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tabs);
        this.f58007l = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.f58010m = (SlidingTabLayoutGameDetailImage) hasViews.internalFindViewById(R.id.tabLayout1);
        this.f58012n = hasViews.internalFindViewById(R.id.bottomLine);
        this.f58014o = (ViewPager) hasViews.internalFindViewById(R.id.viewPager1);
        this.f58016p = hasViews.internalFindViewById(R.id.stauView);
        this.f58020q = (AppBarLayout) hasViews.internalFindViewById(R.id.appBarLayout);
        this.f58023r = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.f58026s = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.f58028t = (RelativeLayout) hasViews.internalFindViewById(R.id.titleTransfer);
        this.f58030u = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f58032v = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f58035w = (ConstraintLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f58037x = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f58039y = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.f58041z = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.A = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.B = (ImageView) hasViews.internalFindViewById(R.id.search_detial_back);
        this.C = (ImageView) hasViews.internalFindViewById(R.id.download_bg);
        this.D = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.E = (ImageView) hasViews.internalFindViewById(R.id.followImage);
        this.F = (TextView) hasViews.internalFindViewById(R.id.followButton);
        this.G = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.H = (CoordinatorLayout) hasViews.internalFindViewById(R.id.main_content);
        this.I = hasViews.internalFindViewById(R.id.loding_layout);
        this.J = hasViews.internalFindViewById(R.id.loding_faile);
        this.K = hasViews.internalFindViewById(R.id.iv_backx);
        this.L = hasViews.internalFindViewById(R.id.setNetwork);
        this.M = (LinearLayout) hasViews.internalFindViewById(R.id.btTaglayout);
        this.N = (LinearLayout) hasViews.internalFindViewById(R.id.tipsLayout);
        this.O = hasViews.internalFindViewById(R.id.cover);
        this.P = hasViews.internalFindViewById(R.id.statuHVIew);
        this.Q = (BottomSheetLayout) hasViews.internalFindViewById(R.id.sheetLayout);
        this.R = hasViews.internalFindViewById(R.id.v_mask);
        this.S = (LinearLayout) hasViews.internalFindViewById(R.id.ll_notice);
        this.T = (TextView) hasViews.internalFindViewById(R.id.tv_notice);
        this.U = (CornersLinearLayout) hasViews.internalFindViewById(R.id.cll_view);
        this.V = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_top_view);
        this.W = (RelativeLayout) hasViews.internalFindViewById(R.id.ll_top_view);
        this.X = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_title);
        this.Y = (ImageView) hasViews.internalFindViewById(R.id.ivGameResource);
        this.Z = (RelativeLayout) hasViews.internalFindViewById(R.id.rlNormalDownload);
        this.K2 = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.L2 = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.M2 = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.N2 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.O2 = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
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
            viewInternalFindViewById.setOnClickListener(new e0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new p0());
        }
        View view = this.L;
        if (view != null) {
            view.setOnClickListener(new s0());
        }
        LinearLayout linearLayout = this.S;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new t0());
        }
        ImageView imageView = this.Y;
        if (imageView != null) {
            imageView.setOnClickListener(new u0());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new v0());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new w0());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new a());
        }
        View view2 = this.K;
        if (view2 != null) {
            view2.setOnClickListener(new b());
        }
        TextView textView = this.f58030u;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        LinearLayout linearLayout2 = this.A;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.D;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new f());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new g());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new h());
        }
        if (viewInternalFindViewById9 != null) {
            viewInternalFindViewById9.setOnClickListener(new i());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f53329c3.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f53331e3.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void s0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // com.join.mgps.activity.s2, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(final String number) {
        org.androidannotations.api.b.e("", new a0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void showProgress() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void showToast(final String s10) {
        org.androidannotations.api.b.e("", new t(s10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void u0() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void updateButn() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.s2
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new h0(result, type), 0L);
    }
}
