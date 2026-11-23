package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorAchievementBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class u5 extends r5 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f71115o;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zc.c f71114n = new zc.c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<Class<?>, Object> f71116p = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u5.this.setNetwork();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u5.this.relodingimag();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimulatorAchievementBean f71119b;

        c(final SimulatorAchievementBean val$data) {
            this.f71119b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.P(this.f71119b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71121b;

        d(final String val$message) {
            this.f71121b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.showTost(this.f71121b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.showLoding();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.showLodingFailed();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.showMain();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u5.super.showEmpty();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u5.super.N();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, r5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r5 build() {
            u5 u5Var = new u5();
            u5Var.setArguments(this.args);
            return u5Var;
        }
    }

    public static j X() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void N() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void P(final SimulatorAchievementBean data) {
        org.androidannotations.api.b.e("", new c(data), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71116p.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71115o;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71114n);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71115o = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71115o = inflater.inflate(R.layout.fragment_simulator_launch_achievement, container, false);
        }
        return this.f71115o;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71115o = null;
        this.f70706c = null;
        this.f70707d = null;
        this.f70708e = null;
        this.f70709f = null;
        this.f70710g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70706c = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70707d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70708e = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        this.f70709f = (NestedScrollView) hasViews.internalFindViewById(R.id.nes);
        this.f70710g = (RecyclerView) hasViews.internalFindViewById(R.id.rvAchievement);
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
        this.f71114n.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71116p.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void showEmpty() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void showMain() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r5
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new d(message), 0L);
    }
}
