package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class c6 extends b6 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f69196k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zc.c f69195j = new zc.c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map<Class<?>, Object> f69197l = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c6.this.setNetwork();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c6.this.relodingimag();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69200b;

        c(final List val$data) {
            this.f69200b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            c6.super.updateUi(this.f69200b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69202b;

        d(final String val$message) {
            this.f69202b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            c6.super.showTost(this.f69202b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c6.super.showLoding();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c6.super.showLodingFailed();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c6.super.showMain();
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c6.super.M();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.d<i, b6> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b6 build() {
            c6 c6Var = new c6();
            c6Var.setArguments(this.args);
            return c6Var;
        }
    }

    public static i T() {
        return new i();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void M() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69197l.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69196k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69195j);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69196k = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69196k = inflater.inflate(R.layout.fragment_simulator_recommend, container, false);
        }
        return this.f69196k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69196k = null;
        this.f69120c = null;
        this.f69121d = null;
        this.f69122e = null;
        this.f69123f = null;
        this.f69124g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69120c = (RecyclerView) hasViews.internalFindViewById(R.id.rvRecom);
        this.f69121d = (TextView) hasViews.internalFindViewById(R.id.tvRecGameount);
        this.f69122e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69123f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69124g = (Group) hasViews.internalFindViewById(R.id.groupMain);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
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
        this.f69195j.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69197l.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void showMain() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b6
    public void updateUi(final List<CommonGameInfoBean> data) {
        org.androidannotations.api.b.e("", new c(data), 0L);
    }
}
