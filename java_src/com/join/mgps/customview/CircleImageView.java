package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CircleImageView extends ImageView {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final ImageView.ScaleType f64434s = ImageView.ScaleType.CENTER_CROP;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Bitmap.Config f64435t = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f64436u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f64437v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f64438w = -16777216;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final boolean f64439x = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f64440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f64441c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f64442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f64443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f64444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Bitmap f64447i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BitmapShader f64448j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64449k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64450l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f64451m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f64452n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ColorFilter f64453o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f64454p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f64455q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f64456r;

    public CircleImageView(Context context) {
        super(context);
        this.f64440b = new RectF();
        this.f64441c = new RectF();
        this.f64442d = new Matrix();
        this.f64443e = new Paint();
        this.f64444f = new Paint();
        this.f64445g = -16777216;
        this.f64446h = 0;
        b();
    }

    private Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f64435t) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f64435t);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    private void b() {
        super.setScaleType(f64434s);
        this.f64454p = true;
        if (this.f64455q) {
            d();
            this.f64455q = false;
        }
    }

    private void d() {
        if (!this.f64454p) {
            this.f64455q = true;
            return;
        }
        if (this.f64447i == null) {
            return;
        }
        Bitmap bitmap = this.f64447i;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f64448j = new BitmapShader(bitmap, tileMode, tileMode);
        this.f64443e.setAntiAlias(true);
        this.f64443e.setShader(this.f64448j);
        this.f64444f.setStyle(Paint.Style.STROKE);
        this.f64444f.setAntiAlias(true);
        this.f64444f.setColor(this.f64445g);
        this.f64444f.setStrokeWidth(this.f64446h);
        this.f64450l = this.f64447i.getHeight();
        this.f64449k = this.f64447i.getWidth();
        this.f64441c.set(0.0f, 0.0f, getWidth(), getHeight());
        this.f64452n = Math.min((this.f64441c.height() - this.f64446h) / 2.0f, (this.f64441c.width() - this.f64446h) / 2.0f);
        this.f64440b.set(this.f64441c);
        if (!this.f64456r) {
            RectF rectF = this.f64440b;
            int i10 = this.f64446h;
            rectF.inset(i10, i10);
        }
        this.f64451m = Math.min(this.f64440b.height() / 2.0f, this.f64440b.width() / 2.0f);
        e();
        invalidate();
    }

    private void e() {
        float fWidth;
        float fHeight;
        this.f64442d.set(null);
        float fWidth2 = 0.0f;
        if (this.f64449k * this.f64440b.height() > this.f64440b.width() * this.f64450l) {
            fWidth = this.f64440b.height() / this.f64450l;
            fWidth2 = (this.f64440b.width() - (this.f64449k * fWidth)) * 0.5f;
            fHeight = 0.0f;
        } else {
            fWidth = this.f64440b.width() / this.f64449k;
            fHeight = (this.f64440b.height() - (this.f64450l * fWidth)) * 0.5f;
        }
        this.f64442d.setScale(fWidth, fWidth);
        Matrix matrix = this.f64442d;
        RectF rectF = this.f64440b;
        matrix.postTranslate(((int) (fWidth2 + 0.5f)) + rectF.left, ((int) (fHeight + 0.5f)) + rectF.top);
        this.f64448j.setLocalMatrix(this.f64442d);
    }

    public boolean c() {
        return this.f64456r;
    }

    public int getBorderColor() {
        return this.f64445g;
    }

    public int getBorderWidth() {
        return this.f64446h;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f64434s;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (getDrawable() == null) {
            return;
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f64451m, this.f64443e);
        if (this.f64446h != 0) {
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f64452n, this.f64444f);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        d();
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean adjustViewBounds) {
        if (adjustViewBounds) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(int borderColor) {
        if (borderColor == this.f64445g) {
            return;
        }
        this.f64445g = borderColor;
        this.f64444f.setColor(borderColor);
        invalidate();
    }

    public void setBorderColorResource(@ColorRes int borderColorRes) {
        setBorderColor(getContext().getResources().getColor(borderColorRes));
    }

    public void setBorderOverlay(boolean borderOverlay) {
        if (borderOverlay == this.f64456r) {
            return;
        }
        this.f64456r = borderOverlay;
        d();
    }

    public void setBorderWidth(int borderWidth) {
        if (borderWidth == this.f64446h) {
            return;
        }
        this.f64446h = borderWidth;
        d();
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter cf) {
        if (cf == this.f64453o) {
            return;
        }
        this.f64453o = cf;
        this.f64443e.setColorFilter(cf);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bm) {
        super.setImageBitmap(bm);
        this.f64447i = bm;
        d();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.f64447i = a(drawable);
        d();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int resId) {
        super.setImageResource(resId);
        this.f64447i = a(getDrawable());
        d();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        this.f64447i = a(getDrawable());
        d();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f64434s) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }

    public CircleImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CircleImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64440b = new RectF();
        this.f64441c = new RectF();
        this.f64442d = new Matrix();
        this.f64443e = new Paint();
        this.f64444f = new Paint();
        this.f64445g = -16777216;
        this.f64446h = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CircleImageView, defStyle, 0);
        this.f64446h = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f64445g = typedArrayObtainStyledAttributes.getColor(0, -16777216);
        this.f64456r = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
        b();
    }
}
