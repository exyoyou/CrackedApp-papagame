package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorMomentBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class z5 extends v5 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f71586u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zc.c f71585t = new zc.c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map<Class<?>, Object> f71587v = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.showEmpty();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71589b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f71589b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                z5.super.P(this.f71589b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71591b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$position) {
            super(id2, delay, serial);
            this.f71591b = val$position;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                z5.super.R(this.f71591b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71593b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final int val$position) {
            super(id2, delay, serial);
            this.f71593b = val$position;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                z5.super.S(this.f71593b);
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
            z5.this.setNetwork();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            z5.this.relodingimag();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.V();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71598b;

        h(final int val$position) {
            this.f71598b = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.T(this.f71598b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorMomentBean f71600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f71601c;

        i(final SimulatorMomentBean val$data, final int val$page) {
            this.f71600b = val$data;
            this.f71601c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.W(this.f71600b, this.f71601c);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71603b;

        j(final String val$message) {
            this.f71603b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.showTost(this.f71603b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.showLoding();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.showLodingFailed();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5.super.showMain();
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, v5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v5 build() {
            z5 z5Var = new z5();
            z5Var.setArguments(this.args);
            return z5Var;
        }
    }

    public static n i0() {
        return new n();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void P(final int page) {
        org.androidannotations.api.a.l(new b("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void R(final int position) {
        org.androidannotations.api.a.l(new c("", 0L, "", position));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void S(final int position) {
        org.androidannotations.api.a.l(new d("", 0L, "", position));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void T(final int position) {
        org.androidannotations.api.b.e("", new h(position), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void V() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void W(final SimulatorMomentBean data, final int page) {
        org.androidannotations.api.b.e("", new i(data, page), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71587v.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71586u;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71585t);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71586u = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71586u = inflater.inflate(R.layout.fragment_simulator_launch_moment, container, false);
        }
        return this.f71586u;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71586u = null;
        this.f71357c = null;
        this.f71358d = null;
        this.f71359e = null;
        this.f71360f = null;
        this.f71361g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71357c = (XRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f71358d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71359e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71360f = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        this.f71361g = (NestedScrollView) hasViews.internalFindViewById(R.id.nes);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new f());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71585t.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71587v.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void showEmpty() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void showMain() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v5
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new j(message), 0L);
    }
}
