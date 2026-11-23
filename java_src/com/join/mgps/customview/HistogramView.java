package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class HistogramView extends View implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f65077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f65078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65080f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65081g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65082h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65083i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private double f65084j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65085k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Handler f65086l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65087m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f65088n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Canvas f65089o;

    public HistogramView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65085k = true;
        this.f65086l = new Handler();
        this.f65087m = 20;
        this.f65088n = 1;
    }

    private void a(Paint paint, boolean isAnim) {
        paint.setColor(Color.parseColor(this.f65078d));
        if (isAnim) {
            this.f65086l.postDelayed(this, this.f65088n);
            if (this.f65083i == 0) {
                Canvas canvas = this.f65089o;
                int i10 = this.f65076b;
                canvas.drawRect(0.0f, (i10 / 4) - 1, this.f65082h, ((i10 * 3) / 4) + 1, paint);
                return;
            }
            return;
        }
        int i11 = this.f65081g;
        if (i11 == 0) {
            Canvas canvas2 = this.f65089o;
            int i12 = this.f65076b;
            canvas2.drawRect(0.0f, (i12 / 4) - 1, 10.0f, ((i12 * 3) / 4) + 1, paint);
        } else {
            Canvas canvas3 = this.f65089o;
            int i13 = this.f65076b;
            canvas3.drawRect(0.0f, (i13 / 4) - 1, i11, ((i13 * 3) / 4) + 1, paint);
        }
    }

    public boolean b() {
        return this.f65085k;
    }

    public int getAnimRate() {
        return this.f65087m;
    }

    public int getOrientation() {
        return this.f65083i;
    }

    public double getProgress() {
        return this.f65084j;
    }

    public String getRateBackgroundColor() {
        return this.f65078d;
    }

    public int getRateBackgroundId() {
        return this.f65079e;
    }

    public int getRateHeight() {
        return this.f65080f;
    }

    public View getRateView() {
        return this.f65077c;
    }

    public int getRateWidth() {
        return this.f65081g;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f65089o = canvas;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        if (this.f65078d != null) {
            a(paint, this.f65085k);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f65076b = h10;
        if (this.f65083i == 0) {
            this.f65081g = (int) (((double) w10) * this.f65084j);
            this.f65080f = h10;
        } else {
            this.f65080f = (int) (((double) h10) * this.f65084j);
            this.f65081g = w10;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10;
        int i11;
        int i12 = this.f65083i;
        if (i12 == 0 && (i11 = this.f65082h) <= this.f65081g) {
            this.f65082h = i11 + this.f65087m;
            invalidate();
        } else if (i12 != 1 || (i10 = this.f65082h) > this.f65080f) {
            this.f65086l.removeCallbacks(this);
            this.f65082h = 0;
        } else {
            this.f65082h = i10 + this.f65087m;
            invalidate();
        }
    }

    public void setAnim(boolean isAnim) {
        this.f65085k = isAnim;
    }

    public void setAnimRate(int animRate) {
        this.f65087m = animRate;
    }

    public void setOrientation(int orientation) {
        this.f65083i = orientation;
    }

    public void setProgress(double progress) {
        this.f65084j = progress;
    }

    public void setRateBackgroundColor(String rateBackgroundColor) {
        this.f65078d = rateBackgroundColor;
        this.f65079e = -1;
    }

    public void setRateBackgroundId(int rateBackground) {
        this.f65079e = rateBackground;
        this.f65078d = null;
    }

    public void setRateHeight(int rateHeight) {
        this.f65080f = rateHeight;
    }

    public void setRateView(View rateView) {
        this.f65077c = rateView;
    }

    public void setRateWidth(int rateWidth) {
        this.f65081g = rateWidth;
    }

    public HistogramView(Context context) {
        super(context);
        this.f65085k = true;
        this.f65086l = new Handler();
        this.f65087m = 20;
        this.f65088n = 1;
    }
}
