package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PapaMainV3Fragment_ extends PapaMainV3Fragment implements xc.a, zc.a, zc.b {
    public static final String I2 = "gameId";

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private View f55362w2;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private final zc.c f55361v2 = new zc.c();

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private final Map<Class<?>, Object> f55363x2 = new HashMap();

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private final IntentFilter f55364y2 = new IntentFilter();

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private final BroadcastReceiver f55365z2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV3Fragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            PapaMainV3Fragment_.this.P();
        }
    };
    private final IntentFilter A2 = new IntentFilter();
    private final BroadcastReceiver B2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV3Fragment_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PapaMainV3Fragment_.this.e1(intent);
        }
    };
    private final IntentFilter C2 = new IntentFilter();
    private final BroadcastReceiver D2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV3Fragment_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PapaMainV3Fragment_.this.k1(intent);
        }
    };
    private final IntentFilter E2 = new IntentFilter();
    private final BroadcastReceiver F2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV3Fragment_.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PapaMainV3Fragment_.this.J0(intent);
        }
    };
    private final IntentFilter G2 = new IntentFilter();
    private final BroadcastReceiver H2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV3Fragment_.5

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f55370b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PapaMainV3Fragment_.this.g1((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.B1();
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f55373b;

        a0(final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            this.f55373b = val$item;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.s0(this.f55373b);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.setNetwork();
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f55376b;

        b0(final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            this.f55376b = val$item;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.w0(this.f55376b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.H1();
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.Q0();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.z0();
        }
    }

    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.P0();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.S0();
        }
    }

    class e0 extends org.androidannotations.api.a.c {
        e0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f55384b;

        f(final Intent val$intent) {
            this.f55384b = val$intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.e1(this.f55384b);
        }
    }

    class f0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55386b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55387c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(String id2, long delay, String serial, final int val$messageId, final String val$messageType) {
            super(id2, delay, serial);
            this.f55386b = val$messageId;
            this.f55387c = val$messageType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.L0(this.f55386b, this.f55387c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.P1();
        }
    }

    class g0 extends org.androidannotations.api.a.c {
        g0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.v0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55391b;

        h(final List val$vipPopDatas) {
            this.f55391b = val$vipPopDatas;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.F1(this.f55391b);
        }
    }

    class h0 extends org.androidannotations.api.a.c {
        h0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.y1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55394b;

        i(final String val$gameId) {
            this.f55394b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.I1(this.f55394b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55396b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f55396b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.t0(this.f55396b);
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
            PapaMainV3Fragment_.super.C1();
        }
    }

    class j0 extends org.androidannotations.api.a.c {
        j0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.E0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            PapaMainV3Fragment_.super.Y0();
        }
    }

    class k0 extends org.androidannotations.api.a.c {
        k0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f55402b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55403c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f55404d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f55405e;

        l(final PAPAHomeBeanV7 val$mainBean, final String val$m, final int val$pnx, final boolean val$fromNet) {
            this.f55402b = val$mainBean;
            this.f55403c = val$m;
            this.f55404d = val$pnx;
            this.f55405e = val$fromNet;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.K1(this.f55402b, this.f55403c, this.f55404d, this.f55405e);
        }
    }

    class l0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55408c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String id2, long delay, String serial, final String val$m, final int val$pnx) {
            super(id2, delay, serial);
            this.f55407b = val$m;
            this.f55408c = val$pnx;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.X0(this.f55407b, this.f55408c);
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
            PapaMainV3Fragment_.super.c1();
        }
    }

    class m0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f55411b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(String id2, long delay, String serial, final PAPAHomeBeanV7 val$mainBean) {
            super(id2, delay, serial);
            this.f55411b = val$mainBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.o1(this.f55411b);
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
            PapaMainV3Fragment_.super.n1();
        }
    }

    class n0 extends org.androidannotations.api.a.c {
        n0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.D0();
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
            PapaMainV3Fragment_.super.notifyDataSetChanged();
        }
    }

    class o0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55416b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f55417c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String id2, long delay, String serial, final String val$gameId, final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            super(id2, delay, serial);
            this.f55416b = val$gameId;
            this.f55417c = val$item;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV3Fragment_.super.C0(this.f55416b, this.f55417c);
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
            PapaMainV3Fragment_.super.E1();
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.search();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55421b;

        q(final String val$message) {
            this.f55421b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.showMessage(this.f55421b);
        }
    }

    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.a1();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.v1();
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV3Fragment_.this.R0();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.b1();
        }
    }

    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            PapaMainV3Fragment_.this.relodingimag();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.showLoding();
        }
    }

    public static class t0 extends org.androidannotations.api.builder.d<t0, PapaMainV3Fragment> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PapaMainV3Fragment build() {
            PapaMainV3Fragment_ papaMainV3Fragment_ = new PapaMainV3Fragment_();
            papaMainV3Fragment_.setArguments(this.args);
            return papaMainV3Fragment_;
        }

        public t0 b(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.showLodingFailed();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.showMain();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.K0();
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeFloatData f55432b;

        x(final HomeFloatData val$homeFloatData) {
            this.f55432b = val$homeFloatData;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.D1(this.f55432b);
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.N1();
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f55435b;

        z(final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            this.f55435b = val$item;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment_.super.m1(this.f55435b);
        }
    }

    public static t0 F2() {
        return new t0();
    }

    private void G2() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("gameId")) {
            return;
        }
        this.f55332u = arguments.getString("gameId");
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getActivity().getResources();
        this.A = new PrefDef_(getActivity());
        zc.c.b(this);
        this.f55295f = resources.getString(R.string.net_excption);
        this.f55298g = resources.getString(R.string.connect_server_excption);
        G2();
        this.f55364y2.addAction(p5.a.B);
        this.A2.addAction("android.net.wifi.STATE_CHANGE");
        this.A2.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.A2.addAction("android.net.wifi.SCAN_RESULTS");
        this.A2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.C2.addAction("com.broadcast.bespeak.sussess");
        this.E2.addAction("com.papa.maintab.clicked");
        this.G2.addAction(p5.a.I);
        this.G2.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void C0(final String gameId, final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.a.l(new o0("", 0L, "", gameId, item));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void C1() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void D0() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void D1(final HomeFloatData homeFloatData) {
        org.androidannotations.api.b.e("", new x(homeFloatData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void E0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void E1() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void F1(final List<VipPopData> vipPopDatas) {
        org.androidannotations.api.b.e("", new h(vipPopDatas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void I0() {
        org.androidannotations.api.a.l(new e0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void I1(final String gameId) {
        org.androidannotations.api.b.e("", new i(gameId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void K0() {
        org.androidannotations.api.b.e("", new w(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void K1(final PAPAHomeBeanV7 mainBean, final String m10, final int pnx, final boolean fromNet) {
        org.androidannotations.api.b.e("", new l(mainBean, m10, pnx, fromNet), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void L0(final int messageId, final String messageType) {
        org.androidannotations.api.a.l(new f0("", 0L, "", messageId, messageType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void N1() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void P0() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void P1() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void Q0() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void W0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void X0(final String m10, final int pnx) {
        org.androidannotations.api.a.l(new l0("", 0L, "", m10, pnx));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void Y0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void b1() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void c1() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void e1(final Intent intent) {
        org.androidannotations.api.b.e("", new f(intent), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f55363x2.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f55362w2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void m1(final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.b.e("", new z(item), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void n1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void o1(final PAPAHomeBeanV7 mainBean) {
        org.androidannotations.api.a.l(new m0("", 0L, "", mainBean));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f55361v2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f55365z2, this.f55364y2);
        getActivity().registerReceiver(this.B2, this.A2);
        getActivity().registerReceiver(this.D2, this.C2);
        getActivity().registerReceiver(this.F2, this.E2);
        getActivity().registerReceiver(this.H2, this.G2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f55362w2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f55362w2 = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v3, container, false);
        }
        return this.f55362w2;
    }

    @Override // com.join.mgps.activity.PapaMainV3Fragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f55365z2);
        getActivity().unregisterReceiver(this.B2);
        getActivity().unregisterReceiver(this.D2);
        getActivity().unregisterReceiver(this.F2);
        getActivity().unregisterReceiver(this.H2);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f55362w2 = null;
        this.f55293e = null;
        this.f55302i = null;
        this.f55305j = null;
        this.f55307k = null;
        this.f55309l = null;
        this.f55312m = null;
        this.f55314n = null;
        this.f55316o = null;
        this.f55318p = null;
        this.f55322q = null;
        this.f55325r = null;
        this.f55328s = null;
        this.f55330t = null;
        this.K = null;
        this.L = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.f55293e = (XRecyclerView2) hasViews.internalFindViewById(R.id.listview);
        this.f55302i = (TextView) hasViews.internalFindViewById(R.id.updateNotice);
        this.f55305j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f55307k = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f55309l = (ImageView) hasViews.internalFindViewById(R.id.movetoTop);
        this.f55312m = hasViews.internalFindViewById(R.id.titleSearch);
        this.f55314n = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivFloatad);
        this.f55316o = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        this.f55318p = hasViews.internalFindViewById(R.id.statubar);
        this.f55322q = (FrameLayout) hasViews.internalFindViewById(R.id.flTitleSearch);
        this.f55325r = (ViewFlipper) hasViews.internalFindViewById(R.id.tvSearchHint);
        this.f55328s = (ImageView) hasViews.internalFindViewById(R.id.ivSearchIcon);
        this.f55330t = (AppBarLayout) hasViews.internalFindViewById(R.id.appbar);
        this.K = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.L = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.share);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        View view = this.L;
        if (view != null) {
            view.setOnClickListener(new p0());
        }
        ImageView imageView = this.f55309l;
        if (imageView != null) {
            imageView.setOnClickListener(new q0());
        }
        SimpleDraweeView simpleDraweeView = this.f55314n;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new r0());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new s0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new a());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new b());
        }
        View view2 = this.f55312m;
        if (view2 != null) {
            view2.setOnClickListener(new c());
        }
        FrameLayout frameLayout = this.f55322q;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new d());
        }
        ImageView imageView2 = this.f55328s;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f55361v2.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f55363x2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void s0(final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.b.e("", new a0(item), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showMain() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new q(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void t0(final String gameId) {
        org.androidannotations.api.a.l(new i0("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void v0() {
        org.androidannotations.api.a.l(new g0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void v1() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void w0(final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.b.e("", new b0(item), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void y1() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }
}
