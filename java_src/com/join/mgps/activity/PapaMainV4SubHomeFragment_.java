package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.mgps.dto.PapaHomeBeanV9;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class PapaMainV4SubHomeFragment_ extends t8 implements xc.a, zc.a, zc.b {
    private View C;
    private final zc.c B = new zc.c();
    private final Map<Class<?>, Object> D = new HashMap();
    private final IntentFilter E = new IntentFilter();
    private final BroadcastReceiver F = new BroadcastReceiver() { // from class: com.join.mgps.activity.PapaMainV4SubHomeFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            PapaMainV4SubHomeFragment_.this.N();
        }
    };

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV4SubHomeFragment_.super.k0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55439b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$pnx) {
            super(id2, delay, serial);
            this.f55439b = val$pnx;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV4SubHomeFragment_.super.l0(this.f55439b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PapaHomeBeanV9 f55441b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final PapaHomeBeanV9 val$mainBean) {
            super(id2, delay, serial);
            this.f55441b = val$mainBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PapaMainV4SubHomeFragment_.super.r0(this.f55441b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            PapaMainV4SubHomeFragment_.this.relodingimag();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PapaMainV4SubHomeFragment_.this.setNetwork();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PapaHomeBeanV9 f55445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f55447d;

        f(final PapaHomeBeanV9 val$mainBean, final int val$pnx, final boolean val$fromNet) {
            this.f55445b = val$mainBean;
            this.f55446c = val$pnx;
            this.f55447d = val$fromNet;
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.y0(this.f55445b, this.f55446c, this.f55447d);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.m0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.z0();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.showLoding();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.showLodingFailed();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV4SubHomeFragment_.super.showMain();
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, t8> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t8 build() {
            PapaMainV4SubHomeFragment_ papaMainV4SubHomeFragment_ = new PapaMainV4SubHomeFragment_();
            papaMainV4SubHomeFragment_.setArguments(this.args);
            return papaMainV4SubHomeFragment_;
        }
    }

    public static l M0() {
        return new l();
    }

    private void init_(Bundle savedInstanceState) {
        this.f58118g = new PrefDef_(getActivity());
        zc.c.b(this);
        this.E.addAction(p5.a.B);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.C;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void k0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void l0(final int pnx) {
        org.androidannotations.api.a.l(new b("", 0L, "", pnx));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void m0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.B);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.F, this.E);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.C = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.C = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v4_sub_home, container, false);
        }
        return this.C;
    }

    @Override // com.join.mgps.activity.t8, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.F);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C = null;
        this.f58114c = null;
        this.f58115d = null;
        this.f58116e = null;
        this.f58117f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.f58114c = (XQuickRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f58115d = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.ptr);
        this.f58116e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f58117f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.B.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.D.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void r0(final PapaHomeBeanV9 mainBean) {
        org.androidannotations.api.a.l(new c("", 0L, "", mainBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void showMain() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void y0(final PapaHomeBeanV9 mainBean, final int pnx, final boolean fromNet) {
        org.androidannotations.api.b.e("", new f(mainBean, pnx, fromNet), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t8
    public void z0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }
}
