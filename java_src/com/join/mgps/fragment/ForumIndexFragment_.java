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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class ForumIndexFragment_ extends t1 implements xc.a, zc.a, zc.b {
    private View Z;
    private final zc.c Y = new zc.c();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Map<Class<?>, Object> f68428p0 = new HashMap();

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private final IntentFilter f68424b1 = new IntentFilter();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private final BroadcastReceiver f68425f1 = new BroadcastReceiver() { // from class: com.join.mgps.fragment.ForumIndexFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumIndexFragment_.this.O();
        }
    };

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private final IntentFilter f68426i1 = new IntentFilter();

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private final BroadcastReceiver f68427l1 = new BroadcastReceiver() { // from class: com.join.mgps.fragment.ForumIndexFragment_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumIndexFragment_.this.V(intent);
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumData.HomepageRecommendGroup f68431b;

        a(final ForumData.HomepageRecommendGroup val$data) {
            this.f68431b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.x0(this.f68431b);
        }
    }

    public static class a0 extends org.androidannotations.api.builder.d<a0, t1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t1 build() {
            ForumIndexFragment_ forumIndexFragment_ = new ForumIndexFragment_();
            forumIndexFragment_.setArguments(this.args);
            return forumIndexFragment_;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.i0();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBannerBean.ForumBannerDataBannerBean f68434b;

        c(final ForumBannerBean.ForumBannerDataBannerBean val$data) {
            this.f68434b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.v0(this.f68434b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68436b;

        d(final int val$state) {
            this.f68436b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.X(this.f68436b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.r0();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.D0();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68440b;

        g(final String val$msg) {
            this.f68440b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.T(this.f68440b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.w0();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68443b;

        i(final int val$downloadingNumber) {
            this.f68443b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.J0(this.f68443b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68445b;

        j(final int val$number) {
            this.f68445b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.H0(this.f68445b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.K0();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.I0();
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.n0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.g0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68451b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final String val$ids) {
            super(id2, delay, serial);
            this.f68451b = val$ids;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.t0(this.f68451b);
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
                ForumIndexFragment_.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.c0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {
        r(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.G0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumIndexFragment_.super.Y();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumIndexFragment_.this.P();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumIndexFragment_.this.W();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.E0();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.y0();
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f68462c;

        x(final boolean val$labelSwitcher, final List val$list) {
            this.f68461b = val$labelSwitcher;
            this.f68462c = val$list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.z0(this.f68461b, this.f68462c);
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68464b;

        y(final List val$fenzu) {
            this.f68464b = val$fenzu;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.q0(this.f68464b);
        }
    }

    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumIndexFragment_.super.A0();
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.N = new PrefDef_(getActivity());
        zc.c.b(this);
        this.f68424b1.addAction(p5.a.B);
        this.f68426i1.addAction(p5.a.f96231y);
    }

    public static a0 j1() {
        return new a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void A0() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void D0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void E0() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void G0() {
        org.androidannotations.api.a.l(new r("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void H0(final int number) {
        org.androidannotations.api.b.e("", new j(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void I0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void J0(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new i(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void K0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1, com.join.mgps.fragment.e
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new g(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void X(final int state) {
        org.androidannotations.api.b.e("", new d(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void Y() {
        org.androidannotations.api.a.l(new s("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void c0() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void e0() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void g0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68428p0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void i0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.Z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void n0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.Y);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68425f1, this.f68424b1);
        getActivity().registerReceiver(this.f68427l1, this.f68426i1);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.Z = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.Z = inflater.inflate(R.layout.mg_forum_index_fragment, container, false);
        }
        return this.Z;
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68425f1);
        getActivity().unregisterReceiver(this.f68427l1);
        super.onDestroy();
    }

    @Override // com.join.mgps.fragment.t1, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.Z = null;
        this.f70938d = null;
        this.f70939e = null;
        this.f70940f = null;
        this.f70941g = null;
        this.f70942h = null;
        this.f70943i = null;
        this.f70944j = null;
        this.f70945k = null;
        this.f70946l = null;
        this.f70947m = null;
        this.f70948n = null;
        this.B = null;
        this.D = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70938d = hasViews.internalFindViewById(R.id.actionPlaceHolder);
        this.f70939e = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.f70940f = hasViews.internalFindViewById(R.id.aboutWF);
        this.f70941g = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.f70942h = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.f70943i = (ScrollableLayout) hasViews.internalFindViewById(R.id.scrollableLayout);
        this.f70944j = (ForumIndexHeaderView) hasViews.internalFindViewById(R.id.headerView);
        this.f70945k = (SlidingTabLayout4) hasViews.internalFindViewById(R.id.tabsLayout);
        this.f70946l = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.f70947m = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70948n = (RelativeLayout) hasViews.internalFindViewById(R.id.search);
        this.B = (RelativeLayout) hasViews.internalFindViewById(R.id.layout_others);
        this.D = (TextView) hasViews.internalFindViewById(R.id.bigCenterRound);
        View view = this.f70940f;
        if (view != null) {
            view.setOnClickListener(new t());
        }
        ImageView imageView = this.f70939e;
        if (imageView != null) {
            imageView.setOnClickListener(new u());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.Y.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68428p0.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void q0(final List<RecommenGroupClassify> fenzu) {
        org.androidannotations.api.b.e("", new y(fenzu), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void r0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void t0(final String ids) {
        org.androidannotations.api.a.l(new o("", 0L, "", ids));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void v0(final ForumBannerBean.ForumBannerDataBannerBean data) {
        org.androidannotations.api.b.e("", new c(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void w0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void x0(final ForumData.HomepageRecommendGroup data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void y0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t1
    public void z0(final boolean labelSwitcher, final List<RecommendLabelTag> list) {
        org.androidannotations.api.b.e("", new x(labelSwitcher, list), 0L);
    }
}
