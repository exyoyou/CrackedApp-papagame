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
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class LabelFragment_ extends y3 implements xc.a, zc.a, zc.b {
    private View H;
    private final zc.c G = new zc.c();
    private final Map<Class<?>, Object> I = new HashMap();
    private final IntentFilter J = new IntentFilter();
    private final BroadcastReceiver K = new BroadcastReceiver() { // from class: com.join.mgps.fragment.LabelFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68699b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LabelFragment_.this.b0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.hideLoading();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.p0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f68703b;

        c(final DetailResultBean val$detialResultBean) {
            this.f68703b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.r0(this.f68703b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68705b;

        d(final String val$msg) {
            this.f68705b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.showToast(this.f68705b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.Z();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.m0();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68709b;

        g(final String val$message) {
            this.f68709b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.showMessage(this.f68709b);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LabelFragment_.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68712b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f68712b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LabelFragment_.super.S(this.f68712b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68714b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final int val$curPid) {
            super(id2, delay, serial);
            this.f68714b = val$curPid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LabelFragment_.super.c0(this.f68714b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LabelFragment_.this.relodingimag();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LabelFragment_.this.setNetwork();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.s0();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68719b;

        n(final List val$datas) {
            this.f68719b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.t0(this.f68719b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68722c;

        o(final List val$datas, final int val$page) {
            this.f68721b = val$datas;
            this.f68722c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.u0(this.f68721b, this.f68722c);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.q0();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.o0();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LabelFragment_.super.n0();
        }
    }

    public static class s extends org.androidannotations.api.builder.d<s, y3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public y3 build() {
            LabelFragment_ labelFragment_ = new LabelFragment_();
            labelFragment_.setArguments(this.args);
            return labelFragment_;
        }
    }

    public static s M0() {
        return new s();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.J.addAction(p5.a.I);
        this.J.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void S(final String gameId) {
        org.androidannotations.api.a.l(new i("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void W() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void Z() {
        org.androidannotations.api.b.e("", new e(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void c0(final int curPid) {
        org.androidannotations.api.a.l(new j("", 0L, "", curPid));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void hideLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void m0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void n0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void o0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    @Override // com.join.mgps.fragment.y3, androidx.fragment.app.Fragment
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
            this.H = inflater.inflate(R.layout.fragment_lable, container, false);
        }
        return this.H;
    }

    @Override // com.join.mgps.fragment.y3, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.K);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f71511i = null;
        this.f71512j = null;
        this.f71513k = null;
        this.f71514l = null;
        this.f71524v = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71511i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f71512j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f71513k = (XListView2) hasViews.internalFindViewById(R.id.mListView);
        this.f71514l = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f71524v = (ImageView) hasViews.internalFindViewById(R.id.iv_no_data);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new l());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.G.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void p0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.I.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void q0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void r0(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new c(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void s0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new d(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void t0(final List<ForumBean.ForumPostsBean> datas) {
        org.androidannotations.api.b.e("", new n(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y3
    public void u0(final List<ForumBean.ForumPostsBean> datas, final int page) {
        org.androidannotations.api.b.e("", new o(datas, page), 0L);
    }
}
