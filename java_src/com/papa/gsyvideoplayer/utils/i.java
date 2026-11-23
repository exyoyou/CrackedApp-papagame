package com.papa.gsyvideoplayer.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StandardGSYVideoPlayer f77012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f77013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewGroup f77014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewGroup.LayoutParams f77015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n f77016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private v7.h f77017g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f77018h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f77019i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private File f77020j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f77021k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, String> f77022l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f77025o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f77026p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f77027q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f77028r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f77029s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f77030t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int[] f77034x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int[] f77035y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f77011a = "NULL";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f77023m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f77024n = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f77031u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f77032v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected boolean f77033w = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f77036z = true;
    private boolean A = true;
    private boolean B = true;
    private Handler C = new Handler();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.W();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i iVar = i.this;
            iVar.Z(iVar.f77012b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(i.this.f77013c);
            i iVar = i.this;
            iVar.Y(iVar.f77012b);
            i.this.U(600);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f77026p = false;
            i.this.f77013c.removeAllViews();
            if (i.this.f77012b.getParent() != null) {
                ((ViewGroup) i.this.f77012b.getParent()).removeView(i.this.f77012b);
            }
            i.this.f77016f.I(false);
            i.this.f77012b.setIfCurrentIsFullscreen(false);
            i.this.f77013c.setBackgroundColor(0);
            i.this.f77014d.addView(i.this.f77012b, i.this.f77015e);
            i.this.f77012b.getFullscreenButton().setImageResource(i.this.f77012b.getEnlargeImageRes());
            i.this.f77012b.getBackButton().setVisibility(8);
            i.this.f77012b.setIfCurrentIsFullscreen(false);
            if (i.this.f77017g != null) {
                com.papa.gsyvideoplayer.utils.c.h("onQuitFullscreen");
                i.this.f77017g.onQuitFullscreen(i.this.f77018h, i.this.f77021k, i.this.f77012b);
            }
            if (i.this.f77031u) {
                com.papa.gsyvideoplayer.utils.b.p(i.this.f77019i, i.this.f77025o);
            }
            com.papa.gsyvideoplayer.utils.b.q(i.this.f77019i, i.this.f77029s, i.this.f77028r);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f77041b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i.this.b0();
            }
        }

        e(GSYVideoPlayer gSYVideoPlayer) {
            this.f77041b = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(i.this.f77013c);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f77041b.getLayoutParams();
            layoutParams.setMargins(i.this.f77034x[0], i.this.f77034x[1], 0, 0);
            layoutParams.width = i.this.f77035y[0];
            layoutParams.height = i.this.f77035y[1];
            layoutParams.gravity = 0;
            this.f77041b.setLayoutParams(layoutParams);
            i.this.C.postDelayed(new a(), 400L);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.f77016f.r() != 1) {
                i.this.f77016f.E();
            }
        }
    }

    public i(Context context) {
        this.f77012b = new StandardGSYVideoPlayer(context);
        this.f77019i = context;
    }

    private boolean H(int i10, String str) {
        return Q(i10, str);
    }

    private boolean Q(int i10, String str) {
        return this.f77023m == i10 && this.f77011a.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(int i10) {
        if (J()) {
            this.C.postDelayed(new f(), i10);
        }
        this.f77012b.setIfCurrentIsFullscreen(true);
        if (this.f77017g != null) {
            com.papa.gsyvideoplayer.utils.c.h("onEnterFullscreen");
            this.f77017g.onEnterFullscreen(this.f77018h, this.f77021k, this.f77012b);
        }
    }

    private void V() {
        this.f77013c.setBackgroundColor(-16777216);
        this.f77013c.addView(this.f77012b);
        U(50);
    }

    private void X() {
        this.f77034x = new int[2];
        this.f77035y = new int[2];
        c0(this.f77019i, this.f77028r, this.f77029s);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this.f77019i);
        frameLayout.setBackgroundColor(-16777216);
        int[] iArr = this.f77035y;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iArr[0], iArr[1]);
        int[] iArr2 = this.f77034x;
        layoutParams2.setMargins(iArr2[0], iArr2[1], 0, 0);
        frameLayout.addView(this.f77012b, layoutParams2);
        this.f77013c.addView(frameLayout, layoutParams);
        this.C.postDelayed(new c(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(GSYVideoPlayer gSYVideoPlayer) {
        if (!this.B || !(this.f77013c instanceof FrameLayout)) {
            b0();
        } else {
            this.C.postDelayed(new e(gSYVideoPlayer), this.f77016f.q());
        }
    }

    private void a0() {
        this.f77025o = ((Activity) this.f77019i).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(this.f77019i, this.f77029s, this.f77028r);
        if (this.f77031u) {
            com.papa.gsyvideoplayer.utils.b.k(this.f77019i);
        }
        this.f77026p = true;
        ViewGroup viewGroup = (ViewGroup) this.f77012b.getParent();
        this.f77015e = this.f77012b.getLayoutParams();
        if (viewGroup != null) {
            this.f77014d = viewGroup;
            viewGroup.removeView(this.f77012b);
        }
        this.f77012b.setIfCurrentIsFullscreen(true);
        this.f77012b.getFullscreenButton().setImageResource(this.f77012b.getShrinkImageRes());
        this.f77012b.getBackButton().setVisibility(0);
        n nVar = new n((Activity) this.f77019i, this.f77012b);
        this.f77016f = nVar;
        nVar.I(G());
        this.f77012b.getBackButton().setOnClickListener(new b());
        if (!this.B) {
            V();
        } else if (this.f77013c instanceof FrameLayout) {
            X();
        } else {
            V();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        this.C.postDelayed(new d(), this.f77016f.q());
    }

    private void c0(Context context, boolean z10, boolean z11) {
        this.f77014d.getLocationOnScreen(this.f77034x);
        int i10 = com.papa.gsyvideoplayer.utils.b.i(context);
        int iC = com.papa.gsyvideoplayer.utils.b.c((Activity) context);
        if (z10) {
            int[] iArr = this.f77034x;
            iArr[1] = iArr[1] - i10;
        }
        if (z11) {
            int[] iArr2 = this.f77034x;
            iArr2[1] = iArr2[1] - iC;
        }
        this.f77035y[0] = this.f77014d.getWidth();
        this.f77035y[1] = this.f77014d.getHeight();
    }

    public StandardGSYVideoPlayer A() {
        return this.f77012b;
    }

    public Map<String, String> B() {
        return this.f77022l;
    }

    public int C() {
        return this.f77023m;
    }

    public String D() {
        return this.f77011a;
    }

    public int E() {
        return this.f77024n;
    }

    public String F() {
        return this.f77021k;
    }

    public boolean G() {
        return this.A;
    }

    public boolean I() {
        return this.f77026p;
    }

    public boolean J() {
        return this.f77036z;
    }

    public boolean K() {
        return this.f77029s;
    }

    public boolean L() {
        return this.f77031u;
    }

    public boolean M() {
        return this.f77028r;
    }

    public boolean N() {
        return this.f77030t;
    }

    public boolean O() {
        return this.f77032v;
    }

    public boolean P() {
        return this.f77033w;
    }

    public boolean R() {
        return this.B;
    }

    public boolean S() {
        return this.f77027q;
    }

    public void T() {
        ViewGroup viewGroup = (ViewGroup) this.f77012b.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        this.f77023m = -1;
        this.f77011a = "NULL";
        n nVar = this.f77016f;
        if (nVar != null) {
            nVar.D();
        }
    }

    public void W() {
        if (this.f77013c == null) {
            return;
        }
        if (this.f77026p) {
            Z(this.f77012b);
        } else {
            a0();
        }
    }

    public void d0(boolean z10) {
        this.A = z10;
    }

    public void e0(File file) {
        this.f77020j = file;
    }

    public void f0(boolean z10) {
        this.f77036z = z10;
    }

    public void g0(ViewGroup viewGroup) {
        this.f77013c = viewGroup;
    }

    public void h0(boolean z10) {
        this.f77029s = z10;
    }

    public void i0(boolean z10) {
        this.f77031u = z10;
    }

    public void j0(boolean z10) {
        this.f77028r = z10;
    }

    public void k0(boolean z10) {
        this.f77030t = z10;
    }

    public void l0(Map<String, String> map) {
        this.f77022l = map;
    }

    public void m0(boolean z10) {
        this.f77032v = z10;
    }

    public void n0(boolean z10) {
        this.f77033w = z10;
    }

    public void o0(int i10, String str) {
        this.f77023m = i10;
        this.f77011a = str;
    }

    public void p0(boolean z10) {
        this.B = z10;
    }

    public void q0(int i10) {
        this.f77024n = i10;
    }

    public void r0(String str) {
        this.f77021k = str;
    }

    public void s0(v7.h hVar) {
        this.f77017g = hVar;
        this.f77012b.setVideoAllCallBack(hVar);
    }

    public void t0(Point point, boolean z10, boolean z11) {
        if (this.f77012b.getCurrentState() == 2) {
            this.f77012b.showSmallVideo(point, z10, z11);
            this.f77027q = true;
        }
    }

    public void u0() {
        this.f77027q = false;
        this.f77012b.hideSmallVideo();
    }

    public void v(int i10, View view, String str, ViewGroup viewGroup, View view2) {
        viewGroup.removeAllViews();
        if (!H(i10, str)) {
            view2.setVisibility(0);
            viewGroup.removeAllViews();
            viewGroup.addView(view);
        } else {
            if (this.f77026p) {
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f77012b.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(this.f77012b);
            view2.setVisibility(4);
        }
    }

    public void v0(String str) {
        if (S()) {
            u0();
        }
        this.f77018h = str;
        this.f77012b.release();
        this.f77012b.setLooping(this.f77030t);
        this.f77012b.setSpeed(this.f77024n);
        this.f77012b.setNeedShowWifiTip(this.f77033w);
        this.f77012b.setNeedLockFull(this.f77032v);
        this.f77012b.setUp(str, true, this.f77020j, this.f77022l, this.f77021k);
        if (!TextUtils.isEmpty(this.f77021k)) {
            this.f77012b.getTitleTextView().setText(this.f77021k);
        }
        this.f77012b.getTitleTextView().setVisibility(8);
        this.f77012b.getBackButton().setVisibility(8);
        this.f77012b.getFullscreenButton().setOnClickListener(new a());
        this.f77012b.startPlayLogic();
    }

    public boolean w() {
        if (this.f77013c.getChildCount() <= 0) {
            return false;
        }
        Z(this.f77012b);
        return true;
    }

    public File x() {
        return this.f77020j;
    }

    public int y() {
        return this.f77012b.getCurrentPositionWhenPlaying();
    }

    public int z() {
        return this.f77012b.getDuration();
    }
}
