package com.join.mgps.customview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.BaseInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.Util.k1;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class CubeRotateView extends FrameLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f64700m = 90;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Camera f64701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f64702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BaseInterpolator f64703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f64704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f64705f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Timer f64706g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f64707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f64708i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f64709j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f64710k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f64711l;

    class a extends TimerTask {

        /* JADX INFO: renamed from: com.join.mgps.customview.CubeRotateView$a$a, reason: collision with other inner class name */
        class RunnableC0707a implements Runnable {
            RunnableC0707a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CubeRotateView.this.g();
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            k1.a().post(new RunnableC0707a());
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CubeRotateView.this.f64708i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            CubeRotateView.this.f64710k = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CubeRotateView.this.f64710k = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public CubeRotateView(Context context) {
        super(context);
        this.f64703d = new AccelerateDecelerateInterpolator();
        this.f64704e = BaseCloudFileManager.ACK_TIMEOUT;
        this.f64707h = true;
        this.f64708i = 1.0f;
        this.f64709j = false;
        this.f64710k = false;
        this.f64711l = true;
    }

    private void c(Canvas canvas, double interpolation) {
        View childAt = this.f64709j ? getChildAt(0) : getChildAt(1);
        View childAt2 = this.f64709j ? getChildAt(1) : getChildAt(0);
        int width = getWidth();
        int height = getHeight();
        long drawingTime = getDrawingTime();
        this.f64701b.save();
        double d10 = width;
        this.f64701b.translate((float) (d10 - (interpolation * d10)), 0.0f, 0.0f);
        this.f64701b.rotateY((float) ((-90.0d) * interpolation));
        this.f64701b.getMatrix(this.f64702c);
        this.f64701b.restore();
        int i10 = -width;
        float f10 = (-height) / 2;
        this.f64702c.preTranslate(i10, f10);
        float f11 = height / 2;
        this.f64702c.postTranslate(0.0f, f11);
        canvas.save();
        canvas.concat(this.f64702c);
        drawChild(canvas, childAt, drawingTime);
        canvas.restore();
        this.f64701b.save();
        this.f64701b.translate((float) (((double) i10) * interpolation), 0.0f, 0.0f);
        this.f64701b.rotateY((float) (90.0d - (interpolation * 90.0d)));
        this.f64701b.getMatrix(this.f64702c);
        this.f64701b.restore();
        this.f64702c.postTranslate(width, f11);
        this.f64702c.preTranslate(0.0f, f10);
        canvas.save();
        canvas.concat(this.f64702c);
        drawChild(canvas, childAt2, drawingTime);
        canvas.restore();
    }

    private void d(Canvas canvas, double interpolation) {
        View childAt = this.f64709j ? getChildAt(0) : getChildAt(1);
        View childAt2 = this.f64709j ? getChildAt(1) : getChildAt(0);
        int width = getWidth();
        int height = getHeight();
        long drawingTime = getDrawingTime();
        double d10 = 90.0d * interpolation;
        this.f64701b.save();
        double d11 = ((double) height) * interpolation;
        this.f64701b.translate(0.0f, (float) d11, 0.0f);
        this.f64701b.rotateX((((float) d10) * 2.0f) / 3.0f);
        this.f64701b.getMatrix(this.f64702c);
        this.f64701b.restore();
        float f10 = (-width) / 2;
        int i10 = -height;
        this.f64702c.preTranslate(f10, i10);
        float f11 = width / 2;
        this.f64702c.postTranslate(f11, height);
        canvas.save();
        canvas.concat(this.f64702c);
        drawChild(canvas, childAt, drawingTime);
        canvas.restore();
        this.f64701b.save();
        this.f64701b.translate(0.0f, (float) (((double) i10) + d11), 0.0f);
        this.f64701b.rotateX((((float) (d10 - 90.0d)) * 2.0f) / 3.0f);
        this.f64701b.getMatrix(this.f64702c);
        this.f64701b.restore();
        this.f64702c.postTranslate(f11, 0.0f);
        this.f64702c.preTranslate(f10, 0.0f);
        canvas.save();
        canvas.concat(this.f64702c);
        drawChild(canvas, childAt2, drawingTime);
        canvas.restore();
    }

    private void e(Canvas canvas, int screen, long drawingTime, float angle) {
        int i10;
        int height = getHeight();
        int i11 = screen * height;
        int scrollY = getScrollY();
        if (i11 > scrollY + height || (i10 = height + i11) < scrollY) {
            return;
        }
        View childAt = getChildAt(screen);
        float scrollY2 = (getScrollY() * (angle / getMeasuredHeight())) - (screen * angle);
        if (scrollY2 > 90.0f || scrollY2 < -90.0f) {
            return;
        }
        float f10 = i11 < scrollY ? i10 : i11;
        float width = getWidth() / 2;
        Camera camera = this.f64701b;
        Matrix matrix = this.f64702c;
        canvas.save();
        camera.save();
        camera.translate(0.0f, -getHeight(), 0.0f);
        camera.rotateX(-angle);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-width, -f10);
        matrix.postTranslate(width, f10);
        canvas.concat(matrix);
        drawChild(canvas, childAt, drawingTime);
        canvas.restore();
    }

    private void f() {
        this.f64701b = new Camera();
        this.f64702c = new Matrix();
        this.f64705f = System.currentTimeMillis();
        this.f64706g = new Timer();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!this.f64707h) {
            super.dispatchDraw(canvas);
        } else {
            d(canvas, this.f64708i);
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void g() {
        if (this.f64710k) {
            return;
        }
        this.f64710k = true;
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(700L);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new b());
        valueAnimatorOfFloat.addListener(new c());
        this.f64709j = true ^ this.f64709j;
        valueAnimatorOfFloat.start();
    }

    public void setTimeAnim() {
        if (this.f64711l) {
            this.f64711l = false;
            this.f64706g.schedule(new a(), 5000L, 5000L);
        }
    }

    public CubeRotateView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64703d = new AccelerateDecelerateInterpolator();
        this.f64704e = BaseCloudFileManager.ACK_TIMEOUT;
        this.f64707h = true;
        this.f64708i = 1.0f;
        this.f64709j = false;
        this.f64710k = false;
        this.f64711l = true;
        f();
    }

    public CubeRotateView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64703d = new AccelerateDecelerateInterpolator();
        this.f64704e = BaseCloudFileManager.ACK_TIMEOUT;
        this.f64707h = true;
        this.f64708i = 1.0f;
        this.f64709j = false;
        this.f64710k = false;
        this.f64711l = true;
        f();
    }
}
