package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.SearchGameListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SearchGameListFragment_ extends f5 implements xc.a, zc.a, zc.b {
    public static final String O = "currentTab";
    public static final String P = "game_id";
    public static final String Q = "keyword";
    private View K;
    private final zc.c J = new zc.c();
    private final Map<Class<?>, Object> L = new HashMap();
    private final IntentFilter M = new IntentFilter();
    private final BroadcastReceiver N = new BroadcastReceiver() { // from class: com.join.mgps.fragment.SearchGameListFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SearchGameListFragment_.this.f0(intent);
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68889b;

        a(final String val$msg) {
            this.f68889b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.T(this.f68889b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.showLoadingView();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68892b;

        c(final String val$msg) {
            this.f68892b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.showLoadFailed(this.f68892b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.hideLoading();
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68895b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f68896c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final int val$pn, final boolean val$recommend) {
            super(id2, delay, serial);
            this.f68895b = val$pn;
            this.f68896c = val$recommend;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchGameListFragment_.super.e0(this.f68895b, this.f68896c);
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
            SearchGameListFragment_.this.relodingimag();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchGameListFragment_.this.setNetwork();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.autoPlay();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.k0();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68903c;

        j(final String val$gameId, final int val$game_book) {
            this.f68902b = val$gameId;
            this.f68903c = val$game_book;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.l0(this.f68902b, this.f68903c);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68905b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f68906c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f68907d;

        k(final List val$data, final boolean val$resetAdapter, final boolean val$showRecommendTitle) {
            this.f68905b = val$data;
            this.f68906c = val$resetAdapter;
            this.f68907d = val$showRecommendTitle;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.i0(this.f68905b, this.f68906c, this.f68907d);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchGameListBean f68909b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68910c;

        l(final SearchGameListBean val$data, final int val$pn) {
            this.f68909b = val$data;
            this.f68910c = val$pn;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.h0(this.f68909b, this.f68910c);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f68913c;

        m(final boolean val$show, final DomainInfoBean val$pdInfo) {
            this.f68912b = val$show;
            this.f68913c = val$pdInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchGameListFragment_.super.j0(this.f68912b, this.f68913c);
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, f5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f5 build() {
            SearchGameListFragment_ searchGameListFragment_ = new SearchGameListFragment_();
            searchGameListFragment_.setArguments(this.args);
            return searchGameListFragment_;
        }

        public n b(int currentTab) {
            this.args.putInt("currentTab", currentTab);
            return this;
        }

        public n c(String game_id) {
            this.args.putString("game_id", game_id);
            return this;
        }

        public n d(String keyword) {
            this.args.putString("keyword", keyword);
            return this;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        y0();
        this.M.addAction("com.broadcast.bespeak.sussess");
    }

    public static n x0() {
        return new n();
    }

    private void y0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("currentTab")) {
                this.f69584l = arguments.getInt("currentTab");
            }
            if (arguments.containsKey("game_id")) {
                this.f69585m = arguments.getString("game_id");
            }
            if (arguments.containsKey("keyword")) {
                this.f69586n = arguments.getString("keyword");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5, com.join.mgps.fragment.e
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new a(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void autoPlay() {
        org.androidannotations.api.b.e("", new h(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void e0(final int pn, final boolean recommend) {
        org.androidannotations.api.a.l(new e("", 0L, "", pn, recommend));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.L.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void h0(final SearchGameListBean data, final int pn) {
        org.androidannotations.api.b.e("", new l(data, pn), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void hideLoading() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void i0(final List<CommonGameInfoBean> data, final boolean resetAdapter, final boolean showRecommendTitle) {
        org.androidannotations.api.b.e("", new k(data, resetAdapter, showRecommendTitle), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.K;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void j0(final boolean show, final DomainInfoBean pdInfo) {
        org.androidannotations.api.b.e("", new m(show, pdInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void k0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void l0(final String gameId, final int game_book) {
        org.androidannotations.api.b.e("", new j(gameId, game_book), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.J);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.N, this.M);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.K = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.K = inflater.inflate(R.layout.fragment_search_game_list, container, false);
        }
        return this.K;
    }

    @Override // com.join.mgps.fragment.f5, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.N);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.K = null;
        this.f69575c = null;
        this.f69576d = null;
        this.f69577e = null;
        this.f69578f = null;
        this.f69579g = null;
        this.f69580h = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.f69575c = (XQuickRecyclerView) hasViews.internalFindViewById(R.id.rv_list_data);
        this.f69576d = hasViews.internalFindViewById(R.id.v_no_data);
        this.f69577e = hasViews.internalFindViewById(R.id.v_pd_view);
        this.f69578f = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_image);
        this.f69579g = (ImageView) hasViews.internalFindViewById(R.id.icon);
        this.f69580h = (TextView) hasViews.internalFindViewById(R.id.name);
        this.A = hasViews.internalFindViewById(R.id.loding_layout);
        this.B = hasViews.internalFindViewById(R.id.loding_faile);
        this.C = hasViews.internalFindViewById(R.id.relodingimag);
        this.D = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.E = (TextView) hasViews.internalFindViewById(R.id.setting);
        this.F = (TextView) hasViews.internalFindViewById(R.id.setNetwork);
        View view = this.C;
        if (view != null) {
            view.setOnClickListener(new f());
        }
        TextView textView = this.F;
        if (textView != null) {
            textView.setOnClickListener(new g());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.J.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.L.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new c(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f5
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }
}
