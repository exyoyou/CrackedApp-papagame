package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameFromPopoWinBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class m3 extends l3 implements xc.a, zc.a, zc.b {
    private View B;
    private final zc.c A = new zc.c();
    private final Map<Class<?>, Object> C = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.a0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.S();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.W();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.showLodingFailed();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.R();
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70189b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final String val$groupid) {
            super(id2, delay, serial);
            this.f70189b = val$groupid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m3.super.U(this.f70189b);
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
                m3.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m3.this.relodingimag();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m3.this.setNetwork();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.Q();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70195b;

        l(final String val$str) {
            this.f70195b = val$str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.showToast(this.f70195b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70197b;

        m(final List val$collectionBeanSubs) {
            this.f70197b = val$collectionBeanSubs;
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.O(this.f70197b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.showNoData();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.X();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70201b;

        p(final List val$data) {
            this.f70201b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.N(this.f70201b);
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3.super.P();
        }
    }

    public static class r extends org.androidannotations.api.builder.d<r, l3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l3 build() {
            m3 m3Var = new m3();
            m3Var.setArguments(this.args);
            return m3Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static r r0() {
        return new r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void N(final List<GameFromPopoWinBean.DataBean> data) {
        org.androidannotations.api.b.e("", new p(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void O(final List<CollectionBeanSub> collectionBeanSubs) {
        org.androidannotations.api.b.e("", new m(collectionBeanSubs), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void P() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    @Override // com.join.mgps.fragment.l3
    public void Q() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void R() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void S() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void U(final String groupid) {
        org.androidannotations.api.a.l(new g("", 0L, "", groupid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void V() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void W() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void X() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void a0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.C.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.B;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.A);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.B = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.B = inflater.inflate(R.layout.game_build, container, false);
        }
        return this.B;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.B = null;
        this.f70069c = null;
        this.f70070d = null;
        this.f70071e = null;
        this.f70072f = null;
        this.f70073g = null;
        this.f70074h = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70069c = (LinearLayout) hasViews.internalFindViewById(R.id.tv_nodata);
        this.f70070d = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.f70071e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70072f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70073g = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f70074h = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new i());
        }
        Button button = this.f70073g;
        if (button != null) {
            button.setOnClickListener(new j());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.A.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.C.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void showNoData() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.l3
    public void showToast(final String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }
}
