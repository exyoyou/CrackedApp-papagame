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
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class u0 extends e0 implements xc.a, zc.a, zc.b {
    private View N;
    private final zc.c M = new zc.c();
    private final Map<Class<?>, Object> O = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.e0();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71021b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f71021b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.Y(this.f71021b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u0.this.M();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u0.this.X();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u0.this.setNetwork();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u0.this.loding_faile();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.c0();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71030b;

        j(final String val$message) {
            this.f71030b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.showMessage(this.f71030b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f71032b;

        k(final List val$posts) {
            this.f71032b = val$posts;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.f0(this.f71032b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f71034b;

        l(final DiscoveryMainDataBean val$results) {
            this.f71034b = val$results;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.g0(this.f71034b);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.d0();
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, e0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e0 build() {
            u0 u0Var = new u0();
            u0Var.setArguments(this.args);
            return u0Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f69360l = AccountUtil_.getInstance_(getActivity());
    }

    public static n r0() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void W() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void Y(final int curPid) {
        org.androidannotations.api.a.l(new b("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void c0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void d0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void e0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void f0(final List<ForumBean.ForumPostsBean> posts) {
        org.androidannotations.api.b.e("", new k(posts), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void g0(final DiscoveryMainDataBean results) {
        org.androidannotations.api.b.e("", new l(results), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.O.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.N;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void loadData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.M);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.N = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.N = inflater.inflate(R.layout.fragment_discovery, container, false);
        }
        return this.N;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.N = null;
        this.f69351c = null;
        this.f69352d = null;
        this.f69353e = null;
        this.f69354f = null;
        this.f69355g = null;
        this.f69356h = null;
        this.f69357i = null;
        this.f69358j = null;
        this.f69359k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69351c = (RelativeLayout) hasViews.internalFindViewById(R.id.RootRl);
        this.f69352d = (RelativeLayout) hasViews.internalFindViewById(R.id.discoveryTitleRl);
        this.f69353e = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69354f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69355g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69356h = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f69357i = (ImageView) hasViews.internalFindViewById(R.id.discoveryTitleSearchIv);
        this.f69358j = (TextView) hasViews.internalFindViewById(R.id.discoveryTitleTx);
        this.f69359k = hasViews.internalFindViewById(R.id.statubar);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        RelativeLayout relativeLayout = this.f69351c;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new e());
        }
        LinearLayout linearLayout = this.f69354f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new f());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new g());
        }
        LinearLayout linearLayout2 = this.f69355g;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.M.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.O.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e0
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new j(message), 0L);
    }
}
