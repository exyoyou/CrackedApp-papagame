package com.byazt.xd;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 13})
public class tt extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f21791a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f21792c;
    public float cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearGradient f21793d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f21794da;
    public LinearGradient eo;
    public float gr;
    public final Matrix gt;
    public LinearGradient gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuffXfermode f21795h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f21796i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final RectF f21797m;
    public Paint md;
    public final Path my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f21798n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f21799nb = true;
    public final Path nu;
    public LinearGradient or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Paint f21800p;
    public Bitmap qp;
    public LinearGradient qy;
    public final RectF rh;
    public final Paint rl;
    public final float sl;
    public final boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final float f21801t;
    public final float tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f21802u;
    public final boolean uj;
    public final float[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f21803x;
    public final int[] yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float[] f21804z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public LinearGradient f21805zb;
    public ValueAnimator zm;

    public tt(Drawable drawable, int[] iArr, float[] fArr, float f10, float[] fArr2, boolean z10, int i10, int i11, boolean z11, float f11, float f12, int i12, int[] iArr2, float[] fArr3) {
        this.f21792c = drawable;
        this.tt = f10;
        this.ve = fArr2;
        this.uj = (iArr == null || fArr == null) ? false : true;
        this.f21798n = iArr;
        this.f21791a = fArr;
        this.sp = z10;
        this.f21803x = i10 <= 0 ? 2200 : i10;
        this.f21796i = i11;
        this.f21794da = z11;
        this.sl = f11;
        this.f21801t = Math.max(0.0f, Math.min(1.0f, f12));
        this.f21802u = Math.max(2, Math.min(i12, 50));
        this.yp = iArr2;
        this.f21804z = fArr3;
        this.f21797m = new RectF();
        this.nu = new Path();
        this.rh = new RectF();
        this.my = new Path();
        this.gt = new Matrix();
        Paint paint = new Paint(1);
        this.rl = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f10);
        if (z11) {
            Paint paint2 = new Paint(1);
            this.f21800p = paint2;
            paint2.setStyle(Paint.Style.FILL);
            Paint paint3 = new Paint(1);
            this.md = paint3;
            paint3.setStyle(Paint.Style.FILL);
            this.f21795h = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        }
    }

    private void n() {
        tt();
        this.yv = false;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.gr);
        this.zm = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f21803x);
        this.zm.setInterpolator(new LinearInterpolator());
        int i10 = this.f21796i;
        if (i10 == -1) {
            this.zm.setRepeatCount(-1);
        } else {
            this.zm.setRepeatCount(Math.max(0, i10 - 1));
        }
        this.zm.setRepeatMode(1);
        this.zm.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.xd.tt.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                tt.this.gt.setTranslate(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                if (tt.this.qy != null) {
                    tt.this.qy.setLocalMatrix(tt.this.gt);
                }
                if (tt.this.gu != null) {
                    tt.this.gu.setLocalMatrix(tt.this.gt);
                }
                tt.this.invalidateSelf();
            }
        });
        this.zm.start();
    }

    private void uj() {
        RectF rectF = this.rh;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float f12 = rectF.right;
        float f13 = rectF.bottom;
        this.cu = Math.min(this.sl, Math.min(rectF.width(), this.rh.height()) / 2.0f);
        int i10 = this.f21802u;
        int[] iArr = new int[i10];
        float[] fArr = new float[i10];
        int i11 = 0;
        while (true) {
            int i12 = this.f21802u;
            if (i11 >= i12) {
                this.f21793d = new LinearGradient(0.0f, f11, 0.0f, f11 + this.cu, iArr, fArr, Shader.TileMode.CLAMP);
                this.eo = new LinearGradient(0.0f, f13, 0.0f, f13 - this.cu, iArr, fArr, Shader.TileMode.CLAMP);
                this.f21805zb = new LinearGradient(f10, 0.0f, this.cu + f10, 0.0f, iArr, fArr, Shader.TileMode.CLAMP);
                this.or = new LinearGradient(f12, 0.0f, f12 - this.cu, 0.0f, iArr, fArr, Shader.TileMode.CLAMP);
                this.f21800p.setShader(this.gu);
                return;
            }
            float f14 = i11 / (i12 - 1);
            fArr[i11] = f14;
            if (i11 == i12 - 1) {
                iArr[i11] = 16777215;
            } else {
                double d10 = f14;
                iArr[i11] = (((int) (Math.exp(((-4.0d) * d10) * d10) * 255.0d)) << 24) | 16777215;
            }
            i11++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f21792c.draw(canvas);
        if (this.f21794da && this.gu != null) {
            c(canvas);
        }
        if (!this.uj || this.qy == null) {
            return;
        }
        canvas.drawPath(this.nu, this.rl);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f21792c.setBounds(rect);
        float f10 = this.tt / 2.0f;
        this.f21797m.set(rect.left + f10, rect.top + f10, rect.right - f10, rect.bottom - f10);
        this.nu.reset();
        float[] fArr = this.ve;
        if (fArr != null) {
            this.nu.addRoundRect(this.f21797m, fArr, Path.Direction.CW);
        } else {
            this.nu.addRect(this.f21797m, Path.Direction.CW);
        }
        this.rh.set(rect.left, rect.top, rect.right, rect.bottom);
        this.my.reset();
        float[] fArr2 = this.ve;
        if (fArr2 != null) {
            this.my.addRoundRect(this.rh, fArr2, Path.Direction.CW);
        } else {
            this.my.addRect(this.rh, Path.Direction.CW);
        }
        this.gr = this.f21797m.width();
        if (this.uj) {
            this.qy = new LinearGradient(0.0f, 0.0f, this.gr, 0.0f, this.f21798n, this.f21791a, Shader.TileMode.REPEAT);
            this.gt.reset();
            this.rl.setShader(this.qy);
        }
        if (this.f21794da) {
            this.gu = new LinearGradient(0.0f, 0.0f, this.gr, 0.0f, this.yp, this.f21804z, Shader.TileMode.REPEAT);
            uj();
            this.f21799nb = true;
        }
        if (this.yv) {
            n();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f21792c.setAlpha(i10);
        this.rl.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21792c.setColorFilter(colorFilter);
    }

    private void c(Canvas canvas) {
        Bitmap bitmap;
        RectF rectF = this.rh;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float f12 = rectF.right;
        float f13 = rectF.bottom;
        float f14 = this.cu;
        int i10 = (int) (f12 - f10);
        int i11 = (int) (f13 - f11);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        if (this.sp) {
            canvas.save();
            canvas.clipPath(this.my);
            canvas.saveLayer(f10, f11, f12, f13, null);
            c(canvas, f10, f11, f12, f13, f14);
            this.f21800p.setAlpha((int) (this.f21801t * 255.0f));
            this.f21800p.setXfermode(this.f21795h);
            canvas.drawRect(f10, f11, f12, f13, this.f21800p);
            this.f21800p.setXfermode(null);
            canvas.restore();
            canvas.restore();
            return;
        }
        if (this.f21799nb || (bitmap = this.qp) == null || bitmap.getWidth() < i10 || this.qp.getHeight() < i11) {
            Bitmap bitmap2 = this.qp;
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
            this.qp = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.qp);
            canvas2.translate(-f10, -f11);
            canvas2.save();
            canvas2.clipPath(this.my);
            canvas2.saveLayer(f10, f11, f12, f13, null);
            c(canvas2, f10, f11, f12, f13, f14);
            this.f21800p.setAlpha((int) (this.f21801t * 255.0f));
            this.f21800p.setXfermode(this.f21795h);
            canvas2.drawRect(f10, f11, f12, f13, this.f21800p);
            this.f21800p.setXfermode(null);
            canvas2.restore();
            canvas2.restore();
            this.f21799nb = false;
        }
        canvas.drawBitmap(this.qp, f10, f11, (Paint) null);
    }

    public void tt() {
        this.yv = false;
        ValueAnimator valueAnimator = this.zm;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.zm = null;
        }
    }

    public boolean ve() {
        return this.sp;
    }

    private void c(Canvas canvas, float f10, float f11, float f12, float f13, float f14) {
        this.md.setShader(this.f21793d);
        canvas.drawRect(f10, f11, f12, f11 + f14, this.md);
        this.md.setShader(this.eo);
        canvas.drawRect(f10, f13 - f14, f12, f13, this.md);
        this.md.setShader(this.f21805zb);
        canvas.drawRect(f10, f11, f10 + f14, f13, this.md);
        this.md.setShader(this.or);
        canvas.drawRect(f12 - f14, f11, f12, f13, this.md);
    }

    public void c() {
        if (this.sp) {
            this.yv = true;
            if (this.gr > 0.0f) {
                if (this.qy == null && this.gu == null) {
                    return;
                }
                n();
            }
        }
    }
}
