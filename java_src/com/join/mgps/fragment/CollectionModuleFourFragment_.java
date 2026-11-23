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
public final class CollectionModuleFourFragment_ extends q implements xc.a, zc.a, zc.b {
    private View A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zc.c f68328z = new zc.c();
    private final Map<Class<?>, Object> B = new HashMap();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CollectionModuleFourFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68329b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionModuleFourFragment_.this.V((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionDataBean f68331b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final CollectionDataBean val$collectionDataBeanFirst) {
            super(id2, delay, serial);
            this.f68331b = val$collectionDataBeanFirst;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleFourFragment_.super.Q(this.f68331b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleFourFragment_.super.R();
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
            CollectionModuleFourFragment_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourFragment_.this.T();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleFourFragment_.this.setNetwork();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourFragment_.super.showLoding();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourFragment_.super.showLodingFailed();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68339b;

        h(final List val$subList) {
            this.f68339b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourFragment_.super.showMain(this.f68339b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourFragment_.super.Z();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleFourFragment_.super.U();
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, q> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q build() {
            CollectionModuleFourFragment_ collectionModuleFourFragment_ = new CollectionModuleFourFragment_();
            collectionModuleFourFragment_.setArguments(this.args);
            return collectionModuleFourFragment_;
        }
    }

    public static k h0() {
        return new k();
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getActivity().getResources();
        zc.c.b(this);
        this.f70530n = resources.getString(R.string.net_excption);
        this.f70531o = resources.getString(R.string.connect_server_excption);
        this.C.addAction(p5.a.I);
        this.C.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void Q(final CollectionDataBean collectionDataBeanFirst) {
        org.androidannotations.api.a.l(new a("", 0L, "", collectionDataBeanFirst));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void R() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void U() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void Z() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68328z);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.D, this.C);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.A = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.A = inflater.inflate(R.layout.collection_rank, container, false);
        }
        return this.A;
    }

    @Override // com.join.mgps.fragment.q, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f70519c = null;
        this.f70520d = null;
        this.f70521e = null;
        this.f70522f = null;
        this.f70523g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70519c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70520d = (XListView2) hasViews.internalFindViewById(R.id.rankListView);
        this.f70521e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70522f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70523g = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f70523g;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new d());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68328z.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.B.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q
    public void showMain(final List<CollectionBeanSub> subList) {
        org.androidannotations.api.b.e("", new h(subList), 0L);
    }
}
