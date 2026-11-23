package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGamePapaLocalFragment_ extends d8 implements xc.a, zc.a, zc.b {
    private View O;
    private final zc.c N = new zc.c();
    private final Map<Class<?>, Object> P = new HashMap();
    private final IntentFilter Q = new IntentFilter();
    private final BroadcastReceiver R = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyGamePapaLocalFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f55111b = "gameId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaLocalFragment_.this.onGameOpened((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    };
    private final IntentFilter S = new IntentFilter();
    private final BroadcastReceiver T = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyGamePapaLocalFragment_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaLocalFragment_.this.refreshGamePurchasedList();
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.showNoData();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.showUi();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.notifyDataSetChanged();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.c0();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55118b;

        e(final String val$id) {
            this.f55118b = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.onMoreDeleteGame(this.f55118b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SNKGameInfoBean f55120b;

        f(final SNKGameInfoBean val$resp) {
            this.f55120b = val$resp;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.o0(this.f55120b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f55122b;

        g(final DownloadTask val$downloadTask) {
            this.f55122b = val$downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.s0(this.f55122b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55124b;

        h(final List val$collectionBeanSubs) {
            this.f55124b = val$collectionBeanSubs;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.p0(this.f55124b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaLocalFragment_.super.refreshShortcutState();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f55127b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final List val$downloadTasks) {
            super(id2, delay, serial);
            this.f55127b = val$downloadTasks;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaLocalFragment_.super.refreshShortcutState(this.f55127b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaLocalFragment_.super.Y();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaLocalFragment_.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePapaLocalFragment_.super.l0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaLocalFragment_.this.back();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaLocalFragment_.this.search();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaLocalFragment_.this.plugs();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaLocalFragment_.this.needUpdate();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55136b;

        r(final String val$gameId) {
            this.f55136b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.showAddShortcutResultDialog(this.f55136b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HashMap f55138b;

        s(final HashMap val$map) {
            this.f55138b = val$map;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.notifyShortcutChanged(this.f55138b);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePapaLocalFragment_.super.updateArchiveTime();
        }
    }

    public static class u extends org.androidannotations.api.builder.d<u, d8> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d8 build() {
            MyGamePapaLocalFragment_ myGamePapaLocalFragment_ = new MyGamePapaLocalFragment_();
            myGamePapaLocalFragment_.setArguments(this.args);
            return myGamePapaLocalFragment_;
        }
    }

    public static u J0() {
        return new u();
    }

    private void init_(Bundle savedInstanceState) {
        this.f57100t = new PrefDef_(getActivity());
        zc.c.b(this);
        this.Q.addAction(p5.a.f96203k);
        this.S.addAction(p5.a.I);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void Y() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void b0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void c0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.P.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.O;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void l0() {
        org.androidannotations.api.a.l(new m("", 1000L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void notifyShortcutChanged(final HashMap<String, Boolean> map) {
        org.androidannotations.api.b.e("", new s(map), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void o0(final SNKGameInfoBean resp) {
        org.androidannotations.api.b.e("", new f(resp), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.N);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.R, this.Q);
        getActivity().registerReceiver(this.T, this.S);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.O = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.O = inflater.inflate(R.layout.fragment_papa_game_local, container, false);
        }
        return this.O;
    }

    @Override // com.join.mgps.activity.d8, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.R);
        getActivity().unregisterReceiver(this.T);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.O = null;
        this.f57083c = null;
        this.f57084d = null;
        this.f57085e = null;
        this.f57086f = null;
        this.f57087g = null;
        this.f57088h = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void onMoreDeleteGame(final String id2) {
        org.androidannotations.api.b.e("", new e(id2), 100L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57083c = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.f57084d = hasViews.internalFindViewById(R.id.noGame);
        this.f57085e = hasViews.internalFindViewById(R.id.root);
        this.f57086f = (WrapContentGridView) hasViews.internalFindViewById(R.id.noGameList);
        this.f57087g = hasViews.internalFindViewById(R.id.needUpdate);
        this.f57088h = (TextView) hasViews.internalFindViewById(R.id.count);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.plugs);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new n());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new o());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new p());
        }
        View view = this.f57087g;
        if (view != null) {
            view.setOnClickListener(new q());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.N.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void p0(final List<GamedownRecomendItemBean> collectionBeanSubs) {
        org.androidannotations.api.b.e("", new h(collectionBeanSubs), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.P.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void refreshShortcutState() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void s0(final DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new g(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void showAddShortcutResultDialog(final String gameId) {
        org.androidannotations.api.b.e("", new r(gameId), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void showNoData() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void showUi() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // com.join.mgps.activity.d8
    public void updateArchiveTime() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d8
    public void refreshShortcutState(final List<DownloadTask> downloadTasks) {
        org.androidannotations.api.a.l(new j("", 0L, "", downloadTasks));
    }
}
