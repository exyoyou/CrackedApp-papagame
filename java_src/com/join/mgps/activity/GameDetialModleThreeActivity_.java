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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
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
public final class GameDetialModleThreeActivity_ extends f2 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private View f52608h2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private final zc.c f52607g2 = new zc.c();

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private final Map<Class<?>, Object> f52609i2 = new HashMap();

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private final IntentFilter f52610j2 = new IntentFilter();

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private final BroadcastReceiver f52611k2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleThreeActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleThreeActivity_.this.s0(intent);
        }
    };

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private final IntentFilter f52612l2 = new IntentFilter();

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private final BroadcastReceiver f52613m2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleThreeActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleThreeActivity_.this.Q0();
        }
    };

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private final IntentFilter f52614n2 = new IntentFilter();

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private final BroadcastReceiver f52615o2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleThreeActivity_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleThreeActivity_.this.q0(intent);
        }
    };

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private final IntentFilter f52616p2 = new IntentFilter();

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private final BroadcastReceiver f52617q2 = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameDetialModleThreeActivity_.4

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f52621b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameDetialModleThreeActivity_.this.l0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.w0();
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52624b;

        a0(final int val$downloadingNumber) {
            this.f52624b = val$downloadingNumber;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.M0(this.f52624b);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.instalButtomButn();
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52627b;

        b0(final int val$number) {
            this.f52627b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.L0(this.f52627b);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.progress_layout();
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.N0();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.Z();
        }
    }

    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.E0();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.J0();
        }
    }

    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.F0();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.Y();
        }
    }

    class f0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f52636b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52637c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52638d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f52636b = val$bean;
            this.f52637c = val$position;
            this.f52638d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.n0(this.f52636b, this.f52637c, this.f52638d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.z0();
        }
    }

    class g0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f52641b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52642c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52643d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g0(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f52641b = val$bean;
            this.f52642c = val$position;
            this.f52643d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.p0(this.f52641b, this.f52642c, this.f52643d);
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
            GameDetialModleThreeActivity_.this.A0();
        }
    }

    class h0 extends org.androidannotations.api.a.c {
        h0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.i0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52647b;

        i(final boolean val$needRetry) {
            this.f52647b = val$needRetry;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.O0(this.f52647b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {
        i0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52651c;

        j(final int val$position, final int val$i) {
            this.f52650b = val$position;
            this.f52651c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.U(this.f52650b, this.f52651c);
        }
    }

    class j0 extends org.androidannotations.api.a.c {
        j0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f52655c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f52656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f52657e;

        k(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f52654b = val$msg;
            this.f52655c = val$b;
            this.f52656d = val$position;
            this.f52657e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.u0(this.f52654b, this.f52655c, this.f52656d, this.f52657e);
        }
    }

    class k0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52659b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(String id2, long delay, String serial, final InformationCommentBean val$bean) {
            super(id2, delay, serial);
            this.f52659b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.r0(this.f52659b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f52661b;

        l(final CommentResponse val$bean) {
            this.f52661b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.v0(this.f52661b);
        }
    }

    class l0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52663b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f52663b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.changeGameFollow(this.f52663b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52665b;

        m(final String val$charSequence) {
            this.f52665b = val$charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.showToast(this.f52665b);
        }
    }

    class m0 extends org.androidannotations.api.a.c {
        m0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.showLodingFailed();
        }
    }

    class n0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f52669b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n0(String id2, long delay, String serial, final GiftPackageDataInfoBean val$bean) {
            super(id2, delay, serial);
            this.f52669b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.g0(this.f52669b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52671b;

        o(final List val$commitDataBeans) {
            this.f52671b = val$commitDataBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.showMain(this.f52671b);
        }
    }

    class o0 extends org.androidannotations.api.a.c {
        o0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameDetialModleThreeActivity_.super.T();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f52674b;

        p(final GamedetialModleFourBean val$modleFourBean) {
            this.f52674b = val$modleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.P0(this.f52674b);
        }
    }

    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.relodingimag();
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.G0();
        }
    }

    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.c0();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.m0();
        }
    }

    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.setNetwork();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.K0();
        }
    }

    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.iv_back();
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResultMainBean f52683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52684c;

        t(final ResultMainBean val$result, final int val$type) {
            this.f52683b = val$result;
            this.f52684c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.updateTitleButn(this.f52683b, this.f52684c);
        }
    }

    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameDetialModleThreeActivity_.this.S();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.showProgress();
        }
    }

    public static class u0 extends org.androidannotations.api.builder.d<u0, f2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f2 build() {
            GameDetialModleThreeActivity_ gameDetialModleThreeActivity_ = new GameDetialModleThreeActivity_();
            gameDetialModleThreeActivity_.setArguments(this.args);
            return gameDetialModleThreeActivity_;
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.showInstallButn();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.updateButn();
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.updateDownloadView();
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f52691b;

        y(final GiftPackageDataInfoBean val$bean) {
            this.f52691b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.C0(this.f52691b);
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f52693b;

        z(final GiftPackageDataOperationBean val$bean) {
            this.f52693b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameDetialModleThreeActivity_.super.D0(this.f52693b);
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.W = new PrefDef_(getActivity());
        zc.c.b(this);
        this.f52610j2.addAction(p5.a.B);
        this.f52612l2.addAction("com.broadcast.bespeak.sussess");
        this.f52614n2.addAction("com.join,mgps.sim.sdkgamePayfinish");
        this.f52616p2.addAction(p5.a.I);
        this.f52616p2.addAction(p5.a.G);
    }

    public static u0 y1() {
        return new u0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void C0(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.b.e("", new y(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void D0(final GiftPackageDataOperationBean bean) {
        org.androidannotations.api.b.e("", new z(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void E0() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void F0() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void G0() {
        org.androidannotations.api.b.e("", new q(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void K0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void L0(final int number) {
        org.androidannotations.api.b.e("", new b0(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void M0(final int downloadingNumber) {
        org.androidannotations.api.b.e("", new a0(downloadingNumber), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void N0() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void O0(final boolean needRetry) {
        org.androidannotations.api.b.e("", new i(needRetry), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void P0(final GamedetialModleFourBean modleFourBean) {
        org.androidannotations.api.b.e("", new p(modleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void T() {
        org.androidannotations.api.a.l(new o0("", 0L, ""));
    }

    @Override // com.join.mgps.activity.f2
    public void U(final int position, final int i10) {
        org.androidannotations.api.b.e("", new j(position, i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new l0("", 0L, "", type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void e0() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void f0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void g0(final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.a.l(new n0("", 0L, "", bean));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f52609i2.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void i0() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f52608h2;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void m0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void n0(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new f0("", 0L, "", bean, position, type));
    }

    @Override // com.join.mgps.activity.f2, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f52607g2);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f52611k2, this.f52610j2);
        getActivity().registerReceiver(this.f52613m2, this.f52612l2);
        getActivity().registerReceiver(this.f52615o2, this.f52614n2);
        getActivity().registerReceiver(this.f52617q2, this.f52616p2);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f52608h2 = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f52608h2 = inflater.inflate(R.layout.gamedetial_modle_three_activity, container, false);
        }
        return this.f52608h2;
    }

    @Override // com.join.mgps.activity.f2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f52611k2);
        getActivity().unregisterReceiver(this.f52613m2);
        getActivity().unregisterReceiver(this.f52615o2);
        getActivity().unregisterReceiver(this.f52617q2);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f52608h2 = null;
        this.f57156d = null;
        this.f57158e = null;
        this.f57160f = null;
        this.f57162g = null;
        this.f57163h = null;
        this.f57164i = null;
        this.f57166j = null;
        this.f57167k = null;
        this.f57168l = null;
        this.f57170m = null;
        this.f57171n = null;
        this.f57172o = null;
        this.f57173p = null;
        this.f57176q = null;
        this.f57178r = null;
        this.f57180s = null;
        this.f57181t = null;
        this.f57182u = null;
        this.f57183v = null;
        this.f57185w = null;
        this.f57186x = null;
        this.f57187y = null;
        this.f57188z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.f57184v1 = null;
        this.L1 = null;
        this.R1 = null;
        this.V1 = null;
        this.f57151a2 = null;
        this.f57153b2 = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57156d = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.f57158e = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.f57160f = (ImageView) hasViews.internalFindViewById(R.id.iv_back);
        this.f57162g = (ImageView) hasViews.internalFindViewById(R.id.search);
        this.f57163h = (ImageView) hasViews.internalFindViewById(R.id.share);
        this.f57164i = (ImageView) hasViews.internalFindViewById(R.id.downImage);
        this.f57166j = (ImageView) hasViews.internalFindViewById(R.id.followImage);
        this.f57167k = (TextView) hasViews.internalFindViewById(R.id.followButton);
        this.f57168l = (LinearLayout) hasViews.internalFindViewById(R.id.followLayout);
        this.f57170m = (LinearLayout) hasViews.internalFindViewById(R.id.layoutGift);
        this.f57171n = (RecyclerView) hasViews.internalFindViewById(R.id.recycleView);
        this.f57172o = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f57173p = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f57176q = (RelativeLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f57178r = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f57180s = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.f57181t = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        this.f57182u = (LinearLayout) hasViews.internalFindViewById(R.id.downloadLayout);
        this.f57183v = (RelativeLayout) hasViews.internalFindViewById(R.id.title_bar_layout);
        this.f57185w = (RelativeLayout) hasViews.internalFindViewById(R.id.downloadRLayout2);
        this.f57186x = (RelativeLayout) hasViews.internalFindViewById(R.id.titleTransfer);
        this.f57187y = (ImageView) hasViews.internalFindViewById(R.id.search_detial_back);
        this.f57188z = (ImageView) hasViews.internalFindViewById(R.id.download_bg);
        this.A = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.B = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.C = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.D = (RelativeLayout) hasViews.internalFindViewById(R.id.title);
        this.E = (SimpleDraweeView) hasViews.internalFindViewById(R.id.giftImage);
        this.F = (TextView) hasViews.internalFindViewById(R.id.giftContent);
        this.f57184v1 = (TextView) hasViews.internalFindViewById(R.id.biground);
        this.L1 = (ImageView) hasViews.internalFindViewById(R.id.downloadLine);
        this.R1 = (ImageView) hasViews.internalFindViewById(R.id.search_detial_image);
        this.V1 = (ImageView) hasViews.internalFindViewById(R.id.title_normal_search_img);
        this.f57151a2 = (ImageView) hasViews.internalFindViewById(R.id.imageLoading);
        this.f57153b2 = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.progress_layout);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.shareTwo);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new p0());
        }
        LinearLayout linearLayout = this.f57168l;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q0());
        }
        Button button = this.C;
        if (button != null) {
            button.setOnClickListener(new r0());
        }
        ImageView imageView = this.f57160f;
        if (imageView != null) {
            imageView.setOnClickListener(new s0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new t0());
        }
        ImageView imageView2 = this.f57187y;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new a());
        }
        TextView textView = this.f57172o;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new c());
        }
        LinearLayout linearLayout2 = this.f57182u;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new d());
        }
        CustomerDownloadView customerDownloadView = this.f57153b2;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new e());
        }
        ImageView imageView3 = this.f57164i;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new f());
        }
        ImageView imageView4 = this.f57163h;
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
        this.f52607g2.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void p0(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new g0("", 0L, "", bean, position, type));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f52609i2.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void r0(final InformationCommentBean bean) {
        org.androidannotations.api.a.l(new k0("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showMain(final List<CommentBaseBean> commitDataBeans) {
        org.androidannotations.api.b.e("", new o(commitDataBeans), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showProgress() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showToast(final String charSequence) {
        org.androidannotations.api.b.e("", new m(charSequence), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void u0(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new k(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void updateButn() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new t(result, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void v0(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new l(bean), 0L);
    }
}
