package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d5 extends c5 implements xc.a, zc.a, zc.b {
    private View H;
    private final zc.c G = new zc.c();
    private final Map<Class<?>, Object> I = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69271b;

        a(final List val$listDataReplace) {
            this.f69271b = val$listDataReplace;
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.V(this.f69271b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.s0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69274b;

        c(final List val$data) {
            this.f69274b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.S(this.f69274b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.u0();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.m0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.n0();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.l0();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69280b;

        h(final String val$message) {
            this.f69280b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.showMessage(this.f69280b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69282b;

        i(final CloudListDataBean val$dataBean) {
            this.f69282b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.r0(this.f69282b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.t0();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.P();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69286b;

        l(final CloudListDataBean val$dataBean) {
            this.f69286b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.q0(this.f69286b);
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69288b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$pns) {
            super(id2, delay, serial);
            this.f69288b = val$pns;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d5.super.c0(this.f69288b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69290b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f69290b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d5.super.a0(this.f69290b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69292b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f69292b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d5.super.T(this.f69292b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69295c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final CloudListDataBean val$dataBean, final int val$commentType) {
            super(id2, delay, serial);
            this.f69294b = val$dataBean;
            this.f69295c = val$commentType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d5.super.O(this.f69294b, this.f69295c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69297b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f69297b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d5.super.p0(this.f69297b);
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
            d5.super.e0();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.showLoding();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.showLodingFailed();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.N();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.h0();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.g0();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.f0();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5.super.o0();
        }
    }

    public static class z extends org.androidannotations.api.builder.d<z, c5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c5 build() {
            d5 d5Var = new d5();
            d5Var.setArguments(this.args);
            return d5Var;
        }
    }

    public static z U0() {
        return new z();
    }

    private void init_(Bundle savedInstanceState) {
        this.f69166n = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void N() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void O(final CloudListDataBean dataBean, final int commentType) {
        org.androidannotations.api.a.l(new p("", 0L, "", dataBean, commentType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void P() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void S(final List<CloudListDataBean> data) {
        org.androidannotations.api.b.e("", new c(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void T(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new o("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void V(final List<CloudListDataBean> listDataReplace) {
        org.androidannotations.api.b.e("", new a(listDataReplace), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void a0(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new n("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void c0(final int pns) {
        org.androidannotations.api.a.l(new m("", 0L, "", pns));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void e0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void f0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void g0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void h0() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void l0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void m0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void n0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void o0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.G);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.H = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.H = inflater.inflate(R.layout.item_recommed_fragment, container, false);
        }
        return this.H;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f69156d = null;
        this.f69157e = null;
        this.f69158f = null;
        this.f69159g = null;
        this.f69160h = null;
        this.f69161i = null;
        this.f69162j = null;
        this.f69163k = null;
        this.f69164l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69156d = (LinearLayout) hasViews.internalFindViewById(R.id.ll_nodata);
        this.f69157e = (XListView2) hasViews.internalFindViewById(R.id.rcy_recommed);
        this.f69158f = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f69159g = (TextView) hasViews.internalFindViewById(R.id.tv_show_nodata);
        this.f69160h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69161i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69162j = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_showtitle_bc);
        this.f69163k = (TextView) hasViews.internalFindViewById(R.id.tv_showtitle_bc);
        this.f69164l = (LinearLayout) hasViews.internalFindViewById(R.id.ll_lookdetail);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.G.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void p0(final int pn) {
        org.androidannotations.api.a.l(new q("", 0L, "", pn));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.I.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void q0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new l(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void r0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new i(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void s0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void showLoding() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void t0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c5
    public void u0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }
}
