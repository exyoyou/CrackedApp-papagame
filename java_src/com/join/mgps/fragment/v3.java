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
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class v3 extends u3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f71332t;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zc.c f71331s = new zc.c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Map<Class<?>, Object> f71333u = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.S();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.showLodingFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.P();
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v3.super.R();
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
            v3.this.relodingimag();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v3.this.setNetwork();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.T();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f71341b;

        h(final List val$data) {
            this.f71341b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.N(this.f71341b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.showNoData();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.O();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.U();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.Q();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v3.super.showLoding();
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, u3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public u3 build() {
            v3 v3Var = new v3();
            v3Var.setArguments(this.args);
            return v3Var;
        }
    }

    public static n g0() {
        return new n();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void N(final List<GameFromPopoWinBean.DataBean> data) {
        org.androidannotations.api.b.e("", new h(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void O() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void P() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void Q() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void R() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void S() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void T() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void U() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71333u.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71332t;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71331s);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71332t = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71332t = inflater.inflate(R.layout.game_build, container, false);
        }
        return this.f71332t;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71332t = null;
        this.f71074c = null;
        this.f71075d = null;
        this.f71076e = null;
        this.f71077f = null;
        this.f71078g = null;
        this.f71079h = null;
        this.f71080i = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71074c = (LinearLayout) hasViews.internalFindViewById(R.id.tv_nodata);
        this.f71075d = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f71076e = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.f71077f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71078g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71079h = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f71080i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        Button button = this.f71079h;
        if (button != null) {
            button.setOnClickListener(new f());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71331s.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71333u.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void showLoding() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u3
    public void showNoData() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }
}
