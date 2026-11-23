package com.kwad.components.ad.splashscreen.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import androidx.annotation.NonNull;
import com.kwad.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends AnimationDrawable {
    private Paint MA;
    private int MC;
    private int MD;
    private ValueAnimator ME;
    private final float MF = 6.0f;
    private final float MG = 11.0f;
    private float MH;
    private float MI;
    private int MJ;
    private Bitmap Mk;
    private Bitmap Ml;
    private Bitmap Mm;
    private Bitmap Mn;
    private Bitmap Mo;
    private Bitmap Mp;
    private int Mq;
    private RectF Mr;
    private Paint Ms;
    private Paint Mt;
    private PorterDuffXfermode Mu;
    private final int Mv;
    private final int Mw;
    private float Mx;
    private float My;
    private RectF Mz;
    private Context mContext;

    public d(Context context, int i10) {
        this.mContext = context;
        this.Mv = com.kwad.sdk.c.a.a.a(context, 51.0f);
        this.Mw = com.kwad.sdk.c.a.a.a(context, 61.0f);
        this.MJ = i10;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(float f10) {
        if (f10 <= 6.0f) {
            float f11 = f10 / 6.0f;
            int i10 = this.MJ;
            if (i10 == 0) {
                RectF rectF = this.Mz;
                float f12 = this.MD * (1.0f - f11);
                rectF.top = f12;
                this.Mr.offsetTo(rectF.left + this.My, f12 + this.Mx);
                this.MI = (f11 * 30.0f) + 290.0f;
                return;
            }
            if (i10 == 1) {
                RectF rectF2 = this.Mz;
                float f13 = 1.0f - f11;
                float f14 = this.MC * f13;
                rectF2.left = f14;
                this.Mr.offsetTo(f14 + this.My, rectF2.top + this.Mx);
                this.MI = f13 * 30.0f;
                return;
            }
            if (i10 != 2) {
                return;
            }
            RectF rectF3 = this.Mz;
            float f15 = this.MC * f11;
            rectF3.right = f15;
            this.Mr.offsetTo(f15 + this.My, rectF3.top + this.Mx);
            this.MI = (f11 * 30.0f) + 330.0f;
        }
    }

    private void init() {
        this.Mk = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_hand);
        this.Ml = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_hand_lt);
        this.Mm = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_hand_lb);
        this.Mn = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_hand_rt);
        this.Mo = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_hand_rb);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ksad_splash_side_bg);
        int i10 = this.MJ;
        if (i10 == 0) {
            this.Mp = bitmapDecodeResource;
        } else if (i10 == 1) {
            Matrix matrix = new Matrix();
            matrix.postRotate(270.0f);
            this.Mp = Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), matrix, true);
        } else if (i10 == 2) {
            Matrix matrix2 = new Matrix();
            matrix2.postRotate(90.0f);
            this.Mp = Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), matrix2, true);
        }
        this.Mq = com.kwad.sdk.c.a.a.a(this.mContext, 10.0f);
        this.MA = new Paint(1);
        int i11 = this.MJ;
        if (i11 == 0) {
            this.MD = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgh);
            int dimension = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgw);
            this.MC = dimension;
            this.Mx = (-this.Mw) * 0.22f;
            this.My = dimension * 0.08f;
        } else if (i11 == 1) {
            this.MD = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgw);
            this.MC = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgh);
            this.Mx = this.MD * 0.09f;
            this.My = (-this.Mv) * 0.2f;
        } else if (i11 == 2) {
            this.MD = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgw);
            this.MC = (int) this.mContext.getResources().getDimension(R.dimen.ksad_splash_hand_bgh);
            this.Mx = this.MD * 0.09f;
            this.My = (-this.Mv) * 0.5f;
        }
        this.Mz = new RectF(0.0f, 0.0f, this.MC, this.MD);
        this.Ms = new Paint(3);
        Paint paint = new Paint(3);
        this.Mt = paint;
        paint.setDither(true);
        float f10 = this.Mz.right;
        this.Mr = new RectF(f10 - this.Mv, 0.0f, f10, this.Mw);
        this.Mu = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 6.0f, 11.0f);
        this.ME = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1100L);
        this.ME.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.ad.splashscreen.widget.d.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d.this.MH = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                d dVar = d.this;
                dVar.e(dVar.MH);
                d.this.invalidateSelf();
            }
        });
        this.ME.setRepeatCount(-1);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final void draw(@NonNull Canvas canvas) {
        if (this.Mz == null) {
            return;
        }
        canvas.save();
        canvas.translate((getIntrinsicWidth() - this.MC) / 2, (getIntrinsicHeight() - this.MD) / 2);
        float f10 = this.MH;
        if (f10 <= 6.0f) {
            this.MA.setAlpha((int) ((f10 * 255.0f) / 6.0f));
            this.Mt.setAlpha(255);
        } else {
            int i10 = (int) ((1.0f - ((f10 - 6.0f) / 5.0f)) * 255.0f);
            this.MA.setAlpha(i10);
            this.Mt.setAlpha(i10);
        }
        int iSave = canvas.save();
        int iSaveLayer = canvas.saveLayer(this.Mz, this.MA, 31);
        try {
            canvas.drawBitmap(this.Mp, (Rect) null, this.Mz, this.MA);
        } catch (Throwable unused) {
        }
        canvas.rotate(this.MI, this.Mr.centerX(), this.Mr.centerY());
        this.Ms.setXfermode(this.Mu);
        int i11 = this.MJ;
        if (i11 == 0) {
            canvas.drawBitmap(this.Mn, (Rect) null, this.Mr, this.Ms);
            canvas.drawBitmap(this.Mo, (Rect) null, this.Mr, this.Ms);
        } else if (i11 == 1) {
            canvas.drawBitmap(this.Ml, (Rect) null, this.Mr, this.Ms);
            canvas.drawBitmap(this.Mm, (Rect) null, this.Mr, this.Ms);
        }
        canvas.drawBitmap(this.Mk, (Rect) null, this.Mr, this.Ms);
        canvas.restoreToCount(iSaveLayer);
        canvas.rotate(this.MI, this.Mr.centerX(), this.Mr.centerY());
        canvas.drawBitmap(this.Mk, (Rect) null, this.Mr, this.Mt);
        canvas.restoreToCount(iSave);
        canvas.restore();
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.MD + this.Mw + this.Mq;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.MC + this.Mv;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.AnimationDrawable, android.graphics.drawable.Animatable
    public final boolean isRunning() {
        ValueAnimator valueAnimator = this.ME;
        if (valueAnimator != null) {
            return valueAnimator.isRunning();
        }
        return false;
    }

    @Override // android.graphics.drawable.AnimationDrawable, android.graphics.drawable.Animatable
    public final void start() {
        ValueAnimator valueAnimator = this.ME;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // android.graphics.drawable.AnimationDrawable, android.graphics.drawable.Animatable
    public final void stop() {
        ValueAnimator valueAnimator = this.ME;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
