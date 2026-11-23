package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class ForumPostsFragment_ extends u1 implements xc.a, zc.a, zc.b {
    private View H;
    private final zc.c G = new zc.c();
    private final Map<Class<?>, Object> I = new HashMap();
    private final IntentFilter J = new IntentFilter();
    private final BroadcastReceiver K = new BroadcastReceiver() { // from class: com.join.mgps.fragment.ForumPostsFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68467b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumPostsFragment_.this.g0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68469b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f68469b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsFragment_.super.h0(this.f68469b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.s0();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.e0();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68473b;

        d(final int val$state) {
            this.f68473b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.S(this.f68473b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68475b;

        e(final DetailResultBean val$detialResultBean) {
            this.f68475b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.r0(this.f68475b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.p0();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68478b;

        g(final String val$message) {
            this.f68478b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsFragment_.super.showMessage(this.f68478b);
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68480b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f68480b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsFragment_.super.X(this.f68480b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68482b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f68482b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsFragment_.super.V(this.f68482b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, u1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public u1 build() {
            ForumPostsFragment_ forumPostsFragment_ = new ForumPostsFragment_();
            forumPostsFragment_.setArguments(this.args);
            return forumPostsFragment_;
        }
    }

    public static j E0() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.J.addAction(p5.a.I);
        this.J.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void S(final int state) {
        org.androidannotations.api.b.e("", new d(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void V(final String gameId) {
        org.androidannotations.api.a.l(new i("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void X(final int page) {
        org.androidannotations.api.a.l(new h("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void e0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void h0(final int curPid) {
        org.androidannotations.api.a.l(new a("", 0L, "", curPid));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.G);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.K, this.J);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.H = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.H = inflater.inflate(R.layout.mg_forum_all_fragment, container, false);
        }
        return this.H;
    }

    @Override // com.join.mgps.fragment.u1, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.K);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f71047m = null;
        this.f71048n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71047m = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.f71048n = (XListView2) hasViews.internalFindViewById(R.id.forum_posts_list);
        afterViews();
    }

    @Override // com.join.mgps.fragment.u1, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.G.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void p0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.I.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void r0(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new e(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void s0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u1
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }
}
