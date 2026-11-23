package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class r1 extends p1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f70661y = "gameId";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View f70663w;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zc.c f70662v = new zc.c();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Map<Class<?>, Object> f70664x = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.showLodingFailed();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70666b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f70666b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r1.super.R(this.f70666b);
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
            r1.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r1.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.autoPlay();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.N();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.U();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.W();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ H5GameDataBean f70674b;

        i(final H5GameDataBean val$data) {
            this.f70674b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.V(this.f70674b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.showLoding();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.super.S();
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, p1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p1 build() {
            r1 r1Var = new r1();
            r1Var.setArguments(this.args);
            return r1Var;
        }

        public l b(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        k0();
    }

    public static l j0() {
        return new l();
    }

    private void k0() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("gameId")) {
            return;
        }
        this.f70471l = arguments.getString("gameId");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void N() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void R(final int page) {
        org.androidannotations.api.a.l(new b("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void S() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void U() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void V(final H5GameDataBean data) {
        org.androidannotations.api.b.e("", new i(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void W() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void autoPlay() {
        org.androidannotations.api.b.e("", new e(), 500L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70664x.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70663w;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70662v);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70663w = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70663w = inflater.inflate(R.layout.fragment_find_mini_game, container, false);
        }
        return this.f70663w;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70663w = null;
        this.f70462c = null;
        this.f70463d = null;
        this.f70466g = null;
        this.f70467h = null;
        this.f70468i = null;
        this.f70469j = null;
        this.f70470k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70462c = (XQuickRecyclerView) hasViews.internalFindViewById(R.id.xrv_list);
        this.f70463d = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.f70466g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70467h = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70468i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70469j = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list);
        this.f70470k = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_recent_games);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70662v.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70664x.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.p1
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }
}
