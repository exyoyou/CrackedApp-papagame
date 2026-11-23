package com.papa.gsyvideoplayer.builder;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.haima.hmcp.volley.DefaultRetryPolicy;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.io.File;
import java.util.Map;
import v7.d;
import v7.g;
import v7.h;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    protected String F;
    protected String H;
    protected File J;
    protected Map<String, String> K;
    protected h L;
    protected g M;
    protected View N;
    protected Drawable O;
    protected Drawable P;
    protected Drawable Q;
    protected Drawable R;
    protected Drawable S;
    protected d U;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f76705u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f76706v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected boolean f76707w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected boolean f76708x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f76685a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f76686b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f76687c = -22;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f76688d = -11;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f76689e = -11;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f76690f = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected long f76691g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected float f76692h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected float f76693i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f76694j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f76695k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f76696l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f76697m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f76698n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f76699o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f76700p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f76701q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f76702r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f76703s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f76704t = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected boolean f76709y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected boolean f76710z = true;
    protected boolean A = true;
    protected boolean B = false;
    protected boolean C = false;
    protected boolean D = false;
    protected String E = "";
    protected String G = null;
    private boolean I = false;
    protected GSYVideoGLView.c T = new q();

    public a A(String str) {
        this.H = str;
        return this;
    }

    public a B(int i10) {
        this.f76687c = i10;
        return this;
    }

    public a C(String str) {
        this.E = str;
        return this;
    }

    public a D(boolean z10) {
        this.A = z10;
        return this;
    }

    public a E(boolean z10) {
        this.f76698n = z10;
        return this;
    }

    public a F(boolean z10) {
        this.f76704t = z10;
        return this;
    }

    public a G(long j10) {
        this.f76691g = j10;
        return this;
    }

    public a H(float f10) {
        if (f10 < 0.0f) {
            return this;
        }
        this.f76692h = f10;
        return this;
    }

    @Deprecated
    public a I(boolean z10) {
        this.f76709y = z10;
        return this;
    }

    public a J(boolean z10) {
        this.D = z10;
        return this;
    }

    public a K(boolean z10) {
        this.f76695k = z10;
        return this;
    }

    public a L(boolean z10) {
        this.f76703s = z10;
        return this;
    }

    public a M(int i10) {
        this.f76685a = i10;
        return this;
    }

    public a N(boolean z10) {
        this.f76708x = z10;
        return this;
    }

    public a O(float f10) {
        this.f76693i = f10;
        return this;
    }

    public a P(boolean z10) {
        this.f76710z = z10;
        return this;
    }

    public a Q(View view) {
        this.N = view;
        return this;
    }

    public a R(boolean z10) {
        this.f76707w = z10;
        return this;
    }

    public a S(String str) {
        this.F = str;
        return this;
    }

    public a T(h hVar) {
        this.L = hVar;
        return this;
    }

    public a U(String str) {
        this.G = str;
        return this;
    }

    public void a(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i10;
        Drawable drawable;
        Drawable drawable2 = this.P;
        if (drawable2 != null && (drawable = this.Q) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable2, drawable);
        }
        Drawable drawable3 = this.O;
        if (drawable3 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable3);
        }
        Drawable drawable4 = this.R;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.S;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i11 = this.f76688d;
        if (i11 > 0 && (i10 = this.f76689e) > 0) {
            standardGSYVideoPlayer.setDialogProgressColor(i11, i10);
        }
        b(standardGSYVideoPlayer);
    }

    public void b(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        gSYBaseVideoPlayer.setPlayTag(this.E);
        gSYBaseVideoPlayer.setPlayPosition(this.f76687c);
        gSYBaseVideoPlayer.setThumbPlay(this.f76707w);
        View view = this.N;
        if (view != null) {
            gSYBaseVideoPlayer.setThumbImageView(view);
        }
        gSYBaseVideoPlayer.setNeedLockFull(this.f76706v);
        g gVar = this.M;
        if (gVar != null) {
            gSYBaseVideoPlayer.setLockClickListener(gVar);
        }
        gSYBaseVideoPlayer.setDismissControlTime(this.f76690f);
        long j10 = this.f76691g;
        if (j10 > 0) {
            gSYBaseVideoPlayer.setSeekOnStart(j10);
        }
        gSYBaseVideoPlayer.setShowFullAnimation(this.f76695k);
        gSYBaseVideoPlayer.setLooping(this.f76700p);
        h hVar = this.L;
        if (hVar != null) {
            gSYBaseVideoPlayer.setVideoAllCallBack(hVar);
        }
        d dVar = this.U;
        if (dVar != null) {
            gSYBaseVideoPlayer.setGSYVideoProgressListener(dVar);
        }
        gSYBaseVideoPlayer.setOverrideExtension(this.H);
        gSYBaseVideoPlayer.setAutoFullWithSize(this.f76696l);
        gSYBaseVideoPlayer.setRotateViewAuto(this.f76698n);
        gSYBaseVideoPlayer.setOnlyRotateLand(this.I);
        gSYBaseVideoPlayer.setLockLand(this.f76699o);
        gSYBaseVideoPlayer.setSpeed(this.f76693i, this.f76708x);
        gSYBaseVideoPlayer.setHideKey(this.f76694j);
        gSYBaseVideoPlayer.setIsTouchWiget(this.f76701q);
        gSYBaseVideoPlayer.setIsTouchWigetFull(this.f76702r);
        gSYBaseVideoPlayer.setNeedShowWifiTip(this.f76697m);
        gSYBaseVideoPlayer.setEffectFilter(this.T);
        gSYBaseVideoPlayer.setStartAfterPrepared(this.f76710z);
        gSYBaseVideoPlayer.setReleaseWhenLossAudio(this.A);
        gSYBaseVideoPlayer.setFullHideActionBar(this.B);
        gSYBaseVideoPlayer.setShowDragProgressTextOnSeekBar(this.D);
        gSYBaseVideoPlayer.setFullHideStatusBar(this.C);
        int i10 = this.f76686b;
        if (i10 > 0) {
            gSYBaseVideoPlayer.setEnlargeImageRes(i10);
        }
        int i11 = this.f76685a;
        if (i11 > 0) {
            gSYBaseVideoPlayer.setShrinkImageRes(i11);
        }
        gSYBaseVideoPlayer.setShowPauseCover(this.f76703s);
        gSYBaseVideoPlayer.setSeekRatio(this.f76692h);
        gSYBaseVideoPlayer.setRotateWithSystem(this.f76704t);
        if (this.f76709y) {
            gSYBaseVideoPlayer.setUpLazy(this.F, this.f76705u, this.J, this.K, this.G);
        } else {
            gSYBaseVideoPlayer.setUp(this.F, this.f76705u, this.J, this.K, this.G);
        }
    }

    public a c(boolean z10) {
        this.f76696l = z10;
        return this;
    }

    public a d(Drawable drawable) {
        this.O = drawable;
        return this;
    }

    public a e(Drawable drawable, Drawable drawable2) {
        this.P = drawable;
        this.Q = drawable2;
        return this;
    }

    public a f(File file) {
        this.J = file;
        return this;
    }

    public a g(boolean z10) {
        this.f76705u = z10;
        return this;
    }

    public a h(Drawable drawable) {
        this.S = drawable;
        return this;
    }

    public a i(int i10, int i11) {
        this.f76688d = i10;
        this.f76689e = i11;
        return this;
    }

    public a j(Drawable drawable) {
        this.R = drawable;
        return this;
    }

    public a k(int i10) {
        this.f76690f = i10;
        return this;
    }

    public a l(GSYVideoGLView.c cVar) {
        this.T = cVar;
        return this;
    }

    public a m(int i10) {
        this.f76686b = i10;
        return this;
    }

    public a n(boolean z10) {
        this.B = z10;
        return this;
    }

    public a o(boolean z10) {
        this.C = z10;
        return this;
    }

    public a p(d dVar) {
        this.U = dVar;
        return this;
    }

    public a q(boolean z10) {
        this.f76694j = z10;
        return this;
    }

    public a r(boolean z10) {
        this.f76701q = z10;
        return this;
    }

    public a s(boolean z10) {
        this.f76702r = z10;
        return this;
    }

    public a t(g gVar) {
        this.M = gVar;
        return this;
    }

    public a u(boolean z10) {
        this.f76699o = z10;
        return this;
    }

    public a v(boolean z10) {
        this.f76700p = z10;
        return this;
    }

    public a w(Map<String, String> map) {
        this.K = map;
        return this;
    }

    public a x(boolean z10) {
        this.f76706v = z10;
        return this;
    }

    public a y(boolean z10) {
        this.f76697m = z10;
        return this;
    }

    public a z(boolean z10) {
        this.I = z10;
        return this;
    }
}
