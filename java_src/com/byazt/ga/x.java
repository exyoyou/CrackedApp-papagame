package com.byazt.ga;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.byazt.fs.qy;
import com.bytedance.component.sdk.annotation.IntRange;
import com.bytedance.component.sdk.annotation.MainThread;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 71})
public class x extends Drawable implements Animatable, Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14424a;
    public LottieAnimationView aw;
    public Matrix bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14425c;
    public Rect cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Rect f14426d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final ArrayList<c> f14427da;
    public RectF eo;
    public boolean gr;
    public com.byazt.zk.uj gt;
    public boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Canvas f14428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public tt f14429i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public boolean f14430ic;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Map<String, Typeface> f14431m;
    public Bitmap md;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kk.sp f14432n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public RectF f14433nb;
    public boolean nu;
    public Rect or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Matrix f14434p;
    public Matrix pf;
    public RectF qp;
    public boolean qy;
    public boolean rh;
    public int rl;
    public final ValueAnimator.AnimatorUpdateListener sl;
    public boolean sp;
    public rl sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.pn.tt f14435t;
    public ve tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f14436u;
    public a uj;
    public gt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f14437x;
    public uj yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.pn.c f14438z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public Paint f14439zb;
    public my zm;

    private interface c {
        void c(a aVar);
    }

    private enum tt {
        NONE,
        PLAY,
        RESUME
    }

    public x(LottieAnimationView lottieAnimationView) {
        com.byazt.kk.sp spVar = new com.byazt.kk.sp();
        this.f14432n = spVar;
        this.f14424a = true;
        this.sp = false;
        this.f14437x = false;
        this.f14429i = tt.NONE;
        this.f14427da = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.x.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (x.this.gt != null) {
                    x.this.gt.c(x.this.f14432n.a());
                }
            }
        };
        this.sl = animatorUpdateListener;
        this.rh = false;
        this.my = true;
        this.rl = 255;
        this.zm = my.AUTOMATIC;
        this.yv = false;
        this.f14434p = new Matrix();
        this.f14430ic = false;
        this.aw = lottieAnimationView;
        spVar.addUpdateListener(animatorUpdateListener);
    }

    private com.byazt.pn.tt cu() {
        com.byazt.pn.tt ttVar = this.f14435t;
        if (ttVar != null && !ttVar.c(getContext())) {
            this.f14435t = null;
        }
        if (this.f14435t == null) {
            this.f14435t = new com.byazt.pn.tt(getCallback(), this.f14436u, this.yp, this.uj.nu());
        }
        return this.f14435t;
    }

    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private void nb() {
        if (this.f14428h != null) {
            return;
        }
        this.f14428h = new Canvas();
        this.f14433nb = new RectF();
        this.pf = new Matrix();
        this.bx = new Matrix();
        this.f14426d = new Rect();
        this.eo = new RectF();
        this.f14439zb = new com.byazt.xg.c();
        this.or = new Rect();
        this.cu = new Rect();
        this.qp = new RectF();
    }

    private boolean or() {
        return this.f14424a || this.sp;
    }

    private boolean pf() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        return (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren();
    }

    private com.byazt.pn.c qp() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f14438z == null) {
            com.byazt.pn.c cVar = new com.byazt.pn.c(getCallback(), this.tt);
            this.f14438z = cVar;
            String str = this.f14425c;
            if (str != null) {
                cVar.c(str);
            }
        }
        return this.f14438z;
    }

    private void zb() {
        a aVar = this.uj;
        if (aVar == null) {
            return;
        }
        this.yv = this.zm.c(Build.VERSION.SDK_INT, aVar.c(), aVar.tt());
    }

    public boolean a() {
        return this.rh;
    }

    public float d() {
        return this.f14432n.a();
    }

    public boolean da() {
        return this.gr;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        n.c("Drawable#draw");
        try {
            if (this.yv) {
                c(canvas, this.gt);
            } else {
                c(canvas);
            }
        } catch (Throwable th) {
            com.byazt.kk.a.tt("Lottie crashed in draw!", th);
        }
        this.f14430ic = false;
        n.tt("Drawable#draw");
    }

    public RectF eo() {
        return this.f14433nb;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.rl;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        a aVar = this.uj;
        if (aVar == null) {
            return -1;
        }
        return aVar.uj().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        a aVar = this.uj;
        if (aVar == null) {
            return -1;
        }
        return aVar.uj().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean gr() {
        if (isVisible()) {
            return this.f14432n.isRunning();
        }
        tt ttVar = this.f14429i;
        return ttVar == tt.PLAY || ttVar == tt.RESUME;
    }

    public int gt() {
        return (int) this.f14432n.sp();
    }

    public boolean gu() {
        com.byazt.kk.sp spVar = this.f14432n;
        if (spVar == null) {
            return false;
        }
        return spVar.isRunning();
    }

    public void h() {
        this.f14427da.clear();
        this.f14432n.u();
        if (isVisible()) {
            return;
        }
        this.f14429i = tt.NONE;
    }

    public rh i() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.ve();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f14430ic) {
            return;
        }
        this.f14430ic = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return gu();
    }

    public float m() {
        return this.f14432n.m();
    }

    public void md() {
        this.f14427da.clear();
        this.f14432n.cancel();
        if (isVisible()) {
            return;
        }
        this.f14429i = tt.NONE;
    }

    public void my() {
        this.f14432n.removeAllListeners();
    }

    public String n() {
        return this.f14436u;
    }

    public float nu() {
        return this.f14432n.da();
    }

    public a p() {
        return this.uj;
    }

    public int qy() {
        return this.f14432n.getRepeatCount();
    }

    public void rh() {
        this.f14432n.removeAllUpdateListeners();
        this.f14432n.addUpdateListener(this.sl);
    }

    @SuppressLint({"WrongConstant"})
    public int rl() {
        return this.f14432n.getRepeatMode();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.rl = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        com.byazt.kk.a.tt("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean z12 = !isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            tt ttVar = this.f14429i;
            if (ttVar == tt.PLAY) {
                t();
            } else if (ttVar == tt.RESUME) {
                yp();
            }
        } else if (this.f14432n.isRunning()) {
            h();
            this.f14429i = tt.RESUME;
        } else if (!z12) {
            this.f14429i = tt.NONE;
        }
        return visible;
    }

    public void sl() {
        if (this.f14432n.isRunning()) {
            this.f14432n.cancel();
            if (!isVisible()) {
                this.f14429i = tt.NONE;
            }
        }
        this.uj = null;
        com.byazt.zk.uj ujVar = this.gt;
        if (ujVar != null) {
            c(ujVar);
        }
        this.gt = null;
        this.f14435t = null;
        this.f14432n.x();
        invalidateSelf();
    }

    public my sp() {
        return this.yv ? my.SOFTWARE : my.HARDWARE;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        t();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        u();
    }

    @MainThread
    public void t() {
        if (this.gt == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.6
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.t();
                }
            });
            return;
        }
        zb();
        if (or() || qy() == 0) {
            if (isVisible()) {
                this.f14432n.sl();
                this.f14429i = tt.NONE;
            } else {
                this.f14429i = tt.PLAY;
            }
        }
        if (or()) {
            return;
        }
        ve((int) (nu() < 0.0f ? z() : m()));
        this.f14432n.t();
        if (isVisible()) {
            return;
        }
        this.f14429i = tt.NONE;
    }

    @MainThread
    public void u() {
        this.f14427da.clear();
        this.f14432n.t();
        if (isVisible()) {
            return;
        }
        this.f14429i = tt.NONE;
    }

    public boolean uj() {
        return this.my;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public com.byazt.zk.uj ve() {
        return this.gt;
    }

    public boolean x() {
        return this.yv;
    }

    @MainThread
    public void yp() {
        if (this.gt == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.7
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.yp();
                }
            });
            return;
        }
        zb();
        if (or() || qy() == 0) {
            if (isVisible()) {
                this.f14432n.yp();
                this.f14429i = tt.NONE;
            } else {
                this.f14429i = tt.RESUME;
            }
        }
        if (or()) {
            return;
        }
        ve((int) (nu() < 0.0f ? z() : m()));
        this.f14432n.t();
        if (isVisible()) {
            return;
        }
        this.f14429i = tt.NONE;
    }

    public boolean yv() {
        return this.f14431m == null && this.ve == null && this.uj.z().size() > 0;
    }

    public float z() {
        return this.f14432n.z();
    }

    public gt zm() {
        return this.ve;
    }

    public void a(boolean z10) {
        this.f14437x = z10;
    }

    public void c(rl rlVar) {
        this.sv = rlVar;
    }

    public void n(boolean z10) {
        this.gr = z10;
    }

    public void sp(boolean z10) {
        this.sp = z10;
    }

    public LottieAnimationView tt() {
        return this.aw;
    }

    public void uj(boolean z10) {
        if (this.gu == z10) {
            return;
        }
        this.gu = z10;
        com.byazt.zk.uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void ve(boolean z10) {
        this.qy = z10;
        a aVar = this.uj;
        if (aVar != null) {
            aVar.tt(z10);
        }
    }

    public void x(boolean z10) {
        this.f14432n.ve(z10);
    }

    public i a(String str) {
        a aVar = this.uj;
        if (aVar == null) {
            return null;
        }
        return aVar.nu().get(str);
    }

    public rl c() {
        return this.sv;
    }

    public void n(int i10) {
        this.f14432n.setRepeatCount(i10);
    }

    public void sp(String str) {
        this.f14425c = str;
        com.byazt.pn.c cVarQp = qp();
        if (cVarQp != null) {
            cVarQp.c(str);
        }
    }

    public void tt(boolean z10) {
        this.rh = z10;
    }

    public void c(boolean z10, Context context) {
        if (this.nu == z10) {
            return;
        }
        this.nu = z10;
        if (this.uj != null) {
            c(context);
        }
    }

    public Bitmap n(String str) {
        com.byazt.pn.tt ttVarCu = cu();
        if (ttVarCu != null) {
            return ttVarCu.c(str);
        }
        return null;
    }

    public void tt(final int i10) {
        if (this.uj == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.10
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.tt(i10);
                }
            });
        } else {
            this.f14432n.tt(i10 + 0.99f);
        }
    }

    public void ve(final String str) {
        a aVar = this.uj;
        if (aVar == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.13
                @Override // com.byazt.ga.x.c
                public void c(a aVar2) {
                    x.this.ve(str);
                }
            });
            return;
        }
        com.byazt.nb.sp spVarVe = aVar.ve(str);
        if (spVarVe != null) {
            tt((int) (spVarVe.f17074c + spVarVe.tt));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + o0.f49827a);
    }

    public void uj(final String str) {
        a aVar = this.uj;
        if (aVar == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.2
                @Override // com.byazt.ga.x.c
                public void c(a aVar2) {
                    x.this.uj(str);
                }
            });
            return;
        }
        com.byazt.nb.sp spVarVe = aVar.ve(str);
        if (spVarVe != null) {
            int i10 = (int) spVarVe.f17074c;
            c(i10, ((int) spVarVe.tt) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + o0.f49827a);
        }
    }

    public void tt(final float f10) {
        a aVar = this.uj;
        if (aVar == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.11
                @Override // com.byazt.ga.x.c
                public void c(a aVar2) {
                    x.this.tt(f10);
                }
            });
        } else {
            this.f14432n.tt(com.byazt.kk.i.c(aVar.a(), this.uj.sp(), f10));
        }
    }

    public void c(boolean z10) {
        if (z10 != this.my) {
            this.my = z10;
            com.byazt.zk.uj ujVar = this.gt;
            if (ujVar != null) {
                ujVar.tt(z10);
            }
            invalidateSelf();
        }
    }

    public void tt(final String str) {
        a aVar = this.uj;
        if (aVar == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.12
                @Override // com.byazt.ga.x.c
                public void c(a aVar2) {
                    x.this.tt(str);
                }
            });
            return;
        }
        com.byazt.nb.sp spVarVe = aVar.ve(str);
        if (spVarVe != null) {
            c((int) spVarVe.f17074c);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + o0.f49827a);
    }

    public void ve(float f10) {
        this.f14432n.ve(f10);
    }

    public void ve(final int i10) {
        if (this.uj == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.4
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.ve(i10);
                }
            });
        } else {
            this.f14432n.c(i10);
        }
    }

    public void uj(final float f10) {
        if (this.uj == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.5
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.uj(f10);
                }
            });
            return;
        }
        n.c("Drawable#setProgress");
        this.f14432n.c(this.uj.c(f10));
        n.tt("Drawable#setProgress");
    }

    public void c(String str) {
        this.f14436u = str;
    }

    public boolean c(a aVar, Context context) {
        if (this.uj == aVar) {
            return false;
        }
        this.f14430ic = true;
        sl();
        this.uj = aVar;
        c(context);
        this.f14432n.c(aVar);
        uj(this.f14432n.getAnimatedFraction());
        Iterator it2 = new ArrayList(this.f14427da).iterator();
        while (it2.hasNext()) {
            c cVar = (c) it2.next();
            if (cVar != null) {
                cVar.c(aVar);
            }
            it2.remove();
        }
        this.f14427da.clear();
        aVar.tt(this.qy);
        zb();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void tt(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f14432n.removeUpdateListener(animatorUpdateListener);
    }

    public void tt(Animator.AnimatorListener animatorListener) {
        this.f14432n.removeListener(animatorListener);
    }

    private void tt(int i10, int i11) {
        Bitmap bitmap = this.md;
        if (bitmap != null && bitmap.getWidth() >= i10 && this.md.getHeight() >= i11) {
            if (this.md.getWidth() > i10 || this.md.getHeight() > i11) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.md, 0, 0, i10, i11);
                this.md = bitmapCreateBitmap;
                this.f14428h.setBitmap(bitmapCreateBitmap);
                this.f14430ic = true;
                return;
            }
            return;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.md = bitmapCreateBitmap2;
        this.f14428h.setBitmap(bitmapCreateBitmap2);
        this.f14430ic = true;
    }

    public void uj(int i10) {
        this.f14432n.setRepeatMode(i10);
    }

    public void c(my myVar) {
        this.zm = myVar;
        zb();
    }

    private void c(Context context) {
        a aVar = this.uj;
        if (aVar == null) {
            return;
        }
        com.byazt.zk.uj ujVar = this.gt;
        if (ujVar != null) {
            c(ujVar);
        }
        com.byazt.zk.uj ujVar2 = new com.byazt.zk.uj(this, qy.c(aVar), aVar.yp(), aVar, context);
        this.gt = ujVar2;
        if (this.gu) {
            ujVar2.c(true);
        }
        this.gt.tt(this.my);
    }

    private void c(com.byazt.zk.uj ujVar) {
        if (ujVar != null) {
            ujVar.ve();
            List<com.byazt.zk.ve> listYp = ujVar.yp();
            if (listYp != null) {
                for (com.byazt.zk.ve veVar : listYp) {
                    if (veVar instanceof com.byazt.zk.uj) {
                        c((com.byazt.zk.uj) veVar);
                    } else if (veVar != null) {
                        veVar.ve();
                    }
                }
            }
        }
    }

    public void c(final int i10) {
        if (this.uj == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.8
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.c(i10);
                }
            });
        } else {
            this.f14432n.c(i10);
        }
    }

    public void c(final float f10) {
        a aVar = this.uj;
        if (aVar == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.9
                @Override // com.byazt.ga.x.c
                public void c(a aVar2) {
                    x.this.c(f10);
                }
            });
        } else {
            c((int) com.byazt.kk.i.c(aVar.a(), this.uj.sp(), f10));
        }
    }

    public void c(final int i10, final int i11) {
        if (this.uj == null) {
            this.f14427da.add(new c() { // from class: com.byazt.ga.x.3
                @Override // com.byazt.ga.x.c
                public void c(a aVar) {
                    x.this.c(i10, i11);
                }
            });
        } else {
            this.f14432n.c(i10, i11 + 0.99f);
        }
    }

    public void c(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f14432n.addUpdateListener(animatorUpdateListener);
    }

    public void c(Animator.AnimatorListener animatorListener) {
        this.f14432n.addListener(animatorListener);
    }

    public void c(Boolean bool) {
        this.f14424a = bool.booleanValue();
    }

    public void c(uj ujVar) {
        this.yp = ujVar;
        com.byazt.pn.tt ttVar = this.f14435t;
        if (ttVar != null) {
            ttVar.c(ujVar);
        }
    }

    public void c(ve veVar) {
        this.tt = veVar;
        com.byazt.pn.c cVar = this.f14438z;
        if (cVar != null) {
            cVar.c(veVar);
        }
    }

    public void c(Map<String, Typeface> map) {
        if (map == this.f14431m) {
            return;
        }
        this.f14431m = map;
        invalidateSelf();
    }

    public void c(gt gtVar) {
        this.ve = gtVar;
    }

    public Bitmap c(String str, Bitmap bitmap) {
        com.byazt.pn.tt ttVarCu = cu();
        if (ttVarCu == null) {
            com.byazt.kk.a.tt("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapC = ttVarCu.c(str, bitmap);
        invalidateSelf();
        return bitmapC;
    }

    public Typeface c(com.byazt.nb.ve veVar) {
        Map<String, Typeface> map = this.f14431m;
        if (map != null) {
            String strC = veVar.c();
            if (map.containsKey(strC)) {
                return map.get(strC);
            }
            String strTt = veVar.tt();
            if (map.containsKey(strTt)) {
                return map.get(strTt);
            }
            String str = veVar.c() + "-" + veVar.ve();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.byazt.pn.c cVarQp = qp();
        if (cVarQp != null) {
            return cVarQp.c(veVar);
        }
        return null;
    }

    private void c(Canvas canvas) {
        com.byazt.zk.uj ujVar = this.gt;
        a aVar = this.uj;
        if (ujVar == null || aVar == null) {
            return;
        }
        this.f14434p.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.f14434p.preScale(bounds.width() / aVar.uj().width(), bounds.height() / aVar.uj().height());
            this.f14434p.preTranslate(bounds.left, bounds.top);
        }
        ujVar.c(canvas, this.f14434p, this.rl);
    }

    private void c(Canvas canvas, com.byazt.zk.uj ujVar) {
        if (this.uj == null || ujVar == null) {
            return;
        }
        nb();
        canvas.getMatrix(this.pf);
        canvas.getClipBounds(this.f14426d);
        c(this.f14426d, this.eo);
        this.pf.mapRect(this.eo);
        c(this.eo, this.f14426d);
        if (this.my) {
            this.f14433nb.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            ujVar.c(this.f14433nb, (Matrix) null, false);
        }
        this.pf.mapRect(this.f14433nb);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        c(this.f14433nb, fWidth, fHeight);
        if (!pf()) {
            RectF rectF = this.f14433nb;
            Rect rect = this.f14426d;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.f14433nb.width());
        int iCeil2 = (int) Math.ceil(this.f14433nb.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        tt(iCeil, iCeil2);
        if (this.f14430ic) {
            this.f14434p.set(this.pf);
            this.f14434p.preScale(fWidth, fHeight);
            Matrix matrix = this.f14434p;
            RectF rectF2 = this.f14433nb;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.md.eraseColor(0);
            ujVar.c(this.f14428h, this.f14434p, this.rl);
            this.pf.invert(this.bx);
            this.bx.mapRect(this.qp, this.f14433nb);
            c(this.qp, this.cu);
        }
        this.or.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.md, this.or, this.cu, this.f14439zb);
    }

    private void c(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void c(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void c(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }
}
