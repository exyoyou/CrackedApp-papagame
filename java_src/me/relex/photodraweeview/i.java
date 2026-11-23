package me.relex.photodraweeview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;

/* JADX INFO: loaded from: classes.dex */
public class i implements ScaleGestureDetector.OnScaleGestureListener {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f94325l = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f94326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f94327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScaleGestureDetector f94328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f94329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private VelocityTracker f94330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f94331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f94332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f94333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f94334j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f94335k = 0;

    public i(Context context, g gVar) {
        this.f94328d = new ScaleGestureDetector(context, this);
        this.f94329e = gVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f94327c = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f94326b = viewConfiguration.getScaledTouchSlop();
    }

    private float a(MotionEvent motionEvent) {
        try {
            return MotionEventCompat.getX(motionEvent, this.f94335k);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float b(MotionEvent motionEvent) {
        try {
            return MotionEventCompat.getY(motionEvent, this.f94335k);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private void e(int i10, MotionEvent motionEvent) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 3) {
                this.f94334j = -1;
            } else if (i10 == 6) {
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.f94334j) {
                    int i11 = actionIndex != 0 ? 0 : 1;
                    this.f94334j = MotionEventCompat.getPointerId(motionEvent, i11);
                    this.f94332h = MotionEventCompat.getX(motionEvent, i11);
                    this.f94333i = MotionEventCompat.getY(motionEvent, i11);
                }
            }
        } else {
            this.f94334j = motionEvent.getPointerId(0);
        }
        int i12 = this.f94334j;
        this.f94335k = MotionEventCompat.findPointerIndex(motionEvent, i12 != -1 ? i12 : 0);
    }

    private void f(int i10, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (i10 == 0) {
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f94330f = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.addMovement(motionEvent);
            }
            this.f94332h = a(motionEvent);
            this.f94333i = b(motionEvent);
            this.f94331g = false;
            return;
        }
        if (i10 == 1) {
            if (this.f94331g && this.f94330f != null) {
                this.f94332h = a(motionEvent);
                this.f94333i = b(motionEvent);
                this.f94330f.addMovement(motionEvent);
                this.f94330f.computeCurrentVelocity(1000);
                float xVelocity = this.f94330f.getXVelocity();
                float yVelocity = this.f94330f.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f94327c) {
                    this.f94329e.a(this.f94332h, this.f94333i, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker2 = this.f94330f;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f94330f = null;
                return;
            }
            return;
        }
        if (i10 != 2) {
            if (i10 == 3 && (velocityTracker = this.f94330f) != null) {
                velocityTracker.recycle();
                this.f94330f = null;
                return;
            }
            return;
        }
        float fA = a(motionEvent);
        float fB = b(motionEvent);
        float f10 = fA - this.f94332h;
        float f11 = fB - this.f94333i;
        if (!this.f94331g) {
            this.f94331g = Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f94326b);
        }
        if (this.f94331g) {
            this.f94329e.b(f10, f11);
            this.f94332h = fA;
            this.f94333i = fB;
            VelocityTracker velocityTracker3 = this.f94330f;
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
            }
        }
    }

    public boolean c() {
        return this.f94331g;
    }

    public boolean d() {
        return this.f94328d.isInProgress();
    }

    public boolean g(MotionEvent motionEvent) {
        this.f94328d.onTouchEvent(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        e(actionMasked, motionEvent);
        f(actionMasked, motionEvent);
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
            return false;
        }
        this.f94329e.d(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.f94329e.c();
    }
}
