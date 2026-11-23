package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class GmaeFormPostFragment_ extends GmaeFormPostFragment implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private View f68642g2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private final zc.c f68641f2 = new zc.c();

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private final Map<Class<?>, Object> f68643h2 = new HashMap();

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private final IntentFilter f68644i2 = new IntentFilter();

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private final BroadcastReceiver f68645j2 = new BroadcastReceiver() { // from class: com.join.mgps.fragment.GmaeFormPostFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68646b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GmaeFormPostFragment_.this.z0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68648b;

        a(final String val$msg) {
            this.f68648b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.showToast(this.f68648b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.W0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f68651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68652c;

        c(final AbsListView val$view, final int val$scrollState) {
            this.f68651b = val$view;
            this.f68652c = val$scrollState;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.k1(this.f68651b, this.f68652c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AbsListView f68654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68655c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f68656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f68657e;

        d(final AbsListView val$view, final int val$firstVisibleItem, final int val$visibleItemCount, final int val$totalItemCount) {
            this.f68654b = val$view;
            this.f68655c = val$firstVisibleItem;
            this.f68656d = val$visibleItemCount;
            this.f68657e = val$totalItemCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.j1(this.f68654b, this.f68655c, this.f68656d, this.f68657e);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.V0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68660b;

        f(final String val$message) {
            this.f68660b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.showMessage(this.f68660b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f68662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68663c;

        g(final DownloadTask val$downloadTask, final int val$from) {
            this.f68662b = val$downloadTask;
            this.f68663c = val$from;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.updateUI(this.f68662b, this.f68663c);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.updateDownloadView();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68666b;

        i(final DetailResultBean val$detialResultBean) {
            this.f68666b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.a1(this.f68666b);
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68668b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68669c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$type, final String val$gameId) {
            super(id2, delay, serial);
            this.f68668b = val$type;
            this.f68669c = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.Y(this.f68668b, this.f68669c);
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
                GmaeFormPostFragment_.super.o0();
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
                GmaeFormPostFragment_.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68673b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f68673b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.q0(this.f68673b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68675b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f68675b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.D0(this.f68675b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f68677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68678c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final Context val$context, final int val$pid) {
            super(id2, delay, serial);
            this.f68677b = val$context;
            this.f68678c = val$pid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.c0(this.f68677b, this.f68678c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {
        p(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68681b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f68681b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GmaeFormPostFragment_.super.e0(this.f68681b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GmaeFormPostFragment_.this.W();
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f68684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f68686d;

        s(final ResultMainBean val$result, final int val$type, final String val$gameId) {
            this.f68684b = val$result;
            this.f68685c = val$type;
            this.f68686d = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.g1(this.f68684b, this.f68685c, this.f68686d);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68688b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68689c;

        t(final List val$postsList, final int val$page) {
            this.f68688b = val$postsList;
            this.f68689c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.F0(this.f68688b, this.f68689c);
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68691b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f68692c;

        u(final int val$pid, final boolean val$success) {
            this.f68691b = val$pid;
            this.f68692c = val$success;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.u0(this.f68691b, this.f68692c);
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.c1();
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68695b;

        w(final int val$state) {
            this.f68695b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.Z(this.f68695b);
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.s0();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GmaeFormPostFragment_.super.T0();
        }
    }

    public static class z extends org.androidannotations.api.builder.d<z, GmaeFormPostFragment> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public GmaeFormPostFragment build() {
            GmaeFormPostFragment_ gmaeFormPostFragment_ = new GmaeFormPostFragment_();
            gmaeFormPostFragment_.setArguments(this.args);
            return gmaeFormPostFragment_;
        }
    }

    public static z J1() {
        return new z();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f68644i2.addAction(p5.a.I);
        this.f68644i2.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void D0(final int curPid) {
        org.androidannotations.api.a.l(new n("", 0L, "", curPid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void F0(final List<ForumData.ForumUserFavoritesData> postsList, final int page) {
        org.androidannotations.api.b.e("", new t(postsList, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void T0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void V0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void W0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void Y(final int type, final String gameId) {
        org.androidannotations.api.a.l(new j("", 0L, "", type, gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void Z(final int state) {
        org.androidannotations.api.b.e("", new w(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void a1(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new i(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void c0(final Context context, final int pid) {
        org.androidannotations.api.a.l(new o("", 0L, "", context, pid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void c1() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void e0(final String gameId) {
        org.androidannotations.api.a.l(new q("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void g1(final ResultMainBean result, final int type, final String gameId) {
        org.androidannotations.api.b.e("", new s(result, type, gameId), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68643h2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68642g2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void j1(final AbsListView view, final int firstVisibleItem, final int visibleItemCount, final int totalItemCount) {
        org.androidannotations.api.b.e("", new d(view, firstVisibleItem, visibleItemCount, totalItemCount), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void k1(final AbsListView view, final int scrollState) {
        org.androidannotations.api.b.e("", new c(view, scrollState), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void o0() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68641f2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68645j2, this.f68644i2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68642g2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68642g2 = inflater.inflate(R.layout.mg_forum_profile_favorites_activity, container, false);
        }
        return this.f68642g2;
    }

    @Override // com.join.mgps.fragment.GmaeFormPostFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68645j2);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68642g2 = null;
        this.f68584c = null;
        this.f68585d = null;
        this.f68586e = null;
        this.f68587f = null;
        this.f68593j = null;
        this.f68594k = null;
        this.J = null;
        this.K = null;
        GmaeFormPostFragment.f68581d2 = null;
        this.L = null;
        this.M = null;
        this.N = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f68584c = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.f68585d = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.f68586e = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.f68587f = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.f68593j = (XListView2) hasViews.internalFindViewById(R.id.forum_posts_list);
        this.f68594k = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.J = (FrameLayout) hasViews.internalFindViewById(R.id.videoContainer);
        this.K = (RelativeLayout) hasViews.internalFindViewById(R.id.videoLayout);
        GmaeFormPostFragment.f68581d2 = (MyVideoView) hasViews.internalFindViewById(R.id.video);
        this.L = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cover);
        this.M = (ImageView) hasViews.internalFindViewById(R.id.play);
        this.N = (LinearLayout) hasViews.internalFindViewById(R.id.loadingLayout);
        ImageView imageView = this.f68585d;
        if (imageView != null) {
            imageView.setOnClickListener(new r());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68641f2.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void p0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68643h2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void q0(final int page) {
        org.androidannotations.api.a.l(new m("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void s0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new a(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void u0(final int pid, final boolean success) {
        org.androidannotations.api.b.e("", new u(pid, success), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.GmaeFormPostFragment
    public void updateUI(final DownloadTask downloadTask, final int from) {
        org.androidannotations.api.b.e("", new g(downloadTask, from), 0L);
    }
}
