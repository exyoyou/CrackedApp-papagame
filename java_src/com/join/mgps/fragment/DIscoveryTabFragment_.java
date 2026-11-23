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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DIscoveryTabFragment_ extends d0 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f68372s;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zc.c f68371r = new zc.c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map<Class<?>, Object> f68373t = new HashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final IntentFilter f68374u = new IntentFilter();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final BroadcastReceiver f68375v = new BroadcastReceiver() { // from class: com.join.mgps.fragment.DIscoveryTabFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DIscoveryTabFragment_.this.M(intent);
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68378c;

        a(final List val$itemBeansx, final int val$pnx) {
            this.f68377b = val$itemBeansx;
            this.f68378c = val$pnx;
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.T(this.f68377b, this.f68378c);
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68380b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f68380b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DIscoveryTabFragment_.super.loadData(this.f68380b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68382b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$pn) {
            super(id2, delay, serial);
            this.f68382b = val$pn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DIscoveryTabFragment_.super.N(this.f68382b);
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
            DIscoveryTabFragment_.this.setNetwork();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DIscoveryTabFragment_.this.relodingimag();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.showLoding();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.O();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.P();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.R();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.Q();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68392c;

        k(final List val$itemBeansx, final int val$pnx) {
            this.f68391b = val$itemBeansx;
            this.f68392c = val$pnx;
        }

        @Override // java.lang.Runnable
        public void run() {
            DIscoveryTabFragment_.super.S(this.f68391b, this.f68392c);
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, d0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d0 build() {
            DIscoveryTabFragment_ dIscoveryTabFragment_ = new DIscoveryTabFragment_();
            dIscoveryTabFragment_.setArguments(this.args);
            return dIscoveryTabFragment_;
        }
    }

    public static l d0() {
        return new l();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f68374u.addAction("com.join.update.position2");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void N(final int pn) {
        org.androidannotations.api.a.l(new c("", 0L, "", pn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void O() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void P() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void Q() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void R() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void S(final List<DiscoverListItemBean> itemBeansx, final int pnx) {
        org.androidannotations.api.b.e("", new k(itemBeansx, pnx), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void T(final List<DiscoverListWeiboItemBean> itemBeansx, final int pnx) {
        org.androidannotations.api.b.e("", new a(itemBeansx, pnx), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68373t.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68372s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void loadData(final int pn) {
        org.androidannotations.api.a.l(new b("", 0L, "", pn));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68371r);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68375v, this.f68374u);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68372s = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68372s = inflater.inflate(R.layout.discovery_tab_fragment_layout, container, false);
        }
        return this.f68372s;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68375v);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68372s = null;
        this.f69209c = null;
        this.f69210d = null;
        this.f69211e = null;
        this.f69212f = null;
        this.f69213g = null;
        this.f69214h = null;
        this.f69215i = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69209c = (XRecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f69210d = (SwipeRefresh) hasViews.internalFindViewById(R.id.refreshx);
        this.f69211e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69212f = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.f69213g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69214h = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f69215i = (TextView) hasViews.internalFindViewById(R.id.noneMessage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        ImageView imageView = this.f69214h;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68371r.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68373t.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }
}
