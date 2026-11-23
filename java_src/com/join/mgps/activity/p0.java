package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionModuleSevenBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 extends o0 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f57817r;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zc.c f57816q = new zc.c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Map<Class<?>, Object> f57818s = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p0.this.relodingimag();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p0.this.setNetwork();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57821b;

        c(final String val$message) {
            this.f57821b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.showMessage(this.f57821b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionModuleSevenBean f57823b;

        d(final CollectionModuleSevenBean val$data) {
            this.f57823b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.updateData(this.f57823b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.autoPlay();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.showLoding();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.showLodingFailed();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.showMain();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p0.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, o0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public o0 build() {
            p0 p0Var = new p0();
            p0Var.setArguments(this.args);
            return p0Var;
        }
    }

    public static j h0() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void S() {
        org.androidannotations.api.a.l(new i("", 800L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void autoPlay() {
        org.androidannotations.api.b.e("", new e(), 500L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f57818s.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f57817r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f57816q);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f57817r = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f57817r = inflater.inflate(R.layout.fragment_collection_module_seven, container, false);
        }
        return this.f57817r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f57817r = null;
        this.f57790d = null;
        this.f57791e = null;
        this.f57792f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57790d = (RecyclerView) hasViews.internalFindViewById(R.id.breakListView);
        this.f57791e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57792f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f57816q.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f57818s.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void showMain() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new c(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.o0
    public void updateData(final CollectionModuleSevenBean data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }
}
