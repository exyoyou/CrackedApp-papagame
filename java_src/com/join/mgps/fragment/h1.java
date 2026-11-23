package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class h1 extends e1 implements xc.a, zc.a, zc.b {
    public static final String A = "ext";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f69733x = "gameId";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f69734y = "type";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f69735z = "rules";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f69737v;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zc.c f69736u = new zc.c();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Map<Class<?>, Object> f69738w = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.showMain();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.showEmpty();
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h1.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h1.this.setNetwork();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h1.this.relodingimag();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.X();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69745b;

        g(final List val$data) {
            this.f69745b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.c0(this.f69745b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69747b;

        h(final String val$message) {
            this.f69747b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.showTost(this.f69747b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.Y();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.autoPlay();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.showLoding();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h1.super.showLodingFailed();
        }
    }

    public static class m extends org.androidannotations.api.builder.d<m, e1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e1 build() {
            h1 h1Var = new h1();
            h1Var.setArguments(this.args);
            return h1Var;
        }

        public m b(String ext) {
            this.args.putString("ext", ext);
            return this;
        }

        public m c(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }

        public m d(String rules) {
            this.args.putString("rules", rules);
            return this;
        }

        public m e(int type) {
            this.args.putInt("type", type);
            return this;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        p0();
    }

    public static m o0() {
        return new m();
    }

    private void p0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("gameId")) {
                this.f69388g = arguments.getString("gameId");
            }
            if (arguments.containsKey("type")) {
                this.f69389h = arguments.getInt("type");
            }
            if (arguments.containsKey("rules")) {
                this.f69390i = arguments.getString("rules");
            }
            if (arguments.containsKey("ext")) {
                this.f69391j = arguments.getString("ext");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void W() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void X() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void Y() {
        org.androidannotations.api.b.e("", new i(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void autoPlay() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void c0(final List<EndGameBean> data) {
        org.androidannotations.api.b.e("", new g(data), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69738w.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69737v;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69736u);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69737v = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69737v = inflater.inflate(R.layout.fragment_end_game_list, container, false);
        }
        return this.f69737v;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69737v = null;
        this.f69384c = null;
        this.f69385d = null;
        this.f69386e = null;
        this.f69387f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69384c = (XRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f69385d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69386e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69387f = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new e());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69736u.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69738w.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void showEmpty() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void showMain() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e1
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }
}
