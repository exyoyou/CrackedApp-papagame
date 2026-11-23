package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class PaPaBannerListFragment_ extends k4 implements xc.a, zc.a, zc.b {
    private View J;
    private final zc.c I = new zc.c();
    private final Map<Class<?>, Object> K = new HashMap();
    private final IntentFilter L = new IntentFilter();
    private final BroadcastReceiver M = new BroadcastReceiver() { // from class: com.join.mgps.fragment.PaPaBannerListFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68817b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PaPaBannerListFragment_.this.d0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68819b;

        a(final String val$info) {
            this.f68819b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.showToast(this.f68819b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PaPaBannerListFragment_.super.Q();
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
            PaPaBannerListFragment_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListFragment_.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.h0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68825b;

        f(final List val$datas) {
            this.f68825b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.i0(this.f68825b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.f0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.g0();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.e0();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListFragment_.super.hideLoading();
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, k4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k4 build() {
            PaPaBannerListFragment_ paPaBannerListFragment_ = new PaPaBannerListFragment_();
            paPaBannerListFragment_.setArguments(this.args);
            return paPaBannerListFragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.L.addAction(p5.a.I);
        this.L.addAction(p5.a.G);
    }

    public static k v0() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void Q() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void e0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void f0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void g0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void h0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void hideLoading() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void i0(final List<PaPaBean> datas) {
        org.androidannotations.api.b.e("", new f(datas), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.k4, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.I);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.M, this.L);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.J = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.J = inflater.inflate(R.layout.fragment_papa_banner_list, container, false);
        }
        return this.J;
    }

    @Override // com.join.mgps.fragment.k4, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.M);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f70028g = null;
        this.f70031j = null;
        this.f70032k = null;
        this.f70033l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70028g = (XListView2) hasViews.internalFindViewById(R.id.mListView);
        this.f70031j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70032k = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70033l = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.I.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.K.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k4
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new a(info), 0L);
    }
}
