package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class k3 extends j3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f70006v;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zc.c f70005u = new zc.c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Map<Class<?>, Object> f70007w = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.showLodingFailed();
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k3.super.T();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k3.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k3.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.O();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.Y();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.a0();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70015b;

        h(final List val$listData2) {
            this.f70015b = val$listData2;
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.Z(this.f70015b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.S();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.showLoding();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k3.super.U();
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, j3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public j3 build() {
            k3 k3Var = new k3();
            k3Var.setArguments(this.args);
            return k3Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static l k0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void O() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void S() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void T() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void U() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void Y() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void Z(final List<j3.g> listData2) {
        org.androidannotations.api.b.e("", new h(listData2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void a0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70007w.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70006v;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70005u);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70006v = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70006v = inflater.inflate(R.layout.fragment_gamefrom, container, false);
        }
        return this.f70006v;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70006v = null;
        this.f69881c = null;
        this.f69882d = null;
        this.f69885g = null;
        this.f69886h = null;
        this.f69887i = null;
        this.f69894p = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69881c = (XRecyclerView) hasViews.internalFindViewById(R.id.comment_all_list);
        this.f69882d = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.f69885g = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.f69886h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69887i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        ImageView imageView = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f69894p = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        Button button = this.f69885g;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70005u.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70007w.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }
}
