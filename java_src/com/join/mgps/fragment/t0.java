package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DiscoveryHeaderMenuBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class t0 extends q0 implements xc.a, zc.a, zc.b {
    private View J;
    private final zc.c I = new zc.c();
    private final Map<Class<?>, Object> K = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f70911b;

        a(final DiscoveryMainDataBean val$results) {
            this.f70911b = val$results;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.n0(this.f70911b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.showMain();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.k0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.l0();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.updateDownloadView();
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70917b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f70917b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.d0(this.f70917b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.a0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DiscoveryHeaderMenuBean f70921b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final DiscoveryHeaderMenuBean val$menu) {
            super(id2, delay, serial);
            this.f70921b = val$menu;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.g0(this.f70921b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.O();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.c0();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.setNetwork();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.loding_faile();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.downloadView1();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.j0();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70931b;

        r(final String val$message) {
            this.f70931b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.showMessage(this.f70931b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70933b;

        s(final List val$menu) {
            this.f70933b = val$menu;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.o0(this.f70933b);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70935b;

        t(final List val$posts) {
            this.f70935b = val$posts;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.m0(this.f70935b);
        }
    }

    public static class u extends org.androidannotations.api.builder.d<u, q0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q0 build() {
            t0 t0Var = new t0();
            t0Var.setArguments(this.args);
            return t0Var;
        }
    }

    public static u F0() {
        return new u();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f70553l = AccountUtil_.getInstance_(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void a0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void b0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void d0(final int curPid) {
        org.androidannotations.api.a.l(new f("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void g0(final DiscoveryHeaderMenuBean menu) {
        org.androidannotations.api.a.l(new i("", 0L, "", menu));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void j0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void k0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void l0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void loadData() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void m0(final List<ForumBean.ForumPostsBean> posts) {
        org.androidannotations.api.b.e("", new t(posts), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void n0(final DiscoveryMainDataBean results) {
        org.androidannotations.api.b.e("", new a(results), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void o0(final List<DiscoveryHeaderMenuBean> menu) {
        org.androidannotations.api.b.e("", new s(menu), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.I);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.J = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.J = inflater.inflate(R.layout.fragment_discovery, container, false);
        }
        return this.J;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f70544c = null;
        this.f70545d = null;
        this.f70546e = null;
        this.f70547f = null;
        this.f70548g = null;
        this.f70549h = null;
        this.f70550i = null;
        this.f70551j = null;
        this.f70552k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70544c = (RelativeLayout) hasViews.internalFindViewById(R.id.RootRl);
        this.f70545d = (RelativeLayout) hasViews.internalFindViewById(R.id.discoveryTitleRl);
        this.f70546e = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70547f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70548g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70549h = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f70550i = (ImageView) hasViews.internalFindViewById(R.id.discoveryTitleSearchIv);
        this.f70551j = hasViews.internalFindViewById(R.id.statubar);
        this.f70552k = (CustomerDownloadView) hasViews.internalFindViewById(R.id.downloadView1);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        RelativeLayout relativeLayout = this.f70544c;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new k());
        }
        LinearLayout linearLayout = this.f70547f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new m());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new n());
        }
        LinearLayout linearLayout2 = this.f70548g;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new o());
        }
        CustomerDownloadView customerDownloadView = this.f70552k;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new p());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.I.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.K.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void showMain() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new r(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }
}
