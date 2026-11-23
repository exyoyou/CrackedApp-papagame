package com.join.mgps.customview;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public class l0 extends Drawable {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f66659t = "RoundedDrawable";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f66660u = -16777216;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RectF f66661a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f66662b = new RectF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f66663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Bitmap f66664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f66665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f66667g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f66668h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f66669i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Matrix f66670j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BitmapShader f66671k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Shader.TileMode f66672l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Shader.TileMode f66673m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f66674n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f66675o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f66676p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f66677q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ColorStateList f66678r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView.ScaleType f66679s;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66680a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f66680a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66680a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66680a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f66680a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f66680a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f66680a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f66680a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public l0(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.f66663c = rectF;
        this.f66668h = new RectF();
        this.f66670j = new Matrix();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f66672l = tileMode;
        this.f66673m = tileMode;
        this.f66674n = true;
        this.f66675o = 0.0f;
        this.f66676p = false;
        this.f66677q = 0.0f;
        this.f66678r = ColorStateList.valueOf(-16777216);
        this.f66679s = ImageView.ScaleType.FIT_CENTER;
        this.f66664d = bitmap;
        int width = bitmap.getWidth();
        this.f66666f = width;
        int height = bitmap.getHeight();
        this.f66667g = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.f66665e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f66669i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.f66678r.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.f66677q);
    }

    public static Bitmap a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static l0 b(Bitmap bitmap) {
        if (bitmap != null) {
            return new l0(bitmap);
        }
        return null;
    }

    public static Drawable c(Drawable drawable) {
        if (drawable == null || (drawable instanceof l0)) {
            return drawable;
        }
        if (!(drawable instanceof LayerDrawable)) {
            Bitmap bitmapA = a(drawable);
            return bitmapA != null ? new l0(bitmapA) : drawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i10 = 0; i10 < numberOfLayers; i10++) {
            layerDrawable.setDrawableByLayerId(layerDrawable.getId(i10), c(layerDrawable.getDrawable(i10)));
        }
        return layerDrawable;
    }

    private void u() {
        float fWidth;
        float fHeight;
        int i10 = a.f66680a[this.f66679s.ordinal()];
        if (i10 == 1) {
            this.f66668h.set(this.f66661a);
            RectF rectF = this.f66668h;
            float f10 = this.f66677q;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            this.f66670j.reset();
            this.f66670j.setTranslate((int) (((this.f66668h.width() - this.f66666f) * 0.5f) + 0.5f), (int) (((this.f66668h.height() - this.f66667g) * 0.5f) + 0.5f));
        } else if (i10 == 2) {
            this.f66668h.set(this.f66661a);
            RectF rectF2 = this.f66668h;
            float f11 = this.f66677q;
            rectF2.inset(f11 / 2.0f, f11 / 2.0f);
            this.f66670j.reset();
            float fWidth2 = 0.0f;
            if (this.f66666f * this.f66668h.height() > this.f66668h.width() * this.f66667g) {
                fWidth = this.f66668h.height() / this.f66667g;
                fWidth2 = (this.f66668h.width() - (this.f66666f * fWidth)) * 0.5f;
                fHeight = 0.0f;
            } else {
                fWidth = this.f66668h.width() / this.f66666f;
                fHeight = (this.f66668h.height() - (this.f66667g * fWidth)) * 0.5f;
            }
            this.f66670j.setScale(fWidth, fWidth);
            Matrix matrix = this.f66670j;
            float f12 = this.f66677q;
            matrix.postTranslate(((int) (fWidth2 + 0.5f)) + f12, ((int) (fHeight + 0.5f)) + f12);
        } else if (i10 == 3) {
            this.f66670j.reset();
            float fMin = (((float) this.f66666f) > this.f66661a.width() || ((float) this.f66667g) > this.f66661a.height()) ? Math.min(this.f66661a.width() / this.f66666f, this.f66661a.height() / this.f66667g) : 1.0f;
            float fWidth3 = (int) (((this.f66661a.width() - (this.f66666f * fMin)) * 0.5f) + 0.5f);
            float fHeight2 = (int) (((this.f66661a.height() - (this.f66667g * fMin)) * 0.5f) + 0.5f);
            this.f66670j.setScale(fMin, fMin);
            this.f66670j.postTranslate(fWidth3, fHeight2);
            this.f66668h.set(this.f66663c);
            this.f66670j.mapRect(this.f66668h);
            RectF rectF3 = this.f66668h;
            float f13 = this.f66677q;
            rectF3.inset(f13 / 2.0f, f13 / 2.0f);
            this.f66670j.setRectToRect(this.f66663c, this.f66668h, Matrix.ScaleToFit.FILL);
        } else if (i10 == 5) {
            this.f66668h.set(this.f66663c);
            this.f66670j.setRectToRect(this.f66663c, this.f66661a, Matrix.ScaleToFit.END);
            this.f66670j.mapRect(this.f66668h);
            RectF rectF4 = this.f66668h;
            float f14 = this.f66677q;
            rectF4.inset(f14 / 2.0f, f14 / 2.0f);
            this.f66670j.setRectToRect(this.f66663c, this.f66668h, Matrix.ScaleToFit.FILL);
        } else if (i10 == 6) {
            this.f66668h.set(this.f66663c);
            this.f66670j.setRectToRect(this.f66663c, this.f66661a, Matrix.ScaleToFit.START);
            this.f66670j.mapRect(this.f66668h);
            RectF rectF5 = this.f66668h;
            float f15 = this.f66677q;
            rectF5.inset(f15 / 2.0f, f15 / 2.0f);
            this.f66670j.setRectToRect(this.f66663c, this.f66668h, Matrix.ScaleToFit.FILL);
        } else if (i10 != 7) {
            this.f66668h.set(this.f66663c);
            this.f66670j.setRectToRect(this.f66663c, this.f66661a, Matrix.ScaleToFit.CENTER);
            this.f66670j.mapRect(this.f66668h);
            RectF rectF6 = this.f66668h;
            float f16 = this.f66677q;
            rectF6.inset(f16 / 2.0f, f16 / 2.0f);
            this.f66670j.setRectToRect(this.f66663c, this.f66668h, Matrix.ScaleToFit.FILL);
        } else {
            this.f66668h.set(this.f66661a);
            RectF rectF7 = this.f66668h;
            float f17 = this.f66677q;
            rectF7.inset(f17 / 2.0f, f17 / 2.0f);
            this.f66670j.reset();
            this.f66670j.setRectToRect(this.f66663c, this.f66668h, Matrix.ScaleToFit.FILL);
        }
        this.f66662b.set(this.f66668h);
    }

    public int d() {
        return this.f66678r.getDefaultColor();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f66674n) {
            BitmapShader bitmapShader = new BitmapShader(this.f66664d, this.f66672l, this.f66673m);
            this.f66671k = bitmapShader;
            Shader.TileMode tileMode = this.f66672l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.f66673m == tileMode2) {
                bitmapShader.setLocalMatrix(this.f66670j);
            }
            this.f66665e.setShader(this.f66671k);
            this.f66674n = false;
        }
        if (this.f66676p) {
            if (this.f66677q <= 0.0f) {
                canvas.drawOval(this.f66662b, this.f66665e);
                return;
            } else {
                canvas.drawOval(this.f66662b, this.f66665e);
                canvas.drawOval(this.f66668h, this.f66669i);
                return;
            }
        }
        if (this.f66677q <= 0.0f) {
            RectF rectF = this.f66662b;
            float f10 = this.f66675o;
            canvas.drawRoundRect(rectF, f10, f10, this.f66665e);
        } else {
            canvas.drawRoundRect(this.f66662b, Math.max(this.f66675o, 0.0f), Math.max(this.f66675o, 0.0f), this.f66665e);
            RectF rectF2 = this.f66668h;
            float f11 = this.f66675o;
            canvas.drawRoundRect(rectF2, f11, f11, this.f66669i);
        }
    }

    public ColorStateList e() {
        return this.f66678r;
    }

    public float f() {
        return this.f66677q;
    }

    public float g() {
        return this.f66675o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f66667g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f66666f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public ImageView.ScaleType h() {
        return this.f66679s;
    }

    public Shader.TileMode i() {
        return this.f66672l;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f66678r.isStateful();
    }

    public Shader.TileMode j() {
        return this.f66673m;
    }

    public boolean k() {
        return this.f66676p;
    }

    public l0 l(int color) {
        return m(ColorStateList.valueOf(color));
    }

    public l0 m(ColorStateList colors) {
        if (colors == null) {
            colors = ColorStateList.valueOf(0);
        }
        this.f66678r = colors;
        this.f66669i.setColor(colors.getColorForState(getState(), -16777216));
        return this;
    }

    public l0 n(float width) {
        this.f66677q = width;
        this.f66669i.setStrokeWidth(width);
        return this;
    }

    public l0 o(float radius) {
        this.f66675o = radius;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        this.f66661a.set(bounds);
        u();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        int colorForState = this.f66678r.getColorForState(state, 0);
        if (this.f66669i.getColor() == colorForState) {
            return super.onStateChange(state);
        }
        this.f66669i.setColor(colorForState);
        return true;
    }

    public l0 p(boolean oval) {
        this.f66676p = oval;
        return this;
    }

    public l0 q(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.f66679s != scaleType) {
            this.f66679s = scaleType;
            u();
        }
        return this;
    }

    public l0 r(Shader.TileMode tileModeX) {
        if (this.f66672l != tileModeX) {
            this.f66672l = tileModeX;
            this.f66674n = true;
            invalidateSelf();
        }
        return this;
    }

    public l0 s(Shader.TileMode tileModeY) {
        if (this.f66673m != tileModeY) {
            this.f66673m = tileModeY;
            this.f66674n = true;
            invalidateSelf();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f66665e.setAlpha(alpha);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.f66665e.setColorFilter(cf);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean dither) {
        this.f66665e.setDither(dither);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filter) {
        this.f66665e.setFilterBitmap(filter);
        invalidateSelf();
    }

    public Bitmap t() {
        return a(this);
    }
}
