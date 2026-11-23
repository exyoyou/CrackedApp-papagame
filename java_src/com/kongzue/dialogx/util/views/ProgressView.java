package com.kongzue.dialogx.util.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.b0;

/* JADX INFO: loaded from: classes3.dex */
public class ProgressView extends View implements b0 {
    public static long F = 300;
    public static long G = 1000;
    public static final int H = 0;
    public static final int I = 1;
    public static final int J = 2;
    public static final int K = 3;
    public static final int L = 4;
    private float A;
    private Interpolator B;
    Runnable C;
    private Runnable D;
    private boolean E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.kongzue.dialogx.util.f f74376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.kongzue.dialogx.util.f f74377f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f74378g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f74379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f74380i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f74381j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f74382k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Paint f74383l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f74384m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f74385n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f74386o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f74387p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RectF f74388q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f74389r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f74390s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f74391t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f74392u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f74393v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f74394w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f74395x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f74396y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ValueAnimator f74397z;

    class a implements com.kongzue.dialogx.util.f.b {
        a() {
        }

        @Override // com.kongzue.dialogx.util.f.b
        public void a(float f10) {
            ProgressView.this.f74378g = f10;
            ProgressView.this.invalidate();
        }
    }

    class b implements com.kongzue.dialogx.util.f.b {
        b() {
        }

        @Override // com.kongzue.dialogx.util.f.b
        public void a(float f10) {
            if (ProgressView.this.isAttachedToWindow()) {
                ProgressView.this.f74378g = f10;
                ProgressView.this.invalidate();
            }
        }
    }

    class c implements com.kongzue.dialogx.util.f.b {
        c() {
        }

        @Override // com.kongzue.dialogx.util.f.b
        public void a(float f10) {
            ProgressView.this.f74379h = f10;
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView.this.performHapticFeedback(0);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView.this.performHapticFeedback(3);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView.this.q(1, new AccelerateDecelerateInterpolator());
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView.this.q(2, new AccelerateInterpolator(2.0f));
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView.this.q(3, new DecelerateInterpolator(2.0f));
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressView progressView = ProgressView.this;
            progressView.q(progressView.f74373b, ProgressView.this.B);
        }
    }

