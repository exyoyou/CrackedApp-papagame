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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class GameOlFirstFragment_ extends n3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f68530u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zc.c f68529t = new zc.c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map<Class<?>, Object> f68531v = new HashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final IntentFilter f68532w = new IntentFilter();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final BroadcastReceiver f68533x = new BroadcastReceiver() { // from class: com.join.mgps.fragment.GameOlFirstFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68534b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameOlFirstFragment_.this.U((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameOlFirstFragment_.super.Q();
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
            GameOlFirstFragment_.this.relodingimag();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameOlFirstFragment_.this.S();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameOlFirstFragment_.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameOlFirstFragment_.super.showLoding();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameOlFirstFragment_.super.showLodingFailed();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68542b;

        g(final List val$subList) {
            this.f68542b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameOlFirstFragment_.super.showMain(this.f68542b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameOlFirstFragment_.super.W();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameOlFirstFragment_.super.T();
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, n3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n3 build() {
            GameOlFirstFragment_ gameOlFirstFragment_ = new GameOlFirstFragment_();
            gameOlFirstFragment_.setArguments(this.args);
            return gameOlFirstFragment_;
        }
    }

    public static j e0() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f68532w.addAction(p5.a.I);
        this.f68532w.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void Q() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void T() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void W() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68531v.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68530u;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68529t);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68533x, this.f68532w);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68530u = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68530u = inflater.inflate(R.layout.game_online_first_layout, container, false);
        }
        return this.f68530u;
    }

    @Override // com.join.mgps.fragment.n3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68533x);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68530u = null;
        this.f70291c = null;
        this.f70292d = null;
        this.f70293e = null;
        this.f70294f = null;
        this.f70295g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70291c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70292d = (XListView2) hasViews.internalFindViewById(R.id.rankListView);
        this.f70293e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70294f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70295g = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f70295g;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68529t.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68531v.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.n3
    public void showMain(final List<l6.a<GameOLFirstBean>> subList) {
        org.androidannotations.api.b.e("", new g(subList), 0L);
    }
}
