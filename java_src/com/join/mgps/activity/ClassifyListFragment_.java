package com.join.mgps.activity;

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
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassifyListFragment_ extends com.join.mgps.activity.k implements xc.a, zc.a, zc.b {
    private View G;
    private final zc.c F = new zc.c();
    private final Map<Class<?>, Object> H = new HashMap();
    private final IntentFilter I = new IntentFilter();
    private final BroadcastReceiver J = new BroadcastReceiver() { // from class: com.join.mgps.activity.ClassifyListFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f50504b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ClassifyListFragment_.this.d0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListFragment_.super.b0();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50507b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50508c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$gameType, final String val$romType) {
            super(id2, delay, serial);
            this.f50507b = val$gameType;
            this.f50508c = val$romType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyListFragment_.super.R(this.f50507b, this.f50508c);
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
            ClassifyListFragment_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListFragment_.this.c0();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListFragment_.this.V();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListFragment_.this.e0();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListFragment_.this.setNetwork();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListFragment_.super.showLoding();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f50516b;

        i(final boolean val$isNormal) {
            this.f50516b = val$isNormal;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListFragment_.super.i0(this.f50516b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50518b;

        j(final List val$subList) {
            this.f50518b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListFragment_.super.showMain(this.f50518b);
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, com.join.mgps.activity.k> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.activity.k build() {
            ClassifyListFragment_ classifyListFragment_ = new ClassifyListFragment_();
            classifyListFragment_.setArguments(this.args);
            return classifyListFragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.I.addAction(p5.a.I);
        this.I.addAction(p5.a.G);
    }

    public static k p0() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.k
    public void R(final String gameType, final String romType) {
        org.androidannotations.api.a.l(new b("", 0L, "", gameType, romType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.k
    public void b0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.k
    public void i0(final boolean isNormal) {
        org.androidannotations.api.b.e("", new i(isNormal), 0L);
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
            this.G = inflater.inflate(R.layout.classify_list_layout, container, false);
        }
        return this.G;
    }

    @Override // com.join.mgps.activity.k, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.J);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.G = null;
        this.f57357f = null;
        this.f57358g = null;
        this.f57359h = null;
        this.f57360i = null;
        this.f57361j = null;
        this.f57362k = null;
        this.f57363l = null;
        this.f57364m = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57357f = (RelativeLayout) hasViews.internalFindViewById(R.id.rootRl);
        this.f57358g = (XListView2) hasViews.internalFindViewById(R.id.classifyListView);
        this.f57359h = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f57360i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57361j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f57362k = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.f57363l = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f57364m = (ImageView) hasViews.internalFindViewById(R.id.noneReloadImage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setAll);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f57363l;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        ImageView imageView2 = this.f57364m;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new d());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new e());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new f());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new g());
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
    @Override // com.join.mgps.activity.k
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.k
    public void showMain(final List<CollectionBeanSub> subList) {
        org.androidannotations.api.b.e("", new j(subList), 0L);
    }
}
