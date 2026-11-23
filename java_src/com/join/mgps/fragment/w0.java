package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class w0 extends v0 implements xc.a, zc.a, zc.b {
    public static final String A = "gameId";
    public static final String B = "maxBattleCount";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private View f71412y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zc.c f71411x = new zc.c();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Map<Class<?>, Object> f71413z = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                w0.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.setNetwork();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.M();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71418b;

        e(final String val$rs) {
            this.f71418b = val$rs;
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.Q(this.f71418b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71420b;

        f(final String val$message) {
            this.f71420b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.showMessage(this.f71420b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.showLoding();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.showLodingFailed();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.showEmpty();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w0.super.showMain();
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, v0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v0 build() {
            w0 w0Var = new w0();
            w0Var.setArguments(this.args);
            return w0Var;
        }

        public k b(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }

        public k c(int maxBattleCount) {
            this.args.putInt(w0.B, maxBattleCount);
            return this;
        }
    }

    public static k Y() {
        return new k();
    }

    private void Z() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("gameId")) {
                this.f71295o = arguments.getString("gameId");
            }
            if (arguments.containsKey(B)) {
                this.f71296p = arguments.getInt(B);
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        Z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void O() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void Q(final String rs) {
        org.androidannotations.api.b.e("", new e(rs), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71413z.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71412y;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71411x);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71412y = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71412y = inflater.inflate(R.layout.layout_discovery_paiwei_viewpager, container, false);
        }
        return this.f71412y;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71412y = null;
        this.f71283c = null;
        this.f71284d = null;
        this.f71285e = null;
        this.f71286f = null;
        this.f71287g = null;
        this.f71288h = null;
        this.f71289i = null;
        this.f71290j = null;
        this.f71291k = null;
        this.f71292l = null;
        this.f71293m = null;
        this.f71294n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71283c = (SimpleDraweeView) hasViews.internalFindViewById(R.id.imgCover);
        this.f71284d = (RecyclerView) hasViews.internalFindViewById(R.id.rvRank);
        this.f71285e = (CardView) hasViews.internalFindViewById(R.id.flMyRank);
        this.f71286f = (TextView) hasViews.internalFindViewById(R.id.tvMyRank);
        this.f71287g = (TextView) hasViews.internalFindViewById(R.id.tvChanllengeCount);
        this.f71288h = (Group) hasViews.internalFindViewById(R.id.main);
        this.f71289i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71290j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71291k = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        this.f71292l = (TextView) hasViews.internalFindViewById(R.id.tvStart);
        this.f71293m = (CardView) hasViews.internalFindViewById(R.id.btnStart);
        this.f71294n = (TextView) hasViews.internalFindViewById(R.id.editText5);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new c());
        }
        CardView cardView = this.f71293m;
        if (cardView != null) {
            cardView.setOnClickListener(new d());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71411x.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71413z.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void showEmpty() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void showMain() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v0
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }
}
