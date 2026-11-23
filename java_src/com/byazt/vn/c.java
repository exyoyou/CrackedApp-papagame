package com.byazt.vn;

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
import android.os.Build;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.byazt.nr.m;
import com.join.mgps.customview.l0;
import java.util.HashSet;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 660, 20})
public class c extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21281a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Matrix f21283da;
    public ImageView.ScaleType gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f21284i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean[] f21285m;
    public ColorStateList my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Paint f21286n;
    public boolean nu;
    public float rh;
    public final RectF sl;
    public final int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Shader.TileMode f21287t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Shader.TileMode f21288u;
    public final Bitmap uj;
    public final RectF ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final RectF f21289x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f21290z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f21282c = new RectF();
    public final RectF tt = new RectF();

    /* JADX INFO: renamed from: com.byazt.vn.c$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 660, 26})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f21291c;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f21291c = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21291c[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21291c[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21291c[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21291c[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21291c[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f21291c[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public c(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.ve = rectF;
        this.f21289x = new RectF();
        this.f21283da = new Matrix();
        this.sl = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f21287t = tileMode;
        this.f21288u = tileMode;
        this.yp = true;
        this.f21290z = 0.0f;
        this.f21285m = new boolean[]{true, true, true, true};
        this.nu = false;
        this.rh = 0.0f;
        this.my = ColorStateList.valueOf(-16777216);
        this.gt = ImageView.ScaleType.FIT_CENTER;
        this.uj = bitmap;
        int width = bitmap.getWidth();
        this.f21281a = width;
        int height = bitmap.getHeight();
        this.sp = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.f21286n = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f21284i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.my.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.rh);
    }

    public static c c(Bitmap bitmap) {
        if (bitmap != null) {
            return new c(bitmap);
        }
        return null;
    }

    public static Bitmap tt(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            m.c(th);
            m.tt(l0.f66659t, "Failed to create bitmap from drawable!");
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.yp) {
            BitmapShader bitmapShader = new BitmapShader(this.uj, this.f21287t, this.f21288u);
            Shader.TileMode tileMode = this.f21287t;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.f21288u == tileMode2) {
                bitmapShader.setLocalMatrix(this.f21283da);
            }
            this.f21286n.setShader(bitmapShader);
            this.yp = false;
        }
        if (this.nu) {
            if (this.rh <= 0.0f) {
                canvas.drawOval(this.tt, this.f21286n);
                return;
            } else {
                canvas.drawOval(this.tt, this.f21286n);
                canvas.drawOval(this.f21289x, this.f21284i);
                return;
            }
        }
        if (!c(this.f21285m)) {
            canvas.drawRect(this.tt, this.f21286n);
            if (this.rh > 0.0f) {
                canvas.drawRect(this.f21289x, this.f21284i);
                return;
            }
            return;
        }
        float f10 = this.f21290z;
        if (this.rh <= 0.0f) {
            canvas.drawRoundRect(this.tt, f10, f10, this.f21286n);
            c(canvas);
        } else {
            canvas.drawRoundRect(this.tt, f10, f10, this.f21286n);
            canvas.drawRoundRect(this.f21289x, f10, f10, this.f21284i);
            c(canvas);
            tt(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f21286n.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f21286n.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.sp;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f21281a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.my.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f21282c.set(rect);
        c();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState = this.my.getColorForState(iArr, 0);
        if (this.f21284i.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.f21284i.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f21286n.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21286n.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f21286n.setDither(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f21286n.setFilterBitmap(z10);
        invalidateSelf();
    }

    public static Drawable c(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof c) {
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && k.a(drawable)) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                Drawable.ConstantState constantState = drawable.mutate().getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i10 = 0; i10 < numberOfLayers; i10++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i10), c(layerDrawable.getDrawable(i10)));
                }
                return layerDrawable;
            }
        }
        Bitmap bitmapTt = tt(drawable);
        return bitmapTt != null ? new c(bitmapTt) : drawable;
    }

    private void tt(Canvas canvas) {
        float f10;
        if (tt(this.f21285m) || this.f21290z == 0.0f) {
            return;
        }
        RectF rectF = this.tt;
        float f11 = rectF.left;
        float f12 = rectF.top;
        float fWidth = rectF.width() + f11;
        float fHeight = f12 + this.tt.height();
        float f13 = this.f21290z;
        float f14 = this.rh / 2.0f;
        if (!this.f21285m[0]) {
            canvas.drawLine(f11 - f14, f12, f11 + f13, f12, this.f21284i);
            canvas.drawLine(f11, f12 - f14, f11, f12 + f13, this.f21284i);
        }
        if (!this.f21285m[1]) {
            canvas.drawLine((fWidth - f13) - f14, f12, fWidth, f12, this.f21284i);
            canvas.drawLine(fWidth, f12 - f14, fWidth, f12 + f13, this.f21284i);
        }
        if (this.f21285m[2]) {
            f10 = f13;
        } else {
            f10 = f13;
            canvas.drawLine((fWidth - f13) - f14, fHeight, fWidth + f14, fHeight, this.f21284i);
            canvas.drawLine(fWidth, fHeight - f10, fWidth, fHeight, this.f21284i);
        }
        if (this.f21285m[3]) {
            return;
        }
        canvas.drawLine(f11 - f14, fHeight, f11 + f10, fHeight, this.f21284i);
        canvas.drawLine(f11, fHeight - f10, f11, fHeight, this.f21284i);
    }

    private void c() {
        float fWidth;
        float fHeight;
        int i10 = AnonymousClass1.f21291c[this.gt.ordinal()];
        if (i10 == 1) {
            this.f21289x.set(this.f21282c);
            RectF rectF = this.f21289x;
            float f10 = this.rh;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            this.f21283da.reset();
            this.f21283da.setTranslate((int) (((this.f21289x.width() - this.f21281a) * 0.5f) + 0.5f), (int) (((this.f21289x.height() - this.sp) * 0.5f) + 0.5f));
        } else if (i10 == 2) {
            this.f21289x.set(this.f21282c);
            RectF rectF2 = this.f21289x;
            float f11 = this.rh;
            rectF2.inset(f11 / 2.0f, f11 / 2.0f);
            this.f21283da.reset();
            float fWidth2 = 0.0f;
            if (this.f21281a * this.f21289x.height() > this.f21289x.width() * this.sp) {
                fWidth = this.f21289x.height() / this.sp;
                fWidth2 = (this.f21289x.width() - (this.f21281a * fWidth)) * 0.5f;
                fHeight = 0.0f;
            } else {
                fWidth = this.f21289x.width() / this.f21281a;
                fHeight = (this.f21289x.height() - (this.sp * fWidth)) * 0.5f;
            }
            this.f21283da.setScale(fWidth, fWidth);
            Matrix matrix = this.f21283da;
            float f12 = this.rh;
            matrix.postTranslate(((int) (fWidth2 + 0.5f)) + (f12 / 2.0f), ((int) (fHeight + 0.5f)) + (f12 / 2.0f));
        } else if (i10 == 3) {
            this.f21283da.reset();
            float fMin = (((float) this.f21281a) > this.f21282c.width() || ((float) this.sp) > this.f21282c.height()) ? Math.min(this.f21282c.width() / this.f21281a, this.f21282c.height() / this.sp) : 1.0f;
            float fWidth3 = (int) (((this.f21282c.width() - (this.f21281a * fMin)) * 0.5f) + 0.5f);
            float fHeight2 = (int) (((this.f21282c.height() - (this.sp * fMin)) * 0.5f) + 0.5f);
            this.f21283da.setScale(fMin, fMin);
            this.f21283da.postTranslate(fWidth3, fHeight2);
            this.f21289x.set(this.ve);
            this.f21283da.mapRect(this.f21289x);
            RectF rectF3 = this.f21289x;
            float f13 = this.rh;
            rectF3.inset(f13 / 2.0f, f13 / 2.0f);
            this.f21283da.setRectToRect(this.ve, this.f21289x, Matrix.ScaleToFit.FILL);
        } else if (i10 == 5) {
            this.f21289x.set(this.ve);
            this.f21283da.setRectToRect(this.ve, this.f21282c, Matrix.ScaleToFit.END);
            this.f21283da.mapRect(this.f21289x);
            RectF rectF4 = this.f21289x;
            float f14 = this.rh;
            rectF4.inset(f14 / 2.0f, f14 / 2.0f);
            this.f21283da.setRectToRect(this.ve, this.f21289x, Matrix.ScaleToFit.FILL);
        } else if (i10 == 6) {
            this.f21289x.set(this.ve);
            this.f21283da.setRectToRect(this.ve, this.f21282c, Matrix.ScaleToFit.START);
            this.f21283da.mapRect(this.f21289x);
            RectF rectF5 = this.f21289x;
            float f15 = this.rh;
            rectF5.inset(f15 / 2.0f, f15 / 2.0f);
            this.f21283da.setRectToRect(this.ve, this.f21289x, Matrix.ScaleToFit.FILL);
        } else if (i10 != 7) {
            this.f21289x.set(this.ve);
            this.f21283da.setRectToRect(this.ve, this.f21282c, Matrix.ScaleToFit.CENTER);
            this.f21283da.mapRect(this.f21289x);
            RectF rectF6 = this.f21289x;
            float f16 = this.rh;
            rectF6.inset(f16 / 2.0f, f16 / 2.0f);
            this.f21283da.setRectToRect(this.ve, this.f21289x, Matrix.ScaleToFit.FILL);
        } else {
            this.f21289x.set(this.f21282c);
            RectF rectF7 = this.f21289x;
            float f17 = this.rh;
            rectF7.inset(f17 / 2.0f, f17 / 2.0f);
            this.f21283da.reset();
            this.f21283da.setRectToRect(this.ve, this.f21289x, Matrix.ScaleToFit.FILL);
        }
        this.tt.set(this.f21289x);
        this.yp = true;
    }

    public c tt(Shader.TileMode tileMode) {
        if (this.f21288u != tileMode) {
            this.f21288u = tileMode;
            this.yp = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean tt(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return false;
            }
        }
        return true;
    }

    private void c(Canvas canvas) {
        if (tt(this.f21285m) || this.f21290z == 0.0f) {
            return;
        }
        RectF rectF = this.tt;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float fWidth = rectF.width() + f10;
        float fHeight = this.tt.height() + f11;
        float f12 = this.f21290z;
        if (!this.f21285m[0]) {
            this.sl.set(f10, f11, f10 + f12, f11 + f12);
            canvas.drawRect(this.sl, this.f21286n);
        }
        if (!this.f21285m[1]) {
            this.sl.set(fWidth - f12, f11, fWidth, f12);
            canvas.drawRect(this.sl, this.f21286n);
        }
        if (!this.f21285m[2]) {
            this.sl.set(fWidth - f12, fHeight - f12, fWidth, fHeight);
            canvas.drawRect(this.sl, this.f21286n);
        }
        if (this.f21285m[3]) {
            return;
        }
        this.sl.set(f10, fHeight - f12, f12 + f10, fHeight);
        canvas.drawRect(this.sl, this.f21286n);
    }

    public c c(float f10, float f11, float f12, float f13) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f10));
        hashSet.add(Float.valueOf(f11));
        hashSet.add(Float.valueOf(f12));
        hashSet.add(Float.valueOf(f13));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float fFloatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(fFloatValue) && !Float.isNaN(fFloatValue) && fFloatValue >= 0.0f) {
                    this.f21290z = fFloatValue;
                } else {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(fFloatValue)));
                }
            } else {
                this.f21290z = 0.0f;
            }
            boolean[] zArr = this.f21285m;
            zArr[0] = f10 > 0.0f;
            zArr[1] = f11 > 0.0f;
            zArr[2] = f12 > 0.0f;
            zArr[3] = f13 > 0.0f;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public c c(float f10) {
        this.rh = f10;
        this.f21284i.setStrokeWidth(f10);
        return this;
    }

    public c c(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.my = colorStateList;
        this.f21284i.setColor(colorStateList.getColorForState(getState(), -16777216));
        return this;
    }

    public c c(boolean z10) {
        this.nu = z10;
        return this;
    }

    public c c(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.gt != scaleType) {
            this.gt = scaleType;
            c();
        }
        return this;
    }

    public c c(Shader.TileMode tileMode) {
        if (this.f21287t != tileMode) {
            this.f21287t = tileMode;
            this.yp = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean c(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return true;
            }
        }
        return false;
    }
}
