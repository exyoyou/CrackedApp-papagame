package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class b extends com.join.mgps.activity.message.a implements xc.a, zc.a, zc.b {
    private View E;
    private final zc.c D = new zc.c();
    private final Map<Class<?>, Object> F = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.a0();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.activity.message.b$b, reason: collision with other inner class name */
    class RunnableC0682b implements Runnable {
        RunnableC0682b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.R();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Q();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showLodingFailed();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57607b;

        f(final String val$mess) {
            this.f57607b = val$mess;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showToast(this.f57607b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f57610c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f57611d;

        g(final int val$pid, final int val$rid, final String val$name) {
            this.f57609b = val$pid;
            this.f57610c = val$rid;
            this.f57611d = val$name;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Y(this.f57609b, this.f57610c, this.f57611d);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f57615c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f57616d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$message, final int val$pid, final int val$rid) {
            super(id2, delay, serial);
            this.f57614b = val$message;
            this.f57615c = val$pid;
            this.f57616d = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.U(this.f57614b, this.f57615c, this.f57616d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.setNetwork();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.b0();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.M();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57621b;

        m(final List val$datas) {
            this.f57621b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.O(this.f57621b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.c0();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.V();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Z();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57626b;

        q(final int val$i) {
            this.f57626b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.W(this.f57626b);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57628b;

        r(final List val$datas2) {
            this.f57628b = val$datas2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.T(this.f57628b);
        }
    }

    public static class s extends org.androidannotations.api.builder.d<s, com.join.mgps.activity.message.a> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.activity.message.a build() {
            b bVar = new b();
            bVar.setArguments(this.args);
            return bVar;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static s t0() {
        return new s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void M() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void O(final List<com.join.mgps.activity.message.a.i> datas) {
        org.androidannotations.api.b.e("", new m(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void P() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void Q() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void R() {
        org.androidannotations.api.b.e("", new RunnableC0682b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void T(final List<com.join.mgps.activity.message.a.i> datas2) {
        org.androidannotations.api.b.e("", new r(datas2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void U(final String message, final int pid, final int rid) {
        org.androidannotations.api.a.l(new i("", 0L, "", message, pid, rid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void V() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void W(final int i10) {
        org.androidannotations.api.b.e("", new q(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void Y(final int pid, final int rid, final String name) {
        org.androidannotations.api.b.e("", new g(pid, rid, name), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void Z() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void a0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void c0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.E;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.D);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.E = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.E = inflater.inflate(R.layout.fragment_communtity, container, false);
        }
        return this.E;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.E = null;
        this.f57536c = null;
        this.f57537d = null;
        this.f57538e = null;
        this.f57540g = null;
        this.f57541h = null;
        this.f57542i = null;
        this.f57543j = null;
        this.f57547n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57536c = (LinearLayout) hasViews.internalFindViewById(R.id.thumbslayout);
        this.f57537d = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f57538e = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.f57540g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57541h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f57542i = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.f57543j = (TextView) hasViews.internalFindViewById(R.id.redTips);
        Button button = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.f57547n = button;
        if (button != null) {
            button.setOnClickListener(new j());
        }
        LinearLayout linearLayout = this.f57536c;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.D.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.F.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showToast(final String mess) {
        org.androidannotations.api.b.e("", new f(mess), 0L);
    }
}
