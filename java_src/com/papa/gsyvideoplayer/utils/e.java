package com.papa.gsyvideoplayer.utils;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f76930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StandardGSYVideoPlayer f76931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f76932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewGroup f76933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewGroup f76934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewGroup.LayoutParams f76935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n f76936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m f76937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private g f76938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f76939j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f76940k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f76941l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f76942m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f76943n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f76944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f76945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Handler f76946q;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e eVar = e.this;
            eVar.J(eVar.f76931b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f76932c != null) {
                TransitionManager.beginDelayedTransition(e.this.f76932c);
            } else {
                TransitionManager.beginDelayedTransition(e.this.f76933d);
            }
            e eVar = e.this;
            eVar.I(eVar.f76931b);
            e.this.F(600);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.f76942m = false;
            e.this.E();
            if (e.this.f76932c != null) {
                e.this.f76932c.removeAllViews();
            }
            if (e.this.f76931b.getParent() != null) {
                ((ViewGroup) e.this.f76931b.getParent()).removeView(e.this.f76931b);
            }
            e.this.f76936g.I(false);
            e.this.f76931b.setIfCurrentIsFullscreen(false);
            if (e.this.f76932c != null) {
                e.this.f76932c.setBackgroundColor(0);
            }
            e.this.f76934e.addView(e.this.f76931b, e.this.f76935f);
            e.this.f76931b.getFullscreenButton().setImageResource(e.this.f76931b.getEnlargeImageRes());
            e.this.f76931b.getBackButton().setVisibility(8);
            e.this.f76931b.setIfCurrentIsFullscreen(false);
            e.this.f76931b.restartTimerTask();
            if (e.this.f76938i.q0() != null) {
                com.papa.gsyvideoplayer.utils.c.h("onQuitFullscreen");
                e.this.f76938i.q0().onQuitFullscreen(e.this.f76938i.p0(), e.this.f76938i.r0(), e.this.f76931b);
            }
            if (e.this.f76938i.v0()) {
                com.papa.gsyvideoplayer.utils.b.p(e.this.f76939j, e.this.f76941l);
            }
            com.papa.gsyvideoplayer.utils.b.q(e.this.f76939j, e.this.f76938i.u0(), e.this.f76938i.w0());
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f76950b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.L();
            }
        }

        d(GSYVideoPlayer gSYVideoPlayer) {
            this.f76950b = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(e.this.f76932c);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f76950b.getLayoutParams();
            layoutParams.setMargins(e.this.f76944o[0], e.this.f76944o[1], 0, 0);
            layoutParams.width = e.this.f76945p[0];
            layoutParams.height = e.this.f76945p[1];
            layoutParams.gravity = 0;
            this.f76950b.setLayoutParams(layoutParams);
            e.this.f76946q.postDelayed(new a(), 400L);
        }
    }

    /* JADX INFO: renamed from: com.papa.gsyvideoplayer.utils.e$e, reason: collision with other inner class name */
    class RunnableC0995e implements Runnable {
        RunnableC0995e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f76936g.r() != 1) {
                if (e.this.f76932c != null) {
                    e.this.f76932c.setBackgroundColor(-16777216);
                }
                e.this.f76936g.E();
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.u();
        }
    }

    public static class g extends com.papa.gsyvideoplayer.builder.a {
        protected boolean V;
        protected boolean W;

        public boolean A0() {
            return this.f76700p;
        }

        public boolean B0() {
            return this.f76706v;
        }

        public boolean C0() {
            return this.f76697m;
        }

        public boolean D0() {
            return this.f76698n;
        }

        public boolean E0() {
            return this.f76704t;
        }

        public boolean F0() {
            return this.f76709y;
        }

        public boolean G0() {
            return this.f76695k;
        }

        public boolean H0() {
            return this.f76703s;
        }

        public boolean I0() {
            return this.f76708x;
        }

        public boolean J0() {
            return this.f76707w;
        }

        public g K0(boolean z10) {
            this.V = z10;
            return this;
        }

        public g L0(boolean z10) {
            this.W = z10;
            return this;
        }

        public Drawable V() {
            return this.O;
        }

        public Drawable W() {
            return this.P;
        }

        public Drawable X() {
            return this.Q;
        }

        public File Y() {
            return this.J;
        }

        public Drawable Z() {
            return this.S;
        }

        public int a0() {
            return this.f76688d;
        }

        public int b0() {
            return this.f76689e;
        }

        public int c0() {
            return this.f76690f;
        }

        public GSYVideoGLView.c d0() {
            return this.T;
        }

        public int e0() {
            return this.f76686b;
        }

        public v7.d f0() {
            return this.U;
        }

        public v7.g g0() {
            return this.M;
        }

        public Map<String, String> h0() {
            return this.K;
        }

        public int i0() {
            return this.f76687c;
        }

        public String j0() {
            return this.E;
        }

        public long k0() {
            return this.f76691g;
        }

        public float l0() {
            return this.f76692h;
        }

        public int m0() {
            return this.f76685a;
        }

        public float n0() {
            return this.f76693i;
        }

        public View o0() {
            return this.N;
        }

        public String p0() {
            return this.F;
        }

        public v7.h q0() {
            return this.L;
        }

        public String r0() {
            return this.G;
        }

        public Drawable s0() {
            return this.R;
        }

        public boolean t0() {
            return this.f76705u;
        }

        public boolean u0() {
            return this.V;
        }

        public boolean v0() {
            return this.f76694j;
        }

        public boolean w0() {
            return this.W;
        }

        public boolean x0() {
            return this.f76701q;
        }

        public boolean y0() {
            return this.f76702r;
        }

        public boolean z0() {
            return this.f76699o;
        }
    }

    public e(Context context) {
        this(context, new StandardGSYVideoPlayer(context));
    }

    private boolean B(int i10, String str) {
        return this.f76940k == i10 && this.f76930a.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean E() {
        ViewGroup viewGroup = this.f76933d;
        if (viewGroup == null || viewGroup.indexOfChild(this.f76931b) == -1) {
            return false;
        }
        this.f76933d.removeView(this.f76931b);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(int i10) {
        if (this.f76938i.z0()) {
            if (i10 > 0) {
                this.f76946q.postDelayed(new RunnableC0995e(), i10);
            } else if (this.f76936g.r() != 1) {
                ViewGroup viewGroup = this.f76932c;
                if (viewGroup != null) {
                    viewGroup.setBackgroundColor(-16777216);
                }
                this.f76936g.E();
            }
        }
        this.f76931b.setIfCurrentIsFullscreen(true);
        this.f76931b.restartTimerTask();
        if (this.f76938i.q0() != null) {
            com.papa.gsyvideoplayer.utils.c.h("onEnterFullscreen");
            this.f76938i.q0().onEnterFullscreen(this.f76938i.p0(), this.f76938i.r0(), this.f76931b);
        }
    }

    private void G() {
        ViewGroup viewGroup;
        if (this.f76938i.G0() && (viewGroup = this.f76932c) != null) {
            viewGroup.setBackgroundColor(-16777216);
        }
        F(0);
        ViewGroup viewGroup2 = this.f76932c;
        if (viewGroup2 != null) {
            viewGroup2.addView(this.f76931b);
        } else {
            this.f76933d.addView(this.f76931b);
        }
    }

    private void H() {
        this.f76944o = new int[2];
        this.f76945p = new int[2];
        M(this.f76939j, this.f76938i.u0(), this.f76938i.w0());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this.f76939j);
        frameLayout.setBackgroundColor(-16777216);
        int[] iArr = this.f76945p;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iArr[0], iArr[1]);
        int[] iArr2 = this.f76944o;
        layoutParams2.setMargins(iArr2[0], iArr2[1], 0, 0);
        frameLayout.addView(this.f76931b, layoutParams2);
        ViewGroup viewGroup = this.f76932c;
        if (viewGroup != null) {
            viewGroup.addView(frameLayout, layoutParams);
        } else {
            this.f76933d.addView(frameLayout, layoutParams);
        }
        this.f76946q.postDelayed(new b(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(GSYVideoPlayer gSYVideoPlayer) {
        if (!this.f76938i.G0() || !(this.f76932c instanceof FrameLayout)) {
            L();
        } else {
            this.f76946q.postDelayed(new d(gSYVideoPlayer), this.f76936g.q());
        }
    }

    private void K() {
        this.f76941l = ((Activity) this.f76939j).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(this.f76939j, this.f76938i.u0(), this.f76938i.w0());
        if (this.f76938i.v0()) {
            com.papa.gsyvideoplayer.utils.b.k(this.f76939j);
        }
        this.f76942m = true;
        ViewGroup viewGroup = (ViewGroup) this.f76931b.getParent();
        this.f76935f = this.f76931b.getLayoutParams();
        if (viewGroup != null) {
            this.f76934e = viewGroup;
            viewGroup.removeView(this.f76931b);
        }
        this.f76931b.setIfCurrentIsFullscreen(true);
        this.f76931b.getFullscreenButton().setImageResource(this.f76931b.getShrinkImageRes());
        this.f76931b.getBackButton().setVisibility(0);
        n nVar = new n((Activity) this.f76939j, this.f76931b, this.f76937h);
        this.f76936g = nVar;
        nVar.I(this.f76938i.D0());
        this.f76931b.getBackButton().setOnClickListener(new a());
        if (!this.f76938i.G0()) {
            G();
        } else if (this.f76932c instanceof FrameLayout) {
            H();
        } else {
            G();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        int iQ = this.f76936g.q();
        if (!this.f76938i.G0()) {
            iQ = 0;
        }
        this.f76946q.postDelayed(new c(), iQ);
    }

    private void M(Context context, boolean z10, boolean z11) {
        this.f76934e.getLocationOnScreen(this.f76944o);
        int i10 = com.papa.gsyvideoplayer.utils.b.i(context);
        int iC = com.papa.gsyvideoplayer.utils.b.c((Activity) context);
        if (z10) {
            int[] iArr = this.f76944o;
            iArr[1] = iArr[1] - i10;
        }
        if (z11) {
            int[] iArr2 = this.f76944o;
            iArr2[1] = iArr2[1] - iC;
        }
        this.f76945p[0] = this.f76934e.getWidth();
        this.f76945p[1] = this.f76934e.getHeight();
    }

    private boolean z(int i10, String str) {
        return B(i10, str);
    }

    public boolean A() {
        return this.f76942m;
    }

    public boolean C() {
        return this.f76943n;
    }

    public void D() {
        E();
        ViewGroup viewGroup = (ViewGroup) this.f76931b.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        this.f76940k = -1;
        this.f76930a = "NULL";
        n nVar = this.f76936g;
        if (nVar != null) {
            nVar.D();
        }
    }

    public void N(ViewGroup viewGroup) {
        this.f76932c = viewGroup;
    }

    public void O(g gVar) {
        this.f76938i = gVar;
    }

    public void P(m mVar) {
        this.f76937h = mVar;
    }

    public void Q(int i10, String str) {
        this.f76940k = i10;
        this.f76930a = str;
    }

    public void R(Point point, boolean z10, boolean z11) {
        if (this.f76931b.getCurrentState() == 2) {
            this.f76931b.showSmallVideo(point, z10, z11);
            this.f76943n = true;
        }
    }

    public void S() {
        this.f76943n = false;
        this.f76931b.hideSmallVideo();
    }

    public void T() {
        if (C()) {
            S();
        }
        this.f76931b.release();
        g gVar = this.f76938i;
        if (gVar == null) {
            throw new NullPointerException("mVideoOptionBuilder can't be null");
        }
        gVar.a(this.f76931b);
        if (this.f76931b.getTitleTextView() != null) {
            this.f76931b.getTitleTextView().setVisibility(8);
        }
        if (this.f76931b.getBackButton() != null) {
            this.f76931b.getBackButton().setVisibility(8);
        }
        if (this.f76931b.getFullscreenButton() != null) {
            this.f76931b.getFullscreenButton().setOnClickListener(new f());
        }
        this.f76931b.startPlayLogic();
    }

    public void s(int i10, View view, String str, ViewGroup viewGroup, View view2) {
        viewGroup.removeAllViews();
        if (!z(i10, str)) {
            view2.setVisibility(0);
            viewGroup.removeAllViews();
            viewGroup.addView(view);
        } else {
            if (this.f76942m) {
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f76931b.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(this.f76931b);
            view2.setVisibility(4);
        }
    }

    public boolean t() {
        ViewGroup viewGroup = this.f76932c;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            J(this.f76931b);
            return true;
        }
        ViewGroup viewGroup2 = this.f76933d;
        if (viewGroup2 == null || viewGroup2.indexOfChild(this.f76931b) == -1) {
            return false;
        }
        J(this.f76931b);
        return true;
    }

    public void u() {
        if (this.f76942m) {
            J(this.f76931b);
        } else {
            K();
        }
    }

    public com.papa.gsyvideoplayer.builder.a v() {
        return this.f76938i;
    }

    public StandardGSYVideoPlayer w() {
        return this.f76931b;
    }

    public int x() {
        return this.f76940k;
    }

    public String y() {
        return this.f76930a;
    }

    public e(Context context, StandardGSYVideoPlayer standardGSYVideoPlayer) {
        this.f76930a = "NULL";
        this.f76940k = -1;
        this.f76946q = new Handler();
        this.f76931b = standardGSYVideoPlayer;
        this.f76939j = context;
        this.f76933d = (ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(R.id.content);
    }
}
