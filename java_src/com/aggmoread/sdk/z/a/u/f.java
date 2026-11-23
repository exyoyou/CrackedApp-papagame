package com.aggmoread.sdk.z.a.u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class f extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RectF f4109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f4110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f4111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f4114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AnimatorSet f4115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f4116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Camera f4117i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f4118j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f4119k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f4120l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f4121m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f4122n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f4123o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f4124p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float f4125q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float f4126r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final float f4127s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final float f4128t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final float f4129u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float f4130v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final float f4131w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f4132x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f4133y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final float f4134z;

    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.c();
        }
    }

    public static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4136a;

        private b() {
            this.f4136a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4136a = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f4136a) {
                animator.start();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }

        b(a aVar) {
            this();
        }
    }

    public f(Context context, int i10) {
        super(context);
        setLayerType(1, null);
        Paint paint = new Paint();
        this.f4116h = paint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        this.f4117i = new Camera();
        float f10 = i10;
        this.f4119k = (-f10) / 72.0f;
        this.f4120l = 0.009803922f * f10;
        this.f4121m = 0.014705882f * f10;
        float f11 = 0.029411765f * f10;
        this.f4122n = f11;
        this.f4123o = 0.039215688f * f10;
        float f12 = 0.20588236f * f10;
        this.f4124p = f12;
        float f13 = 0.32352942f * f10;
        this.f4125q = f13;
        float f14 = 0.4117647f * f10;
        this.f4126r = f14;
        this.f4127s = 0.46078432f * f10;
        float f15 = 0.5f * f10;
        this.f4128t = f15;
        this.f4129u = 0.5392157f * f10;
        this.f4130v = 0.5882353f * f10;
        float f16 = 0.64705884f * f10;
        this.f4131w = f16;
        float f17 = 0.6764706f * f10;
        this.f4132x = f17;
        this.f4133y = 0.6960784f * f10;
        float f18 = f10 * 0.7941176f;
        this.f4134z = f18;
        float f19 = (f14 - f11) / 2.0f;
        float f20 = (f16 - f11) / 2.0f;
        this.f4109a = new RectF(f15 - f19, f15 - f20, f19 + f15, f15 + f20);
        this.f4110b = new RectF(f13, f12, f17, f18);
        this.f4111c = new RectF();
        post(new a());
    }

    private void a() {
        AnimatorSet animatorSet = this.f4115g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    private void b() {
        AnimatorSet animatorSet = this.f4115g;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    public void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "py", 0.0f, -0.7f);
        objectAnimatorOfFloat.setDuration(400L);
        objectAnimatorOfFloat.setStartDelay(600L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "py", -0.7f, 0.0f);
        objectAnimatorOfFloat2.setDuration(400L);
        objectAnimatorOfFloat2.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, "pz", 0.0f, 0.7f);
        objectAnimatorOfFloat3.setDuration(400L);
        objectAnimatorOfFloat3.setStartDelay(600L);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this, "pz", 0.7f, 0.0f);
        objectAnimatorOfFloat4.setDuration(400L);
        objectAnimatorOfFloat4.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this, "py", 0.0f, 0.7f);
        objectAnimatorOfFloat5.setDuration(400L);
        objectAnimatorOfFloat5.setStartDelay(600L);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this, "py", 0.7f, 0.0f);
        objectAnimatorOfFloat6.setDuration(400L);
        objectAnimatorOfFloat6.setStartDelay(200L);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this, "pz", 0.0f, -0.7f);
        objectAnimatorOfFloat7.setDuration(400L);
        objectAnimatorOfFloat7.setStartDelay(600L);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this, "pz", -0.7f, 0.0f);
        objectAnimatorOfFloat8.setDuration(400L);
        objectAnimatorOfFloat8.setStartDelay(200L);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f4115g = animatorSet;
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5, objectAnimatorOfFloat6, objectAnimatorOfFloat7, objectAnimatorOfFloat8);
        this.f4115g.addListener(new b(null));
        this.f4115g.start();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.f4128t;
        canvas.translate(f10, f10);
        this.f4117i.save();
        this.f4117i.rotateX(-this.f4112d);
        this.f4117i.rotateY(this.f4113e);
        this.f4117i.rotateZ(this.f4114f);
        this.f4117i.setLocation(0.0f, 0.0f, this.f4119k);
        this.f4117i.applyToCanvas(canvas);
        this.f4117i.restore();
        float f11 = -this.f4128t;
        canvas.translate(f11, f11);
        this.f4116h.setColor(-1);
        this.f4116h.setStyle(Paint.Style.STROKE);
        this.f4116h.setStrokeWidth(this.f4122n);
        RectF rectF = this.f4109a;
        float f12 = this.f4122n + this.f4121m;
        canvas.drawRoundRect(rectF, f12, f12, this.f4116h);
        this.f4116h.setColor(-4933701);
        this.f4116h.setStyle(Paint.Style.FILL);
        RectF rectF2 = this.f4110b;
        float f13 = this.f4122n;
        canvas.drawRoundRect(rectF2, f13, f13, this.f4116h);
        this.f4116h.setColor(Integer.MAX_VALUE);
        this.f4116h.setStyle(Paint.Style.FILL);
        RectF rectF3 = this.f4111c;
        rectF3.left = this.f4125q;
        float f14 = this.f4134z;
        rectF3.top = f14 - (this.f4118j * this.f4130v);
        rectF3.right = this.f4132x;
        rectF3.bottom = f14;
        canvas.drawRoundRect(rectF3, 0.0f, 0.0f, this.f4116h);
        this.f4116h.setColor(-1);
        this.f4116h.setStyle(Paint.Style.STROKE);
        this.f4116h.setStrokeCap(Paint.Cap.ROUND);
        this.f4116h.setStrokeWidth(this.f4123o);
        float f15 = this.f4127s;
        float f16 = this.f4133y;
        canvas.drawLine(f15, f16, this.f4129u, f16, this.f4116h);
        canvas.restore();
        this.f4116h.setColor(Integer.MAX_VALUE);
        this.f4116h.setStyle(Paint.Style.STROKE);
        this.f4116h.setStrokeWidth(this.f4120l);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        com.aggmoread.sdk.z.c.a.a.e.e.a("si onVisibilityChanged " + i10);
        if (i10 != 0) {
            a();
        } else if (i10 == 0) {
            b();
        }
    }

    public void setPx(float f10) {
        this.f4118j = Math.abs(f10);
        this.f4112d = f10 * 45.0f;
        invalidate();
    }

    public void setPy(float f10) {
        this.f4118j = Math.abs(f10);
        this.f4113e = f10 * 45.0f;
        invalidate();
    }

    public void setPz(float f10) {
        this.f4118j = Math.abs(f10);
        this.f4114f = f10 * 45.0f;
        invalidate();
    }
}
