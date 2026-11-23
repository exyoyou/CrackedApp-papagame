package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class x3 extends w3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f71459n;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zc.c f71458m = new zc.c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map<Class<?>, Object> f71460o = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3.super.i0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3.super.b0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71463b;

        c(final String val$msg) {
            this.f71463b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            x3.super.showToast(this.f71463b);
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71465b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f71465b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x3.super.loadData(this.f71465b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class e extends org.androidannotations.api.builder.d<e, w3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public w3 build() {
            x3 x3Var = new x3();
            x3Var.setArguments(this.args);
            return x3Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static e n0() {
        return new e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w3
    public void b0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71460o.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w3
    public void i0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71459n;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.w3
    public void loadData(final int pn) {
        org.androidannotations.api.a.l(new d("", 0L, "", pn));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71458m);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71459n = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71459n = inflater.inflate(R.layout.fragment_game_topic, container, false);
        }
        return this.f71459n;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71459n = null;
        this.f71430f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71430f = (XListView2) hasViews.internalFindViewById(R.id.listView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71458m.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71460o.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w3
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new c(msg), 0L);
    }
}
