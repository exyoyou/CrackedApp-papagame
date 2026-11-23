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
import android.widget.RelativeLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RankingItemFragment_ extends z4 implements xc.a, zc.a, zc.b {
    private View P;
    private final zc.c O = new zc.c();
    private final Map<Class<?>, Object> Q = new HashMap();
    private final IntentFilter R = new IntentFilter();
    private final BroadcastReceiver S = new BroadcastReceiver() { // from class: com.join.mgps.fragment.RankingItemFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68846b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RankingItemFragment_.this.q0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemFragment_.super.o0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemFragment_.super.e0();
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68851c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f68852d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final String val$gameType, final String val$romType, final boolean val$refresh) {
            super(id2, delay, serial);
            this.f68850b = val$gameType;
            this.f68851c = val$romType;
            this.f68852d = val$refresh;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                RankingItemFragment_.super.g0(this.f68850b, this.f68851c, this.f68852d);
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
            RankingItemFragment_.this.relodingimag();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemFragment_.this.p0();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemFragment_.this.l0();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemFragment_.this.t0();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemFragment_.this.setNetwork();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemFragment_.super.showLoding();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68860b;

        j(final boolean val$isNormal) {
            this.f68860b = val$isNormal;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemFragment_.super.x0(this.f68860b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68862b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f68863c;

        k(final List val$subList, final boolean val$refresh) {
            this.f68862b = val$subList;
            this.f68863c = val$refresh;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemFragment_.super.showMain(this.f68862b, this.f68863c);
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, z4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z4 build() {
            RankingItemFragment_ rankingItemFragment_ = new RankingItemFragment_();
            rankingItemFragment_.setArguments(this.args);
            return rankingItemFragment_;
        }
    }

    public static l F0() {
        return new l();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.R.addAction(p5.a.I);
        this.R.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void e0() {
        org.androidannotations.api.b.e("", new b(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void g0(final String gameType, final String romType, final boolean refresh) {
        org.androidannotations.api.a.l(new c("", 0L, "", gameType, romType, refresh));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.Q.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.P;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void o0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.O);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.S, this.R);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.P = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.P = inflater.inflate(R.layout.fragment_rank_item, container, false);
        }
        return this.P;
    }

    @Override // com.join.mgps.fragment.z4, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.S);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.P = null;
        this.f71561f = null;
        this.f71562g = null;
        this.f71563h = null;
        this.f71564i = null;
        this.f71565j = null;
        this.f71566k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71561f = (RelativeLayout) hasViews.internalFindViewById(R.id.rootRl);
        this.f71562g = (XRecyclerView) hasViews.internalFindViewById(R.id.classifyListView);
        this.f71563h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71564i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71565j = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.f71566k = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.noneReloadImage);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setAll);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f71566k;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
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
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.O.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.Q.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void showMain(final List<CollectionBeanSub> subList, final boolean refresh) {
        org.androidannotations.api.b.e("", new k(subList, refresh), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z4
    public void x0(final boolean isNormal) {
        org.androidannotations.api.b.e("", new j(isNormal), 0L);
    }
}