    class j implements ValueAnimator.AnimatorUpdateListener {
        j() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ProgressView.this.A = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ProgressView.this.invalidate();
        }
    }

    public ProgressView(Context context) {
        super(context);
        this.f74373b = 0;
        this.f74374c = m(2.0f);
        this.f74375d = -1;
        this.f74380i = 180.0f;
        this.f74381j = 80.0f;
        this.f74383l = new Paint();
        this.f74384m = false;
        this.f74387p = 100.0f;
        this.f74389r = 0;
        this.f74393v = 0;
        this.f74394w = 0;
        this.f74395x = 0;
        this.f74396y = 0;
        p(null);
    }

    private long l(Context context) {
        float fO = o(context);
        if (fO > 0.0f) {
            return (long) (1000.0d / ((double) fO));
        }
        return 16L;
    }

    private int m(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    private void n(int i10, Canvas canvas) {
        Interpolator interpolatorV = this.f74376e.v();
        Interpolator interpolator = this.B;
        if (interpolatorV != interpolator) {
            this.f74376e.H(interpolator);
        }
        Runnable runnable = this.D;
        if (runnable != null) {
            runnable.run();
            this.D = null;
            if (DialogX.G) {
                if (i10 == 1) {
                    performHapticFeedback(3);
                } else if (i10 == 2) {
                    new Handler(Looper.getMainLooper()).postDelayed(new d(), (long) (F * 0.8f));
                } else if (i10 == 3) {
                    performHapticFeedback(3);
                    new Handler(Looper.getMainLooper()).postDelayed(new e(), (long) (F * 0.5f));
                }
            }
        }
        if (i10 == 1) {
            u(canvas);
        } else if (i10 == 2) {
            v(canvas);
        } else {
            if (i10 != 3) {
                return;
            }
            t(canvas);
        }
    }

    private float o(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            return ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay().getMode().getRefreshRate();
        }
        if (i10 >= 23) {
            return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
        }
        return 60.0f;
    }

    private void p(AttributeSet attributeSet) {
        synchronized (ProgressView.class) {
            if (this.f74384m) {
                return;
            }
            this.f74384m = true;
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ProgressView);
                this.f74374c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ProgressView_progressStrokeWidth, m(2.0f));
                this.f74375d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ProgressView_progressStrokeColor, this.f74375d);
                typedArrayObtainStyledAttributes.recycle();
            }
            this.f74383l.setAntiAlias(true);
            this.f74383l.setStyle(Paint.Style.STROKE);
            this.f74383l.setStrokeWidth(this.f74374c);
            this.f74383l.setStrokeCap(Paint.Cap.ROUND);
            this.f74383l.setColor(this.f74375d);
            if (!isInEditMode()) {
                int iL = (int) l(getContext());
                this.f74382k = (this.f74380i - this.f74381j) / 2.0f;
                com.kongzue.dialogx.util.f fVarC = com.kongzue.dialogx.util.f.C(0.0f, 365.0f);
                this.f74376e = fVarC;
                fVarC.E(1000L);
                this.f74376e.H(new LinearInterpolator());
                this.f74376e.K(-1);
                this.f74376e.J(iL);
                this.f74376e.p(new b());
                com.kongzue.dialogx.util.f fVarC2 = com.kongzue.dialogx.util.f.C(0.0f, 365.0f);
                this.f74377f = fVarC2;
                fVarC2.E(1500L);
                this.f74377f.J(iL);
                this.f74377f.H(new LinearInterpolator());
                this.f74377f.K(-1);
                this.f74377f.p(new c());
                this.f74377f.N();
                this.f74376e.N();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(int i10, Interpolator interpolator) {
        this.B = interpolator;
        this.f74373b = i10;
        if (this.f74389r == 0) {
            this.C = new i();
            return;
        }
        ValueAnimator valueAnimator = this.f74397z;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f74397z = null;
        }
        this.A = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f74397z = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(F);
        this.f74397z.addUpdateListener(new j());
        this.f74397z.start();
    }

    private void t(Canvas canvas) {
        float f10 = this.f74386o;
        float f11 = this.f74387p;
        int i10 = (int) (f10 - ((f11 * 4.0f) / 10.0f));
        int i11 = (int) (this.f74385n + ((f11 * 4.0f) / 10.0f));
        float f12 = this.A;
        if (f12 < 0.5f) {
            float f13 = i10;
            float f14 = i11 - i10;
            int i12 = (int) ((f12 * 2.0f * f14) + f13);
            this.f74393v = i12;
            int i13 = (int) ((f12 * 2.0f * f14) + f13);
            this.f74394w = i13;
            canvas.drawLine(f13, f13, i12, i13, this.f74383l);
            return;
        }
        float f15 = i10;
        float f16 = i11 - i10;
        this.f74393v = (int) ((f12 * 2.0f * f16) + f15);
        this.f74394w = (int) ((f12 * 2.0f * f16) + f15);
        float f17 = i11;
        canvas.drawLine(f15, f15, f17, f17, this.f74383l);
        float f18 = this.A;
        int i14 = (int) (f17 - (((f18 - 0.5f) * 2.0f) * f16));
        this.f74395x = i14;
        int i15 = (int) (((f18 - 0.5f) * 2.0f * f16) + f15);
        this.f74396y = i15;
        canvas.drawLine(f17, f15, i14, i15, this.f74383l);
    }

    private void u(Canvas canvas) {
        float f10 = this.f74387p;
        float f11 = this.f74385n;
        float f12 = (int) (f10 / 20.0f);
        int i10 = (int) ((f11 - (f10 / 10.0f)) - f12);
        int i11 = (int) (f11 - (f10 / 2.0f));
        int i12 = (int) (this.f74386o + f12);
        int i13 = (int) (f11 + (f10 / 2.0f));
        float f13 = i11;
        int i14 = (int) (((i13 - i11) * this.A) + f13);
        Path path = new Path();
        path.moveTo(f13, i12);
        if (i14 < i10) {
            this.f74393v = i14;
            int i15 = i12 + (i14 - i11);
            this.f74394w = i15;
            path.lineTo(i14, i15);
        } else {
            this.f74393v = i10;
            int i16 = i12 + (i10 - i11);
            this.f74394w = i16;
            path.lineTo(i10, i16);
            this.f74395x = i14;
            int i17 = this.f74394w - (i14 - this.f74393v);
            this.f74396y = i17;
            path.lineTo(i14, i17);
        }
        canvas.drawPath(path, this.f74383l);
    }

    private void v(Canvas canvas) {
        int i10 = (int) this.f74385n;
        float f10 = this.f74386o;
        float f11 = this.f74387p;
        int i11 = (int) (f10 - ((f11 * 1.0f) / 2.0f));
        int i12 = (int) (((1.0f * f11) / 8.0f) + f10);
        int i13 = (int) (f10 + ((f11 * 3.0f) / 7.0f));
        float f12 = this.A;
        if (f12 < 0.9f) {
            float f13 = i10;
            float f14 = i11;
            canvas.drawLine(f13, f14, f13, f14 + ((i12 - i11) * f12), this.f74383l);
        } else {
            float f15 = i10;
            canvas.drawLine(f15, i11, f15, i12, this.f74383l);
            canvas.drawLine(f15, i13, f15, i13 + 1, this.f74383l);
        }
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void a() {
        this.E = true;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void b() {
        if (this.f74373b != 4) {
            q(2, new AccelerateInterpolator(2.0f));
        } else {
            c(1.0f);
            this.C = new g();
        }
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void c(float f10) {
        com.kongzue.dialogx.util.f fVar = this.f74376e;
        if (fVar != null) {
            fVar.q();
        }
        com.kongzue.dialogx.util.f fVar2 = this.f74377f;
        if (fVar2 != null) {
            fVar2.q();
        }
        if (this.f74373b != 4) {
            this.f74378g = 0.0f;
        }
        this.E = false;
        this.f74373b = 4;
        com.kongzue.dialogx.util.f fVarC = com.kongzue.dialogx.util.f.C(this.f74378g, f10 * 365.0f);
        this.f74376e = fVarC;
        fVarC.E(G);
        this.f74376e.H(new DecelerateInterpolator(2.0f));
        this.f74376e.K(0);
        this.f74376e.p(new a());
        this.f74376e.N();
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void error() {
        if (this.f74373b != 4) {
            q(3, new DecelerateInterpolator(2.0f));
        } else {
            c(1.0f);
            this.C = new h();
        }
    }

    public int getColor() {
        return this.f74375d;
    }

    public int getStatus() {
        return this.f74373b;
    }

    public int getStrokeWidth() {
        return this.f74374c;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void loading() {
        this.E = false;
        this.f74389r = 0;
        this.f74393v = 0;
        this.f74394w = 0;
        this.f74395x = 0;
        this.f74396y = 0;
        this.f74373b = 0;
        com.kongzue.dialogx.util.f fVar = this.f74376e;
        if (fVar != null) {
            fVar.q();
        }
        com.kongzue.dialogx.util.f fVar2 = this.f74377f;
        if (fVar2 != null) {
            fVar2.q();
        }
        this.f74384m = false;
        p(null);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        com.kongzue.dialogx.util.f fVar = this.f74376e;
        if (fVar != null) {
            fVar.q();
        }
        com.kongzue.dialogx.util.f fVar2 = this.f74377f;
        if (fVar2 != null) {
            fVar2.q();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawArc(this.f74388q, 0.0f, 365.0f, false, this.f74383l);
            return;
        }
        if (this.E) {
            canvas.drawArc(this.f74388q, 0.0f, 365.0f, false, this.f74383l);
            this.f74389r = 2;
            n(this.f74373b, canvas);
            return;
        }
        int i10 = this.f74373b;
        if (i10 == 0) {
            float fSin = ((float) (((double) this.f74382k) * Math.sin(Math.toRadians(this.f74379h)))) + this.f74382k + (this.f74381j / 2.0f);
            float f10 = this.f74378g;
            float f11 = f10 - fSin;
            this.f74390s = f11;
            if (f11 < 0.0f) {
                this.f74390s = f11 + 360.0f;
            }
            this.f74391t = fSin;
            this.f74392u = fSin < 0.0f ? 360.0f - fSin : fSin;
            canvas.drawArc(this.f74388q, f10, -fSin, false, this.f74383l);
            return;
        }
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            int i11 = this.f74389r;
            if (i11 != 0) {
                if (i11 != 1) {
                    return;
                }
                canvas.drawArc(this.f74388q, 0.0f, 360.0f, false, this.f74383l);
                n(this.f74373b, canvas);
                return;
            }
            float f12 = this.f74391t + 5.0f;
            this.f74391t = f12;
            canvas.drawArc(this.f74388q, this.f74390s, f12, false, this.f74383l);
            if (this.f74391t - (360.0f - this.f74392u) >= this.f74390s) {
                this.f74389r = 1;
                Runnable runnable = this.C;
                if (runnable != null) {
                    runnable.run();
                    this.C = null;
                    return;
                }
                return;
            }
            return;
        }
        if (i10 != 4) {
            return;
        }
        int i12 = this.f74389r;
        if (i12 != 0) {
            if (i12 != 1) {
                return;
            }
            canvas.drawArc(this.f74388q, 0.0f, 360.0f, false, this.f74383l);
            n(this.f74373b, canvas);
            return;
        }
        canvas.drawArc(this.f74388q, -90.0f, this.f74378g, false, this.f74383l);
        if (this.f74378g == 365.0f) {
            this.f74389r = 1;
            Runnable runnable2 = this.C;
            if (runnable2 != null) {
                runnable2.run();
                this.C = null;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f74385n = (i10 * 1.0f) / 2.0f;
        this.f74386o = (i11 * 1.0f) / 2.0f;
        this.f74387p = (Math.min(getWidth(), getHeight()) / 2) - (this.f74374c / 2);
        float f10 = this.f74385n;
        float f11 = this.f74387p;
        float f12 = this.f74386o;
        this.f74388q = new RectF(f10 - f11, f12 - f11, f10 + f11, f12 + f11);
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public ProgressView e(int i10) {
        this.f74375d = i10;
        Paint paint = this.f74383l;
        if (paint != null) {
            paint.setColor(i10);
        }
        return this;
    }

    public ProgressView s(int i10) {
        this.f74374c = i10;
        Paint paint = this.f74383l;
        if (paint != null) {
            paint.setStrokeWidth(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void success() {
        if (this.f74373b != 4) {
            q(1, new AccelerateDecelerateInterpolator());
        } else {
            c(1.0f);
            this.C = new f();
        }
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public ProgressView d(Runnable runnable) {
        this.D = runnable;
        return this;
    }

    public ProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74373b = 0;
        this.f74374c = m(2.0f);
        this.f74375d = -1;
        this.f74380i = 180.0f;
        this.f74381j = 80.0f;
        this.f74383l = new Paint();
        this.f74384m = false;
        this.f74387p = 100.0f;
        this.f74389r = 0;
        this.f74393v = 0;
        this.f74394w = 0;
        this.f74395x = 0;
        this.f74396y = 0;
        p(attributeSet);
    }

    public ProgressView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74373b = 0;
        this.f74374c = m(2.0f);
        this.f74375d = -1;
        this.f74380i = 180.0f;
        this.f74381j = 80.0f;
        this.f74383l = new Paint();
        this.f74384m = false;
        this.f74387p = 100.0f;
        this.f74389r = 0;
        this.f74393v = 0;
        this.f74394w = 0;
        this.f74395x = 0;
        this.f74396y = 0;
        p(attributeSet);
    }
}
