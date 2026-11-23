package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.LJNestScrollWebView;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a0 extends com.join.mgps.fragment.v implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private View f68935g2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private final zc.c f68934f2 = new zc.c();

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private final Map<Class<?>, Object> f68936h2 = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68937b;

        a(final DetailResultBean val$detialResultBean) {
            this.f68937b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.W0(this.f68937b);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.a0$a0, reason: collision with other inner class name */
    public static class C0722a0 extends org.androidannotations.api.builder.d<C0722a0, com.join.mgps.fragment.v> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.v build() {
            a0 a0Var = new a0();
            a0Var.setArguments(this.args);
            return a0Var;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68939b;

        b(final String val$romid) {
            this.f68939b = val$romid;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.N0(this.f68939b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68941b;

        c(final boolean val$isShow) {
            this.f68941b = val$isShow;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.K0(this.f68941b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68943b;

        d(final String val$roomNum) {
            this.f68943b = val$roomNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.y0(this.f68943b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SocketError f68945b;

        e(final SocketError val$error) {
            this.f68945b = val$error;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.O0(this.f68945b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f68947b;

        f(final GameRoom val$gameRoom) {
            this.f68947b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.I0(this.f68947b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f68949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68950c;

        g(final GameRoom val$gameRoom, final String val$pwd) {
            this.f68949b = val$gameRoom;
            this.f68950c = val$pwd;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.x0(this.f68949b, this.f68950c);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f68952b;

        h(final GameRoom val$gameRoom) {
            this.f68952b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.R0(this.f68952b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f68954b;

        i(final ArenaResponse val$response) {
            this.f68954b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.H0(this.f68954b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.T0();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.loding_faile();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.w0();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CreateVipData f68959b;

        m(final CreateVipData val$vipData) {
            this.f68959b = val$vipData;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.Z0(this.f68959b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.v0();
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68962b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68963c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f68964d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final String val$gameId, final String val$url, final int val$from) {
            super(id2, delay, serial);
            this.f68962b = val$gameId;
            this.f68963c = val$url;
            this.f68964d = val$from;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.A0(this.f68962b, this.f68963c, this.f68964d);
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
                a0.super.getUserInfo();
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
                a0.super.s0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68968b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final int val$ordertype) {
            super(id2, delay, serial);
            this.f68968b = val$ordertype;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a0.super.u0(this.f68968b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.setNetwork();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.search();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a0.this.z0();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showLoding();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showLodingFailed();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showMain();
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68976b;

        y(final String val$message) {
            this.f68976b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.showTost(this.f68976b);
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68978b;

        z(final DetailResultBean val$collectionBeanSub) {
            this.f68978b = val$collectionBeanSub;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.super.U0(this.f68978b);
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f71161v = new PrefDef_(getActivity());
        zc.c.b(this);
        this.H = AccountUtil_.getInstance_(getActivity());
    }

    public static C0722a0 z1() {
        return new C0722a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void A0(final String gameId, final String url, final int from) {
        org.androidannotations.api.a.l(new o("", 0L, "", gameId, url, from));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void H0(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new i(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void I0(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new f(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void K0(final boolean isShow) {
        org.androidannotations.api.b.e("", new c(isShow), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void N0(final String romid) {
        org.androidannotations.api.b.e("", new b(romid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void O0(final SocketError error) {
        org.androidannotations.api.b.e("", new e(error), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void R0(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new h(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void T0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void U0(final DetailResultBean collectionBeanSub) {
        org.androidannotations.api.b.e("", new z(collectionBeanSub), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void W0(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new a(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void Z0(final CreateVipData vipData) {
        org.androidannotations.api.b.e("", new m(vipData), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68936h2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void getUserInfo() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68935g2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68934f2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.fragment.v, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68935g2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68935g2 = inflater.inflate(R.layout.fragment_common_webview, container, false);
        }
        return this.f68935g2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68935g2 = null;
        this.f71142g = null;
        this.f71143h = null;
        this.f71144i = null;
        this.f71146j = null;
        this.f71147k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71142g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71143h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71144i = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.f71146j = (RelativeLayout) hasViews.internalFindViewById(R.id.weblayout);
        this.f71147k = (LJNestScrollWebView) hasViews.internalFindViewById(R.id.web);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.download);
        LinearLayout linearLayout = this.f71143h;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new s());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new t());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new u());
        }
        afterview();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68934f2.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68936h2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void s0() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void showLoding() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void showMain() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new y(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void u0(final int ordertype) {
        org.androidannotations.api.a.l(new r("", 0L, "", ordertype));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void v0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void w0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void x0(final GameRoom gameRoom, final String pwd) {
        org.androidannotations.api.b.e("", new g(gameRoom, pwd), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v
    public void y0(final String roomNum) {
        org.androidannotations.api.b.e("", new d(roomNum), 0L);
    }
}
