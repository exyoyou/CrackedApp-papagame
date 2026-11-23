package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import app.mgsim.arena.ArenaResponse;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.papa91.battle.protocol.GameRoom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class g4 extends f4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private View f69648q1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private final zc.c f69647p1 = new zc.c();

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private final Map<Class<?>, Object> f69649r1 = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f69650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f69651c;

        a(final GameRoom val$gameRoom, final String val$pwd) {
            this.f69650b = val$gameRoom;
            this.f69651c = val$pwd;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.h0(this.f69650b, this.f69651c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f69653b;

        b(final GameRoom val$gameRoom) {
            this.f69653b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.F0(this.f69653b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.o0();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameListBannerBean f69656b;

        d(final GameListBannerBean val$data) {
            this.f69656b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.B0(this.f69656b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.p0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.s0();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69660b;

        g(final List val$datas) {
            this.f69660b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.z0(this.f69660b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69662b;

        h(final List val$datas) {
            this.f69662b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.A0(this.f69662b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.showLoding();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.showLodingFailed();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g4.this.setNetwork();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69667b;

        l(final String val$info) {
            this.f69667b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.showToast(this.f69667b);
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g4.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g4.super.x0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g4.this.relodingimag();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g4.this.v0();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g4.this.y0();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69674b;

        r(final String val$roomNum) {
            this.f69674b = val$roomNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.i0(this.f69674b);
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.H0();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.g0();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaResponse f69678b;

        u(final ArenaResponse val$response) {
            this.f69678b = val$response;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.q0(this.f69678b);
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f69680b;

        v(final GameRoom val$gameRoom) {
            this.f69680b = val$gameRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            g4.super.r0(this.f69680b);
        }
    }

    public static class w extends org.androidannotations.api.builder.d<w, f4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f4 build() {
            g4 g4Var = new g4();
            g4Var.setArguments(this.args);
            return g4Var;
        }
    }

    public static w c1() {
        return new w();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f69544q = AccountUtil_.getInstance_(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void A0(final List<GameInfoBean> datas) {
        org.androidannotations.api.b.e("", new h(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void B0(final GameListBannerBean data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void F0(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new b(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void H0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void f0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void g0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69649r1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void h0(final GameRoom gameRoom, final String pwd) {
        org.androidannotations.api.b.e("", new a(gameRoom, pwd), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void i0(final String roomNum) {
        org.androidannotations.api.b.e("", new r(roomNum), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69648q1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void o0() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69647p1);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.fragment.f4, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69648q1 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69648q1 = inflater.inflate(R.layout.fragment_new_arenamain, container, false);
        }
        return this.f69648q1;
    }

    @Override // com.join.mgps.fragment.f4, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69648q1 = null;
        this.f69531f = null;
        this.f69533g = null;
        this.f69534h = null;
        this.f69535i = null;
        this.f69536j = null;
        this.f69537k = null;
        this.f69538l = null;
        this.f69539m = null;
        this.f69541o = null;
        this.f69542p = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69531f = (LinearLayout) hasViews.internalFindViewById(R.id.searchBack);
        this.f69533g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69534h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69535i = (LinearLayout) hasViews.internalFindViewById(R.id.hit_temp_ll);
        this.f69536j = (XRecyclerView) hasViews.internalFindViewById(R.id.listview);
        this.f69537k = hasViews.internalFindViewById(R.id.myDragImageView);
        this.f69538l = (LinearLayout) hasViews.internalFindViewById(R.id.selecterLayout);
        this.f69539m = (FrameLayout) hasViews.internalFindViewById(R.id.fragmentLayout);
        this.f69541o = hasViews.internalFindViewById(R.id.ll_main);
        this.f69542p = hasViews.internalFindViewById(R.id.redPoint);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new o());
        }
        View view = this.f69537k;
        if (view != null) {
            view.setOnClickListener(new p());
        }
        LinearLayout linearLayout = this.f69531f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69647p1.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void p0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69649r1.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void q0(final ArenaResponse response) {
        org.androidannotations.api.b.e("", new u(response), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void r0(final GameRoom gameRoom) {
        org.androidannotations.api.b.e("", new v(gameRoom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void s0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new l(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void x0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f4
    public void z0(final List<BannerBean> datas) {
        org.androidannotations.api.b.e("", new g(datas), 0L);
    }
}
