package com.sigmob.sdk.base.blurkit;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class c extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f78814a = 0.12f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f78815b = 12;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f78816c = 24;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final float f78817d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f78818e = Float.NaN;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f78819f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f78820g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f78821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f78822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f78823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f78824k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f78825l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f78826m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f78827n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f78828o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WeakReference<View> f78829p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Point f78830q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Bitmap f78831r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Choreographer.FrameCallback f78832s;

    public c(Context context) {
        super(context, null);
        this.f78819f = 0.12f;
        this.f78820g = 12;
        this.f78821h = 24;
        this.f78822i = 0.0f;
        this.f78823j = Float.NaN;
        this.f78832s = new Choreographer.FrameCallback() { // from class: com.sigmob.sdk.base.blurkit.c.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long frameTimeNanos) {
                c.this.invalidate();
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / c.this.f78821h);
            }
        };
    }

    private Bitmap g() {
        Point positionInScreen;
        Bitmap bitmapA;
        if (getContext() != null && !isInEditMode()) {
            WeakReference<View> weakReference = this.f78829p;
            if (weakReference == null || weakReference.get() == null) {
                WeakReference<View> weakReference2 = new WeakReference<>(getActivityView());
                this.f78829p = weakReference2;
                if (weakReference2.get() == null) {
                    return null;
                }
            }
            if (this.f78826m) {
                if (this.f78830q == null) {
                    this.f78830q = getPositionInScreen();
                }
                positionInScreen = this.f78830q;
            } else {
                positionInScreen = getPositionInScreen();
            }
            super.setAlpha(0.0f);
            int width = this.f78829p.get().getWidth();
            int height = this.f78829p.get().getHeight();
            int width2 = (int) (getWidth() * this.f78819f);
            float height2 = getHeight();
            float f10 = this.f78819f;
            int i10 = (int) (height2 * f10);
            int i11 = (int) (positionInScreen.x * f10);
            int i12 = (int) (positionInScreen.y * f10);
            int width3 = getWidth() / 8;
            int height3 = getHeight() / 8;
            int i13 = -width3;
            if (i11 + i13 < 0) {
                i13 = 0;
            }
            if ((i11 + width) - width3 > width) {
                width3 = (width + width) - i11;
            }
            int i14 = -height3;
            if (i12 + i14 < 0) {
                i14 = 0;
            }
            if (getHeight() + i12 + height3 > height) {
                height3 = 0;
            }
            if (this.f78827n) {
                if (this.f78831r == null) {
                    c();
                }
                if (width2 == 0 || i10 == 0) {
                    return null;
                }
                bitmapA = Bitmap.createBitmap(this.f78831r, i11, i12, width2, i10);
            } else {
                try {
                    View view = this.f78829p.get();
                    int i15 = positionInScreen.x;
                    bitmapA = a(view, new Rect(i15 + i13, positionInScreen.y + i14, i15 + getWidth() + Math.abs(i13) + width3, positionInScreen.y + getHeight() + Math.abs(i14) + height3), this.f78819f);
                } catch (b | NullPointerException unused) {
                }
            }
            if (!this.f78827n) {
                bitmapA = Bitmap.createBitmap(a.a().a(bitmapA, this.f78820g), (int) (Math.abs(i13) * this.f78819f), (int) (Math.abs(i14) * this.f78819f), width2, i10);
            }
            super.setAlpha(Float.isNaN(this.f78823j) ? 1.0f : this.f78823j);
            return bitmapA;
        }
        return null;
    }

    private View getActivityView() {
        try {
            return ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.content);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    private Point getPositionInScreen() {
        PointF pointFA = a((View) this);
        return new Point((int) pointFA.x, (int) pointFA.y);
    }

    public void b() {
        if (this.f78824k) {
            this.f78824k = false;
            Choreographer.getInstance().removeFrameCallback(this.f78832s);
        }
    }

    public void c() {
        this.f78827n = true;
        WeakReference<View> weakReference = this.f78829p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View rootView = this.f78829p.get().getRootView();
        try {
            super.setAlpha(0.0f);
            this.f78831r = a(rootView, new Rect(0, 0, rootView.getWidth(), rootView.getHeight()), this.f78819f);
            if (Float.isNaN(this.f78823j)) {
                super.setAlpha(1.0f);
            } else {
                super.setAlpha(this.f78823j);
            }
            this.f78831r = a.a().a(this.f78831r, this.f78820g);
        } catch (Exception unused) {
        }
    }

    public void d() {
        this.f78827n = false;
        this.f78831r = null;
    }

    public void e() {
        this.f78826m = true;
        this.f78830q = getPositionInScreen();
    }

    public void f() {
        this.f78826m = false;
        this.f78830q = null;
    }

    @Override // android.view.View
    public float getAlpha() {
        return this.f78823j;
    }

    public int getBlurRadius() {
        return this.f78820g;
    }

    public float getCornerRadius() {
        return this.f78822i;
    }

    public float getDownscaleFactor() {
        return this.f78819f;
    }

    public int getFPS() {
        return this.f78821h;
    }

    public boolean getPositionLocked() {
        return this.f78826m;
    }

    public boolean getViewLocked() {
        return this.f78827n;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Bitmap bitmapG = g();
        if (bitmapG != null) {
            this.f78828o.setImageBitmap(bitmapG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f78825l = true;
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f78825l = false;
        b();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        invalidate();
    }

    @Override // android.view.View
    public void setAlpha(float alpha) {
        this.f78823j = alpha;
        if (this.f78827n) {
            return;
        }
        super.setAlpha(alpha);
    }

    public void setBlurRadius(int blurRadius) {
        this.f78820g = blurRadius;
        this.f78831r = null;
        invalidate();
    }

    public void setCornerRadius(float cornerRadius) {
        this.f78822i = cornerRadius;
        d dVar = this.f78828o;
        if (dVar != null) {
            dVar.setCornerRadius(cornerRadius);
        }
        invalidate();
    }

    public void setDownscaleFactor(float downscaleFactor) {
        this.f78819f = downscaleFactor;
        this.f78831r = null;
        invalidate();
    }

    public void setFPS(int fps) {
        if (this.f78824k) {
            b();
        }
        this.f78821h = fps;
        if (this.f78825l) {
            a();
        }
    }

    public c(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f78819f = 0.12f;
        this.f78820g = 12;
        this.f78821h = 24;
        this.f78822i = 0.0f;
        this.f78823j = Float.NaN;
        this.f78832s = new Choreographer.FrameCallback() { // from class: com.sigmob.sdk.base.blurkit.c.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long frameTimeNanos) {
                c.this.invalidate();
                Choreographer.getInstance().postFrameCallbackDelayed(this, 1000 / c.this.f78821h);
            }
        };
        if (!isInEditMode()) {
            a.a(context);
        }
        d dVar = new d(getContext());
        this.f78828o = dVar;
        dVar.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.f78828o);
        setCornerRadius(this.f78822i);
    }

    private Bitmap a(View view, Rect crop, float downscaleFactor) throws b, NullPointerException {
        View rootView = view.getRootView();
        int iWidth = (int) (crop.width() * downscaleFactor);
        int iHeight = (int) (crop.height() * downscaleFactor);
        if (rootView.getWidth() <= 0 || rootView.getHeight() <= 0 || iWidth <= 0 || iHeight <= 0) {
            throw new b("No screen available (width or height = 0)");
        }
        float f10 = (-crop.left) * downscaleFactor;
        float f11 = (-crop.top) * downscaleFactor;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iWidth, iHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.preScale(downscaleFactor, downscaleFactor);
        matrix.postTranslate(f10, f11);
        canvas.setMatrix(matrix);
        rootView.draw(canvas);
        return bitmapCreateBitmap;
    }

    private PointF a(View view) {
        if (getParent() == null) {
            return new PointF();
        }
        try {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup == null) {
                return new PointF();
            }
            PointF pointFA = a(viewGroup);
            pointFA.offset(view.getX(), view.getY());
            return pointFA;
        } catch (Exception unused) {
            return new PointF();
        }
    }

    public void a() {
        if (!this.f78824k && this.f78821h > 0) {
            this.f78824k = true;
            Choreographer.getInstance().postFrameCallback(this.f78832s);
        }
    }
}
