package com.byazt.vn;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.byazt.nr.m;
import com.byazt.rb.sp;
import com.byazt.rb.x;
import com.byazt.sa.uj;
import com.byazt.sz.n;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.customview.RoundedImageView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 660, 1887})
public class RoundImageView extends ImageView implements sp, n {
    public static final /* synthetic */ boolean tt = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Drawable f21268a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RectF f21269d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f21270da;
    public Path gr;
    public uj gt;
    public float gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Bitmap f21271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ColorFilter f21272i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f21273m;
    public Canvas md;
    public Shader.TileMode my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f21274n;
    public ImageView.ScaleType nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f21275p;
    public boolean qy;
    public Shader.TileMode rh;
    public x rl;
    public Drawable sl;
    public ColorStateList sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f21276t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f21277u;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f21278x;
    public boolean yp;
    public float yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f21279z;
    public Paint zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Shader.TileMode f21267c = Shader.TileMode.CLAMP;
    public static final ImageView.ScaleType[] uj = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: com.byazt.vn.RoundImageView$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 660, 1571})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f21280c;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f21280c = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21280c[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21280c[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21280c[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21280c[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21280c[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f21280c[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundImageView(Context context) {
        super(context);
        this.f21274n = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.sp = ColorStateList.valueOf(-16777216);
        this.f21278x = 0.0f;
        this.f21272i = null;
        this.f21270da = false;
        this.f21276t = false;
        this.f21277u = false;
        this.yp = false;
        Shader.TileMode tileMode = f21267c;
        this.rh = tileMode;
        this.my = tileMode;
        this.qy = false;
        this.gu = 50.0f;
        this.f21269d = new RectF();
        this.rl = new x(this);
    }

    private Drawable c() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.f21279z;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                m.tt(RoundedImageView.f65501q, "Unable to find resource: " + this.f21279z, e10);
                this.f21279z = 0;
            }
        }
        return c.c(drawable);
    }

    private Drawable tt() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.f21273m;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                m.tt(RoundedImageView.f65501q, "Unable to find resource: " + this.f21273m, e10);
                this.f21273m = 0;
            }
        }
        return c.c(drawable);
    }

    private void uj() {
        Drawable drawable = this.sl;
        if (drawable == null || !this.f21270da) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.sl = drawableMutate;
        if (this.f21276t) {
            drawableMutate.setColorFilter(this.f21272i);
        }
    }

    private void ve() {
        c(this.sl, this.nu);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.tt(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.sp.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.sp;
    }

    public float getBorderRadius() {
        return this.rl.c();
    }

    public float getBorderWidth() {
        return this.f21278x;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f10 : this.f21274n) {
            fMax = Math.max(f10, fMax);
        }
        return fMax;
    }

    @Override // com.byazt.rb.sp
    public float getRipple() {
        return this.ve;
    }

    @Override // com.byazt.rb.sp
    public float getRubIn() {
        return this.rl.getRubIn();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.nu;
    }

    @Override // com.byazt.rb.sp
    public float getShine() {
        return this.rl.getShine();
    }

    @Override // com.byazt.rb.sp
    public float getStretch() {
        return this.rl.getStretch();
    }

    public Shader.TileMode getTileModeX() {
        return this.rh;
    }

    public Shader.TileMode getTileModeY() {
        return this.my;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.a();
        }
        Canvas canvas = this.md;
        if (canvas != null) {
            canvas.setBitmap(null);
        }
        Bitmap bitmap = this.f21271h;
        if (bitmap != null) {
            bitmap.recycle();
            this.md = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        if (!this.qy || (canvas2 = this.md) == null || this.f21271h == null) {
            super.onDraw(canvas);
        } else {
            super.onDraw(canvas2);
            this.md.drawPath(this.gr, this.zm);
            canvas.drawBitmap(this.f21271h, 0.0f, 0.0f, (Paint) null);
        }
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.c(canvas, this);
            this.gt.c(canvas);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.gt;
        if (ujVar == null) {
            super.onMeasure(i10, i11);
        } else {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i12);
        }
        if (i10 <= 0 || i11 <= 0 || !this.qy) {
            return;
        }
        this.f21271h = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.md = new Canvas(this.f21271h);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iWidth;
        if (!this.qy) {
            return super.onTouchEvent(motionEvent);
        }
        this.gt.n();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.gr.moveTo(x10, y10);
            this.yv = x10;
            this.f21275p = y10;
            HashMap map = new HashMap();
            map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, 1);
            this.gt.c("eraseState", map);
        } else if (action == 1) {
            this.gr.computeBounds(this.f21269d, true);
            try {
                iWidth = (int) (((this.f21269d.width() * this.f21269d.height()) / (getWidth() * getHeight())) * 100.0f);
            } catch (Exception unused) {
                iWidth = 0;
            }
            HashMap map2 = new HashMap();
            map2.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, 2);
            map2.put("percent", Integer.valueOf(iWidth));
            this.gt.c("eraseState", map2);
        } else if (action == 2 && x10 > 0.0f && x10 < getWidth() && y10 > 0.0f && y10 < getHeight()) {
            float f10 = this.yv;
            float f11 = this.f21275p;
            this.gr.quadTo(f10, f11, (f10 + x10) / 2.0f, (f11 + y10) / 2.0f);
            this.yv = x10;
            this.f21275p = y10;
        }
        postInvalidate();
        return true;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.gt;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        ColorDrawable colorDrawable = new ColorDrawable(i10);
        this.f21268a = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f21268a = drawable;
        c(true);
        super.setBackgroundDrawable(this.f21268a);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        if (this.f21273m != i10) {
            this.f21273m = i10;
            Drawable drawableTt = tt();
            this.f21268a = drawableTt;
            setBackgroundDrawable(drawableTt);
        }
    }

    public void setBorderColor(int i10) {
        setBorderColor(ColorStateList.valueOf(i10));
    }

    public void setBorderRadius(float f10) {
        x xVar = this.rl;
        if (xVar != null) {
            xVar.c(f10);
        }
    }

    public void setBorderWidth(int i10) {
        setBorderWidth(getResources().getDimension(i10));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f21272i != colorFilter) {
            this.f21272i = colorFilter;
            this.f21276t = true;
            this.f21270da = true;
            uj();
            invalidate();
        }
    }

    public void setCornerRadius(float f10) {
        c(f10, f10, f10, f10);
    }

    public void setCornerRadiusDimen(int i10) {
        float dimension = getResources().getDimension(i10);
        c(dimension, dimension, dimension, dimension);
    }

    public void setEraseEnabled(boolean z10) {
        if (z10) {
            this.gr = new Path();
            Paint paint = new Paint();
            this.zm = paint;
            paint.setAntiAlias(true);
            this.zm.setDither(true);
            this.zm.setStyle(Paint.Style.STROKE);
            this.zm.setStrokeWidth(this.gu * 2.0f);
            this.zm.setStrokeCap(Paint.Cap.ROUND);
            this.zm.setStrokeJoin(Paint.Join.ROUND);
            this.zm.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            this.zm.setColor(0);
            this.qy = true;
        } else {
            this.qy = false;
        }
        postInvalidate();
    }

    public void setEraseRadius(float f10) {
        this.gu = f10;
        Paint paint = this.zm;
        if (paint != null) {
            paint.setStrokeWidth(f10 * 2.0f);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f21279z = 0;
        this.sl = c.c(bitmap);
        ve();
        super.setImageDrawable(this.sl);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f21279z = 0;
        this.sl = c.c(drawable);
        ve();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        if (this.f21279z != i10) {
            this.f21279z = i10;
            this.sl = c();
            ve();
            super.setImageDrawable(this.sl);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z10) {
        this.f21277u = z10;
        ve();
        c(false);
        invalidate();
    }

    public void setRipple(float f10) {
        this.ve = f10;
        x xVar = this.rl;
        if (xVar != null) {
            xVar.tt(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        x xVar = this.rl;
        if (xVar != null) {
            xVar.n(f10);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!tt && scaleType == null) {
            throw new AssertionError();
        }
        if (this.nu != scaleType) {
            this.nu = scaleType;
            int i10 = AnonymousClass1.f21280c[scaleType.ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
                super.setScaleType(scaleType);
            } else {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            ve();
            c(false);
            invalidate();
        }
    }

    public void setShine(float f10) {
        x xVar = this.rl;
        if (xVar != null) {
            xVar.ve(f10);
        }
    }

    public void setStretch(float f10) {
        x xVar = this.rl;
        if (xVar != null) {
            xVar.uj(f10);
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.rh == tileMode) {
            return;
        }
        this.rh = tileMode;
        ve();
        c(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.my == tileMode) {
            return;
        }
        this.my = tileMode;
        ve();
        c(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.sp.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.sp = colorStateList;
        ve();
        c(false);
        if (this.f21278x > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f10) {
        if (this.f21278x == f10) {
            return;
        }
        this.f21278x = f10;
        ve();
        c(false);
        invalidate();
    }

    private void c(boolean z10) {
        if (this.yp) {
            if (z10) {
                this.f21268a = c.c(this.f21268a);
            }
            c(this.f21268a, ImageView.ScaleType.FIT_XY);
        }
    }

    private void c(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof c) {
            c cVar = (c) drawable;
            cVar.c(scaleType).c(this.f21278x).c(this.sp).c(this.f21277u).c(this.rh).tt(this.my);
            float[] fArr = this.f21274n;
            if (fArr != null) {
                cVar.c(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            uj();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                c(layerDrawable.getDrawable(i10), scaleType);
            }
        }
    }

    public void c(float f10, float f11, float f12, float f13) {
        float[] fArr = this.f21274n;
        if (fArr[0] == f10 && fArr[1] == f11 && fArr[2] == f13 && fArr[3] == f12) {
            return;
        }
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[3] = f12;
        fArr[2] = f13;
        ve();
        c(false);
        invalidate();
    }

    public void c(uj ujVar) {
        this.gt = ujVar;
    }
}
