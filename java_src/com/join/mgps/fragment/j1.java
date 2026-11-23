package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameListBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j1 extends i1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f69849n = "modelType";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f69851l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zc.c f69850k = new zc.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<Class<?>, Object> f69852m = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.R();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EndGameListBean f69854b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69855c;

        b(final EndGameListBean val$data, final int val$page) {
            this.f69854b = val$data;
            this.f69855c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.T(this.f69854b, this.f69855c);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.showLodingFailed();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.showMain();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69860b;

        f(final String val$message) {
            this.f69860b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.showTost(this.f69860b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69862b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f69862b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.Q(this.f69862b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.d<h, i1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public i1 build() {
            j1 j1Var = new j1();
            j1Var.setArguments(this.args);
            return j1Var;
        }

        public h b(int modelType) {
            this.args.putInt(j1.f69849n, modelType);
            return this;
        }
    }

    public static h b0() {
        return new h();
    }

    private void c0() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey(f69849n)) {
            return;
        }
        this.f69813f = arguments.getInt(f69849n);
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        c0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void Q(final int page) {
        org.androidannotations.api.a.l(new g("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void R() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void T(final EndGameListBean data, final int page) {
        org.androidannotations.api.b.e("", new b(data, page), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69852m.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69851l;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69850k);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69851l = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69851l = inflater.inflate(R.layout.fragment_end_game_select, container, false);
        }
        return this.f69851l;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69851l = null;
        this.f69810c = null;
        this.f69811d = null;
        this.f69812e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69810c = (RecyclerView) hasViews.internalFindViewById(R.id.rvList);
        this.f69811d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69812e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69850k.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69852m.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void showMain() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }
}
