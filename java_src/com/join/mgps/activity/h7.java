package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.dto.CategorySimpleBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h7 extends MGMainClassifyFragment implements xc.a, zc.a, zc.b {
    private View L;
    private final zc.c K = new zc.c();
    private final Map<Class<?>, Object> M = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57268b;

        a(final String val$gameType) {
            this.f57268b = val$gameType;
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.Z(this.f57268b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57270b;

        b(final List val$categorySimpleBeanList) {
            this.f57270b = val$categorySimpleBeanList;
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.e0(this.f57270b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.g0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.f0();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h7.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h7.this.U();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h7.this.setNetwork();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h7.this.relodingimag();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h7.this.Y();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57279b;

        j(final String val$title) {
            this.f57279b = val$title;
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.b0(this.f57279b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.d0();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.a0();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.h0();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57284b;

        n(final String val$gameType) {
            this.f57284b = val$gameType;
        }

        @Override // java.lang.Runnable
        public void run() {
            h7.super.c0(this.f57284b);
        }
    }

    public static class o extends org.androidannotations.api.builder.d<o, MGMainClassifyFragment> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MGMainClassifyFragment build() {
            h7 h7Var = new h7();
            h7Var.setArguments(this.args);
            return h7Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.F = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    public static o t0() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void V() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void Z(final String gameType) {
        org.androidannotations.api.b.e("", new a(gameType), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void a0() {
        org.androidannotations.api.b.e("", new l(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void b0(final String title) {
        org.androidannotations.api.b.e("", new j(title), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void c0(final String gameType) {
        org.androidannotations.api.b.e("", new n(gameType), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void d0() {
        org.androidannotations.api.b.e("", new k(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void e0(final List<CategorySimpleBean> categorySimpleBeanList) {
        org.androidannotations.api.b.e("", new b(categorySimpleBeanList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void f0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void g0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.M.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MGMainClassifyFragment
    public void h0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.L;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.K);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.L = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.L = inflater.inflate(R.layout.my_game_layout, container, false);
        }
        return this.L;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.L = null;
        this.f54565t = null;
        this.f54566u = null;
        this.f54567v = null;
        this.f54568w = null;
        this.f54569x = null;
        this.f54570y = null;
        this.f54571z = null;
        this.A = null;
        this.B = null;
        this.C = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f54565t = (LinearLayout) hasViews.internalFindViewById(R.id.linearLayoutMain);
        this.f54566u = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f54567v = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f54568w = (MViewpagerV4) hasViews.internalFindViewById(R.id.mViewpagerV4);
        this.f54569x = (SlidingTabLayout) hasViews.internalFindViewById(R.id.mSlidingTabLayout);
        this.f54570y = (ToggleButton) hasViews.internalFindViewById(R.id.toggleButton);
        this.f54571z = (TextView) hasViews.internalFindViewById(R.id.backTextView);
        this.A = (TextView) hasViews.internalFindViewById(R.id.romTypeTitle);
        this.B = (LinearLayout) hasViews.internalFindViewById(R.id.searchImage);
        this.C = (ToggleButton) hasViews.internalFindViewById(R.id.toggleButtonRom);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new f());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new g());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new h());
        }
        LinearLayout linearLayout = this.B;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.K.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.M.put(key, value);
    }
}
