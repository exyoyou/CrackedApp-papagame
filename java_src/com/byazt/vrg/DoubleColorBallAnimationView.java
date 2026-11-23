package com.byazt.vrg;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;
import com.byazt.aas.pf;
import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.player.C;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 1, 2324, 2325})
public class DoubleColorBallAnimationView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f21331a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f21332c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final PorterDuffXfermode f21333da;
    public float gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Paint f21334i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f21335m;
    public float my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f21336n;
    public int nu;
    public float rh;
    public float rl;
    public float sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f21337t;
    public final float tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f21338u;
    public final float uj;
    public final float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f21339x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f21340z;

    public DoubleColorBallAnimationView(Context context) {
        this(context, null);
    }

    private float c(float f10) {
        return ((double) f10) < 0.5d ? 2.0f * f10 * f10 : ((f10 * 2.0f) * (2.0f - f10)) - 1.0f;
    }

    private void n() {
        this.f21335m = -1L;
        if (this.nu <= 0) {
            setProgressBarInfo(pf.ve(getContext(), 60.0f));
        }
        int iMin = Math.min(getMeasuredHeight(), getMeasuredWidth());
        if (this.nu > iMin && iMin > 0) {
            setProgressBarInfo(iMin);
        }
        if (this.f21334i == null) {
            this.f21334i = uj();
        }
        this.f21338u = true;
    }

    private Paint uj() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStyle(Paint.Style.FILL);
        return paint;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ve();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if ((c() || !this.f21337t) && this.f21338u) {
            boolean z10 = false;
            if (this.f21337t) {
                long jNanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
                if (this.f21335m < 0) {
                    this.f21335m = jNanoTime;
                }
                float f10 = (jNanoTime - this.f21335m) / 400.0f;
                this.sl = f10;
                int i10 = (int) f10;
                z10 = ((this.yp + i10) & 1) == 1;
                this.sl = f10 - i10;
            }
            try {
                float fC = c(this.sl);
                int i11 = this.nu;
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, i11, i11, this.f21334i, 31);
                float f11 = (this.rl * fC) + this.gt;
                float f12 = ((double) fC) < 0.5d ? fC * 2.0f : 2.0f - (fC * 2.0f);
                float f13 = this.my;
                float f14 = (0.25f * f12 * f13) + f13;
                this.f21334i.setColor(z10 ? this.f21339x : this.sp);
                canvas.drawCircle(f11, this.rh, f14, this.f21334i);
                float f15 = this.nu - f11;
                float f16 = this.my;
                float f17 = f16 - ((f12 * 0.375f) * f16);
                this.f21334i.setColor(z10 ? this.sp : this.f21339x);
                this.f21334i.setXfermode(this.f21333da);
                canvas.drawCircle(f15, this.rh, f17, this.f21334i);
                this.f21334i.setXfermode(null);
                canvas.restoreToCount(iSaveLayer);
            } catch (Throwable unused) {
            }
            postInvalidateDelayed(17L);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int iMin = Math.min(View.MeasureSpec.getSize(i10), View.MeasureSpec.getSize(i11));
        if (this.nu <= iMin || iMin <= 0) {
            return;
        }
        setProgressBarInfo(iMin);
    }

    public void setCycleBias(int i10) {
        this.yp = i10;
    }

    public void setProgress(float f10) {
        if (!this.f21338u) {
            n();
        }
        this.sl = f10;
        this.f21340z = false;
        this.f21337t = false;
        postInvalidate();
    }

    public void setProgressBarInfo(int i10) {
        if (i10 > 0) {
            this.nu = i10;
            this.rh = i10 / 2.0f;
            float f10 = (i10 >> 1) * 0.32f;
            this.my = f10;
            float f11 = (i10 * 0.16f) + f10;
            this.gt = f11;
            this.rl = i10 - (f11 * 2.0f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0) {
            tt();
        } else {
            ve();
        }
    }

    public void tt() {
        n();
        this.f21340z = true;
        this.f21337t = true;
        postInvalidate();
    }

    public void ve() {
        this.f21340z = false;
        this.f21338u = false;
        this.sl = 0.0f;
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean c() {
        return this.f21340z;
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21332c = 0.25f;
        this.tt = 0.375f;
        this.ve = 0.16f;
        this.uj = 0.32f;
        this.f21336n = 400.0f;
        this.f21331a = 17L;
        this.sp = -119723;
        this.f21339x = -14289682;
        this.f21333da = new PorterDuffXfermode(PorterDuff.Mode.XOR);
        this.f21337t = false;
        this.f21338u = false;
        this.yp = 0;
        this.f21340z = false;
        this.f21335m = -1L;
        this.nu = -1;
    }
}
