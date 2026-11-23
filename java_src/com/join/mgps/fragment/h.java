package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends com.join.mgps.fragment.g implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f69713u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zc.c f69712t = new zc.c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map<Class<?>, Object> f69714v = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.a0();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69716b;

        b(final String val$msg) {
            this.f69716b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.showMessage(this.f69716b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.f0();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f69719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69720c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f69721d;

        d(final HomeGameCarefullyBean val$bean, final int val$page, final int val$fromDb) {
            this.f69719b = val$bean;
            this.f69720c = val$page;
            this.f69721d = val$fromDb;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.d0(this.f69719b, this.f69720c, this.f69721d);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f69723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69724c;

        e(final HomeGameCarefullyBean val$bean, final int val$page) {
            this.f69723b = val$bean;
            this.f69724c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.c0(this.f69723b, this.f69724c);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69726b;

        f(final int val$state) {
            this.f69726b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.R(this.f69726b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69728b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f69728b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h.super.Y(this.f69728b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.h$h, reason: collision with other inner class name */
    class C0727h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f69730b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0727h(String id2, long delay, String serial, final HomeGameCarefullyBean val$bean) {
            super(id2, delay, serial);
            this.f69730b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h.super.Z(this.f69730b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.d<i, com.join.mgps.fragment.g> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.g build() {
            h hVar = new h();
            hVar.setArguments(this.args);
            return hVar;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f69623h = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    public static i n0() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void R(final int state) {
        org.androidannotations.api.b.e("", new f(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void Y(final int page) {
        org.androidannotations.api.a.l(new g("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void Z(final HomeGameCarefullyBean bean) {
        org.androidannotations.api.a.l(new C0727h("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void c0(final HomeGameCarefullyBean bean, final int page) {
        org.androidannotations.api.b.e("", new e(bean, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void d0(final HomeGameCarefullyBean bean, final int page, final int fromDb) {
        org.androidannotations.api.b.e("", new d(bean, page, fromDb), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void f0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69714v.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69713u;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69712t);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69713u = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69713u = inflater.inflate(R.layout.choice_fragment, container, false);
        }
        return this.f69713u;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69713u = null;
        this.f69618c = null;
        this.f69619d = null;
        this.f69620e = null;
        this.f69630o = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69618c = (TextView) hasViews.internalFindViewById(R.id.searchBack);
        this.f69619d = (TextView) hasViews.internalFindViewById(R.id.searchContent);
        this.f69620e = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.f69630o = (XRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        TextView textView = this.f69618c;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69712t.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69714v.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void showMessage(final String msg) {
        org.androidannotations.api.b.e("", new b(msg), 0L);
    }
}
