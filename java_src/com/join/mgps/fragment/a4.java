package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a4 extends MyArchiveFragment implements xc.a, zc.a, zc.b {
    private View Z;
    private final zc.c Y = new zc.c();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Map<Class<?>, Object> f69000p0 = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69001b;

        a(final CloudListDataBean val$dataBean) {
            this.f69001b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.x0(this.f69001b);
        }
    }

    public static class a0 extends org.androidannotations.api.builder.d<a0, MyArchiveFragment> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MyArchiveFragment build() {
            a4 a4Var = new a4();
            a4Var.setArguments(this.args);
            return a4Var;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69003b;

        b(final CloudListDataBean val$dataBean) {
            this.f69003b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.w0(this.f69003b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.C0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.D0();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f69007b;

        e(final boolean val$show) {
            this.f69007b = val$show;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.s0(this.f69007b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f69009b;

        f(final boolean val$show) {
            this.f69009b = val$show;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.u0(this.f69009b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69011b;

        g(final String val$downSize) {
            this.f69011b = val$downSize;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.B0(this.f69011b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69013b;

        h(final CloudListDataBean val$dataBean) {
            this.f69013b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.H0(this.f69013b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.y0();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69016b;

        j(final String val$txt) {
            this.f69016b = val$txt;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.t0(this.f69016b);
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a4.this.j0();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69019b;

        l(final String val$msg) {
            this.f69019b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.showMessage(this.f69019b);
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69021b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f69021b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a4.super.c0(this.f69021b);
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
                a4.super.d0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f69025c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ MyArchiveFragment.v f69026d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final List val$dataBeans, final boolean val$isBackup, final MyArchiveFragment.v val$recoderCheckInterface) {
            super(id2, delay, serial);
            this.f69024b = val$dataBeans;
            this.f69025c = val$isBackup;
            this.f69026d = val$recoderCheckInterface;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a4.super.p0(this.f69024b, this.f69025c, this.f69026d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69028b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f69028b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a4.super.Y(this.f69028b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ w6.e f69031c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String id2, long delay, String serial, final CloudListDataBean val$dataBean, final w6.e val$listerner) {
            super(id2, delay, serial);
            this.f69030b = val$dataBean;
            this.f69031c = val$listerner;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a4.super.G0(this.f69030b, this.f69031c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f69033b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f69034c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String id2, long delay, String serial, final CloudListDataBean val$dataBean, final String val$message) {
            super(id2, delay, serial);
            this.f69033b = val$dataBean;
            this.f69034c = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a4.super.q0(this.f69033b, this.f69034c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a4.this.V();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.M();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69038b;

        u(final List val$listDataBeans) {
            this.f69038b = val$listDataBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.k0(this.f69038b);
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69040b;

        v(final List val$recordRoms) {
            this.f69040b = val$recordRoms;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.z0(this.f69040b);
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69042b;

        w(final List val$datas) {
            this.f69042b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.updateUi(this.f69042b);
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.i0();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.h0();
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69046b;

        z(final List val$recordRoms) {
            this.f69046b = val$recordRoms;
        }

        @Override // java.lang.Runnable
        public void run() {
            a4.super.A0(this.f69046b);
        }
    }

    public static a0 h1() {
        return new a0();
    }

    private void init_(Bundle savedInstanceState) {
        this.f68751o = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void A0(final List<RomArchived> recordRoms) {
        org.androidannotations.api.b.e("", new z(recordRoms), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void B0(final String downSize) {
        org.androidannotations.api.b.e("", new g(downSize), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void C0() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void D0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void G0(final CloudListDataBean dataBean, final w6.e listerner) {
        org.androidannotations.api.a.l(new q("", 0L, "", dataBean, listerner));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void H0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new h(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void M() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void Y(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new p("", 0L, "", dataBean));
    }

    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void c0(final int type) {
        org.androidannotations.api.a.l(new m("", 0L, "", type));
    }

    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void d0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69000p0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void h0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void i0() {
        org.androidannotations.api.b.e("", new x(), 0L);
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
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void k0(final List<CloudListDataBean> listDataBeans) {
        org.androidannotations.api.b.e("", new u(listDataBeans), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.Y);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.Z = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.Z = inflater.inflate(R.layout.item_archive, container, false);
        }
        return this.Z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.Z = null;
        this.f68739c = null;
        this.f68740d = null;
        this.f68741e = null;
        this.f68742f = null;
        this.f68743g = null;
        this.f68744h = null;
        this.f68745i = null;
        this.f68746j = null;
        this.f68747k = null;
        this.f68748l = null;
        this.f68749m = null;
        this.f68750n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f68739c = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_titlebar);
        this.f68740d = (ImageView) hasViews.internalFindViewById(R.id.iv_all_select);
        this.f68741e = (TextView) hasViews.internalFindViewById(R.id.tv_selectarchive_size);
        this.f68742f = (Button) hasViews.internalFindViewById(R.id.btn_archive_down);
        this.f68743g = (Button) hasViews.internalFindViewById(R.id.btn_cancel);
        this.f68744h = (RecyclerView) hasViews.internalFindViewById(R.id.rcy);
        this.f68745i = (LinearLayout) hasViews.internalFindViewById(R.id.ll_nodata);
        this.f68746j = (LinearLayout) hasViews.internalFindViewById(R.id.ll_all_select);
        this.f68747k = (TextView) hasViews.internalFindViewById(R.id.tv_show_nodata);
        this.f68748l = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_showtitle_bc);
        this.f68749m = (TextView) hasViews.internalFindViewById(R.id.tv_showtitle_bc);
        this.f68750n = (LinearLayout) hasViews.internalFindViewById(R.id.ll_lookdetail);
        LinearLayout linearLayout = this.f68746j;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        Button button = this.f68743g;
        if (button != null) {
            button.setOnClickListener(new s());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.Y.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void p0(final List<CloudListDataBean> dataBeans, final boolean isBackup, final MyArchiveFragment.v recoderCheckInterface) {
        org.androidannotations.api.a.l(new o("", 0L, "", dataBeans, isBackup, recoderCheckInterface));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69000p0.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void q0(final CloudListDataBean dataBean, final String message) {
        org.androidannotations.api.a.l(new r("", 0L, "", dataBean, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void s0(final boolean show) {
        org.androidannotations.api.b.e("", new e(show), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void showMessage(final String msg) {
        org.androidannotations.api.b.e("", new l(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void t0(final String txt) {
        org.androidannotations.api.b.e("", new j(txt), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void u0(final boolean show) {
        org.androidannotations.api.b.e("", new f(show), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void updateUi(final List<CloudListDataBean> datas) {
        org.androidannotations.api.b.e("", new w(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void w0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new b(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void x0(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new a(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void y0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.MyArchiveFragment
    public void z0(final List<RomArchived> recordRoms) {
        org.androidannotations.api.b.e("", new v(recordRoms), 0L);
    }
}
