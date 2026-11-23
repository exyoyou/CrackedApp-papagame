package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CollectionModuleTwoFragment_ extends r implements xc.a, zc.a, zc.b {
    private View G;
    private final zc.c F = new zc.c();
    private final Map<Class<?>, Object> H = new HashMap();
    private final IntentFilter I = new IntentFilter();
    private final BroadcastReceiver J = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CollectionModuleTwoFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68343b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleTwoFragment_.this.V((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.T();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f68346b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final CollectionDataBean val$collectionDataBeanFirst) {
            super(id2, delay, serial);
            this.f68346b = val$collectionDataBeanFirst;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleTwoFragment_.super.R(this.f68346b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleTwoFragment_.super.Q();
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
            CollectionModuleTwoFragment_.this.relodingimag();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleTwoFragment_.this.setNetwork();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.showLoding();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.showLodingFailed();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68353b;

        h(final List val$collectionBeanSubList) {
            this.f68353b = val$collectionBeanSubList;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.showMain(this.f68353b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.a0();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.U();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleTwoFragment_.super.W();
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, r> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r build() {
            CollectionModuleTwoFragment_ collectionModuleTwoFragment_ = new CollectionModuleTwoFragment_();
            collectionModuleTwoFragment_.setArguments(this.args);
            return collectionModuleTwoFragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getActivity().getResources();
        zc.c.b(this);
        this.f70646q = resources.getString(R.string.net_excption);
        this.f70647r = resources.getString(R.string.connect_server_excption);
        this.I.addAction(p5.a.I);
        this.I.addAction(p5.a.G);
    }

    public static l k0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void Q() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void R(final CollectionDataBean collectionDataBeanFirst) {
        org.androidannotations.api.a.l(new b("", 0L, "", collectionDataBeanFirst));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void T() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void U() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void W() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void a0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.G;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.F);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.J, this.I);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.G = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.G = inflater.inflate(R.layout.collection_break, container, false);
        }
        return this.G;
    }

    @Override // com.join.mgps.fragment.r, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.J);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.G = null;
        this.f70634e = null;
        this.f70635f = null;
        this.f70636g = null;
        this.f70637h = null;
        this.f70638i = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70634e = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70635f = (XListView2) hasViews.internalFindViewById(R.id.breakListView);
        this.f70636g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70637h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70638i = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f70638i;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.F.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.H.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.r
    public void showMain(final List<CollectionBeanSub> collectionBeanSubList) {
        org.androidannotations.api.b.e("", new h(collectionBeanSubList), 0L);
    }
}
