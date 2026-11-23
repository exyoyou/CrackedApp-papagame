package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class f extends com.join.mgps.activity.message.e implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f57753r;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zc.c f57752q = new zc.c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Map<Class<?>, Object> f57754s = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.showLodingFailed();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.U();
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.W();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.activity.message.f$f, reason: collision with other inner class name */
    class RunnableC0687f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57760b;

        RunnableC0687f(final List val$datas) {
            this.f57760b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.O(this.f57760b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57762b;

        g(final List val$datas2) {
            this.f57762b = val$datas2;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.N(this.f57762b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.showLoding();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.M();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.S();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57767b;

        k(final int val$i) {
            this.f57767b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.V(this.f57767b);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.T();
        }
    }

    public static class m extends org.androidannotations.api.builder.d<m, com.join.mgps.activity.message.e> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.activity.message.e build() {
            f fVar = new f();
            fVar.setArguments(this.args);
            return fVar;
        }
    }

    public static m i0() {
        return new m();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void M() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void N(final List<com.join.mgps.activity.message.e.c> datas2) {
        org.androidannotations.api.b.e("", new g(datas2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void O(final List<com.join.mgps.activity.message.e.c> datas) {
        org.androidannotations.api.b.e("", new RunnableC0687f(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void Q() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void S() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void T() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void U() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void V(final int i10) {
        org.androidannotations.api.b.e("", new k(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void W() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f57754s.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f57753r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f57752q);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f57753r = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f57753r = inflater.inflate(R.layout.fragment_message_notice, container, false);
        }
        return this.f57753r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f57753r = null;
        this.f57723c = null;
        this.f57724d = null;
        this.f57725e = null;
        this.f57726f = null;
        this.f57727g = null;
        this.f57733m = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57723c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f57724d = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.f57725e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57726f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f57727g = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        Button button = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.f57733m = button;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f57752q.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f57754s.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }
}
