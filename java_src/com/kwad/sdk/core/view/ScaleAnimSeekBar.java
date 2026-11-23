package com.kwad.sdk.core.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.ColorInt;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class ScaleAnimSeekBar extends View {
    private Drawable bbA;
    private boolean bbB;
    private boolean bbC;
    private boolean bbD;
    private boolean bbE;
    private boolean bbF;
    private WeakReference<a> bbG;
    private boolean bbH;
    private boolean bbI;
    private ValueAnimator bbJ;
    private ValueAnimator bbK;
    private ValueAnimator bbL;
    private float bbM;
    private float bbN;
    private float bbO;
    private float bbP;
    private int bbQ;
    private boolean bbR;
    private Paint bbc;
    private int bbd;
    private int bbe;
    private int bbf;
    private int bbg;
    private int bbh;
    private int bbi;
    private int bbj;
    private int bbk;
    private boolean bbl;
    private int bbm;
    private int bbn;
    private int bbo;
    private int bbp;
    private int bbq;
    private int bbr;
    private int bbs;
    private GradientDrawable bbt;
    private GradientDrawable bbu;
    private GradientDrawable bbv;
    private Rect bbw;
    private Rect bbx;
    private Rect bby;
    private Rect bbz;

    public interface a {
        void a(ScaleAnimSeekBar scaleAnimSeekBar);

        void a(ScaleAnimSeekBar scaleAnimSeekBar, boolean z10);

        void zV();
    }

    public ScaleAnimSeekBar(Context context) {
        this(context, null);
    }

    private void E(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        if (this.bbH) {
            this.bbm = (int) (i10 - ((this.bbQ * 2) * (this.bbN - this.bbM)));
        } else {
            this.bbm = i10 - (this.bbQ * 2);
        }
        Rect rect = this.bbw;
        int i12 = this.bbk;
        int i13 = -i12;
        rect.top = i13;
        rect.bottom = -i13;
        boolean z10 = this.bbl;
        rect.left = (z10 ? -i10 : -this.bbm) / 2;
        rect.right = z10 ? i10 / 2 : this.bbm / 2;
        Rect rect2 = this.bbx;
        int i14 = -i12;
        rect2.top = i14;
        rect2.bottom = -i14;
        rect2.left = (z10 ? -i10 : -this.bbm) / 2;
        int i15 = this.bbm;
        rect2.right = (-i15) / 2;
        Rect rect3 = this.bby;
        rect3.top = -i12;
        rect3.bottom = -rect2.top;
        rect3.left = (z10 ? -i10 : -i15) / 2;
        rect3.right = (-i15) / 2;
        Rect rect4 = this.bbz;
        int i16 = this.bbg;
        rect4.top = -i16;
        rect4.bottom = i16;
        rect4.left = ((-i15) / 2) - i16;
        rect4.right = ((-i15) / 2) + i16;
        setThumbDrawable(this.bbA);
        setProgress(this.bbo);
        setSecondaryProgress(this.bbq);
    }

    private void bM(boolean z10) {
        if (this.bbH) {
            if (z10) {
                bN(true);
                bO(true);
            } else {
                bN(false);
                bO(false);
            }
        }
    }

    private void bN(boolean z10) {
        float f10 = this.bbM;
        float f11 = z10 ? this.bbN : 1.0f;
        ValueAnimator valueAnimator = this.bbJ;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.bbJ = valueAnimator2;
            valueAnimator2.setDuration(250L);
            this.bbJ.setInterpolator(new LinearInterpolator());
            this.bbJ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.sdk.core.view.ScaleAnimSeekBar.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    ScaleAnimSeekBar.this.bbM = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    ScaleAnimSeekBar.this.requestLayout();
                }
            });
        } else {
            valueAnimator.cancel();
        }
        this.bbJ.setFloatValues(f10, f11);
        this.bbJ.start();
    }

    private void bO(boolean z10) {
        float f10 = this.bbO;
        float f11 = z10 ? this.bbP : 1.0f;
        ValueAnimator valueAnimator = this.bbK;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.bbK = valueAnimator2;
            valueAnimator2.setDuration(250L);
            this.bbK.setInterpolator(new LinearInterpolator());
            this.bbK.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.sdk.core.view.ScaleAnimSeekBar.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    ScaleAnimSeekBar.this.bbO = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    ScaleAnimSeekBar.this.requestLayout();
                }
            });
        } else {
            valueAnimator.cancel();
        }
        this.bbK.setFloatValues(f10, f11);
        this.bbK.start();
    }

    private void cn(Context context) {
        this.bbH = true;
        this.bbQ = com.kwad.sdk.c.a.a.a(context, 10.0f);
        this.bbg = com.kwad.sdk.c.a.a.a(context, 3.0f);
        this.bbn = com.kwad.sdk.c.a.a.a(context, 20.0f);
        this.bbA = null;
        this.bbI = false;
        this.bbk = com.kwad.sdk.c.a.a.a(context, 0.5f);
        this.bbj = com.kwad.sdk.c.a.a.a(context, 1.0f);
        this.bbd = 654311423;
        this.bbe = -1;
        this.bbf = 1090519039;
        this.bbh = 0;
        this.bbi = 100;
        this.bbl = false;
    }

    private void d(Canvas canvas) {
        canvas.save();
        Drawable drawable = this.bbA;
        if (drawable != null) {
            drawable.setBounds(this.bbz);
            this.bbA.draw(canvas);
        } else {
            this.bbc.setColor(this.bbe);
            canvas.drawCircle(this.bbz.centerX(), this.bbz.centerY(), (this.bbz.width() * this.bbM) / 2.0f, this.bbc);
        }
        canvas.restore();
    }

    private float eQ(int i10) {
        int i11 = this.bbm;
        int i12 = this.bbh;
        return ((i11 * (i10 - i12)) / (this.bbi - i12)) - (i11 / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int eR(int i10) {
        int i11 = this.bbm;
        if (i10 > i11 / 2) {
            return this.bbi;
        }
        return i10 < (-i11) / 2 ? this.bbh : Math.round(((i10 + (i11 / 2.0f)) * (this.bbi - this.bbh)) / i11) + this.bbh;
    }

    private a getOnSeekBarChangedListener() {
        WeakReference<a> weakReference = this.bbG;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean h(float f10, float f11) {
        int i10;
        int i11;
        Rect rect = this.bbz;
        int i12 = rect.left;
        int i13 = rect.right;
        if (i12 >= i13 || (i10 = rect.top) >= (i11 = rect.bottom)) {
            return false;
        }
        float f12 = this.bbM;
        int i14 = this.bbn;
        return f10 >= (((float) i12) * f12) - ((float) i14) && f10 <= (((float) i13) * f12) + ((float) i14) && f11 >= (((float) i10) * f12) - ((float) i14) && f11 <= (((float) i11) * f12) + ((float) i14);
    }

    private boolean i(float f10, float f11) {
        int i10;
        int i11;
        Rect rect = this.bbw;
        int i12 = rect.left;
        int i13 = rect.right;
        if (i12 >= i13 || (i10 = rect.top) >= (i11 = rect.bottom)) {
            return false;
        }
        float f12 = this.bbO;
        int i14 = this.bbn;
        return f10 >= (((float) i12) * f12) - ((float) i14) && f10 <= (((float) i13) * f12) + ((float) i14) && f11 >= (((float) i10) * f12) - ((float) i14) && f11 <= (((float) i11) * f12) + ((float) i14);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            cn(context);
        }
        Paint paint = new Paint();
        this.bbc = paint;
        paint.setStyle(Paint.Style.FILL);
        this.bbc.setAntiAlias(true);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.bbt = gradientDrawable;
        gradientDrawable.setShape(0);
        this.bbt.setColor(this.bbd);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.bbu = gradientDrawable2;
        gradientDrawable2.setShape(0);
        this.bbu.setColor(this.bbe);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.bbv = gradientDrawable3;
        gradientDrawable3.setShape(0);
        this.bbv.setColor(this.bbf);
        this.bbw = new Rect();
        this.bbx = new Rect();
        this.bbz = new Rect();
        this.bby = new Rect();
        this.bbo = this.bbh;
    }

    private void j(boolean z10, int i10) {
        if (!z10) {
            this.bbo = i10;
            p(q(eQ(i10)));
            return;
        }
        float fQ = q(eQ(this.bbo));
        float fQ2 = q(eQ(i10));
        ValueAnimator valueAnimator = this.bbL;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.bbL = valueAnimator2;
            valueAnimator2.setDuration(300L);
            this.bbL.setInterpolator(new Interpolator() { // from class: com.kwad.sdk.core.view.ScaleAnimSeekBar.1
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f10) {
                    float f11 = f10 - 1.0f;
                    return (f11 * f11 * f11) + 1.0f;
                }
            });
            this.bbL.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.sdk.core.view.ScaleAnimSeekBar.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    float fFloatValue = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    ScaleAnimSeekBar scaleAnimSeekBar = ScaleAnimSeekBar.this;
                    scaleAnimSeekBar.bbo = scaleAnimSeekBar.eR((int) fFloatValue);
                    ScaleAnimSeekBar.this.p(fFloatValue);
                }
            });
        } else {
            valueAnimator.cancel();
        }
        this.bbL.setFloatValues(fQ, fQ2);
        this.bbL.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(float f10) {
        Rect rect = this.bbz;
        int i10 = this.bbg;
        rect.left = (int) (f10 - i10);
        rect.right = (int) (i10 + f10);
        this.bbx.right = (int) f10;
        invalidate();
    }

    private float q(float f10) {
        float f11 = this.bbm / 2;
        if (f10 > f11) {
            return f11;
        }
        float f12 = -f11;
        return f10 < f12 ? f12 : f10;
    }

    public final void bL(boolean z10) {
        this.bbR = z10;
        bM(z10);
    }

    public int getMaxProgress() {
        return this.bbi;
    }

    public int getProgress() {
        return this.bbo;
    }

    public int getProgressLength() {
        return this.bbm;
    }

    public int getProgressX() {
        return (int) (getX() + (this.bbg * this.bbN));
    }

    public int getSecondaryProgress() {
        return this.bbq;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.bbs / 2, this.bbr / 2);
        a(canvas, this.bbw, this.bbt);
        a(canvas, this.bby, this.bbv);
        a(canvas, this.bbx, this.bbu);
        if (this.bbR) {
            d(canvas);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824) {
            this.bbs = size;
        } else {
            this.bbs = getWidth();
        }
        if (mode2 == 1073741824) {
            this.bbr = size2;
        } else {
            this.bbr = getHeight();
        }
        E(this.bbs, this.bbr);
        setMeasuredDimension(this.bbs, this.bbr);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX() - (this.bbs / 2);
        float y10 = motionEvent.getY() - (this.bbr / 2);
        ViewParent parent = getParent();
        a onSeekBarChangedListener = getOnSeekBarChangedListener();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.bbF = false;
                if (this.bbC || this.bbB) {
                    this.bbC = false;
                    this.bbB = false;
                    a(eR((int) x10), this.bbI, true);
                    if (onSeekBarChangedListener != null) {
                        onSeekBarChangedListener.a(this);
                    }
                }
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                }
            } else if (action == 2 && (this.bbB || this.bbC)) {
                a(eR((int) x10), false, true);
            }
        } else {
            if (!this.bbE) {
                return super.onTouchEvent(motionEvent);
            }
            if (h(x10, y10)) {
                bM(true);
                this.bbB = true;
                this.bbF = true;
                if (onSeekBarChangedListener != null) {
                    onSeekBarChangedListener.zV();
                }
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if (i(x10, y10)) {
                bM(true);
                this.bbC = true;
                if (onSeekBarChangedListener != null) {
                    onSeekBarChangedListener.zV();
                }
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            }
        }
        return true;
    }

    public void setMaxProgress(int i10) {
        this.bbi = i10;
    }

    public void setMinProgress(int i10) {
        this.bbh = i10;
        if (this.bbo < i10) {
            this.bbo = i10;
        }
    }

    public void setOnSeekBarChangeListener(a aVar) {
        this.bbG = new WeakReference<>(aVar);
    }

    public void setProgress(int i10) {
        a(i10, false, false);
    }

    public void setProgressBackgroundColor(@ColorInt int i10) {
        this.bbd = i10;
        this.bbt.setColor(i10);
    }

    public void setProgressColor(@ColorInt int i10) {
        this.bbe = i10;
        this.bbu.setColor(i10);
    }

    public void setSecondaryProgress(int i10) {
        int i11 = this.bbh;
        if (i10 <= i11 || i10 >= (i11 = this.bbi)) {
            i10 = i11;
        }
        this.bbq = i10;
        this.bby.right = (int) q(eQ(i10));
        invalidate();
    }

    public void setSecondaryProgressColor(@ColorInt int i10) {
        this.bbf = i10;
        this.bbv.setColor(i10);
    }

    public void setThumbDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        this.bbA = drawable;
    }

    public void setThumbEnable(boolean z10) {
        this.bbE = z10;
    }

    public void setThumbScale(float f10) {
        this.bbM = f10;
    }

    public void setThumbTouchOffset(int i10) {
        this.bbn = i10;
        invalidate();
    }

    public ScaleAnimSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScaleAnimSeekBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.bbi = 100;
        this.bbl = false;
        this.bbA = null;
        this.bbB = false;
        this.bbC = false;
        this.bbD = false;
        this.bbE = true;
        this.bbH = true;
        this.bbI = false;
        this.bbM = 1.0f;
        this.bbN = 1.34f;
        this.bbO = 1.0f;
        this.bbP = 2.0f;
        init(context, attributeSet);
    }

    private void a(Canvas canvas, Rect rect, GradientDrawable gradientDrawable) {
        canvas.save();
        Rect rect2 = new Rect();
        float f10 = rect.top;
        float f11 = this.bbO;
        rect2.top = (int) (f10 * f11);
        rect2.bottom = (int) (rect.bottom * f11);
        rect2.left = rect.left;
        rect2.right = rect.right;
        gradientDrawable.setBounds(rect2);
        gradientDrawable.setCornerRadius(this.bbj * this.bbO);
        gradientDrawable.draw(canvas);
        canvas.restore();
    }

    private void a(int i10, boolean z10, boolean z11) {
        int i11 = this.bbh;
        if (i10 <= i11 || i10 >= (i11 = this.bbi)) {
            i10 = i11;
        }
        j(z10, i10);
        a onSeekBarChangedListener = getOnSeekBarChangedListener();
        if (onSeekBarChangedListener != null && this.bbp != this.bbo) {
            this.bbD = z11;
            onSeekBarChangedListener.a(this, z11);
            this.bbD = false;
        }
        this.bbp = this.bbo;
    }
}
