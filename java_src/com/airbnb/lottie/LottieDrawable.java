package com.airbnb.lottie;

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
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    private static final boolean U;
    private static final Executor V;
    private static final float W = 50.0f;
    public static final int X = 1;
    public static final int Y = 2;
    public static final int Z = -1;
    private final Matrix A;
    private Bitmap B;
    private Canvas C;
    private Rect D;
    private RectF E;
    private Paint F;
    private Rect G;
    private Rect H;
    private RectF I;
    private RectF J;
    private Matrix K;
    private Matrix L;
    private boolean M;

    @Nullable
    private AsyncUpdates N;
    private final ValueAnimator.AnimatorUpdateListener O;
    private final Semaphore P;
    private Handler Q;
    private Runnable R;
    private final Runnable S;
    private float T;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f5325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.utils.i f5326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OnVisibleAction f5330g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayList<b> f5331h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.manager.b f5332i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private String f5333j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private c f5334k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.manager.a f5335l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private Map<String, Typeface> f5336m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    String f5337n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    com.airbnb.lottie.b f5338o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    j1 f5339p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f5340q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f5341r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f5342s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.model.layer.c f5343t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f5344u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f5345v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f5346w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f5347x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RenderMode f5348y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f5349z;

    private enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends com.airbnb.lottie.value.j<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.l f5350d;

        a(com.airbnb.lottie.value.l lVar) {
            this.f5350d = lVar;
        }

        @Override // com.airbnb.lottie.value.j
        public T a(com.airbnb.lottie.value.b<T> bVar) {
            return (T) this.f5350d.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface b {
        void a(j jVar);
    }

    static {
        U = Build.VERSION.SDK_INT <= 25;
        V = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new com.airbnb.lottie.utils.g());
    }

    public LottieDrawable() {
        com.airbnb.lottie.utils.i iVar = new com.airbnb.lottie.utils.i();
        this.f5326c = iVar;
        this.f5327d = true;
        this.f5328e = false;
        this.f5329f = false;
        this.f5330g = OnVisibleAction.NONE;
        this.f5331h = new ArrayList<>();
        this.f5341r = false;
        this.f5342s = true;
        this.f5344u = 255;
        this.f5348y = RenderMode.AUTOMATIC;
        this.f5349z = false;
        this.A = new Matrix();
        this.M = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.f0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f5645b.r0(valueAnimator);
            }
        };
        this.O = animatorUpdateListener;
        this.P = new Semaphore(1);
        this.S = new Runnable() { // from class: com.airbnb.lottie.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f5931b.t0();
            }
        };
        this.T = -3.4028235E38f;
        iVar.addUpdateListener(animatorUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(String str, j jVar) {
        l1(str);
    }

    private void B() {
        j jVar = this.f5325b;
        if (jVar == null) {
            return;
        }
        this.f5349z = this.f5348y.useSoftwareRendering(Build.VERSION.SDK_INT, jVar.t(), jVar.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(String str, String str2, boolean z10, j jVar) {
        m1(str, str2, z10);
    }

    private void C(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(int i10, int i11, j jVar) {
        k1(i10, i11);
    }

    private boolean C1() {
        j jVar = this.f5325b;
        if (jVar == null) {
            return false;
        }
        float f10 = this.T;
        float fK = this.f5326c.k();
        this.T = fK;
        return Math.abs(fK - f10) * jVar.d() >= 50.0f;
    }

    private void D(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(float f10, float f11, j jVar) {
        n1(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(int i10, j jVar) {
        o1(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(String str, j jVar) {
        p1(str);
    }

    private void G(Canvas canvas) {
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        j jVar = this.f5325b;
        if (cVar == null || jVar == null) {
            return;
        }
        this.A.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.A.preScale(bounds.width() / jVar.b().width(), bounds.height() / jVar.b().height());
            this.A.preTranslate(bounds.left, bounds.top);
        }
        cVar.c(canvas, this.A, this.f5344u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G0(float f10, j jVar) {
        q1(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H0(float f10, j jVar) {
        t1(f10);
    }

    private void K(int i10, int i11) {
        Bitmap bitmap = this.B;
        if (bitmap == null || bitmap.getWidth() < i10 || this.B.getHeight() < i11) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            this.B = bitmapCreateBitmap;
            this.C.setBitmap(bitmapCreateBitmap);
            this.M = true;
            return;
        }
        if (this.B.getWidth() > i10 || this.B.getHeight() > i11) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.B, 0, 0, i10, i11);
            this.B = bitmapCreateBitmap2;
            this.C.setBitmap(bitmapCreateBitmap2);
            this.M = true;
        }
    }

    private void L() {
        if (this.C != null) {
            return;
        }
        this.C = new Canvas();
        this.J = new RectF();
        this.K = new Matrix();
        this.L = new Matrix();
        this.D = new Rect();
        this.E = new RectF();
        this.F = new com.airbnb.lottie.animation.a();
        this.G = new Rect();
        this.H = new Rect();
        this.I = new RectF();
    }

    private void Q0(Canvas canvas, com.airbnb.lottie.model.layer.c cVar) {
        if (this.f5325b == null || cVar == null) {
            return;
        }
        L();
        canvas.getMatrix(this.K);
        canvas.getClipBounds(this.D);
        C(this.D, this.E);
        this.K.mapRect(this.E);
        D(this.E, this.D);
        if (this.f5342s) {
            this.J.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            cVar.a(this.J, null, false);
        }
        this.K.mapRect(this.J);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        U0(this.J, fWidth, fHeight);
        if (!k0()) {
            RectF rectF = this.J;
            Rect rect = this.D;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.J.width());
        int iCeil2 = (int) Math.ceil(this.J.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            return;
        }
        K(iCeil, iCeil2);
        if (this.M) {
            this.A.set(this.K);
            this.A.preScale(fWidth, fHeight);
            Matrix matrix = this.A;
            RectF rectF2 = this.J;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.B.eraseColor(0);
            cVar.c(this.C, this.A, this.f5344u);
            this.K.invert(this.L);
            this.L.mapRect(this.I, this.J);
            D(this.I, this.H);
        }
        this.G.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.B, this.G, this.H, this.F);
    }

    private com.airbnb.lottie.manager.a R() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f5335l == null) {
            com.airbnb.lottie.manager.a aVar = new com.airbnb.lottie.manager.a(getCallback(), this.f5338o);
            this.f5335l = aVar;
            String str = this.f5337n;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f5335l;
    }

    private com.airbnb.lottie.manager.b U() {
        com.airbnb.lottie.manager.b bVar = this.f5332i;
        if (bVar != null && !bVar.c(getContext())) {
            this.f5332i = null;
        }
        if (this.f5332i == null) {
            this.f5332i = new com.airbnb.lottie.manager.b(getCallback(), this.f5333j, this.f5334k, this.f5325b.j());
        }
        return this.f5332i;
    }

    private void U0(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }

    @Nullable
    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private boolean k0() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        if (parent instanceof ViewGroup) {
            return !((ViewGroup) parent).getClipChildren();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(com.airbnb.lottie.model.d dVar, Object obj, com.airbnb.lottie.value.j jVar, j jVar2) {
        v(dVar, obj, jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(ValueAnimator valueAnimator) {
        if (N()) {
            invalidateSelf();
            return;
        }
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        if (cVar != null) {
            cVar.M(this.f5326c.k());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0() {
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        if (cVar == null) {
            return;
        }
        try {
            this.P.acquire();
            cVar.M(this.f5326c.k());
            if (U && this.M) {
                if (this.Q == null) {
                    this.Q = new Handler(Looper.getMainLooper());
                    this.R = new Runnable() { // from class: com.airbnb.lottie.i0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5661b.s0();
                        }
                    };
                }
                this.Q.post(this.R);
            }
        } catch (InterruptedException unused) {
        } finally {
            this.P.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(j jVar) {
        K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(j jVar) {
        S0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(int i10, j jVar) {
        c1(i10);
    }

    private boolean x() {
        return this.f5327d || this.f5328e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(String str, j jVar) {
        i1(str);
    }

    private void y() {
        j jVar = this.f5325b;
        if (jVar == null) {
            return;
        }
        com.airbnb.lottie.model.layer.c cVar = new com.airbnb.lottie.model.layer.c(this, com.airbnb.lottie.parser.v.a(jVar), jVar.k(), jVar);
        this.f5343t = cVar;
        if (this.f5346w) {
            cVar.K(true);
        }
        this.f5343t.S(this.f5342s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(int i10, j jVar) {
        h1(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(float f10, j jVar) {
        j1(f10);
    }

    public void A() {
        if (this.f5326c.isRunning()) {
            this.f5326c.cancel();
            if (!isVisible()) {
                this.f5330g = OnVisibleAction.NONE;
            }
        }
        this.f5325b = null;
        this.f5343t = null;
        this.f5332i = null;
        this.T = -3.4028235E38f;
        this.f5326c.i();
        invalidateSelf();
    }

    public void A1(j1 j1Var) {
        this.f5339p = j1Var;
    }

    public void B1(boolean z10) {
        this.f5326c.F(z10);
    }

    @Nullable
    public Bitmap D1(String str, @Nullable Bitmap bitmap) {
        com.airbnb.lottie.manager.b bVarU = U();
        if (bVarU == null) {
            com.airbnb.lottie.utils.f.e("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapF = bVarU.f(str, bitmap);
        invalidateSelf();
        return bitmapF;
    }

    @Deprecated
    public void E() {
    }

    public boolean E1() {
        return this.f5336m == null && this.f5339p == null && this.f5325b.c().size() > 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void F(Canvas canvas, Matrix matrix) {
        float fP;
        float fK;
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        j jVar = this.f5325b;
        if (cVar == null || jVar == null) {
            return;
        }
        boolean zN = N();
        if (zN) {
            try {
                this.P.acquire();
                if (C1()) {
                    t1(this.f5326c.k());
                }
            } catch (InterruptedException unused) {
                if (!zN) {
                    return;
                } else {
                    if ((fP > fK ? 1 : (fP == fK ? 0 : -1)) == 0) {
                        return;
                    }
                }
            } finally {
                if (zN) {
                    this.P.release();
                    if (cVar.P() != this.f5326c.k()) {
                        V.execute(this.S);
                    }
                }
            }
        }
        if (this.f5349z) {
            canvas.save();
            canvas.concat(matrix);
            Q0(canvas, cVar);
            canvas.restore();
        } else {
            cVar.c(canvas, matrix, this.f5344u);
        }
        this.M = false;
    }

    public void H(boolean z10) {
        if (this.f5340q == z10) {
            return;
        }
        this.f5340q = z10;
        if (this.f5325b != null) {
            y();
        }
    }

    public boolean I() {
        return this.f5340q;
    }

    @Deprecated
    public void I0(boolean z10) {
        this.f5326c.setRepeatCount(z10 ? -1 : 0);
    }

    @MainThread
    public void J() {
        this.f5331h.clear();
        this.f5326c.j();
        if (isVisible()) {
            return;
        }
        this.f5330g = OnVisibleAction.NONE;
    }

    public void J0() {
        this.f5331h.clear();
        this.f5326c.s();
        if (isVisible()) {
            return;
        }
        this.f5330g = OnVisibleAction.NONE;
    }

    @MainThread
    public void K0() {
        if (this.f5343t == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.k0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f5688a.u0(jVar);
                }
            });
            return;
        }
        B();
        if (x() || d0() == 0) {
            if (isVisible()) {
                this.f5326c.t();
                this.f5330g = OnVisibleAction.NONE;
            } else {
                this.f5330g = OnVisibleAction.PLAY;
            }
        }
        if (x()) {
            return;
        }
        c1((int) (f0() < 0.0f ? Z() : Y()));
        this.f5326c.j();
        if (isVisible()) {
            return;
        }
        this.f5330g = OnVisibleAction.NONE;
    }

    public void L0() {
        this.f5326c.removeAllListeners();
    }

    public AsyncUpdates M() {
        AsyncUpdates asyncUpdates = this.N;
        return asyncUpdates != null ? asyncUpdates : e.d();
    }

    public void M0() {
        this.f5326c.removeAllUpdateListeners();
        this.f5326c.addUpdateListener(this.O);
    }

    public boolean N() {
        return M() == AsyncUpdates.ENABLED;
    }

    public void N0(Animator.AnimatorListener animatorListener) {
        this.f5326c.removeListener(animatorListener);
    }

    @Nullable
    public Bitmap O(String str) {
        com.airbnb.lottie.manager.b bVarU = U();
        if (bVarU != null) {
            return bVarU.a(str);
        }
        return null;
    }

    @RequiresApi(api = 19)
    public void O0(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f5326c.removePauseListener(animatorPauseListener);
    }

    public boolean P() {
        return this.f5342s;
    }

    public void P0(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f5326c.removeUpdateListener(animatorUpdateListener);
    }

    public j Q() {
        return this.f5325b;
    }

    public List<com.airbnb.lottie.model.d> R0(com.airbnb.lottie.model.d dVar) {
        if (this.f5343t == null) {
            com.airbnb.lottie.utils.f.e("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f5343t.h(dVar, 0, arrayList, new com.airbnb.lottie.model.d(new String[0]));
        return arrayList;
    }

    public int S() {
        return (int) this.f5326c.l();
    }

    @MainThread
    public void S0() {
        if (this.f5343t == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.u0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f6090a.v0(jVar);
                }
            });
            return;
        }
        B();
        if (x() || d0() == 0) {
            if (isVisible()) {
                this.f5326c.x();
                this.f5330g = OnVisibleAction.NONE;
            } else {
                this.f5330g = OnVisibleAction.RESUME;
            }
        }
        if (x()) {
            return;
        }
        c1((int) (f0() < 0.0f ? Z() : Y()));
        this.f5326c.j();
        if (isVisible()) {
            return;
        }
        this.f5330g = OnVisibleAction.NONE;
    }

    @Nullable
    @Deprecated
    public Bitmap T(String str) {
        com.airbnb.lottie.manager.b bVarU = U();
        if (bVarU != null) {
            return bVarU.a(str);
        }
        j jVar = this.f5325b;
        x0 x0Var = jVar == null ? null : jVar.j().get(str);
        if (x0Var != null) {
            return x0Var.a();
        }
        return null;
    }

    public void T0() {
        this.f5326c.y();
    }

    @Nullable
    public String V() {
        return this.f5333j;
    }

    public void V0(boolean z10) {
        this.f5347x = z10;
    }

    @Nullable
    public x0 W(String str) {
        j jVar = this.f5325b;
        if (jVar == null) {
            return null;
        }
        return jVar.j().get(str);
    }

    public void W0(@Nullable AsyncUpdates asyncUpdates) {
        this.N = asyncUpdates;
    }

    public boolean X() {
        return this.f5341r;
    }

    public void X0(boolean z10) {
        if (z10 != this.f5342s) {
            this.f5342s = z10;
            com.airbnb.lottie.model.layer.c cVar = this.f5343t;
            if (cVar != null) {
                cVar.S(z10);
            }
            invalidateSelf();
        }
    }

    public float Y() {
        return this.f5326c.o();
    }

    public boolean Y0(j jVar) {
        if (this.f5325b == jVar) {
            return false;
        }
        this.M = true;
        A();
        this.f5325b = jVar;
        y();
        this.f5326c.z(jVar);
        t1(this.f5326c.getAnimatedFraction());
        Iterator it2 = new ArrayList(this.f5331h).iterator();
        while (it2.hasNext()) {
            b bVar = (b) it2.next();
            if (bVar != null) {
                bVar.a(jVar);
            }
            it2.remove();
        }
        this.f5331h.clear();
        jVar.z(this.f5345v);
        B();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public float Z() {
        return this.f5326c.p();
    }

    public void Z0(String str) {
        this.f5337n = str;
        com.airbnb.lottie.manager.a aVarR = R();
        if (aVarR != null) {
            aVarR.c(str);
        }
    }

    @Nullable
    public h1 a0() {
        j jVar = this.f5325b;
        if (jVar != null) {
            return jVar.o();
        }
        return null;
    }

    public void a1(com.airbnb.lottie.b bVar) {
        this.f5338o = bVar;
        com.airbnb.lottie.manager.a aVar = this.f5335l;
        if (aVar != null) {
            aVar.d(bVar);
        }
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float b0() {
        return this.f5326c.k();
    }

    public void b1(@Nullable Map<String, Typeface> map) {
        if (map == this.f5336m) {
            return;
        }
        this.f5336m = map;
        invalidateSelf();
    }

    public RenderMode c0() {
        return this.f5349z ? RenderMode.SOFTWARE : RenderMode.HARDWARE;
    }

    public void c1(final int i10) {
        if (this.f5325b == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.l0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f5691a.w0(i10, jVar);
                }
            });
        } else {
            this.f5326c.A(i10);
        }
    }

    public int d0() {
        return this.f5326c.getRepeatCount();
    }

    public void d1(boolean z10) {
        this.f5328e = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        float fP;
        float fK;
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        if (cVar == null) {
            return;
        }
        boolean zN = N();
        if (zN) {
            try {
                this.P.acquire();
            } catch (InterruptedException unused) {
                if (!zN) {
                    return;
                } else {
                    if ((fP > fK ? 1 : (fP == fK ? 0 : -1)) == 0) {
                        return;
                    }
                }
            } finally {
                e.c("Drawable#draw");
                if (zN) {
                    this.P.release();
                    if (cVar.P() != this.f5326c.k()) {
                        V.execute(this.S);
                    }
                }
            }
        }
        e.b("Drawable#draw");
        if (zN && C1()) {
            t1(this.f5326c.k());
        }
        if (this.f5329f) {
            try {
                if (this.f5349z) {
                    Q0(canvas, cVar);
                } else {
                    G(canvas);
                }
            } catch (Throwable th) {
                com.airbnb.lottie.utils.f.c("Lottie crashed in draw!", th);
            }
        } else if (this.f5349z) {
            Q0(canvas, cVar);
        } else {
            G(canvas);
        }
        this.M = false;
    }

    @SuppressLint({"WrongConstant"})
    public int e0() {
        return this.f5326c.getRepeatMode();
    }

    public void e1(c cVar) {
        this.f5334k = cVar;
        com.airbnb.lottie.manager.b bVar = this.f5332i;
        if (bVar != null) {
            bVar.e(cVar);
        }
    }

    public float f0() {
        return this.f5326c.q();
    }

    public void f1(@Nullable String str) {
        this.f5333j = str;
    }

    @Nullable
    public j1 g0() {
        return this.f5339p;
    }

    public void g1(boolean z10) {
        this.f5341r = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f5344u;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        j jVar = this.f5325b;
        if (jVar == null) {
            return -1;
        }
        return jVar.b().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        j jVar = this.f5325b;
        if (jVar == null) {
            return -1;
        }
        return jVar.b().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Typeface h0(com.airbnb.lottie.model.b bVar) {
        Map<String, Typeface> map = this.f5336m;
        if (map != null) {
            String strB = bVar.b();
            if (map.containsKey(strB)) {
                return map.get(strB);
            }
            String strC = bVar.c();
            if (map.containsKey(strC)) {
                return map.get(strC);
            }
            String str = bVar.b() + "-" + bVar.d();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.airbnb.lottie.manager.a aVarR = R();
        if (aVarR != null) {
            return aVarR.b(bVar);
        }
        return null;
    }

    public void h1(final int i10) {
        if (this.f5325b == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.t0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f6086a.y0(i10, jVar);
                }
            });
        } else {
            this.f5326c.B(i10 + 0.99f);
        }
    }

    public boolean i0() {
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        return cVar != null && cVar.Q();
    }

    public void i1(final String str) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.v0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f6128a.x0(str, jVar2);
                }
            });
            return;
        }
        com.airbnb.lottie.model.g gVarL = jVar.l(str);
        if (gVarL != null) {
            h1((int) (gVarL.f5857b + gVarL.f5858c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + com.join.mgps.Util.o0.f49827a);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.M) {
            return;
        }
        this.M = true;
        if ((!U || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return l0();
    }

    public boolean j0() {
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        return cVar != null && cVar.R();
    }

    public void j1(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) final float f10) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.j0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f5679a.z0(f10, jVar2);
                }
            });
        } else {
            this.f5326c.B(com.airbnb.lottie.utils.k.k(jVar.r(), this.f5325b.f(), f10));
        }
    }

    public void k1(final int i10, final int i11) {
        if (this.f5325b == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.m0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f5695a.C0(i10, i11, jVar);
                }
            });
        } else {
            this.f5326c.C(i10, i11 + 0.99f);
        }
    }

    public boolean l0() {
        com.airbnb.lottie.utils.i iVar = this.f5326c;
        if (iVar == null) {
            return false;
        }
        return iVar.isRunning();
    }

    public void l1(final String str) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.n0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f5924a.A0(str, jVar2);
                }
            });
            return;
        }
        com.airbnb.lottie.model.g gVarL = jVar.l(str);
        if (gVarL != null) {
            int i10 = (int) gVarL.f5857b;
            k1(i10, ((int) gVarL.f5858c) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + com.join.mgps.Util.o0.f49827a);
        }
    }

    boolean m0() {
        if (isVisible()) {
            return this.f5326c.isRunning();
        }
        OnVisibleAction onVisibleAction = this.f5330g;
        return onVisibleAction == OnVisibleAction.PLAY || onVisibleAction == OnVisibleAction.RESUME;
    }

    public void m1(final String str, final String str2, final boolean z10) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.w0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f6166a.B0(str, str2, z10, jVar2);
                }
            });
            return;
        }
        com.airbnb.lottie.model.g gVarL = jVar.l(str);
        if (gVarL == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + com.join.mgps.Util.o0.f49827a);
        }
        int i10 = (int) gVarL.f5857b;
        com.airbnb.lottie.model.g gVarL2 = this.f5325b.l(str2);
        if (gVarL2 != null) {
            k1(i10, (int) (gVarL2.f5857b + (z10 ? 1.0f : 0.0f)));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str2 + com.join.mgps.Util.o0.f49827a);
    }

    public boolean n0() {
        return this.f5347x;
    }

    public void n1(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) final float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) final float f11) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.q0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f6072a.D0(f10, f11, jVar2);
                }
            });
        } else {
            k1((int) com.airbnb.lottie.utils.k.k(jVar.r(), this.f5325b.f(), f10), (int) com.airbnb.lottie.utils.k.k(this.f5325b.r(), this.f5325b.f(), f11));
        }
    }

    public boolean o0() {
        return this.f5326c.getRepeatCount() == -1;
    }

    public void o1(final int i10) {
        if (this.f5325b == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.r0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f6075a.E0(i10, jVar);
                }
            });
        } else {
            this.f5326c.D(i10);
        }
    }

    public boolean p0() {
        return this.f5340q;
    }

    public void p1(final String str) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.g0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f5648a.F0(str, jVar2);
                }
            });
            return;
        }
        com.airbnb.lottie.model.g gVarL = jVar.l(str);
        if (gVarL != null) {
            o1((int) gVarL.f5857b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + com.join.mgps.Util.o0.f49827a);
    }

    public void q1(final float f10) {
        j jVar = this.f5325b;
        if (jVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.s0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f6080a.G0(f10, jVar2);
                }
            });
        } else {
            o1((int) com.airbnb.lottie.utils.k.k(jVar.r(), this.f5325b.f(), f10));
        }
    }

    public void r1(boolean z10) {
        if (this.f5346w == z10) {
            return;
        }
        this.f5346w = z10;
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        if (cVar != null) {
            cVar.K(z10);
        }
    }

    public void s(Animator.AnimatorListener animatorListener) {
        this.f5326c.addListener(animatorListener);
    }

    public void s1(boolean z10) {
        this.f5345v = z10;
        j jVar = this.f5325b;
        if (jVar != null) {
            jVar.z(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.f5344u = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        com.airbnb.lottie.utils.f.e("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean z12 = !isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            OnVisibleAction onVisibleAction = this.f5330g;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                K0();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                S0();
            }
        } else if (this.f5326c.isRunning()) {
            J0();
            this.f5330g = OnVisibleAction.RESUME;
        } else if (!z12) {
            this.f5330g = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        K0();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        J();
    }

    @RequiresApi(api = 19)
    public void t(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f5326c.addPauseListener(animatorPauseListener);
    }

    public void t1(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) final float f10) {
        if (this.f5325b == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.p0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar) {
                    this.f5934a.H0(f10, jVar);
                }
            });
            return;
        }
        e.b("Drawable#setProgress");
        this.f5326c.A(this.f5325b.h(f10));
        e.c("Drawable#setProgress");
    }

    public void u(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f5326c.addUpdateListener(animatorUpdateListener);
    }

    public void u1(RenderMode renderMode) {
        this.f5348y = renderMode;
        B();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public <T> void v(final com.airbnb.lottie.model.d dVar, final T t10, @Nullable final com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.model.layer.c cVar = this.f5343t;
        if (cVar == null) {
            this.f5331h.add(new b() { // from class: com.airbnb.lottie.h0
                @Override // com.airbnb.lottie.LottieDrawable.b
                public final void a(j jVar2) {
                    this.f5650a.q0(dVar, t10, jVar, jVar2);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (dVar == com.airbnb.lottie.model.d.f5850c) {
            cVar.g(t10, jVar);
        } else if (dVar.d() != null) {
            dVar.d().g(t10, jVar);
        } else {
            List<com.airbnb.lottie.model.d> listR0 = R0(dVar);
            for (int i10 = 0; i10 < listR0.size(); i10++) {
                listR0.get(i10).d().g(t10, jVar);
            }
            zIsEmpty = true ^ listR0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (t10 == b1.E) {
                t1(b0());
            }
        }
    }

    public void v1(int i10) {
        this.f5326c.setRepeatCount(i10);
    }

    public <T> void w(com.airbnb.lottie.model.d dVar, T t10, com.airbnb.lottie.value.l<T> lVar) {
        v(dVar, t10, new a(lVar));
    }

    public void w1(int i10) {
        this.f5326c.setRepeatMode(i10);
    }

    public void x1(boolean z10) {
        this.f5329f = z10;
    }

    public void y1(float f10) {
        this.f5326c.E(f10);
    }

    public void z() {
        this.f5331h.clear();
        this.f5326c.cancel();
        if (isVisible()) {
            return;
        }
        this.f5330g = OnVisibleAction.NONE;
    }

    public void z1(Boolean bool) {
        this.f5327d = bool.booleanValue();
    }
}
