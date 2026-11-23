package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchPostsBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class h5 extends g5 implements xc.a, zc.a, zc.b {
    public static final String D = "currentTab";
    public static final String E = "game_id";
    public static final String F = "keyword";
    private View B;
    private final zc.c A = new zc.c();
    private final Map<Class<?>, Object> C = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.hideLoading();
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h5.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69772b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f69772b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h5.super.Y(this.f69772b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69774b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f69774b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h5.super.Z(this.f69774b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69776b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f69776b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h5.super.a0(this.f69776b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            h5.this.relodingimag();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h5.this.setNetwork();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.g0();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchIntegratedBean f69781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69782c;

        i(final SearchIntegratedBean val$data, final int val$pn) {
            this.f69781b = val$data;
            this.f69782c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.d0(this.f69781b, this.f69782c);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchGameFavoriteListBean f69784b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69785c;

        j(final SearchGameFavoriteListBean val$data, final int val$pn) {
            this.f69784b = val$data;
            this.f69785c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.c0(this.f69784b, this.f69785c);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchPostsBean f69787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69788c;

        k(final SearchPostsBean val$data, final int val$pn) {
            this.f69787b = val$data;
            this.f69788c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.e0(this.f69787b, this.f69788c);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69790b;

        l(final String val$msg) {
            this.f69790b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.T(this.f69790b);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.showLoadingView();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69793b;

        n(final String val$msg) {
            this.f69793b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            h5.super.showLoadFailed(this.f69793b);
        }
    }

    public static class o extends org.androidannotations.api.builder.d<o, g5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public g5 build() {
            h5 h5Var = new h5();
            h5Var.setArguments(this.args);
            return h5Var;
        }

        public o b(int currentTab) {
            this.args.putInt("currentTab", currentTab);
            return this;
        }

        public o c(String game_id) {
            this.args.putString("game_id", game_id);
            return this;
        }

        public o d(String keyword) {
            this.args.putString("keyword", keyword);
            return this;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        u0();
    }

    public static o t0() {
        return new o();
    }

    private void u0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("currentTab")) {
                this.f69685f = arguments.getInt("currentTab");
            }
            if (arguments.containsKey("game_id")) {
                this.f69686g = arguments.getString("game_id");
            }
            if (arguments.containsKey("keyword")) {
                this.f69687h = arguments.getString("keyword");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5, com.join.mgps.fragment.e
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new l(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void Y(final int pn) {
        org.androidannotations.api.a.l(new c("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void Z(final int pn) {
        org.androidannotations.api.a.l(new d("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void a0(final int pn) {
        org.androidannotations.api.a.l(new e("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void b0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void c0(final SearchGameFavoriteListBean data, final int pn) {
        org.androidannotations.api.b.e("", new j(data, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void d0(final SearchIntegratedBean data, final int pn) {
        org.androidannotations.api.b.e("", new i(data, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void e0(final SearchPostsBean data, final int pn) {
        org.androidannotations.api.b.e("", new k(data, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void g0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.C.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void hideLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.B;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.A);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.B = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.B = inflater.inflate(R.layout.fragment_search_list, container, false);
        }
        return this.B;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.B = null;
        this.f69682c = null;
        this.f69697r = null;
        this.f69698s = null;
        this.f69699t = null;
        this.f69700u = null;
        this.f69701v = null;
        this.f69702w = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.f69682c = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f69697r = hasViews.internalFindViewById(R.id.loding_layout);
        this.f69698s = hasViews.internalFindViewById(R.id.loding_faile);
        this.f69699t = hasViews.internalFindViewById(R.id.relodingimag);
        this.f69700u = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.f69701v = (TextView) hasViews.internalFindViewById(R.id.setting);
        this.f69702w = (TextView) hasViews.internalFindViewById(R.id.setNetwork);
        View view = this.f69699t;
        if (view != null) {
            view.setOnClickListener(new f());
        }
        TextView textView = this.f69702w;
        if (textView != null) {
            textView.setOnClickListener(new g());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.A.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.C.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new n(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g5
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }
}
