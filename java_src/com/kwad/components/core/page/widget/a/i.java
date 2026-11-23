package com.kwad.components.core.page.widget.a;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ScrollerCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    private static final Interpolator ahI = new Interpolator() { // from class: com.kwad.components.core.page.widget.a.i.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };
    private final a ahJ;
    private final ViewGroup ahK;
    private int ahL;
    private float[] ahM;
    private float[] ahN;
    private float[] ahO;
    private float[] ahP;
    private int[] ahQ;
    private int[] ahR;
    private int[] ahS;
    private int ahT;
    private float ahU;
    private float ahV;
    private int ahW;
    private int ahX;
    private ScrollerCompat ahY;
    private View ahZ;
    private boolean aib;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private int duration = 0;
    private int mActivePointerId = -1;
    private final Runnable aia = new Runnable() { // from class: com.kwad.components.core.page.widget.a.i.2
        @Override // java.lang.Runnable
        public final void run() {
            i.this.bN(0);
        }
    };

    public static abstract class a {
        public static int getOrderedChildIndex(int i10) {
            return i10;
        }

        public int E(View view) {
            return 0;
        }

        public void bH(int i10) {
        }

        public int bI(int i10) {
            return 0;
        }

        public void onViewDragStateChanged(int i10) {
        }

        public void onViewReleased(View view, float f10, float f11) {
        }

        public abstract boolean tryCaptureView(View view, int i10);

        public int vm() {
            return 0;
        }
    }

    private i(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.ahK = viewGroup;
        this.ahJ = aVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.ahW = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.ahU = viewConfiguration.getScaledMaximumFlingVelocity();
        this.ahV = viewConfiguration.getScaledMinimumFlingVelocity();
        this.ahY = ScrollerCompat.create(context, ahI);
    }

    public static i a(ViewGroup viewGroup, a aVar) {
        return new i(viewGroup.getContext(), viewGroup, aVar);
    }

    private int b(View view, int i10, int i11, int i12, int i13) {
        float f10;
        float f11;
        float f12;
        float f13;
        int iC = c(i12, (int) this.ahV, (int) this.ahU);
        int iC2 = c(i13, (int) this.ahV, (int) this.ahU);
        int iAbs = Math.abs(i10);
        int iAbs2 = Math.abs(i11);
        int iAbs3 = Math.abs(iC);
        int iAbs4 = Math.abs(iC2);
        int i14 = iAbs3 + iAbs4;
        int i15 = iAbs + iAbs2;
        if (iC != 0) {
            f10 = iAbs3;
            f11 = i14;
        } else {
            f10 = iAbs;
            f11 = i15;
        }
        float f14 = f10 / f11;
        if (iC2 != 0) {
            f12 = iAbs4;
            f13 = i14;
        } else {
            f12 = iAbs2;
            f13 = i15;
        }
        return (int) ((b(i10, iC, 0) * f14) + (b(i11, iC2, this.ahJ.vm()) * (f12 / f13)));
    }

    private void bL(int i10) {
        float[] fArr = this.ahM;
        if (fArr == null) {
            return;
        }
        fArr[i10] = 0.0f;
        this.ahN[i10] = 0.0f;
        this.ahO[i10] = 0.0f;
        this.ahP[i10] = 0.0f;
        this.ahQ[i10] = 0;
        this.ahR[i10] = 0;
        this.ahS[i10] = 0;
        this.ahT = (~(1 << i10)) & this.ahT;
    }

    private void bM(int i10) {
        float[] fArr = this.ahM;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.ahN;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.ahO;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.ahP;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.ahQ;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.ahR;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.ahS;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.ahM = fArr2;
            this.ahN = fArr3;
            this.ahO = fArr4;
            this.ahP = fArr5;
            this.ahQ = iArr;
            this.ahR = iArr2;
            this.ahS = iArr3;
        }
    }

    private boolean bO(int i10) {
        if (isPointerDown(i10)) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder("Ignoring pointerId=");
        sb2.append(i10);
        sb2.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private static int c(int i10, int i11, int i12) {
        int iAbs = Math.abs(i10);
        if (iAbs < i11) {
            return 0;
        }
        if (iAbs > i12) {
            return i10 > 0 ? i12 : -i12;
        }
        return i10;
    }

    private void cancel() {
        this.mActivePointerId = -1;
        vp();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private View findTopChildUnder(int i10, int i11) {
        for (int childCount = this.ahK.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.ahK.getChildAt(a.getOrderedChildIndex(childCount));
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private void g(float f10, float f11) {
        this.aib = true;
        this.ahJ.onViewReleased(this.ahZ, f10, f11);
        this.aib = false;
        if (this.ahL == 1) {
            bN(0);
        }
    }

    private void i(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i10);
            float x10 = MotionEventCompat.getX(motionEvent, i10);
            float y10 = MotionEventCompat.getY(motionEvent, i10);
            this.ahO[pointerId] = x10;
            this.ahP[pointerId] = y10;
        }
    }

    private boolean isCapturedViewUnder(int i10, int i11) {
        return isViewUnder(this.ahZ, i10, i11);
    }

    private boolean isPointerDown(int i10) {
        return ((1 << i10) & this.ahT) != 0;
    }

    private static boolean isViewUnder(View view, int i10, int i11) {
        return view != null && i10 >= view.getLeft() && i10 < view.getRight() && i11 >= view.getTop() && i11 < view.getBottom();
    }

    private static float l(float f10) {
        return (float) Math.sin((float) (((double) (f10 - 0.5f)) * 0.4712389167638204d));
    }

    private boolean m(View view, int i10) {
        if (view == this.ahZ && this.mActivePointerId == i10) {
            return true;
        }
        if (view == null || !this.ahJ.tryCaptureView(view, i10)) {
            return false;
        }
        this.mActivePointerId = i10;
        captureChildView(view, i10);
        return true;
    }

    private int p(int i10, int i11) {
        int i12 = i10 < this.ahK.getLeft() + this.ahW ? 1 : 0;
        if (i11 < this.ahK.getTop() + this.ahW) {
            i12 |= 4;
        }
        if (i10 > this.ahK.getRight() - this.ahW) {
            i12 |= 2;
        }
        return i11 > this.ahK.getBottom() - this.ahW ? i12 | 8 : i12;
    }

    private void vp() {
        float[] fArr = this.ahM;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.ahN, 0.0f);
        Arrays.fill(this.ahO, 0.0f);
        Arrays.fill(this.ahP, 0.0f);
        Arrays.fill(this.ahQ, 0);
        Arrays.fill(this.ahR, 0);
        Arrays.fill(this.ahS, 0);
        this.ahT = 0;
    }

    private void vq() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.ahU);
        g(a(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.ahV, this.ahU), a(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.ahV, this.ahU));
    }

    final void bN(int i10) {
        this.ahK.removeCallbacks(this.aia);
        if (this.ahL != i10) {
            this.ahL = i10;
            this.ahJ.onViewDragStateChanged(i10);
            if (this.ahL == 0) {
                this.ahZ = null;
            }
        }
    }

    public final void captureChildView(View view, int i10) {
        if (view.getParent() == this.ahK) {
            this.ahZ = view;
            this.mActivePointerId = i10;
            bN(1);
        } else {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.ahK + ")");
        }
    }

    public final boolean continueSettling(boolean z10) {
        if (this.ahL == 2) {
            boolean zComputeScrollOffset = this.ahY.computeScrollOffset();
            int currX = this.ahY.getCurrX();
            int currY = this.ahY.getCurrY();
            int left = currX - this.ahZ.getLeft();
            int top = currY - this.ahZ.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.ahZ, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.ahZ, top);
            }
            if (left != 0 || top != 0) {
                this.ahJ.bH(currY);
            }
            if (zComputeScrollOffset && currX == this.ahY.getFinalX() && currY == this.ahY.getFinalY()) {
                this.ahY.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.ahK.post(this.aia);
            }
        }
        return this.ahL == 2;
    }

    public final int getTouchSlop() {
        return this.mTouchSlop;
    }

    public final void processTouchEvent(MotionEvent motionEvent) {
        float x10;
        int i10;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i11 = 0;
        if (actionMasked == 0) {
            float x11 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            View viewFindTopChildUnder = findTopChildUnder((int) x11, (int) y10);
            a(x11, y10, pointerId);
            m(viewFindTopChildUnder, pointerId);
            int i12 = this.ahQ[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.ahL == 1) {
                vq();
            }
            cancel();
            return;
        }
        float y11 = 0.0f;
        if (actionMasked == 2) {
            if (this.ahL == 1) {
                if (bO(this.mActivePointerId)) {
                    int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                    try {
                        x10 = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
                        try {
                            y11 = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
                        } catch (IllegalArgumentException unused) {
                        }
                    } catch (IllegalArgumentException unused2) {
                        x10 = 0.0f;
                    }
                    float[] fArr = this.ahO;
                    int i13 = this.mActivePointerId;
                    int i14 = (int) (x10 - fArr[i13]);
                    int i15 = (int) (y11 - this.ahP[i13]);
                    b(this.ahZ.getLeft() + i14, this.ahZ.getTop() + i15, i14, i15);
                    i(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            while (i11 < pointerCount) {
                int pointerId2 = MotionEventCompat.getPointerId(motionEvent, i11);
                if (bO(pointerId2)) {
                    float x12 = MotionEventCompat.getX(motionEvent, i11);
                    float y12 = MotionEventCompat.getY(motionEvent, i11);
                    float f10 = x12 - this.ahM[pointerId2];
                    float f11 = y12 - this.ahN[pointerId2];
                    b(f10, f11, pointerId2);
                    if (this.ahL == 1) {
                        break;
                    }
                    View viewFindTopChildUnder2 = findTopChildUnder((int) x12, (int) y12);
                    if (a(viewFindTopChildUnder2, f10, f11) && m(viewFindTopChildUnder2, pointerId2)) {
                        break;
                    }
                }
                i11++;
            }
            i(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.ahL == 1) {
                g(0.0f, 0.0f);
            }
            cancel();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            float x13 = MotionEventCompat.getX(motionEvent, actionIndex);
            float y13 = MotionEventCompat.getY(motionEvent, actionIndex);
            a(x13, y13, pointerId3);
            if (this.ahL == 0) {
                m(findTopChildUnder((int) x13, (int) y13), pointerId3);
                return;
            } else {
                if (isCapturedViewUnder((int) x13, (int) y13)) {
                    m(this.ahZ, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
        if (this.ahL == 1 && pointerId4 == this.mActivePointerId) {
            int pointerCount2 = MotionEventCompat.getPointerCount(motionEvent);
            while (true) {
                if (i11 >= pointerCount2) {
                    i10 = -1;
                    break;
                }
                int pointerId5 = MotionEventCompat.getPointerId(motionEvent, i11);
                if (pointerId5 != this.mActivePointerId) {
                    View viewFindTopChildUnder3 = findTopChildUnder((int) MotionEventCompat.getX(motionEvent, i11), (int) MotionEventCompat.getY(motionEvent, i11));
                    View view = this.ahZ;
                    if (viewFindTopChildUnder3 == view && m(view, pointerId5)) {
                        i10 = this.mActivePointerId;
                        break;
                    }
                }
                i11++;
            }
            if (i10 == -1) {
                vq();
            }
        }
        bL(pointerId4);
    }

    public final boolean settleCapturedViewAt(int i10, int i11) {
        if (this.aib) {
            return a(i10, i11, (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d3  */
    public final boolean shouldInterceptTouchEvent(MotionEvent motionEvent) {
        View viewFindTopChildUnder;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            a(x10, y10, pointerId);
            View viewFindTopChildUnder2 = findTopChildUnder((int) x10, (int) y10);
            if (viewFindTopChildUnder2 == this.ahZ && this.ahL == 2) {
                m(viewFindTopChildUnder2, pointerId);
            }
            int i10 = this.ahQ[pointerId];
        } else if (actionMasked == 1) {
            cancel();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                cancel();
            } else if (actionMasked == 5) {
                int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                float x11 = MotionEventCompat.getX(motionEvent, actionIndex);
                float y11 = MotionEventCompat.getY(motionEvent, actionIndex);
                a(x11, y11, pointerId2);
                int i11 = this.ahL;
                if (i11 != 0 && i11 == 2 && (viewFindTopChildUnder = findTopChildUnder((int) x11, (int) y11)) == this.ahZ) {
                    m(viewFindTopChildUnder, pointerId2);
                }
            } else if (actionMasked == 6) {
                bL(MotionEventCompat.getPointerId(motionEvent, actionIndex));
            }
        } else if (this.ahM != null && this.ahN != null) {
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            for (int i12 = 0; i12 < pointerCount; i12++) {
                int pointerId3 = MotionEventCompat.getPointerId(motionEvent, i12);
                if (bO(pointerId3)) {
                    float x12 = MotionEventCompat.getX(motionEvent, i12);
                    float y12 = MotionEventCompat.getY(motionEvent, i12);
                    float f10 = x12 - this.ahM[pointerId3];
                    float f11 = y12 - this.ahN[pointerId3];
                    View viewFindTopChildUnder3 = findTopChildUnder((int) x12, (int) y12);
                    boolean z10 = viewFindTopChildUnder3 != null && a(viewFindTopChildUnder3, f10, f11);
                    if (!z10) {
                        b(f10, f11, pointerId3);
                        if (this.ahL == 1) {
                            break;
                        }
                        break;
                        break;
                    }
                    viewFindTopChildUnder3.getLeft();
                    this.ahJ.E(viewFindTopChildUnder3);
                    int top = viewFindTopChildUnder3.getTop();
                    int iBI = this.ahJ.bI(((int) f11) + top);
                    int iVm = this.ahJ.vm();
                    if (iVm == 0 || (iVm > 0 && iBI == top)) {
                        break;
                    }
                    b(f10, f11, pointerId3);
                    if (this.ahL == 1 || (z10 && m(viewFindTopChildUnder3, pointerId3))) {
                        break;
                    }
                }
            }
            i(motionEvent);
        }
        return this.ahL == 1;
    }

    public final boolean smoothSlideViewTo(View view, int i10, int i11) {
        this.ahZ = view;
        this.mActivePointerId = -1;
        boolean zA = a(i10, i11, 0, 0);
        if (!zA && this.ahL == 0 && this.ahZ != null) {
            this.ahZ = null;
        }
        return zA;
    }

    private boolean a(int i10, int i11, int i12, int i13) {
        int left = this.ahZ.getLeft();
        int top = this.ahZ.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        if (i14 == 0 && i15 == 0) {
            this.ahY.abortAnimation();
            bN(0);
            return false;
        }
        int i16 = this.duration;
        this.ahY.startScroll(left, top, i14, i15, i16 == 0 ? b(this.ahZ, i14, i15, i12, i13) : i16);
        bN(2);
        return true;
    }

    private static float a(float f10, float f11, float f12) {
        float fAbs = Math.abs(f10);
        if (fAbs < f11) {
            return 0.0f;
        }
        if (fAbs > f12) {
            return f10 > 0.0f ? f12 : -f12;
        }
        return f10;
    }

    private int b(int i10, int i11, int i12) {
        int iAbs;
        if (i10 == 0) {
            return 0;
        }
        int width = this.ahK.getWidth();
        float f10 = width / 2;
        float fL = f10 + (l(Math.min(1.0f, Math.abs(i10) / width)) * f10);
        int iAbs2 = Math.abs(i11);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fL / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f);
        }
        return Math.min(iAbs, 600);
    }

    private void a(float f10, float f11, int i10) {
        bM(i10);
        float[] fArr = this.ahM;
        this.ahO[i10] = f10;
        fArr[i10] = f10;
        float[] fArr2 = this.ahN;
        this.ahP[i10] = f11;
        fArr2[i10] = f11;
        this.ahQ[i10] = p((int) f10, (int) f11);
        this.ahT |= 1 << i10;
    }

    private boolean a(float f10, float f11, int i10, int i11) {
        float fAbs = Math.abs(f10);
        float fAbs2 = Math.abs(f11);
        if ((this.ahQ[i10] & i11) == i11 && (this.ahX & i11) != 0 && (this.ahS[i10] & i11) != i11) {
            int i12 = this.ahR[i10];
            if ((i12 & i11) != i11) {
                int i13 = this.mTouchSlop;
                if ((fAbs > i13 || fAbs2 > i13) && (i12 & i11) == 0 && fAbs > i13) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r4v2 */
    private void b(float f10, float f11, int i10) {
        int i11;
        boolean zA = a(f10, f11, i10, 1);
        ?? r10 = zA;
        if (a(f11, f10, i10, 4)) {
            r10 = (zA ? 1 : 0) | 4;
        }
        ?? r11 = r10;
        if (a(f10, f11, i10, 2)) {
            r11 = (r10 == true ? 1 : 0) | 2;
        }
        ?? r12 = r11;
        if (a(f11, f10, i10, 8)) {
            i11 = (r11 == true ? 1 : 0) | 8;
        }
        if (r12 == 0) {
            r12 = i11;
            return;
        }
        r12 = i11;
        int[] iArr = this.ahR;
        iArr[i10] = (iArr[i10] | r12) == true ? 1 : 0;
    }

    private boolean a(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        return (this.ahJ.vm() > 0) && Math.abs(f11) > ((float) this.mTouchSlop);
    }

    private void b(int i10, int i11, int i12, int i13) {
        int left = this.ahZ.getLeft();
        int top = this.ahZ.getTop();
        if (i12 != 0) {
            ViewCompat.offsetLeftAndRight(this.ahZ, this.ahJ.E(this.ahZ) - left);
        }
        if (i13 != 0) {
            i11 = this.ahJ.bI(i11);
            ViewCompat.offsetTopAndBottom(this.ahZ, i11 - top);
        }
        if (i12 == 0 && i13 == 0) {
            return;
        }
        this.ahJ.bH(i11);
    }
}
