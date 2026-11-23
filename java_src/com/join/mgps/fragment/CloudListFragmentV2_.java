package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CloudListFragmentV2_ extends com.join.mgps.fragment.n implements xc.a, zc.a, zc.b {
    private View G;
    private final zc.c F = new zc.c();
    private final Map<Class<?>, Object> H = new HashMap();
    private final IntentFilter I = new IntentFilter();
    private final BroadcastReceiver J = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CloudListFragmentV2_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CloudListFragmentV2_.this.j0(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.r0();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68256b;

        b(final List val$listDataReplace) {
            this.f68256b = val$listDataReplace;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.V(this.f68256b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.v0();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68259b;

        d(final List val$data) {
            this.f68259b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.S(this.f68259b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.x0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.p0();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.q0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.o0();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68265b;

        i(final String val$message) {
            this.f68265b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.showMessage(this.f68265b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68267b;

        j(final CloudListDataBean val$dataBean) {
            this.f68267b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.u0(this.f68267b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.w0();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68270b;

        l(final CloudListDataBean val$dataBean) {
            this.f68270b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.t0(this.f68270b);
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68272b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$pns) {
            super(id2, delay, serial);
            this.f68272b = val$pns;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragmentV2_.super.d0(this.f68272b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68274b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f68274b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragmentV2_.super.b0(this.f68274b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68276b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f68276b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragmentV2_.super.T(this.f68276b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68278b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68279c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final CloudListDataBean val$dataBean, final int val$commentType) {
            super(id2, delay, serial);
            this.f68278b = val$dataBean;
            this.f68279c = val$commentType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragmentV2_.super.O(this.f68278b, this.f68279c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68281b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f68281b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragmentV2_.super.s0(this.f68281b);
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
            CloudListFragmentV2_.super.P();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.f0();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.showLoding();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.showLodingFailed();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.N();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.i0();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.h0();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragmentV2_.super.g0();
        }
    }

    public static class z extends org.androidannotations.api.builder.d<z, com.join.mgps.fragment.n> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.n build() {
            CloudListFragmentV2_ cloudListFragmentV2_ = new CloudListFragmentV2_();
            cloudListFragmentV2_.setArguments(this.args);
            return cloudListFragmentV2_;
        }
    }

    public static z X0() {
        return new z();
    }

    private void init_(Bundle savedInstanceState) {
        this.f70218j = new PrefDef_(getActivity());
        zc.c.b(this);
        this.I.addAction(p5.a.f96202j0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void N() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void O(final CloudListDataBean dataBean, final int commentType) {
        org.androidannotations.api.a.l(new p("", 0L, "", dataBean, commentType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void P() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void S(final List<CloudListDataBean> data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void T(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new o("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void V(final List<CloudListDataBean> listDataReplace) {
        org.androidannotations.api.b.e("", new b(listDataReplace), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void b0(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new n("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void d0(final int pns) {
        org.androidannotations.api.a.l(new m("", 0L, "", pns));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void f0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void g0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void h0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void i0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.G;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void o0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.F);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.J, this.I);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.G = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.G = inflater.inflate(R.layout.fragment_cloud_list_v2, container, false);
        }
        return this.G;
    }

    @Override // com.join.mgps.fragment.n, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.J);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.G = null;
        this.f70212d = null;
        this.f70213e = null;
        this.f70214f = null;
        this.f70215g = null;
        this.f70216h = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70212d = (LinearLayout) hasViews.internalFindViewById(R.id.ll_nodata);
        this.f70213e = (XRecyclerView) hasViews.internalFindViewById(R.id.rcy_recommed);
        this.f70214f = (TextView) hasViews.internalFindViewById(R.id.tv_show_nodata);
        this.f70215g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70216h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.F.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void p0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.H.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void q0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void r0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void s0(final int pn) {
        org.androidannotations.api.a.l(new q("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new i(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void t0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new l(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void u0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new j(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void v0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void w0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n
    public void x0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }
}
