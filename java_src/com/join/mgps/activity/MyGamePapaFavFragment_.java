package com.join.mgps.activity;

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
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGamePapaFavFragment_ extends x7 implements xc.a, zc.a, zc.b {
    public static final String H = "groupId";
    public static final String I = "title";
    private View D;
    private final zc.c C = new zc.c();
    private final Map<Class<?>, Object> E = new HashMap();
    private final IntentFilter F = new IntentFilter();
    private final BroadcastReceiver G = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyGamePapaFavFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f55049b = "gameId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaFavFragment_.this.onGameOpened((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55052c;

        a(final String val$title, final String val$groupId) {
            this.f55051b = val$title;
            this.f55052c = val$groupId;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.a0(this.f55051b, this.f55052c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55054b;

        b(final String val$gameId) {
            this.f55054b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.b0(this.f55054b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.showMain();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.showNoData();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.notifyDataSetChanged();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55059b;

        f(final String val$id) {
            this.f55059b = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.onMoreDeleteGame(this.f55059b);
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaFavFragment_.super.U();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f55062b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$index) {
            super(id2, delay, serial);
            this.f55062b = val$index;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaFavFragment_.super.R(this.f55062b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFavFragment_.this.relodingimag();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFavFragment_.this.setNetwork();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.Y();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.c0();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.S();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55069b;

        n(final String val$message) {
            this.f55069b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.showMessage(this.f55069b);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.showLoding();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaFavFragment_.super.showLodingFailed();
        }
    }

    public static class q extends org.androidannotations.api.builder.d<q, x7> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public x7 build() {
            MyGamePapaFavFragment_ myGamePapaFavFragment_ = new MyGamePapaFavFragment_();
            myGamePapaFavFragment_.setArguments(this.args);
            return myGamePapaFavFragment_;
        }

        public q b(String groupId) {
            this.args.putString("groupId", groupId);
            return this;
        }

        public q c(String title) {
            this.args.putString("title", title);
            return this;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f58226u = new PrefDef_(getActivity());
        zc.c.b(this);
        s0();
        this.F.addAction(p5.a.f96203k);
    }

    public static q r0() {
        return new q();
    }

    private void s0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("groupId")) {
                this.f58213h = arguments.getString("groupId");
            }
            if (arguments.containsKey("title")) {
                this.f58214i = arguments.getString("title");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void R(final int index) {
        org.androidannotations.api.a.l(new h("", 0L, "", index));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void S() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void U() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void Y() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void a0(final String title, final String groupId) {
        org.androidannotations.api.b.e("", new a(title, groupId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void b0(final String gameId) {
        org.androidannotations.api.b.e("", new b(gameId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void c0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.D;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.C);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.G, this.F);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.D = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.D = inflater.inflate(R.layout.fragment_my_game_papa_fav, container, false);
        }
        return this.D;
    }

    @Override // com.join.mgps.activity.x7, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.G);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.D = null;
        this.f58208c = null;
        this.f58209d = null;
        this.f58210e = null;
        this.f58211f = null;
        this.f58212g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void onMoreDeleteGame(final String id2) {
        org.androidannotations.api.b.e("", new f(id2), 100L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f58208c = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f58209d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f58210e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f58211f = (LinearLayout) hasViews.internalFindViewById(R.id.empty_layout);
        this.f58212g = hasViews.internalFindViewById(R.id.root);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new j());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.C.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.E.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void showLoding() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void showMain() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new n(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.x7
    public void showNoData() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }
}
