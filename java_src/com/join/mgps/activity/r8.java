package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class r8 extends q8 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f57960z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zc.c f57959y = new zc.c();
    private final Map<Class<?>, Object> A = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r8.this.a0();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r8.this.n0();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r8.this.l0();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r8.this.m0();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeFloatData f57965b;

        e(final HomeFloatData val$homeFloatData) {
            this.f57965b = val$homeFloatData;
        }

        @Override // java.lang.Runnable
        public void run() {
            r8.super.j0(this.f57965b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r8.super.Z();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r8.super.Y();
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r8.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.d<i, q8> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q8 build() {
            r8 r8Var = new r8();
            r8Var.setArguments(this.args);
            return r8Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f57925o = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    public static i s0() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.q8
    public void V() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.q8
    public void Y() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.q8
    public void Z() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f57960z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.q8
    public void j0(final HomeFloatData homeFloatData) {
        org.androidannotations.api.b.e("", new e(homeFloatData), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f57959y);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f57960z = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f57960z = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v4, container, false);
        }
        return this.f57960z;
    }

    @Override // com.join.mgps.activity.q8, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f57960z = null;
        this.f57913c = null;
        this.f57914d = null;
        this.f57915e = null;
        this.f57916f = null;
        this.f57917g = null;
        this.f57918h = null;
        this.f57919i = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57913c = hasViews.internalFindViewById(R.id.statubar);
        this.f57914d = (ViewFlipper) hasViews.internalFindViewById(R.id.tvSearchHint);
        this.f57915e = (TextView) hasViews.internalFindViewById(R.id.tv_message_count);
        this.f57916f = (CustomerDownloadView) hasViews.internalFindViewById(R.id.cdv_view);
        this.f57917g = (TabLayout) hasViews.internalFindViewById(R.id.tablayout);
        this.f57918h = (ViewPager2) hasViews.internalFindViewById(R.id.viewpager);
        this.f57919i = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivFloatad);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.v_search);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.v_message);
        SimpleDraweeView simpleDraweeView = this.f57919i;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new a());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.f57916f;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f57959y.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.A.put(key, value);
    }
}
