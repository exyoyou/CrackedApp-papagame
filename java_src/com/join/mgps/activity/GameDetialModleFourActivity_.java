package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameDetialModleFourActivity_ extends d2 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private View f52517r2;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private final zc.c f52516q2 = new zc.c();

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private final Map<Class<?>, Object> f52518s2 = new HashMap();

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private final IntentFilter f52519t2 = new IntentFilter();

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private final BroadcastReceiver f52520u2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleFourActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleFourActivity_.this.C0(intent);
        }
    };

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private final IntentFilter f52521v2 = new IntentFilter();

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private final BroadcastReceiver f52522w2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleFourActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleFourActivity_.this.c1();
        }
    };

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private final IntentFilter f52523x2 = new IntentFilter();

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private final BroadcastReceiver f52524y2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleFourActivity_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleFourActivity_.this.A0(intent);
        }
    };

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private final IntentFilter f52525z2 = new IntentFilter();
    private final BroadcastReceiver A2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleFourActivity_.4

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f52529b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleFourActivity_.this.v0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.G0();
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f52532b;

        a0(final GiftPackageDataOperationBean val$bean) {
            this.f52532b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.N0(this.f52532b);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.instalButtomButn();
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52535b;

        b0(final int val$downloadingNumber) {
            this.f52535b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.X0(this.f52535b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.progress_layout();
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52538b;

        c0(final int val$number) {
            this.f52538b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.W0(this.f52538b);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.i0();
        }
    }

    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.Z0();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.T0();
        }
    }

    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.O0();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.h0();
        }
    }

    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.P0();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.J0();
        }
    }

    class g0 extends org.androidannotations.api.a.c {
        g0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.t0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.K0();
        }
    }

    class h0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f52549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52550c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52551d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f52549b = val$bean;
            this.f52550c = val$position;
            this.f52551d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.x0(this.f52549b, this.f52550c, this.f52551d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52553b;

        i(final List val$messageBean) {
            this.f52553b = val$messageBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.Y0(this.f52553b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f52555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52556c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52557d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f52555b = val$bean;
            this.f52556c = val$position;
            this.f52557d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.z0(this.f52555b, this.f52556c, this.f52557d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52559b;

        j(final boolean val$needRetry) {
            this.f52559b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.a1(this.f52559b);
        }
    }

    class j0 extends org.androidannotations.api.a.c {
        j0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.r0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52563c;

        k(final int val$position, final int val$i) {
            this.f52562b = val$position;
            this.f52563c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.d0(this.f52562b, this.f52563c);
        }
    }

    class k0 extends org.androidannotations.api.a.c {
        k0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.n0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f52567c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52568d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f52569e;

        l(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f52566b = val$msg;
            this.f52567c = val$b;
            this.f52568d = val$position;
            this.f52569e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.E0(this.f52566b, this.f52567c, this.f52568d, this.f52569e);
        }
    }

    class l0 extends org.androidannotations.api.a.c {
        l0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.o0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f52572b;

        m(final CommentResponse val$bean) {
            this.f52572b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.F0(this.f52572b);
        }
    }

    class m0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52574b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(String id2, long delay, String serial, final InformationCommentBean val$bean) {
            super(id2, delay, serial);
            this.f52574b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.B0(this.f52574b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52576b;

        n(final String val$charSequence) {
            this.f52576b = val$charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.showToast(this.f52576b);
        }
    }

    class n0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52578b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f52578b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.changeGameFollow(this.f52578b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.showLodingFailed();
        }
    }

    class o0 extends org.androidannotations.api.a.c {
        o0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52582b;

        p(final List val$commitDataBeans) {
            this.f52582b = val$commitDataBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.showMain(this.f52582b);
        }
    }

    class p0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f52584b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p0(String id2, long delay, String serial, final GiftPackageDataInfoBean val$bean) {
            super(id2, delay, serial);
            this.f52584b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.p0(this.f52584b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f52586b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f52587c;

        q(final GamedetialModleFourBean val$modleFourBean, final boolean val$isReload) {
            this.f52586b = val$modleFourBean;
            this.f52587c = val$isReload;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.b1(this.f52586b, this.f52587c);
        }
    }

    class q0 extends org.androidannotations.api.a.c {
        q0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleFourActivity_.super.c0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.Q0();
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.relodingimag();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.w0();
        }
    }

    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.l0();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.U0();
        }
    }

    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.setNetwork();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f52596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52597c;

        u(final ResultMainBean val$result, final int val$type) {
            this.f52596b = val$result;
            this.f52597c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.updateTitleButn(this.f52596b, this.f52597c);
        }
    }

    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.iv_back();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.showProgress();
        }
    }

    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleFourActivity_.this.b0();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.showInstallButn();
        }
    }

    public static class w0 extends org.androidannotations.api.builder.d<w0, d2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d2 build() {
            GameDetialModleFourActivity_ gameDetialModleFourActivity_ = new GameDetialModleFourActivity_();
            gameDetialModleFourActivity_.setArguments(this.args);
            return gameDetialModleFourActivity_;
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.updateButn();
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.updateDownloadView();
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f52605b;

        z(final GiftPackageDataInfoBean val$bean) {
            this.f52605b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleFourActivity_.super.M0(this.f52605b);
        }
    }

    public static w0 M1() {
        return new w0();
    }

    private void init_(Bundle savedInstanceState) {
        this.f56946r1 = new PrefDef_(getActivity());
        zc.c.b(this);
        this.f52519t2.addAction(p5.a.B);
        this.f52521v2.addAction("com.broadcast.bespeak.sussess");
        this.f52523x2.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.f52525z2.addAction(p5.a.I);
        this.f52525z2.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void B0(final InformationCommentBean bean) {
        org.androidannotations.api.a.l(new m0("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void E0(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new l(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void F0(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new m(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void M0(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.b.e("", new z(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void N0(final GiftPackageDataOperationBean bean) {
        org.androidannotations.api.b.e("", new a0(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void O0() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void P0() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void Q0() {
        org.androidannotations.api.b.e("", new r(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void U0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void W0(final int number) {
        org.androidannotations.api.b.e("", new c0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void X0(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new b0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void Y0(final List<CollectionBeanSub> messageBean) {
        org.androidannotations.api.b.e("", new i(messageBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void Z0() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void a1(final boolean needRetry) {
        org.androidannotations.api.b.e("", new j(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void b1(final GamedetialModleFourBean modleFourBean, final boolean isReload) {
        org.androidannotations.api.b.e("", new q(modleFourBean, isReload), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void c0() {
        org.androidannotations.api.a.l(new q0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new n0("", 0L, "", type));
    }

    @Override // com.join.mgps.activity.d2
    public void d0(final int position, final int i10) {
        org.androidannotations.api.b.e("", new k(position, i10), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f52518s2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new o0("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f52517r2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void n0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void o0() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    @Override // com.join.mgps.activity.d2, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f52516q2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f52520u2, this.f52519t2);
        getActivity().registerReceiver(this.f52522w2, this.f52521v2);
        getActivity().registerReceiver(this.f52524y2, this.f52523x2);
        getActivity().registerReceiver(this.A2, this.f52525z2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f52517r2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f52517r2 = inflater.inflate(R.layout.gamedetial_modle_four_activity, container, false);
        }
        return this.f52517r2;
    }

    @Override // com.join.mgps.activity.d2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f52520u2);
        getActivity().unregisterReceiver(this.f52522w2);
        getActivity().unregisterReceiver(this.f52524y2);
        getActivity().unregisterReceiver(this.A2);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f52517r2 = null;
        this.f56913d = null;
        this.f56915e = null;
        this.f56917f = null;
        this.f56920g = null;
        this.f56922h = null;
        this.f56924i = null;
        this.f56927j = null;
        this.f56929k = null;
        this.f56931l = null;
        this.f56934m = null;
        this.f56936n = null;
        this.f56938o = null;
        this.f56940p = null;
        this.f56943q = null;
        this.f56945r = null;
        this.f56947s = null;
        this.f56948t = null;
        this.f56949u = null;
        this.f56950v = null;
        this.f56952w = null;
        this.f56953x = null;
        this.f56954y = null;
        this.f56955z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.f56921g2 = null;
        this.f56923h2 = null;
        this.f56926i2 = null;
        this.f56928j2 = null;
        this.f56930k2 = null;
        this.f56933l2 = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56913d = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.f56915e = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.f56917f = (ImageView) hasViews.internalFindViewById(R.id.iv_back);
        this.f56920g = (ImageView) hasViews.internalFindViewById(R.id.search);
        this.f56922h = (ImageView) hasViews.internalFindViewById(R.id.share);
        this.f56924i = (ImageView) hasViews.internalFindViewById(R.id.downImage);
        this.f56927j = (ImageView) hasViews.internalFindViewById(R.id.followImage);
        this.f56929k = (TextView) hasViews.internalFindViewById(R.id.followButton);
        this.f56931l = (LinearLayout) hasViews.internalFindViewById(R.id.followLayout);
        this.f56934m = (LinearLayout) hasViews.internalFindViewById(R.id.layoutGift);
        this.f56936n = (XRecyclerView) hasViews.internalFindViewById(R.id.recycleView);
        this.f56938o = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f56940p = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f56943q = (RelativeLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f56945r = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f56947s = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.f56948t = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.f56949u = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.f56950v = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.f56952w = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.f56953x = (RelativeLayout) hasViews.internalFindViewById(R.id.titleTransfer);
        this.f56954y = (ImageView) hasViews.internalFindViewById(R.id.search_detial_back);
        this.f56955z = (ImageView) hasViews.internalFindViewById(R.id.download_bg);
        this.A = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.B = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.C = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.D = (RelativeLayout) hasViews.internalFindViewById(R.id.title);
        this.E = (SimpleDraweeView) hasViews.internalFindViewById(R.id.giftImage);
        this.F = (TextView) hasViews.internalFindViewById(R.id.giftContent);
        this.G = (NestedScrollView) hasViews.internalFindViewById(R.id.nsv_view);
        this.f56921g2 = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.f56923h2 = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.f56926i2 = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.f56928j2 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.f56930k2 = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        this.f56933l2 = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.progress_layout);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.shareTwo);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new r0());
        }
        LinearLayout linearLayout = this.f56931l;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new s0());
        }
        Button button = this.C;
        if (button != null) {
            button.setOnClickListener(new t0());
        }
        ImageView imageView = this.f56917f;
        if (imageView != null) {
            imageView.setOnClickListener(new u0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new v0());
        }
        ImageView imageView2 = this.f56954y;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a());
        }
        TextView textView = this.f56938o;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
        }
        LinearLayout linearLayout2 = this.f56949u;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.f56933l2;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        ImageView imageView3 = this.f56924i;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new f());
        }
        ImageView imageView4 = this.f56922h;
        if (imageView4 != null) {
            imageView4.setOnClickListener(new g());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f52516q2.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void p0(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.a.l(new p0("", 0L, "", bean));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f52518s2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void r0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void showMain(final List<CommentBaseBean> commitDataBeans) {
        org.androidannotations.api.b.e("", new p(commitDataBeans), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void showProgress() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void showToast(final String charSequence) {
        org.androidannotations.api.b.e("", new n(charSequence), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void t0() {
        org.androidannotations.api.a.l(new g0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void updateButn() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new u(result, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void w0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void x0(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new h0("", 0L, "", bean, position, type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.d2
    public void z0(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new i0("", 0L, "", bean, position, type));
    }
}
