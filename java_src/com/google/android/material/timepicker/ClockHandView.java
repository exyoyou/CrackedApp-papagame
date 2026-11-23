package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.R;
import com.google.android.material.internal.p0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f32313w = 200;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f32314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeInterpolator f32315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ValueAnimator f32316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f32318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f32319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f32320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f32321i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f32322j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List<c> f32323k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f32324l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f32325m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Paint f32326n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RectF f32327o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Px
    private final int f32328p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f32329q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f32330r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b f32331s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double f32332t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f32333u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f32334v;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface b {
        void b(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    public interface c {
        void e(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void c(float f10, float f11) {
        this.f32334v = z4.a.a((float) (getWidth() / 2), (float) (getHeight() / 2), f10, f11) > ((float) i(2)) + p0.i(getContext(), 12) ? 1 : 2;
    }

    private void d(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i10 = i(this.f32334v);
        float f10 = width;
        float f11 = i10;
        float fCos = (((float) Math.cos(this.f32332t)) * f11) + f10;
        float f12 = height;
        float fSin = (f11 * ((float) Math.sin(this.f32332t))) + f12;
        this.f32326n.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f32324l, this.f32326n);
        double dSin = Math.sin(this.f32332t);
        double dCos = Math.cos(this.f32332t);
        double d10 = i10 - this.f32324l;
        this.f32326n.setStrokeWidth(this.f32328p);
        canvas.drawLine(f10, f12, width + ((int) (dCos * d10)), height + ((int) (d10 * dSin)), this.f32326n);
        canvas.drawCircle(f10, f12, this.f32325m, this.f32326n);
    }

    private int g(float f10, float f11) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL : degrees;
    }

    @Dimension
    private int i(int i10) {
        return i10 == 2 ? Math.round(this.f32333u * 0.66f) : this.f32333u;
    }

    private Pair<Float, Float> k(float f10) {
        float fH = h();
        if (Math.abs(fH - f10) > 180.0f) {
            if (fH > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (fH < 180.0f && f10 > 180.0f) {
                fH += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(fH), Float.valueOf(f10));
    }

    private boolean l(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float fG = g(f10, f11);
        boolean z13 = false;
        boolean z14 = h() != fG;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f32317e) {
            z13 = true;
        }
        r(fG, z13);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(ValueAnimator valueAnimator) {
        s(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private void s(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.f32329q = f11;
        this.f32332t = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fI = i(this.f32334v);
        float fCos = width + (((float) Math.cos(this.f32332t)) * fI);
        float fSin = height + (fI * ((float) Math.sin(this.f32332t)));
        RectF rectF = this.f32327o;
        int i10 = this.f32324l;
        rectF.set(fCos - i10, fSin - i10, fCos + i10, fSin + i10);
        Iterator<c> it2 = this.f32323k.iterator();
        while (it2.hasNext()) {
            it2.next().e(f11, z10);
        }
        invalidate();
    }

    public void b(c cVar) {
        this.f32323k.add(cVar);
    }

    int e() {
        return this.f32334v;
    }

    public RectF f() {
        return this.f32327o;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float h() {
        return this.f32329q;
    }

    public int j() {
        return this.f32324l;
    }

    public void n(boolean z10) {
        this.f32317e = z10;
    }

    public void o(@Dimension int i10) {
        this.f32333u = i10;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f32316d.isRunning()) {
            return;
        }
        q(h());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        b bVar;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i10 = (int) (x10 - this.f32318f);
                int i11 = (int) (y10 - this.f32319g);
                this.f32320h = (i10 * i10) + (i11 * i11) > this.f32321i;
                boolean z13 = this.f32330r;
                z10 = actionMasked == 1;
                if (this.f32322j) {
                    c(x10, y10);
                }
                z11 = z13;
            } else {
                z10 = false;
                z11 = false;
            }
            z12 = false;
        } else {
            this.f32318f = x10;
            this.f32319g = y10;
            this.f32320h = true;
            this.f32330r = false;
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean zL = l(x10, y10, z11, z12, z10) | this.f32330r;
        this.f32330r = zL;
        if (zL && z10 && (bVar = this.f32331s) != null) {
            bVar.b(g(x10, y10), this.f32320h);
        }
        return true;
    }

    void p(int i10) {
        this.f32334v = i10;
        invalidate();
    }

    public void q(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        r(f10, false);
    }

    public void r(@FloatRange(from = 0.0d, to = 360.0d) float f10, boolean z10) {
        ValueAnimator valueAnimator = this.f32316d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            s(f10, false);
            return;
        }
        Pair<Float, Float> pairK = k(f10);
        this.f32316d.setFloatValues(((Float) pairK.first).floatValue(), ((Float) pairK.second).floatValue());
        this.f32316d.setDuration(this.f32314b);
        this.f32316d.setInterpolator(this.f32315c);
        this.f32316d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f32367b.m(valueAnimator2);
            }
        });
        this.f32316d.addListener(new a());
        this.f32316d.start();
    }

    void t(boolean z10) {
        if (this.f32322j && !z10) {
            this.f32334v = 1;
        }
        this.f32322j = z10;
        invalidate();
    }

    public void u(b bVar) {
        this.f32331s = bVar;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f32316d = new ValueAnimator();
        this.f32323k = new ArrayList();
        Paint paint = new Paint();
        this.f32326n = paint;
        this.f32327o = new RectF();
        this.f32334v = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i10, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f32314b = com.google.android.material.motion.j.f(context, R.attr.motionDurationLong2, 200);
        this.f32315c = com.google.android.material.motion.j.g(context, R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b);
        this.f32333u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f32324l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f32328p = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f32325m = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        q(0.0f);
        this.f32321i = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
