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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassifyListGameFragment_ extends m implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f50521z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zc.c f50520y = new zc.c();
    private final Map<Class<?>, Object> A = new HashMap();
    private final IntentFilter B = new IntentFilter();
    private final BroadcastReceiver C = new BroadcastReceiver() { // from class: com.join.mgps.activity.ClassifyListGameFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f50522b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ClassifyListGameFragment_.this.a0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListGameFragment_.super.Y();
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50526c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$gameType, final String val$romType) {
            super(id2, delay, serial);
            this.f50525b = val$gameType;
            this.f50526c = val$romType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ClassifyListGameFragment_.super.T(this.f50525b, this.f50526c);
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
            ClassifyListGameFragment_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListGameFragment_.this.Z();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListGameFragment_.this.U();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListGameFragment_.this.b0();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyListGameFragment_.this.setNetwork();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListGameFragment_.super.showLoding();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f50534b;

        i(final boolean val$isNormal) {
            this.f50534b = val$isNormal;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListGameFragment_.super.g0(this.f50534b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50536b;

        j(final List val$subList) {
            this.f50536b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyListGameFragment_.super.showMain(this.f50536b);
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, m> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public m build() {
            ClassifyListGameFragment_ classifyListGameFragment_ = new ClassifyListGameFragment_();
            classifyListGameFragment_.setArguments(this.args);
            return classifyListGameFragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.B.addAction(p5.a.I);
        this.B.addAction(p5.a.G);
    }

    public static k n0() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.m
    public void T(final String gameType, final String romType) {
        org.androidannotations.api.a.l(new b("", 0L, "", gameType, romType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.m
    public void Y() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.m
    public void g0(final boolean isNormal) {
        org.androidannotations.api.b.e("", new i(isNormal), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f50521z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f50520y);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.C, this.B);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f50521z = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f50521z = inflater.inflate(R.layout.classify_list_recy_layout, container, false);
        }
        return this.f50521z;
    }

    @Override // com.join.mgps.activity.m, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.C);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50521z = null;
        this.f57457f = null;
        this.f57458g = null;
        this.f57459h = null;
        this.f57460i = null;
        this.f57461j = null;
        this.f57462k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57457f = (XRecyclerView) hasViews.internalFindViewById(R.id.classifyListView);
        this.f57458g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57459h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f57460i = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.f57461j = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.f57462k = (ImageView) hasViews.internalFindViewById(R.id.noneReloadImage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setAll);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f57461j;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        ImageView imageView2 = this.f57462k;
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
        this.f50520y.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.A.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.m
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.m
    public void showMain(final List<CollectionBeanSub> subList) {
        org.androidannotations.api.b.e("", new j(subList), 0L);
    }
}
