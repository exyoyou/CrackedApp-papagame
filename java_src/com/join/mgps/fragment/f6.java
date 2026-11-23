package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.ResultMyVoucherBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class f6 extends e6 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f69606t;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zc.c f69605s = new zc.c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Map<Class<?>, Object> f69607u = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f6.this.b0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.e0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PapayVoucherResultMain f69610b;

        c(final PapayVoucherResultMain val$args) {
            this.f69610b = val$args;
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.d0(this.f69610b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.h0();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.g0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.f0();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.showLodingFailed();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f6.super.c0();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f6.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, e6> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e6 build() {
            f6 f6Var = new f6();
            f6Var.setArguments(this.args);
            return f6Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static j q0() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void c0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void d0(final PapayVoucherResultMain<ResultMyVoucherBean> args) {
        org.androidannotations.api.b.e("", new c(args), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void e0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void f0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void g0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69607u.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void h0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69606t;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.e6, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69605s);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69606t = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69606t = inflater.inflate(R.layout.fragment_my_voucher, container, false);
        }
        return this.f69606t;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69606t = null;
        this.f69447d = null;
        this.f69449f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69447d = (XListView2) hasViews.internalFindViewById(R.id.listview);
        LinearLayout linearLayout = (LinearLayout) hasViews.internalFindViewById(R.id.hotVoucherLayout);
        this.f69449f = linearLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69605s.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69607u.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e6
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }
}
