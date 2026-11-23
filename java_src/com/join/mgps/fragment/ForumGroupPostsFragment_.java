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
public final class ForumGroupPostsFragment_ extends s1 implements xc.a, zc.a, zc.b {
    private View J;
    private final zc.c I = new zc.c();
    private final Map<Class<?>, Object> K = new HashMap();
    private final IntentFilter L = new IntentFilter();
    private final BroadcastReceiver M = new BroadcastReceiver() { // from class: com.join.mgps.fragment.ForumGroupPostsFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68406b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumGroupPostsFragment_.this.h0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68408b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f68408b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupPostsFragment_.super.W(this.f68408b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68410b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f68410b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupPostsFragment_.super.i0(this.f68410b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.t0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.f0();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.d0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68415b;

        f(final int val$state) {
            this.f68415b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.U(this.f68415b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68417b;

        g(final DetailResultBean val$detialResultBean) {
            this.f68417b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.s0(this.f68417b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.q0();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68420b;

        i(final String val$message) {
            this.f68420b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupPostsFragment_.super.showMessage(this.f68420b);
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68422b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f68422b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupPostsFragment_.super.Y(this.f68422b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, s1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s1 build() {
            ForumGroupPostsFragment_ forumGroupPostsFragment_ = new ForumGroupPostsFragment_();
            forumGroupPostsFragment_.setArguments(this.args);
            return forumGroupPostsFragment_;
        }
    }

    public static k F0() {
        return new k();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.L.addAction(p5.a.I);
        this.L.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void U(final int state) {
        org.androidannotations.api.b.e("", new f(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void W(final String gameId) {
        org.androidannotations.api.a.l(new a("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void Y(final int page) {
        org.androidannotations.api.a.l(new j("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void d0() {
        org.androidannotations.api.b.e("", new e(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void f0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void i0(final int curPid) {
        org.androidannotations.api.a.l(new b("", 0L, "", curPid));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
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
            this.J = inflater.inflate(R.layout.mg_forum_all_fragment, container, false);
        }
        return this.J;
    }

    @Override // com.join.mgps.fragment.s1, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.M);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f70840m = null;
        this.f70841n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70840m = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.f70841n = (XListView2) hasViews.internalFindViewById(R.id.forum_posts_list);
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
    @Override // com.join.mgps.fragment.s1
    public void q0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void s0(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new g(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new i(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s1
    public void t0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }
}
