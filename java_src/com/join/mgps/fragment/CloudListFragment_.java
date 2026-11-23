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
public final class CloudListFragment_ extends com.join.mgps.fragment.m implements xc.a, zc.a, zc.b {
    private View K;
    private final zc.c J = new zc.c();
    private final Map<Class<?>, Object> L = new HashMap();
    private final IntentFilter M = new IntentFilter();
    private final BroadcastReceiver N = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CloudListFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CloudListFragment_.this.j0(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.r0();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68293b;

        b(final List val$listDataReplace) {
            this.f68293b = val$listDataReplace;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.V(this.f68293b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.v0();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68296b;

        d(final List val$data) {
            this.f68296b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.S(this.f68296b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.x0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.p0();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.q0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.o0();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68302b;

        i(final String val$message) {
            this.f68302b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.showMessage(this.f68302b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68304b;

        j(final CloudListDataBean val$dataBean) {
            this.f68304b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.u0(this.f68304b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.w0();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68307b;

        l(final CloudListDataBean val$dataBean) {
            this.f68307b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.t0(this.f68307b);
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68309b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$pns) {
            super(id2, delay, serial);
            this.f68309b = val$pns;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragment_.super.d0(this.f68309b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68311b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f68311b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragment_.super.b0(this.f68311b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68313b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f68313b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragment_.super.T(this.f68313b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f68315b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68316c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final CloudListDataBean val$dataBean, final int val$commentType) {
            super(id2, delay, serial);
            this.f68315b = val$dataBean;
            this.f68316c = val$commentType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragment_.super.O(this.f68315b, this.f68316c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68318b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f68318b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudListFragment_.super.s0(this.f68318b);
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
            CloudListFragment_.super.P();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.f0();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.showLoding();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.showLodingFailed();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.N();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.i0();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.h0();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudListFragment_.super.g0();
        }
    }

    public static class z extends org.androidannotations.api.builder.d<z, com.join.mgps.fragment.m> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.m build() {
            CloudListFragment_ cloudListFragment_ = new CloudListFragment_();
            cloudListFragment_.setArguments(this.args);
            return cloudListFragment_;
        }
    }

    public static z X0() {
        return new z();
    }

    private void init_(Bundle savedInstanceState) {
        this.f70150n = new PrefDef_(getActivity());
        zc.c.b(this);
        this.M.addAction(p5.a.f96202j0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void N() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void O(final CloudListDataBean dataBean, final int commentType) {
        org.androidannotations.api.a.l(new p("", 0L, "", dataBean, commentType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void P() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void S(final List<CloudListDataBean> data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void T(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new o("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void V(final List<CloudListDataBean> listDataReplace) {
        org.androidannotations.api.b.e("", new b(listDataReplace), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void b0(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new n("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void d0(final int pns) {
        org.androidannotations.api.a.l(new m("", 0L, "", pns));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void f0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void g0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.L.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void h0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void i0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.K;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void o0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.J);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.N, this.M);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.K = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.K = inflater.inflate(R.layout.fragment_cloud_list, container, false);
        }
        return this.K;
    }

    @Override // com.join.mgps.fragment.m, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.N);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.K = null;
        this.f70140d = null;
        this.f70141e = null;
        this.f70142f = null;
        this.f70143g = null;
        this.f70144h = null;
        this.f70145i = null;
        this.f70146j = null;
        this.f70147k = null;
        this.f70148l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70140d = (LinearLayout) hasViews.internalFindViewById(R.id.ll_nodata);
        this.f70141e = (XListView2) hasViews.internalFindViewById(R.id.rcy_recommed);
        this.f70142f = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f70143g = (TextView) hasViews.internalFindViewById(R.id.tv_show_nodata);
        this.f70144h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70145i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70146j = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_showtitle_bc);
        this.f70147k = (TextView) hasViews.internalFindViewById(R.id.tv_showtitle_bc);
        this.f70148l = (LinearLayout) hasViews.internalFindViewById(R.id.ll_lookdetail);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.J.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void p0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.L.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void q0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void r0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void s0(final int pn) {
        org.androidannotations.api.a.l(new q("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new i(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void t0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new l(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void u0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new j(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void v0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void w0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void x0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }
}
