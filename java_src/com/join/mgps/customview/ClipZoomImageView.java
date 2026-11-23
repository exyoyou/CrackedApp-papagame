package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class ClipZoomImageView extends ImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f64499p = "ClipZoomImageView";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static float f64500q = 4.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static float f64501r = 2.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f64504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScaleGestureDetector f64505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Matrix f64506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private GestureDetector f64507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f64508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f64510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f64511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f64512l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64513m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f64514n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64515o;

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e10) {
            if (ClipZoomImageView.this.f64508h) {
                return true;
            }
            float x10 = e10.getX();
            float y10 = e10.getY();
            if (ClipZoomImageView.this.getScale() < ClipZoomImageView.f64501r) {
                ClipZoomImageView clipZoomImageView = ClipZoomImageView.this;
                clipZoomImageView.postDelayed(clipZoomImageView.new b(ClipZoomImageView.f64501r, x10, y10), 16L);
                ClipZoomImageView.this.f64508h = true;
            } else {
                ClipZoomImageView clipZoomImageView2 = ClipZoomImageView.this;
                clipZoomImageView2.postDelayed(clipZoomImageView2.new b(clipZoomImageView2.f64502b, x10, y10), 16L);
                ClipZoomImageView.this.f64508h = true;
            }
            return true;
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final float f64517g = 1.07f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static final float f64518h = 0.93f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f64519b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f64520c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f64521d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f64522e;

        public b(float targetScale, float x10, float y10) {
            this.f64519b = targetScale;
            this.f64521d = x10;
            this.f64522e = y10;
            if (ClipZoomImageView.this.getScale() < this.f64519b) {
                this.f64520c = f64517g;
            } else {
                this.f64520c = f64518h;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Matrix matrix = ClipZoomImageView.this.f64506f;
            float f10 = this.f64520c;
            matrix.postScale(f10, f10, this.f64521d, this.f64522e);
            ClipZoomImageView.this.g();
            ClipZoomImageView clipZoomImageView = ClipZoomImageView.this;
            clipZoomImageView.setImageMatrix(clipZoomImageView.f64506f);
            float scale = ClipZoomImageView.this.getScale();
            float f11 = this.f64520c;
            if ((f11 > 1.0f && scale < this.f64519b) || (f11 < 1.0f && this.f64519b < scale)) {
                ClipZoomImageView.this.postDelayed(this, 16L);
                return;
            }
            float f12 = this.f64519b / scale;
            ClipZoomImageView.this.f64506f.postScale(f12, f12, this.f64521d, this.f64522e);
            ClipZoomImageView.this.g();
            ClipZoomImageView clipZoomImageView2 = ClipZoomImageView.this;
            clipZoomImageView2.setImageMatrix(clipZoomImageView2.f64506f);
            ClipZoomImageView.this.f64508h = false;
        }
    }

    public ClipZoomImageView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        float f10;
        RectF matrixRectF = getMatrixRectF();
        int width = getWidth();
        int height = getHeight();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rect.width() =  ");
        sb2.append(matrixRectF.width());
        sb2.append(" , width - 2 * mHorizontalPadding =");
        sb2.append(width - (this.f64514n * 2));
        double dWidth = ((double) matrixRectF.width()) + 0.01d;
        int i10 = this.f64514n;
        float f11 = 0.0f;
        if (dWidth >= width - (i10 * 2)) {
            float f12 = matrixRectF.left;
            f10 = f12 > ((float) i10) ? (-f12) + i10 : 0.0f;
            float f13 = matrixRectF.right;
            if (f13 < width - i10) {
                f10 = (width - i10) - f13;
            }
        } else {
            f10 = 0.0f;
        }
        double dHeight = ((double) matrixRectF.height()) + 0.01d;
        int i11 = this.f64515o;
        if (dHeight >= height - (i11 * 2)) {
            float f14 = matrixRectF.top;
            f11 = f14 > ((float) i11) ? (-f14) + i11 : 0.0f;
            float f15 = matrixRectF.bottom;
            if (f15 < height - i11) {
                f11 = (height - i11) - f15;
            }
        }
        this.f64506f.postTranslate(f10, f11);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.f64506f;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean i(float dx, float dy) {
        return Math.sqrt((double) ((dx * dx) + (dy * dy))) >= ((double) this.f64509i);
    }

    public final float getScale() {
        this.f64506f.getValues(this.f64504d);
        return this.f64504d[0];
    }

    public Bitmap h() {
        int width = getWidth();
        if (width <= 2) {
            width = (int) getResources().getDimension(R.dimen.wdp720);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmapCreateBitmap));
        int i10 = this.f64514n;
        return Bitmap.createBitmap(bitmapCreateBitmap, i10, this.f64515o, width - (i10 * 2), width - (i10 * 2));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Drawable drawable;
        if (!this.f64503c || (drawable = getDrawable()) == null) {
            return;
        }
        this.f64515o = (getHeight() - (getWidth() - (this.f64514n * 2))) / 2;
        int width = getWidth();
        int height = getHeight();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float width2 = (intrinsicWidth >= getWidth() - (this.f64514n * 2) || intrinsicHeight <= getHeight() - (this.f64515o * 2)) ? 1.0f : ((getWidth() * 1.0f) - (this.f64514n * 2)) / intrinsicWidth;
        if (intrinsicHeight < getHeight() - (this.f64515o * 2) && intrinsicWidth > getWidth() - (this.f64514n * 2)) {
            width2 = ((getHeight() * 1.0f) - (this.f64515o * 2)) / intrinsicHeight;
        }
        if (intrinsicWidth < getWidth() - (this.f64514n * 2) && intrinsicHeight < getHeight() - (this.f64515o * 2)) {
            width2 = Math.max(((getWidth() * 1.0f) - (this.f64514n * 2)) / intrinsicWidth, ((getHeight() * 1.0f) - (this.f64515o * 2)) / intrinsicHeight);
        }
        this.f64502b = width2;
        f64501r = 2.0f * width2;
        f64500q = 4.0f * width2;
        this.f64506f.postTranslate((width - intrinsicWidth) / 2, (height - intrinsicHeight) / 2);
        this.f64506f.postScale(width2, width2, getWidth() / 2, getHeight() / 2);
        setImageMatrix(this.f64506f);
        this.f64503c = false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector detector) {
        float scale = getScale();
        float scaleFactor = detector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        float f10 = f64500q;
        if ((scale < f10 && scaleFactor > 1.0f) || (scale > this.f64502b && scaleFactor < 1.0f)) {
            float f11 = scaleFactor * scale;
            float f12 = this.f64502b;
            if (f11 < f12) {
                scaleFactor = f12 / scale;
            }
            if (scaleFactor * scale > f10) {
                scaleFactor = f10 / scale;
            }
            this.f64506f.postScale(scaleFactor, scaleFactor, detector.getFocusX(), detector.getFocusY());
            g();
            setImageMatrix(this.f64506f);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector detector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector detector) {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        if (this.f64507g.onTouchEvent(event)) {
            return true;
        }
        this.f64505e.onTouchEvent(event);
        int pointerCount = event.getPointerCount();
        float x10 = 0.0f;
        float y10 = 0.0f;
        for (int i10 = 0; i10 < pointerCount; i10++) {
            x10 += event.getX(i10);
            y10 += event.getY(i10);
        }
        float f10 = pointerCount;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        if (pointerCount != this.f64513m) {
            this.f64512l = false;
            this.f64510j = f11;
            this.f64511k = f12;
        }
        this.f64513m = pointerCount;
        int action = event.getAction();
        if (action == 1) {
            this.f64513m = 0;
        } else if (action == 2) {
            float f13 = f11 - this.f64510j;
            float f14 = f12 - this.f64511k;
            if (!this.f64512l) {
                this.f64512l = i(f13, f14);
            }
            if (this.f64512l && getDrawable() != null) {
                RectF matrixRectF = getMatrixRectF();
                if (matrixRectF.width() <= getWidth() - (this.f64514n * 2)) {
                    f13 = 0.0f;
                }
                this.f64506f.postTranslate(f13, matrixRectF.height() > ((float) (getHeight() - (this.f64515o * 2))) ? f14 : 0.0f);
                g();
                setImageMatrix(this.f64506f);
            }
            this.f64510j = f11;
            this.f64511k = f12;
        } else if (action == 3) {
            this.f64513m = 0;
        }
        return true;
    }

    public void setHorizontalPadding(int mHorizontalPadding) {
        this.f64514n = mHorizontalPadding;
    }

    public ClipZoomImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64502b = 1.0f;
        this.f64503c = true;
        this.f64504d = new float[9];
        this.f64505e = null;
        this.f64506f = new Matrix();
        setScaleType(ImageView.ScaleType.MATRIX);
        this.f64507g = new GestureDetector(context, new a());
        this.f64505e = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
    }
}
