package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GamedetialModleFiveFragemnt_ extends b3 implements xc.a, zc.a, zc.b {
    private View W2;
    private final zc.c V2 = new zc.c();
    private final Map<Class<?>, Object> X2 = new HashMap();
    private final IntentFilter Y2 = new IntentFilter();
    private final BroadcastReceiver Z2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GamedetialModleFiveFragemnt_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GamedetialModleFiveFragemnt_.this.r1();
        }
    };

    /* JADX INFO: renamed from: a3, reason: collision with root package name */
    private final BroadcastReceiver f53403a3 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GamedetialModleFiveFragemnt_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GamedetialModleFiveFragemnt_.this.S0(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.G0();
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.updateButn();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.instalButtomButn();
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53409b;

        b0(final String val$number) {
            this.f53409b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.setCommentNumber(this.f53409b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.R0();
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53412b;

        c0(final int val$downloadingNumber) {
            this.f53412b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.l1(this.f53412b);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.m0();
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53415b;

        d0(final int val$number) {
            this.f53415b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.k1(this.f53415b);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.h1();
        }
    }

    class e0 implements View.OnClickListener {
        e0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.relodingimag();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.j0();
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.n1();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.Z0();
        }
    }

    class g0 implements Runnable {
        g0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.updateDownloadView();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.a1();
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53424b;

        h0(final boolean val$needRetry) {
            this.f53424b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.p1(this.f53424b);
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.n0();
        }
    }

    class i0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f53427b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53428c;

        i0(final ResultMainBean val$result, final int val$type) {
            this.f53427b = val$result;
            this.f53428c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.updateTitleButn(this.f53427b, this.f53428c);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.showLoding();
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53431b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f53432c;

        j0(final String val$gameId, final int val$game_book) {
            this.f53431b = val$gameId;
            this.f53432c = val$game_book;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.j1(this.f53431b, this.f53432c);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f53434b;

        k(final GamedetialModleFourBean val$modleFourBean) {
            this.f53434b = val$modleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.q1(this.f53434b);
        }
    }

    class k0 extends org.androidannotations.api.a.c {
        k0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.o0();
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
            GamedetialModleFiveFragemnt_.super.X();
        }
    }

    class l0 extends org.androidannotations.api.a.c {
        l0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.p0();
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
            GamedetialModleFiveFragemnt_.super.m1();
        }
    }

    class m0 extends org.androidannotations.api.a.c {
        m0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.U();
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
            GamedetialModleFiveFragemnt_.super.i1();
        }
    }

    class n0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53443c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b3.d0 f53444d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n0(String id2, long delay, String serial, final String val$id, final String val$game_id, final b3.d0 val$holder) {
            super(id2, delay, serial);
            this.f53442b = val$id;
            this.f53443c = val$game_id;
            this.f53444d = val$holder;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.V(this.f53442b, this.f53443c, this.f53444d);
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
            GamedetialModleFiveFragemnt_.super.A0();
        }
    }

    class o0 extends org.androidannotations.api.a.c {
        o0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.g0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53448b;

        p(final String val$sre) {
            this.f53448b = val$sre;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.c1(this.f53448b);
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.W();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f53451b;

        q(final GameFromPopoWinBean val$data) {
            this.f53451b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.e0(this.f53451b);
        }
    }

    class q0 extends org.androidannotations.api.a.c {
        q0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.h0();
        }
    }

    class r0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f53455b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f53455b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.changeGameFollow(this.f53455b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53457b;

        s(final String val$s) {
            this.f53457b = val$s;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.showToast(this.f53457b);
        }
    }

    class s0 extends org.androidannotations.api.a.c {
        s0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamedetialModleFiveFragemnt_.super.O0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.C0();
        }
    }

    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.setNetwork();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b3.d0 f53462b;

        u(final b3.d0 val$holder) {
            this.f53462b = val$holder;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.Y0(this.f53462b);
        }
    }

    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.F0();
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53465b;

        v(final String val$videoUrl) {
            this.f53465b = val$videoUrl;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.i0(this.f53465b);
        }
    }

    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.iv_back();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.e1();
        }
    }

    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.f0();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.showLodingFailed();
        }
    }

    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamedetialModleFiveFragemnt_.this.progress_layout();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.showProgress();
        }
    }

    public static class y0 extends org.androidannotations.api.builder.d<y0, b3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b3 build() {
            GamedetialModleFiveFragemnt_ gamedetialModleFiveFragemnt_ = new GamedetialModleFiveFragemnt_();
            gamedetialModleFiveFragemnt_.setArguments(this.args);
            return gamedetialModleFiveFragemnt_;
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamedetialModleFiveFragemnt_.super.showInstallButn();
        }
    }

    public static y0 a2() {
        return new y0();
    }

    private void init_(Bundle savedInstanceState) {
        this.f56786p0 = new PrefDef_(getActivity());
        zc.c.b(this);
        this.Y2.addAction("com.broadcast.bespeak.sussess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void A0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void C0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void O0() {
        org.androidannotations.api.a.l(new s0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void U() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void V(final String id2, final String game_id, final b3.d0 holder) {
        org.androidannotations.api.a.l(new n0("", 0L, "", id2, game_id, holder));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void X() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void Y0(final b3.d0 holder) {
        org.androidannotations.api.b.e("", new u(holder), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void c1(final String sre) {
        org.androidannotations.api.b.e("", new p(sre), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new r0("", 0L, "", type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void e0(final GameFromPopoWinBean data) {
        org.androidannotations.api.b.e("", new q(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void e1() {
        org.androidannotations.api.b.e("", new w(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void g0() {
        org.androidannotations.api.a.l(new o0("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.X2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new q0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void h0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void i0(final String videoUrl) {
        org.androidannotations.api.b.e("", new v(videoUrl), 600L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void i1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.W2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void j1(final String gameId, final int game_book) {
        org.androidannotations.api.b.e("", new j0(gameId, game_book), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void k1(final int number) {
        org.androidannotations.api.b.e("", new d0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void l1(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new c0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void m1() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void n1() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void o0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.V2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.Z2, this.Y2);
        getActivity().registerReceiver(this.f53403a3, this.Y2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.W2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.W2 = inflater.inflate(R.layout.gamedetial_modle_five_fragment, container, false);
        }
        return this.W2;
    }

    @Override // com.join.mgps.activity.b3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.Z2);
        getActivity().unregisterReceiver(this.f53403a3);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.W2 = null;
        this.f56765g = null;
        this.f56767h = null;
        this.f56769i = null;
        this.f56772j = null;
        this.f56774k = null;
        this.f56776l = null;
        this.f56779m = null;
        this.f56781n = null;
        this.f56783o = null;
        this.f56785p = null;
        this.f56789q = null;
        this.f56792r = null;
        this.f56795s = null;
        this.f56797t = null;
        this.f56799u = null;
        this.f56801v = null;
        this.f56804w = null;
        this.f56806x = null;
        this.f56808y = null;
        this.f56810z = null;
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
        this.B2 = null;
        this.C2 = null;
        this.D2 = null;
        this.E2 = null;
        this.F2 = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56765g = (RelativeLayout) hasViews.internalFindViewById(R.id.videolayout);
        this.f56767h = hasViews.internalFindViewById(R.id.nullView);
        this.f56769i = (StandardVideoView) hasViews.internalFindViewById(R.id.videoPlayer);
        this.f56772j = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_book_bg);
        this.f56774k = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tabs);
        this.f56776l = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.f56779m = (ViewPager) hasViews.internalFindViewById(R.id.viewPager1);
        this.f56781n = (LinearLayout) hasViews.internalFindViewById(R.id.ll_tabs);
        this.f56783o = hasViews.internalFindViewById(R.id.stauView);
        this.f56785p = (AppBarLayout) hasViews.internalFindViewById(R.id.appBarLayout);
        this.f56789q = (CollapsingToolbarLayout) hasViews.internalFindViewById(R.id.collapsingToolbarLayout);
        this.f56792r = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.f56795s = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.f56797t = (RelativeLayout) hasViews.internalFindViewById(R.id.titleTransfer);
        this.f56799u = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f56801v = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f56804w = (ConstraintLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f56806x = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f56808y = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.f56810z = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.A = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.B = (ImageView) hasViews.internalFindViewById(R.id.search_detial_back);
        this.C = (ImageView) hasViews.internalFindViewById(R.id.download_bg);
        this.D = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.E = (ImageView) hasViews.internalFindViewById(R.id.followImage);
        this.F = (TextView) hasViews.internalFindViewById(R.id.followButton);
        this.G = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.H = (Toolbar) hasViews.internalFindViewById(R.id.toolbar);
        this.I = (CoordinatorLayout) hasViews.internalFindViewById(R.id.main_content);
        this.J = hasViews.internalFindViewById(R.id.loding_layout);
        this.K = hasViews.internalFindViewById(R.id.loding_faile);
        this.L = hasViews.internalFindViewById(R.id.iv_backx);
        this.M = hasViews.internalFindViewById(R.id.setNetwork);
        this.N = hasViews.internalFindViewById(R.id.cover);
        this.O = hasViews.internalFindViewById(R.id.statuHVIew);
        this.P = (BottomSheetLayout) hasViews.internalFindViewById(R.id.sheetLayout);
        this.Q = (LinearLayout) hasViews.internalFindViewById(R.id.layoutGift);
        this.R = (SimpleDraweeView) hasViews.internalFindViewById(R.id.giftImage);
        this.S = (TextView) hasViews.internalFindViewById(R.id.giftContent);
        this.T = (LinearLayout) hasViews.internalFindViewById(R.id.ll_top_images);
        this.U = (HListView) hasViews.internalFindViewById(R.id.hlv_top_list);
        this.V = (ImageView) hasViews.internalFindViewById(R.id.ivGameResource);
        this.W = (RelativeLayout) hasViews.internalFindViewById(R.id.rlNormalDownload);
        this.X = (ImageView) hasViews.internalFindViewById(R.id.iv_cloud_launch);
        this.Y = (FrameLayout) hasViews.internalFindViewById(R.id.fl_game_info);
        this.B2 = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.C2 = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.D2 = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.E2 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.F2 = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
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
        View view = this.M;
        if (view != null) {
            view.setOnClickListener(new t0());
        }
        ImageView imageView = this.V;
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
            viewInternalFindViewById5.setOnClickListener(new x0());
        }
        View view2 = this.L;
        if (view2 != null) {
            view2.setOnClickListener(new a());
        }
        TextView textView = this.f56799u;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        ImageView imageView2 = this.X;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        LinearLayout linearLayout = this.A;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new d());
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
        this.V2.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void p0() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void p1(final boolean needRetry) {
        org.androidannotations.api.b.e("", new h0(needRetry), 1000L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.X2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void q1(final GamedetialModleFourBean modleFourBean) {
        org.androidannotations.api.b.e("", new k(modleFourBean), 0L);
    }

    @Override // com.join.mgps.activity.b3, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(final String number) {
        org.androidannotations.api.b.e("", new b0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void showProgress() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void showToast(final String s10) {
        org.androidannotations.api.b.e("", new s(s10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void updateButn() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new g0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.b3
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new i0(result, type), 0L);
    }
}
