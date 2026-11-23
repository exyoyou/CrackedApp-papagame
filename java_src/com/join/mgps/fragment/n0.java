package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.EndGameNameBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class n0 extends k0 implements xc.a, zc.a, zc.b {
    private View X;
    private final zc.c W = new zc.c();
    private final Map<Class<?>, Object> Y = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.m0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.p0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EndGameNameBean f70253b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f70254c;

        c(final EndGameNameBean val$data, final int val$page) {
            this.f70253b = val$data;
            this.f70254c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.B0(this.f70253b, this.f70254c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70256b;

        d(final List val$list) {
            this.f70256b = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.A0(this.f70256b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.e0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f70259b;

        f(final DiscoveryMainDataBean val$results) {
            this.f70259b = val$results;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.z0(this.f70259b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.w0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.x0();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.updateDownloadView();
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70264b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f70264b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.q0(this.f70264b);
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
            n0.this.Q();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.k0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70269b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f70269b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.l0(this.f70269b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.j0();
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
                n0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.n0();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.setNetwork();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.loding_faile();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.downloadView1();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.v0();
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70278b;

        v(final String val$message) {
            this.f70278b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.showMessage(this.f70278b);
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70280b;

        w(final List val$posts) {
            this.f70280b = val$posts;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.y0(this.f70280b);
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.o0();
        }
    }

    public static class y extends org.androidannotations.api.builder.d<y, k0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k0 build() {
            n0 n0Var = new n0();
            n0Var.setArguments(this.args);
            return n0Var;
        }
    }

    public static y W0() {
        return new y();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f69946m = AccountUtil_.getInstance_(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void A0(final List<CommonGameInfoBean> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void B0(final EndGameNameBean data, final int page) {
        org.androidannotations.api.b.e("", new c(data, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void e0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.Y.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.X;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void j0() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void k0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void l0(final int page) {
        org.androidannotations.api.a.l(new n("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void loadData() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void m0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void o0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.W);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.X = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.X = inflater.inflate(R.layout.fragment_discovery, container, false);
        }
        return this.X;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.X = null;
        this.f69936c = null;
        this.f69937d = null;
        this.f69938e = null;
        this.f69939f = null;
        this.f69940g = null;
        this.f69941h = null;
        this.f69942i = null;
        this.f69943j = null;
        this.f69944k = null;
        this.f69945l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69936c = (RelativeLayout) hasViews.internalFindViewById(R.id.RootRl);
        this.f69937d = (RelativeLayout) hasViews.internalFindViewById(R.id.discoveryTitleRl);
        this.f69938e = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69939f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69940g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69941h = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f69942i = (ImageView) hasViews.internalFindViewById(R.id.discoveryTitleSearchIv);
        this.f69943j = (TextView) hasViews.internalFindViewById(R.id.discoveryTitleTx);
        this.f69944k = hasViews.internalFindViewById(R.id.statubar);
        this.f69945l = (CustomerDownloadView) hasViews.internalFindViewById(R.id.downloadView1);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        RelativeLayout relativeLayout = this.f69936c;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new k());
        }
        LinearLayout linearLayout = this.f69939f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new r());
        }
        LinearLayout linearLayout2 = this.f69940g;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new s());
        }
        CustomerDownloadView customerDownloadView = this.f69945l;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new t());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.W.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void p0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.Y.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void q0(final int curPid) {
        org.androidannotations.api.a.l(new j("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new v(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void v0() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void w0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void x0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void y0(final List<ForumBean.ForumPostsBean> posts) {
        org.androidannotations.api.b.e("", new w(posts), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void z0(final DiscoveryMainDataBean results) {
        org.androidannotations.api.b.e("", new f(results), 0L);
    }
}
