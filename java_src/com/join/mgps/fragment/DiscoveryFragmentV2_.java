package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.ViewPagerSlide;
import com.join.mgps.dto.DIscoverTypeBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DiscoveryFragmentV2_ extends f0 implements xc.a, zc.a, zc.b {
    private View F;
    private final zc.c E = new zc.c();
    private final Map<Class<?>, Object> G = new HashMap();
    private final IntentFilter H = new IntentFilter();
    private final BroadcastReceiver I = new BroadcastReceiver() { // from class: com.join.mgps.fragment.DiscoveryFragmentV2_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DiscoveryFragmentV2_.this.P(intent);
        }
    };

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DiscoveryFragmentV2_.super.loadData();
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
            DiscoveryFragmentV2_.this.S();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DiscoveryFragmentV2_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DiscoveryFragmentV2_.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscoveryFragmentV2_.super.T();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68400b;

        f(final List val$dIscoverTypeBeans) {
            this.f68400b = val$dIscoverTypeBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscoveryFragmentV2_.super.X(this.f68400b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscoveryFragmentV2_.super.V();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f68403b;

        h(final DiscoveryMainDataBean val$results) {
            this.f68403b = val$results;
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscoveryFragmentV2_.super.W(this.f68403b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DiscoveryFragmentV2_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, f0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f0 build() {
            DiscoveryFragmentV2_ discoveryFragmentV2_ = new DiscoveryFragmentV2_();
            discoveryFragmentV2_.setArguments(this.args);
            return discoveryFragmentV2_;
        }
    }

    public static j e0() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f69510t = AccountUtil_.getInstance_(getActivity());
        this.H.addAction("com.join.update.position");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void R() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void T() {
        org.androidannotations.api.b.e("", new e(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void V() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void W(final DiscoveryMainDataBean results) {
        org.androidannotations.api.b.e("", new h(results), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void X(final List<DIscoverTypeBean> dIscoverTypeBeans) {
        org.androidannotations.api.b.e("", new f(dIscoverTypeBeans), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.G.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.F;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.f0
    public void loadData() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.E);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.I, this.H);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.F = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.F = inflater.inflate(R.layout.discovery_fragment_layout, container, false);
        }
        return this.F;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.I);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.F = null;
        this.f69493c = null;
        this.f69494d = null;
        this.f69495e = null;
        this.f69496f = null;
        this.f69497g = null;
        this.f69498h = null;
        this.f69499i = null;
        this.f69500j = null;
        this.f69501k = null;
        this.f69502l = null;
        this.f69503m = null;
        this.f69504n = null;
        this.f69505o = null;
        this.f69506p = null;
        this.f69507q = null;
        this.f69508r = null;
        this.f69509s = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69493c = (CoordinatorLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69494d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69495e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69496f = (ViewPagerSlide) hasViews.internalFindViewById(R.id.viewpager);
        this.f69497g = (Toolbar) hasViews.internalFindViewById(R.id.toolbar);
        this.f69498h = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tableLayout);
        this.f69499i = (AppBarLayout) hasViews.internalFindViewById(R.id.appbar);
        this.f69500j = (RelativeLayout) hasViews.internalFindViewById(R.id.discoveryTopRl);
        this.f69501k = (GridView) hasViews.internalFindViewById(R.id.discoveryTopGv);
        this.f69502l = (HListView) hasViews.internalFindViewById(R.id.discoveryBottomGv);
        this.f69503m = (TextView) hasViews.internalFindViewById(R.id.toFightRl);
        this.f69504n = (NestedScrollView) hasViews.internalFindViewById(R.id.bottomNull);
        this.f69505o = (LinearLayout) hasViews.internalFindViewById(R.id.toCommunityLl);
        this.f69506p = (TextView) hasViews.internalFindViewById(R.id.toCommunityTx);
        this.f69507q = (TextView) hasViews.internalFindViewById(R.id.number);
        this.f69508r = (TextView) hasViews.internalFindViewById(R.id.nulltext);
        this.f69509s = (TextView) hasViews.internalFindViewById(R.id.topBack);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        TextView textView = this.f69508r;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.E.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.G.put(key, value);
    }
}
