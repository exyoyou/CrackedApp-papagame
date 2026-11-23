package com.join.mgps.customview.zoomlayout;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class ZoomLayout extends FrameLayout {
    private static final int DEF_ZOOM_DURATION = 250;
    public static final double DOUBLE_EPSILON = 0.001d;
    public static final float FLOAT_EPSILON = 0.001f;
    public static final String TAG = "ZoomLayout";
    public boolean DEBUG;
    private boolean mAllowOverScale;
    boolean mAllowParentInterceptOnEdge;
    boolean mAllowParentInterceptOnScaled;
    private boolean mAllowZoom;
    private b mAnimatedZoomRunnable;
    private Interpolator mAnimationInterpolator;
    private float[] mArray;
    RectF mDrawRect;
    private c mFlingRunnable;
    private float mFocusX;
    private float mFocusY;
    private GestureDetector mGestureDetector;
    private d mGestureListener;
    private float[] mMatrixValues;
    private float mMaxScale;
    private float mMinScale;
    private List<e> mOnDoubleTapListeners;
    private List<f> mOnLongTapListeners;
    private List<g> mOnPanListeners;
    private List<h> mOnTapListeners;
    private List<i> mOnTouchListeners;
    private List<j> mOnZoomListeners;
    private k mPanDispatcher;
    private ScaleGestureDetector mScaleDetector;
    private Matrix mScaleMatrix;
    private Matrix mScaleMatrixInverse;
    private l mSimpleOnGlobalLayoutChangedListener;
    private Matrix mTranslateMatrix;
    private Matrix mTranslateMatrixInverse;
    RectF mViewPortRect;
    private n mZoomDispatcher;
    private int mZoomDuration;

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f67181b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f67182c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f67183d = System.currentTimeMillis();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f67184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f67185f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f67186g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f67187h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f67188i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f67189j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private float f67190k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float f67191l;

        b() {
        }

        private void d() {
            if (!this.f67182c) {
                if (b()) {
                    ZoomLayout.this.mZoomDispatcher.c(ZoomLayout.this.getScale());
                }
                if (c()) {
                    ZoomLayout.this.mPanDispatcher.c();
                }
            }
            this.f67182c = true;
        }

        private float e() {
            return ZoomLayout.this.mAnimationInterpolator.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.f67183d) * 1.0f) / ZoomLayout.this.mZoomDuration));
        }

        void a() {
            this.f67181b = true;
            d();
        }

        boolean b() {
            return !ZoomLayout.isEqual(this.f67184e, this.f67185f);
        }

        boolean c() {
            return (ZoomLayout.isEqual((double) this.f67188i, (double) this.f67190k) && ZoomLayout.isEqual((double) this.f67189j, (double) this.f67191l)) ? false : true;
        }

        boolean g() {
            float scale = ZoomLayout.this.getScale();
            h(scale, ZoomLayout.clamp(ZoomLayout.this.mMinScale, scale, ZoomLayout.this.mMaxScale), ZoomLayout.this.mFocusX, ZoomLayout.this.mFocusY, true);
            if (!ZoomLayout.this.mAnimatedZoomRunnable.b() && !ZoomLayout.this.mAnimatedZoomRunnable.c()) {
                return false;
            }
            ZoomLayout zoomLayout = ZoomLayout.this;
            ViewCompat.postOnAnimation(zoomLayout, zoomLayout.mAnimatedZoomRunnable);
            return true;
        }

        b h(float currentZoom, float targetZoom, float focalX, float focalY, boolean ensureTranslations) {
            this.f67186g = focalX;
            this.f67187h = focalY;
            this.f67184e = currentZoom;
            this.f67185f = targetZoom;
            if (b()) {
                ZoomLayout.this.mZoomDispatcher.b(ZoomLayout.this.getScale());
            }
            if (ensureTranslations) {
                this.f67188i = ZoomLayout.this.getPosX();
                this.f67189j = ZoomLayout.this.getPosY();
                boolean zB = b();
                if (zB) {
                    Matrix matrix = ZoomLayout.this.mScaleMatrix;
                    float f10 = this.f67185f;
                    matrix.setScale(f10, f10, this.f67186g, this.f67187h);
                    ZoomLayout.this.n();
                }
                PointF closestValidTranslationPoint = ZoomLayout.this.getClosestValidTranslationPoint();
                this.f67190k = closestValidTranslationPoint.x;
                this.f67191l = closestValidTranslationPoint.y;
                if (zB) {
                    Matrix matrix2 = ZoomLayout.this.mScaleMatrix;
                    float f11 = this.f67184e;
                    matrix2.setScale(f11, f11, ZoomLayout.this.mFocusX, ZoomLayout.this.mFocusY);
                    ZoomLayout.this.n();
                }
                if (c()) {
                    ZoomLayout.this.mPanDispatcher.b();
                }
            }
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f67181b) {
                return;
            }
            if (b() || c()) {
                float fE = e();
                if (b()) {
                    float f10 = this.f67184e;
                    float f11 = f10 + ((this.f67185f - f10) * fE);
                    ZoomLayout.this.l(f11, this.f67186g, this.f67187h);
                    ZoomLayout.this.mZoomDispatcher.a(f11);
                }
                if (c()) {
                    float f12 = this.f67188i;
                    float f13 = f12 + ((this.f67190k - f12) * fE);
                    float f14 = this.f67189j;
                    ZoomLayout.this.j(f13, f14 + ((this.f67191l - f14) * fE), false);
                    ZoomLayout.this.mPanDispatcher.a();
                }
                if (fE < 1.0f) {
                    ViewCompat.postOnAnimation(ZoomLayout.this, this);
                } else {
                    d();
                }
            }
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.join.mgps.customview.zoomlayout.a f67193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f67194c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f67195d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f67196e = false;

        c(Context context) {
            this.f67193b = com.join.mgps.customview.zoomlayout.a.f(context);
        }

        private void b() {
            if (!this.f67196e) {
                ZoomLayout.this.mPanDispatcher.c();
            }
            this.f67196e = true;
        }

        void a() {
            this.f67193b.c(true);
            b();
        }

        void c(int velocityX, int velocityY) {
            int iRound;
            int iRound2;
            int i10;
            int iRound3;
            int iRound4 = Math.round(ZoomLayout.this.mViewPortRect.left);
            if (ZoomLayout.this.mViewPortRect.width() < ZoomLayout.this.mDrawRect.width()) {
                iRound = Math.round(ZoomLayout.this.mDrawRect.left);
                iRound2 = Math.round(ZoomLayout.this.mDrawRect.width() - ZoomLayout.this.mViewPortRect.width());
            } else {
                iRound = iRound4;
                iRound2 = iRound;
            }
            int iRound5 = Math.round(ZoomLayout.this.mViewPortRect.top);
            if (ZoomLayout.this.mViewPortRect.height() < ZoomLayout.this.mDrawRect.height()) {
                int iRound6 = Math.round(ZoomLayout.this.mDrawRect.top);
                ZoomLayout zoomLayout = ZoomLayout.this;
                i10 = iRound6;
                iRound3 = Math.round(zoomLayout.mDrawRect.bottom - zoomLayout.mViewPortRect.bottom);
            } else {
                i10 = iRound5;
                iRound3 = i10;
            }
            this.f67194c = iRound4;
            this.f67195d = iRound5;
            if (iRound4 == iRound2 && iRound5 == iRound3) {
                this.f67196e = true;
            } else {
                this.f67193b.b(iRound4, iRound5, velocityX, velocityY, iRound, iRound2, i10, iRound3, 0, 0);
                ZoomLayout.this.mPanDispatcher.b();
            }
        }

        public boolean d() {
            return this.f67193b.g();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f67193b.g() || !this.f67193b.a()) {
                b();
                return;
            }
            int iD = this.f67193b.d();
            int iE = this.f67193b.e();
            if (ZoomLayout.this.k(this.f67194c - iD, this.f67195d - iE, true)) {
                ZoomLayout.this.mPanDispatcher.a();
            }
            this.f67194c = iD;
            this.f67195d = iE;
            ViewCompat.postOnAnimation(ZoomLayout.this, this);
        }
    }

    class d implements ScaleGestureDetector.OnScaleGestureListener, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f67198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f67199c = false;

        d() {
        }

        boolean b(MotionEvent e10) {
            boolean z10;
            boolean z11 = true;
            if (this.f67199c) {
                ZoomLayout.this.mPanDispatcher.c();
                this.f67199c = false;
                z10 = true;
            } else {
                z10 = false;
            }
            if (ZoomLayout.this.mAnimatedZoomRunnable != null && !ZoomLayout.this.mAnimatedZoomRunnable.f67182c) {
                return z10;
            }
            ZoomLayout zoomLayout = ZoomLayout.this;
            zoomLayout.mAnimatedZoomRunnable = zoomLayout.new b();
            if (!ZoomLayout.this.mAnimatedZoomRunnable.g() && !z10) {
                z11 = false;
            }
            return z11;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e10) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent e10) {
            if ((e10.getAction() & 255) != 1) {
                return false;
            }
            ZoomLayout.this.c(e10);
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e10) {
            this.f67198b = ZoomLayout.this.getScale();
            ZoomLayout.this.requestDisallowInterceptTouchEvent(true);
            ZoomLayout.this.a();
            ZoomLayout.this.b();
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            float scale = ZoomLayout.this.getScale();
            if (!ZoomLayout.isEqual(ZoomLayout.clamp(ZoomLayout.this.mMinScale, scale, ZoomLayout.this.mMaxScale), scale)) {
                return false;
            }
            ZoomLayout zoomLayout = ZoomLayout.this;
            zoomLayout.mFlingRunnable = zoomLayout.new c(zoomLayout.getContext());
            ZoomLayout.this.mFlingRunnable.c((int) velocityX, (int) velocityY);
            ZoomLayout zoomLayout2 = ZoomLayout.this;
            ViewCompat.postOnAnimation(zoomLayout2, zoomLayout2.mFlingRunnable);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e10) {
            if (ZoomLayout.this.mScaleDetector.isInProgress()) {
                return;
            }
            ZoomLayout.this.d(e10);
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector detector) {
            float scale = ZoomLayout.this.getScale() * detector.getScaleFactor();
            float scaleFactor = detector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            ZoomLayout zoomLayout = ZoomLayout.this;
            zoomLayout.l(scale, zoomLayout.mFocusX, ZoomLayout.this.mFocusY);
            ZoomLayout.this.mZoomDispatcher.a(scale);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            ZoomLayout.this.mZoomDispatcher.b(ZoomLayout.this.getScale());
            ZoomLayout.this.g(detector.getFocusX(), detector.getFocusY());
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector detector) {
            ZoomLayout zoomLayout = ZoomLayout.this;
            zoomLayout.mAnimatedZoomRunnable = zoomLayout.new b();
            ZoomLayout.this.mAnimatedZoomRunnable.g();
            ZoomLayout.this.mZoomDispatcher.c(ZoomLayout.this.getScale());
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            if (e11.getPointerCount() != 1 || ZoomLayout.this.mScaleDetector.isInProgress()) {
                return false;
            }
            if (!this.f67199c) {
                ZoomLayout.this.mPanDispatcher.b();
                this.f67199c = true;
            }
            boolean zK = ZoomLayout.this.k(distanceX, distanceY, true);
            if (zK) {
                ZoomLayout.this.mPanDispatcher.a();
            }
            ZoomLayout zoomLayout = ZoomLayout.this;
            if (zoomLayout.mAllowParentInterceptOnEdge && !zK && (!zoomLayout.isScaled() || ZoomLayout.this.mAllowParentInterceptOnScaled)) {
                ZoomLayout.this.requestDisallowInterceptTouchEvent(false);
            }
            return zK;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent e10) {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent e10) {
            ZoomLayout.this.e(e10);
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e10) {
            return false;
        }
    }

    public interface e {
        boolean a(ZoomLayout view, m info);
    }

    public interface f {
        void a(ZoomLayout view, m info);
    }

    public interface g {
        void a(ZoomLayout view);

        void b(ZoomLayout view);

        void c(ZoomLayout view);
    }

    public interface h {
        boolean a(ZoomLayout view, m info);
    }

    public interface i {
        boolean a(ZoomLayout view, int action, m info);
    }

    public interface j {
        void a(ZoomLayout view, float scale);

        void b(ZoomLayout view, float scale);

        void c(ZoomLayout view, float scale);
    }

    private class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f67201a;

        private k() {
            this.f67201a = 0;
        }

        void a() {
            if (ZoomLayout.this.mOnPanListeners != null) {
                int size = ZoomLayout.this.mOnPanListeners.size();
                for (int i10 = 0; i10 < size; i10++) {
                    g gVar = (g) ZoomLayout.this.mOnPanListeners.get(i10);
                    if (gVar != null) {
                        gVar.a(ZoomLayout.this);
                    }
                }
            }
        }

        void b() {
            int i10 = this.f67201a;
            this.f67201a = i10 + 1;
            if (i10 != 0 || ZoomLayout.this.mOnPanListeners == null) {
                return;
            }
            int size = ZoomLayout.this.mOnPanListeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                g gVar = (g) ZoomLayout.this.mOnPanListeners.get(i11);
                if (gVar != null) {
                    gVar.c(ZoomLayout.this);
                }
            }
        }

        void c() {
            int i10 = this.f67201a - 1;
            this.f67201a = i10;
            if (i10 != 0 || ZoomLayout.this.mOnPanListeners == null) {
                return;
            }
            int size = ZoomLayout.this.mOnPanListeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                g gVar = (g) ZoomLayout.this.mOnPanListeners.get(i11);
                if (gVar != null) {
                    gVar.b(ZoomLayout.this);
                }
            }
        }
    }

    private class l implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f67203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f67204c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f67205d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f67206e;

        private l() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int i10 = this.f67203b;
            int i11 = this.f67204c;
            int i12 = this.f67205d;
            int i13 = this.f67206e;
            this.f67203b = ZoomLayout.this.getLeft();
            this.f67204c = ZoomLayout.this.getTop();
            this.f67205d = ZoomLayout.this.getRight();
            int bottom = ZoomLayout.this.getBottom();
            this.f67206e = bottom;
            if ((i10 == this.f67203b && i11 == this.f67204c && i12 == this.f67205d && i13 == bottom) ? false : true) {
                ZoomLayout.this.n();
                PointF closestValidTranslationPoint = ZoomLayout.this.getClosestValidTranslationPoint();
                ZoomLayout.this.j(closestValidTranslationPoint.x, closestValidTranslationPoint.y, false);
            }
        }
    }

    public static class m {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f67208i = "TapInfo[ absX:%.0f, absY:%.0f, relX:%.0f, relY:%.0f, percentX:%.2f, percentY:%.2f, contentClicked:%s ]";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f67209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f67210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f67211c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f67212d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f67213e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f67214f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f67215g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f67216h;

        public float a() {
            return this.f67214f;
        }

        public float b() {
            return this.f67215g;
        }

        public float c() {
            return this.f67212d;
        }

        public float d() {
            return this.f67213e;
        }

        public View e() {
            return this.f67209a;
        }

        public float f() {
            return this.f67210b;
        }

        public float g() {
            return this.f67211c;
        }

        public boolean h() {
            return this.f67216h;
        }

        public String toString() {
            return String.format(Locale.US, f67208i, Float.valueOf(this.f67210b), Float.valueOf(this.f67211c), Float.valueOf(this.f67212d), Float.valueOf(this.f67213e), Float.valueOf(this.f67214f), Float.valueOf(this.f67215g), Boolean.valueOf(this.f67216h));
        }

        private m() {
        }

        private m(ZoomLayout zoomLayout, MotionEvent e10) {
            this.f67209a = zoomLayout;
            this.f67210b = e10.getX();
            this.f67211c = e10.getY();
            zoomLayout.mArray[0] = this.f67210b;
            zoomLayout.mArray[1] = this.f67211c;
            zoomLayout.t(zoomLayout.mArray);
            View childAt = zoomLayout.getChildAt(0);
            this.f67212d = zoomLayout.mArray[0] - childAt.getLeft();
            this.f67213e = zoomLayout.mArray[1] - childAt.getTop();
            this.f67214f = this.f67212d / childAt.getWidth();
            this.f67215g = this.f67213e / childAt.getHeight();
            this.f67216h = zoomLayout.mDrawRect.contains(this.f67210b, this.f67211c);
        }

        public m(View view, float x10, float y10, float relativeX, float relativeY, float percentX, float percentY, boolean contentClicked) {
            this.f67209a = view;
            this.f67210b = x10;
            this.f67211c = y10;
            this.f67212d = relativeX;
            this.f67213e = relativeY;
            this.f67214f = percentX;
            this.f67215g = percentY;
            this.f67216h = contentClicked;
        }

        public m(m info) {
            this(info.f67209a, info.f67210b, info.f67211c, info.f67212d, info.f67213e, info.f67214f, info.f67215g, info.f67216h);
        }
    }

    private class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f67217a;

        private n() {
            this.f67217a = 0;
        }

        void a(float scale) {
            if (ZoomLayout.this.mOnZoomListeners != null) {
                int size = ZoomLayout.this.mOnZoomListeners.size();
                for (int i10 = 0; i10 < size; i10++) {
                    j jVar = (j) ZoomLayout.this.mOnZoomListeners.get(i10);
                    if (jVar != null) {
                        jVar.b(ZoomLayout.this, scale);
                    }
                }
            }
        }

        void b(float scale) {
            int i10 = this.f67217a;
            this.f67217a = i10 + 1;
            if (i10 != 0 || ZoomLayout.this.mOnZoomListeners == null) {
                return;
            }
            int size = ZoomLayout.this.mOnZoomListeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar = (j) ZoomLayout.this.mOnZoomListeners.get(i11);
                if (jVar != null) {
                    jVar.a(ZoomLayout.this, scale);
                }
            }
        }

        void c(float scale) {
            int i10 = this.f67217a - 1;
            this.f67217a = i10;
            if (i10 != 0 || ZoomLayout.this.mOnZoomListeners == null) {
                return;
            }
            int size = ZoomLayout.this.mOnZoomListeners.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar = (j) ZoomLayout.this.mOnZoomListeners.get(i11);
                if (jVar != null) {
                    jVar.c(ZoomLayout.this, scale);
                }
            }
        }
    }

    public ZoomLayout(Context context) {
        super(context);
        this.DEBUG = false;
        this.mScaleMatrix = new Matrix();
        this.mScaleMatrixInverse = new Matrix();
        this.mTranslateMatrix = new Matrix();
        this.mTranslateMatrixInverse = new Matrix();
        this.mMatrixValues = new float[9];
        this.mArray = new float[6];
        this.mAllowOverScale = true;
        this.mDrawRect = new RectF();
        this.mViewPortRect = new RectF();
        this.mAnimationInterpolator = new DecelerateInterpolator();
        this.mZoomDuration = 250;
        this.mAllowParentInterceptOnEdge = true;
        this.mAllowParentInterceptOnScaled = false;
        this.mMinScale = 1.0f;
        this.mMaxScale = 3.0f;
        this.mAllowZoom = false;
        this.mZoomDispatcher = new n();
        this.mPanDispatcher = new k();
        i(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c cVar = this.mFlingRunnable;
        if (cVar != null) {
            cVar.a();
            this.mFlingRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        b bVar = this.mAnimatedZoomRunnable;
        if (bVar != null) {
            bVar.a();
            this.mAnimatedZoomRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(MotionEvent ev) {
        List<e> list = this.mOnDoubleTapListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = this.mOnDoubleTapListeners.get(i10);
                if (eVar != null) {
                    eVar.a(this, new m(ev));
                }
            }
        }
    }

    public static float clamp(float min, float current, float max) {
        return Math.max(min, Math.min(current, max));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(MotionEvent ev) {
        List<f> list = this.mOnLongTapListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = this.mOnLongTapListeners.get(i10);
                if (fVar != null) {
                    fVar.a(this, new m(ev));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(MotionEvent ev) {
        List<h> list = this.mOnTapListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                h hVar = this.mOnTapListeners.get(i10);
                if (hVar != null) {
                    hVar.a(this, new m(ev));
                }
            }
        }
    }

    private void f(int action, MotionEvent ev) {
        List<i> list = this.mOnTouchListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                i iVar = this.mOnTouchListeners.get(i10);
                if (iVar != null) {
                    iVar.a(this, action, new m(ev));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(float focusX, float focusY) {
        float[] fArr = this.mArray;
        fArr[0] = focusX;
        fArr[1] = focusY;
        t(fArr);
        float fH = h(this.mScaleMatrix, 2);
        float fH2 = h(this.mScaleMatrix, 5);
        float scale = getScale();
        float[] fArr2 = this.mArray;
        l(scale, fArr2[0], fArr2[1]);
        j((h(this.mScaleMatrix, 2) - fH) + getPosX(), (h(this.mScaleMatrix, 5) - fH2) + getPosY(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF getClosestValidTranslationPoint() {
        PointF pointF = new PointF(getPosX(), getPosY());
        if (this.mDrawRect.width() < this.mViewPortRect.width()) {
            pointF.x += this.mDrawRect.centerX() - this.mViewPortRect.centerX();
        } else {
            RectF rectF = this.mDrawRect;
            float f10 = rectF.right;
            RectF rectF2 = this.mViewPortRect;
            float f11 = rectF2.right;
            if (f10 < f11) {
                pointF.x += f10 - f11;
            } else {
                float f12 = rectF.left;
                float f13 = rectF2.left;
                if (f12 > f13) {
                    pointF.x += f12 - f13;
                }
            }
        }
        if (this.mDrawRect.height() < this.mViewPortRect.height()) {
            pointF.y += this.mDrawRect.centerY() - this.mViewPortRect.centerY();
        } else {
            RectF rectF3 = this.mDrawRect;
            float f14 = rectF3.bottom;
            RectF rectF4 = this.mViewPortRect;
            float f15 = rectF4.bottom;
            if (f14 < f15) {
                pointF.y += f14 - f15;
            } else {
                float f16 = rectF3.top;
                float f17 = rectF4.top;
                if (f16 > f17) {
                    pointF.y += f16 - f17;
                }
            }
        }
        return pointF;
    }

    private RectF getTranslateDeltaBounds() {
        RectF rectF = new RectF();
        float fWidth = this.mDrawRect.width() - this.mViewPortRect.width();
        if (fWidth < 0.0f) {
            float fRound = Math.round((this.mViewPortRect.width() - this.mDrawRect.width()) / 2.0f);
            RectF rectF2 = this.mDrawRect;
            float f10 = rectF2.left;
            if (fRound > f10) {
                rectF.left = 0.0f;
                rectF.right = fRound - rectF2.left;
            } else {
                rectF.left = fRound - f10;
                rectF.right = 0.0f;
            }
        } else {
            float f11 = this.mDrawRect.left - this.mViewPortRect.left;
            rectF.left = f11;
            rectF.right = f11 + fWidth;
        }
        float fHeight = this.mDrawRect.height() - this.mViewPortRect.height();
        if (fHeight < 0.0f) {
            float fRound2 = Math.round((this.mViewPortRect.height() - this.mDrawRect.height()) / 2.0f);
            float f12 = this.mDrawRect.top;
            if (fRound2 > f12) {
                rectF.top = f12 - fRound2;
                rectF.bottom = 0.0f;
            } else {
                rectF.top = fRound2 - f12;
                rectF.bottom = 0.0f;
            }
        } else {
            float f13 = this.mDrawRect.top - this.mViewPortRect.top;
            rectF.top = f13;
            rectF.bottom = f13 + fHeight;
        }
        return rectF;
    }

    private float h(Matrix matrix, int value) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[value];
    }

    private void i(Context context, AttributeSet attrs) {
        this.mGestureListener = new d();
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, this.mGestureListener);
        this.mScaleDetector = scaleGestureDetector;
        scaleGestureDetector.setQuickScaleEnabled(false);
        this.mGestureDetector = new GestureDetector(context, this.mGestureListener);
        this.mSimpleOnGlobalLayoutChangedListener = new l();
        getViewTreeObserver().addOnGlobalLayoutListener(this.mSimpleOnGlobalLayoutChangedListener);
    }

    public static boolean isEqual(double lhs, double rhs, double epsilon) {
        return Double.compare(lhs, rhs) == 0 || Math.abs(lhs - rhs) <= epsilon;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(float posX, float posY, boolean clamp) {
        return k(posX - getPosX(), posY - getPosY(), clamp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k(float dx, float dy, boolean clamp) {
        if (clamp) {
            RectF translateDeltaBounds = getTranslateDeltaBounds();
            dx = clamp(translateDeltaBounds.left, dx, translateDeltaBounds.right);
            dy = clamp(translateDeltaBounds.top, dy, translateDeltaBounds.bottom);
        }
        float posX = dx + getPosX();
        float posY = dy + getPosY();
        if (isEqual(posX, getPosX()) && isEqual(posY, getPosY())) {
            return false;
        }
        this.mTranslateMatrix.setTranslate(-posX, -posY);
        n();
        invalidate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(float scale, float focusX, float focusY) {
        this.mFocusX = focusX;
        this.mFocusY = focusY;
        this.mScaleMatrix.setScale(scale, scale, focusX, focusY);
        n();
        requestLayout();
        invalidate();
    }

    private void m(String msg) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.mScaleMatrix.invert(this.mScaleMatrixInverse);
        this.mTranslateMatrix.invert(this.mTranslateMatrixInverse);
        com.join.mgps.customview.zoomlayout.c.l(this.mViewPortRect, 0.0f, 0.0f, getWidth(), getHeight());
        View childAt = getChildAt(0);
        if (childAt != null) {
            com.join.mgps.customview.zoomlayout.c.l(this.mDrawRect, childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
            r(this.mDrawRect);
        } else {
            float fCenterX = this.mViewPortRect.centerX();
            float fCenterY = this.mViewPortRect.centerY();
            this.mDrawRect.set(fCenterX, fCenterY, fCenterX, fCenterY);
        }
    }

    private void o(String tag, boolean regulare, boolean inverted) {
        if (regulare) {
            m(String.format("%s: mScaleMatrix            %s", tag, com.join.mgps.customview.zoomlayout.c.e(this.mScaleMatrix)));
            m(String.format("%s: mTranslateMatrix        %s", tag, com.join.mgps.customview.zoomlayout.c.e(this.mTranslateMatrix)));
        }
        if (inverted) {
            m(String.format("%s: mScaleMatrixInverse     %s", tag, com.join.mgps.customview.zoomlayout.c.e(this.mScaleMatrixInverse)));
            m(String.format("%s: mTranslateMatrixInverse %s", tag, com.join.mgps.customview.zoomlayout.c.e(this.mTranslateMatrixInverse)));
        }
    }

    private void p(String tag) {
        m(com.join.mgps.customview.zoomlayout.c.g(tag, "ViewRect", this.mViewPortRect));
        m(com.join.mgps.customview.zoomlayout.c.g(tag, "DrawRect", this.mDrawRect));
    }

    private void q(Rect rect) {
        com.join.mgps.customview.zoomlayout.c.h(this.mArray, rect);
        float[] fArrS = s(this.mArray);
        this.mArray = fArrS;
        com.join.mgps.customview.zoomlayout.c.k(rect, fArrS);
    }

    private void r(RectF rect) {
        com.join.mgps.customview.zoomlayout.c.i(this.mArray, rect);
        float[] fArrS = s(this.mArray);
        this.mArray = fArrS;
        com.join.mgps.customview.zoomlayout.c.m(rect, fArrS);
    }

    public static void removeGlobal(View v10, ViewTreeObserver.OnGlobalLayoutListener listener) {
        v10.getViewTreeObserver().removeOnGlobalLayoutListener(listener);
    }

    private float[] s(float[] a10) {
        this.mScaleMatrix.mapPoints(a10);
        this.mTranslateMatrix.mapPoints(a10);
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float[] t(float[] a10) {
        this.mTranslateMatrixInverse.mapPoints(a10);
        this.mScaleMatrixInverse.mapPoints(a10);
        return a10;
    }

    public void addOnDoubleTapListener(e l10) {
        if (this.mOnDoubleTapListeners == null) {
            this.mOnDoubleTapListeners = new ArrayList();
        }
        this.mOnDoubleTapListeners.add(l10);
    }

    public void addOnLongTapListener(f l10) {
        if (this.mOnLongTapListeners == null) {
            this.mOnLongTapListeners = new ArrayList();
        }
        this.mOnLongTapListeners.add(l10);
    }

    public void addOnPanListener(g l10) {
        if (this.mOnPanListeners == null) {
            this.mOnPanListeners = new ArrayList();
        }
        this.mOnPanListeners.add(l10);
    }

    public void addOnTapListener(h l10) {
        if (this.mOnTapListeners == null) {
            this.mOnTapListeners = new ArrayList();
        }
        this.mOnTapListeners.add(l10);
    }

    public void addOnTouchListener(i l10) {
        if (this.mOnTouchListeners == null) {
            this.mOnTouchListeners = new ArrayList();
        }
        this.mOnTouchListeners.add(l10);
    }

    public void addOnZoomListener(j l10) {
        if (this.mOnZoomListeners == null) {
            this.mOnZoomListeners = new ArrayList();
        }
        this.mOnZoomListeners.add(l10);
    }

    public void clearOnDoubleTapListeners() {
        List<e> list = this.mOnDoubleTapListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnLongTapListeners() {
        List<f> list = this.mOnLongTapListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnPanListeners() {
        List<g> list = this.mOnPanListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnTabListeners() {
        List<h> list = this.mOnTapListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnTouchListener() {
        List<i> list = this.mOnTouchListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnZoomListeners() {
        List<j> list = this.mOnZoomListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(-getPosX(), -getPosY());
        float scale = getScale();
        canvas.scale(scale, scale, this.mFocusX, this.mFocusY);
        try {
            super.dispatchDraw(canvas);
        } catch (Exception unused) {
        }
        if (this.DEBUG) {
            com.join.mgps.customview.zoomlayout.c.a(canvas, getContext(), getPosX(), getPosY(), this.mFocusX, this.mFocusY, h(this.mScaleMatrixInverse, 0));
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        this.mArray[0] = ev.getX();
        this.mArray[1] = ev.getY();
        t(this.mArray);
        float[] fArr = this.mArray;
        ev.setLocation(fArr[0], fArr[1]);
        return super.dispatchTouchEvent(ev);
    }

    public RectF getDrawRect() {
        return new RectF(this.mDrawRect);
    }

    public float getMaxScale() {
        return this.mMaxScale;
    }

    public float getMinScale() {
        return this.mMinScale;
    }

    public float getPosX() {
        return -h(this.mTranslateMatrix, 2);
    }

    public float getPosY() {
        return -h(this.mTranslateMatrix, 5);
    }

    public float getScale() {
        return h(this.mScaleMatrix, 0);
    }

    public int getZoomDuration() {
        return this.mZoomDuration;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        q(dirty);
        float scale = getScale();
        location[0] = (int) (location[0] * scale);
        location[1] = (int) (location[1] * scale);
        return super.invalidateChildInParent(location, dirty);
    }

    public boolean isAllowOverScale() {
        return this.mAllowOverScale;
    }

    public boolean isAllowParentInterceptOnEdge() {
        return this.mAllowParentInterceptOnEdge;
    }

    public boolean isAllowParentInterceptOnScaled() {
        return this.mAllowParentInterceptOnScaled;
    }

    public boolean isAllowZoom() {
        return this.mAllowZoom;
    }

    public boolean isScaled() {
        return !isEqual(getScale(), 1.0d, 0.05000000074505806d);
    }

    public boolean isScaling() {
        return this.mScaleDetector.isInProgress();
    }

    public boolean isTranslating() {
        return this.mGestureListener.f67199c;
    }

    public boolean moveBy(float dX, float dY) {
        return moveTo(dX + getPosX(), dY + getPosY());
    }

    public boolean moveTo(float posX, float posY) {
        this.mPanDispatcher.b();
        if (j(posX, posY, true)) {
            this.mPanDispatcher.a();
        }
        this.mPanDispatcher.c();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeGlobal(this, this.mSimpleOnGlobalLayoutChangedListener);
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.mAllowZoom;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        this.mArray[0] = ev.getX();
        this.mArray[1] = ev.getY();
        s(this.mArray);
        float[] fArr = this.mArray;
        ev.setLocation(fArr[0], fArr[1]);
        if (!this.mAllowZoom) {
            return false;
        }
        int action = ev.getAction() & 255;
        f(action, ev);
        boolean z10 = this.mGestureDetector.onTouchEvent(ev) || this.mScaleDetector.onTouchEvent(ev);
        if (action == 1) {
            return this.mGestureListener.b(ev) || z10;
        }
        return z10;
    }

    public void removeOnDoubleTapListener(e listener) {
        List<e> list = this.mOnDoubleTapListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void removeOnLongTapListener(f listener) {
        List<f> list = this.mOnLongTapListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void removeOnPanListener(g listener) {
        List<g> list = this.mOnPanListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void removeOnTouchListener(h listener) {
        List<h> list = this.mOnTapListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void removeOnTouchListeners(i listener) {
        List<i> list = this.mOnTouchListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void removeOnZoomListener(j listener) {
        List<j> list = this.mOnZoomListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void setAllowOverScale(boolean allowOverScale) {
        this.mAllowOverScale = allowOverScale;
    }

    public void setAllowParentInterceptOnEdge(boolean allowParentInterceptOnEdge) {
        this.mAllowParentInterceptOnEdge = allowParentInterceptOnEdge;
    }

    public void setAllowParentInterceptOnScaled(boolean allowParentInterceptOnScaled) {
        this.mAllowParentInterceptOnScaled = allowParentInterceptOnScaled;
    }

    public void setAllowZoom(boolean allowZoom) {
        this.mAllowZoom = allowZoom;
    }

    public void setMaxScale(float maxScale) {
        this.mMaxScale = maxScale;
        if (maxScale < this.mMinScale) {
            setMinScale(maxScale);
        }
    }

    public void setMinScale(float minScale) {
        this.mMinScale = minScale;
        if (minScale > this.mMaxScale) {
            setMaxScale(minScale);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l10) {
        throw new IllegalStateException("Cannot set OnClickListener, please use OnTapListener.");
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener l10) {
        throw new IllegalStateException("Cannot set OnLongClickListener, please use OnLongTabListener.");
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener l10) {
        throw new IllegalStateException("Cannot set OnTouchListener.");
    }

    public void setScale(float scale) {
        setScale(scale, true);
    }

    public void setZoomDuration(int zoomDuration) {
        if (zoomDuration < 0) {
            zoomDuration = 250;
        }
        this.mZoomDuration = zoomDuration;
    }

    public void setZoomInterpolator(Interpolator zoomAnimationInterpolator) {
        this.mAnimationInterpolator = zoomAnimationInterpolator;
    }

    public static boolean isEqual(double lhs, double rhs) {
        return isEqual(lhs, rhs, 0.001d);
    }

    public void setScale(float scale, boolean animate) {
        getChildAt(0);
        setScale(scale, getRight() / 2, getBottom() / 2, animate);
    }

    public void setScale(float scale, float focusX, float focusY, boolean animate) {
        if (this.mAllowZoom) {
            g(focusX, focusY);
            if (!this.mAllowOverScale) {
                scale = clamp(this.mMinScale, scale, this.mMaxScale);
            }
            float f10 = scale;
            if (animate) {
                b bVar = new b();
                this.mAnimatedZoomRunnable = bVar;
                bVar.h(getScale(), f10, this.mFocusX, this.mFocusY, true);
                ViewCompat.postOnAnimation(this, this.mAnimatedZoomRunnable);
                return;
            }
            this.mZoomDispatcher.b(getScale());
            l(f10, this.mFocusX, this.mFocusY);
            this.mZoomDispatcher.a(f10);
            this.mZoomDispatcher.c(f10);
        }
    }

    public ZoomLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.DEBUG = false;
        this.mScaleMatrix = new Matrix();
        this.mScaleMatrixInverse = new Matrix();
        this.mTranslateMatrix = new Matrix();
        this.mTranslateMatrixInverse = new Matrix();
        this.mMatrixValues = new float[9];
        this.mArray = new float[6];
        this.mAllowOverScale = true;
        this.mDrawRect = new RectF();
        this.mViewPortRect = new RectF();
        this.mAnimationInterpolator = new DecelerateInterpolator();
        this.mZoomDuration = 250;
        this.mAllowParentInterceptOnEdge = true;
        this.mAllowParentInterceptOnScaled = false;
        this.mMinScale = 1.0f;
        this.mMaxScale = 3.0f;
        this.mAllowZoom = false;
        this.mZoomDispatcher = new n();
        this.mPanDispatcher = new k();
        i(context, attrs);
    }

    public ZoomLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.DEBUG = false;
        this.mScaleMatrix = new Matrix();
        this.mScaleMatrixInverse = new Matrix();
        this.mTranslateMatrix = new Matrix();
        this.mTranslateMatrixInverse = new Matrix();
        this.mMatrixValues = new float[9];
        this.mArray = new float[6];
        this.mAllowOverScale = true;
        this.mDrawRect = new RectF();
        this.mViewPortRect = new RectF();
        this.mAnimationInterpolator = new DecelerateInterpolator();
        this.mZoomDuration = 250;
        this.mAllowParentInterceptOnEdge = true;
        this.mAllowParentInterceptOnScaled = false;
        this.mMinScale = 1.0f;
        this.mMaxScale = 3.0f;
        this.mAllowZoom = false;
        this.mZoomDispatcher = new n();
        this.mPanDispatcher = new k();
        i(context, attrs);
    }

    @TargetApi(21)
    public ZoomLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.DEBUG = false;
        this.mScaleMatrix = new Matrix();
        this.mScaleMatrixInverse = new Matrix();
        this.mTranslateMatrix = new Matrix();
        this.mTranslateMatrixInverse = new Matrix();
        this.mMatrixValues = new float[9];
        this.mArray = new float[6];
        this.mAllowOverScale = true;
        this.mDrawRect = new RectF();
        this.mViewPortRect = new RectF();
        this.mAnimationInterpolator = new DecelerateInterpolator();
        this.mZoomDuration = 250;
        this.mAllowParentInterceptOnEdge = true;
        this.mAllowParentInterceptOnScaled = false;
        this.mMinScale = 1.0f;
        this.mMaxScale = 3.0f;
        this.mAllowZoom = false;
        this.mZoomDispatcher = new n();
        this.mPanDispatcher = new k();
        i(context, attrs);
    }
}
