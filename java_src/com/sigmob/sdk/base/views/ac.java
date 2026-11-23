package com.sigmob.sdk.base.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class ac extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RectF f79832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f79833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f79834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f79835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Path f79836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f79837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Path f79838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f79839i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f79840j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f79841k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f79842l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f79843m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f79844n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f79845o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f79846p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f79847q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f79848r;
    private String title;

    public ac(Context context) {
        super(context);
        this.f79842l = 1.0f;
        a();
    }

    private void b() {
        ValueAnimator valueAnimator = this.f79847q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(-this.f79841k, this.f79843m + this.f79844n);
        this.f79847q = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.ac.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ac.this.f79839i = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                ac.this.d();
                ac.this.invalidate();
            }
        });
        this.f79847q.setDuration(800L);
        this.f79847q.setRepeatCount(-1);
        this.f79847q.setRepeatMode(1);
        this.f79847q.start();
        ValueAnimator valueAnimator2 = this.f79848r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.15f);
        this.f79848r = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.ac.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                ac.this.f79842l = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
            }
        });
        this.f79848r.setDuration(1000L);
        this.f79848r.setRepeatCount(-1);
        this.f79848r.setRepeatMode(2);
        this.f79848r.start();
    }

    private void c() {
        this.f79836f = new Path();
        this.f79837g = new Paint();
        this.f79840j = this.f79844n;
        this.f79841k = Dips.dipsToIntPixels(60.0f, getContext());
        this.f79837g.setShader(new LinearGradient(0.0f, this.f79840j, this.f79841k, 0.0f, new int[]{a(-1, 0.2f), a(-1, 0.5f), a(-1, 0.2f)}, new float[]{0.2f, 0.8f, 1.0f}, Shader.TileMode.MIRROR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f79836f.reset();
        this.f79836f.moveTo((this.f79841k / 2.0f) + this.f79839i, 0.0f);
        this.f79836f.lineTo(this.f79841k + this.f79839i, 0.0f);
        this.f79836f.lineTo((this.f79841k / 2.0f) + this.f79839i, this.f79840j);
        this.f79836f.lineTo(this.f79839i + 0.0f, this.f79840j);
        this.f79836f.close();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f79847q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f79848r;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f10;
        super.onDraw(canvas);
        this.f79831a.setStyle(Paint.Style.STROKE);
        this.f79831a.setColor(-1);
        this.f79831a.setAlpha(204);
        this.f79831a.setStrokeWidth(this.f79833c);
        RectF rectF = this.f79832b;
        float f11 = this.f79833c;
        rectF.set(f11, f11, this.f79843m - (f11 * 2.0f), this.f79844n - (f11 * 2.0f));
        Path path = this.f79838h;
        RectF rectF2 = this.f79832b;
        int i10 = this.f79846p;
        path.addRoundRect(rectF2, i10, i10, Path.Direction.CCW);
        canvas.drawPath(this.f79838h, this.f79831a);
        this.f79831a.setStyle(Paint.Style.FILL);
        this.f79831a.setColor(-16777216);
        this.f79831a.setAlpha(76);
        this.f79838h.reset();
        Path path2 = this.f79838h;
        RectF rectF3 = this.f79832b;
        path2.addRoundRect(rectF3, rectF3.height() / 2.0f, this.f79832b.height() / 2.0f, Path.Direction.CCW);
        canvas.drawPath(this.f79838h, this.f79831a);
        int i11 = this.f79844n;
        float f12 = i11 * 0.3f * this.f79842l;
        float f13 = this.f79843m - ((i11 * 0.3f) * 2.0f);
        this.f79831a.setColor(-1);
        this.f79831a.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f13, this.f79844n / 2.0f, f12, this.f79831a);
        this.f79831a.setColor(-16777216);
        this.f79831a.setTextSize(TypedValue.applyDimension(2, this.f79842l * 16.0f, getResources().getDisplayMetrics()));
        this.f79831a.setTypeface(Typeface.DEFAULT_BOLD);
        float fMeasureText = f13 - (this.f79831a.measureText("GO") / 1.5f);
        canvas.drawText("GO", fMeasureText, ((this.f79844n / 2.0f) + ((this.f79831a.getFontMetrics().bottom - this.f79831a.getFontMetrics().top) / 2.0f)) - this.f79831a.getFontMetrics().bottom, this.f79831a);
        float fMeasureText2 = this.f79831a.measureText("GO") * 0.4f;
        Path path3 = new Path();
        float f14 = fMeasureText2 / 4.0f;
        float f15 = fMeasureText2 / 2.0f;
        path3.moveTo(this.f79831a.measureText("GO") + fMeasureText + f14, (this.f79844n / 2.0f) - f15);
        path3.lineTo(this.f79831a.measureText("GO") + fMeasureText + fMeasureText2, this.f79844n / 2.0f);
        path3.lineTo(fMeasureText + this.f79831a.measureText("GO") + f14, (this.f79844n / 2.0f) + f15);
        path3.close();
        canvas.drawPath(path3, this.f79831a);
        this.f79835e.setStyle(Paint.Style.FILL);
        this.f79835e.setColor(-1);
        if (TextUtils.isEmpty(this.title)) {
            f10 = 0.0f;
        } else {
            this.f79835e.setTextSize(TypedValue.applyDimension(2, 20.0f, getResources().getDisplayMetrics()));
            this.f79835e.setTypeface(Typeface.DEFAULT_BOLD);
            String str = this.title;
            f10 = (this.f79835e.getFontMetrics().bottom - this.f79835e.getFontMetrics().top) * 1.5f;
            for (int i12 = 5; i12 < this.title.length(); i12++) {
                float fMeasureText3 = this.f79835e.measureText(this.title, 0, i12) + f10;
                RectF rectF4 = this.f79832b;
                if (fMeasureText3 > ((rectF4.right - rectF4.left) - f10) - f12) {
                    str = this.title.substring(0, i12 - 2) + "...";
                    break;
                }
            }
            canvas.drawText(str, f10, ((this.f79844n / 2.0f) - (this.f79835e.getFontMetrics().bottom - this.f79835e.getFontMetrics().top)) - this.f79835e.getFontMetrics().top, this.f79835e);
        }
        if (!TextUtils.isEmpty(this.f79834d)) {
            this.f79835e.setTextSize(TypedValue.applyDimension(2, 16.0f, getResources().getDisplayMetrics()));
            this.f79835e.setTypeface(Typeface.DEFAULT);
            float f16 = f10 > 0.0f ? f10 : (this.f79835e.getFontMetrics().bottom - this.f79835e.getFontMetrics().top) * 1.5f;
            String str2 = this.f79834d;
            for (int i13 = 5; i13 < this.f79834d.length(); i13++) {
                float fMeasureText4 = this.f79835e.measureText(this.f79834d, 0, i13) + f10;
                RectF rectF5 = this.f79832b;
                if (fMeasureText4 > ((rectF5.right - rectF5.left) - f10) - f12) {
                    str2 = this.f79834d.substring(0, i13 - 2) + "...";
                    break;
                }
            }
            canvas.drawText(str2, f16, (this.f79844n / 2.0f) + (this.f79835e.getFontMetrics().bottom - this.f79835e.getFontMetrics().top), this.f79835e);
        }
        canvas.clipPath(this.f79838h);
        canvas.drawPath(this.f79836f, this.f79837g);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f79843m = w10;
        this.f79844n = (int) (h10 * 0.8f);
        this.f79845o = w10 / 2;
        this.f79846p = h10 / 2;
        c();
        b();
    }

    public ac(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79842l = 1.0f;
        a();
    }

    private int a(int color, float alpha) {
        return Color.argb((int) (Color.alpha(color) * alpha), Color.red(color), Color.green(color), Color.blue(color));
    }

    public ac(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79842l = 1.0f;
        a();
    }

    private void a() {
        setBackgroundColor(SupportMenu.CATEGORY_MASK);
        this.f79831a = new Paint(1);
        this.f79835e = new Paint(1);
        this.f79832b = new RectF();
        this.f79838h = new Path();
        this.f79833c = Dips.dipsToIntPixels(2.0f, getContext());
        setBackgroundColor(0);
    }

    public void a(String title, String desc) {
        this.title = title;
        this.f79834d = desc;
    }
}
