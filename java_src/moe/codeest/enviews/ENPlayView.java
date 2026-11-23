package moe.codeest.enviews;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnticipateInterpolator;
import com.papa.gsyvideoplayer.R;

/* JADX INFO: loaded from: classes.dex */
public class ENPlayView extends View {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f94368r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f94369s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f94370t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f94371u = -328966;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f94372v = 4;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f94373w = 4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f94374x = 1200;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f94376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f94377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f94381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f94382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RectF f94383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RectF f94384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f94385l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Path f94386m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Path f94387n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PathMeasure f94388o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f94389p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f94390q;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENPlayView.this.f94385l = 1.0f - valueAnimator.getAnimatedFraction();
            ENPlayView.this.invalidate();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENPlayView.this.f94385l = valueAnimator.getAnimatedFraction();
            ENPlayView.this.invalidate();
        }
    }

    public ENPlayView(Context context) {
        super(context);
        this.f94375b = f94369s;
        this.f94385l = 1.0f;
    }

    private int b(int i10) {
        return (int) TypedValue.applyDimension(1, i10, getContext().getResources().getDisplayMetrics());
    }

    public void c() {
        int i10 = this.f94375b;
        int i11 = f94369s;
        if (i10 == i11) {
            return;
        }
        this.f94375b = i11;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        valueAnimatorOfFloat.setDuration(this.f94390q);
        valueAnimatorOfFloat.setInterpolator(new AnticipateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new b());
        if (valueAnimatorOfFloat.isRunning()) {
            return;
        }
        valueAnimatorOfFloat.start();
    }

    public void d() {
        int i10 = this.f94375b;
        int i11 = f94368r;
        if (i10 == i11) {
            return;
        }
        this.f94375b = i11;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        valueAnimatorOfFloat.setDuration(this.f94390q);
        valueAnimatorOfFloat.setInterpolator(new AnticipateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new a());
        if (valueAnimatorOfFloat.isRunning()) {
            return;
        }
        valueAnimatorOfFloat.start();
    }

    public int getCurrentState() {
        return this.f94375b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.f94380g, this.f94381h, this.f94378e / 2, this.f94377d);
        float f10 = this.f94385l;
        if (f10 < 0.0f) {
            int i10 = this.f94380g;
            int i11 = this.f94382i;
            int i12 = this.f94381h;
            canvas.drawLine(i10 + i11, (i12 - (i11 * 1.6f)) + (i11 * 10 * f10), i10 + i11, i12 + (i11 * 1.6f) + (i11 * 10 * f10), this.f94376c);
            int i13 = this.f94380g;
            int i14 = this.f94382i;
            int i15 = this.f94381h;
            canvas.drawLine(i13 - i14, i15 - (i14 * 1.6f), i13 - i14, i15 + (i14 * 1.6f), this.f94376c);
            canvas.drawArc(this.f94384k, -105.0f, 360.0f, false, this.f94376c);
            return;
        }
        if (f10 <= 0.3d) {
            int i16 = this.f94380g;
            int i17 = this.f94382i;
            int i18 = this.f94381h;
            canvas.drawLine(i16 + i17, (i18 - (i17 * 1.6f)) + (((i17 * 3.2f) / 0.3f) * f10), i16 + i17, i18 + (i17 * 1.6f), this.f94376c);
            int i19 = this.f94380g;
            int i20 = this.f94382i;
            int i21 = this.f94381h;
            canvas.drawLine(i19 - i20, i21 - (i20 * 1.6f), i19 - i20, i21 + (i20 * 1.6f), this.f94376c);
            float f11 = this.f94385l;
            if (f11 != 0.0f) {
                canvas.drawArc(this.f94383j, 0.0f, f11 * 600.0f, false, this.f94376c);
            }
            RectF rectF = this.f94384k;
            float f12 = this.f94385l;
            canvas.drawArc(rectF, (f12 * 360.0f) - 105.0f, (1.0f - f12) * 360.0f, false, this.f94376c);
            return;
        }
        if (f10 <= 0.6d) {
            canvas.drawArc(this.f94383j, (f10 - 0.3f) * 600.0f, 180.0f - ((f10 - 0.3f) * 600.0f), false, this.f94376c);
            this.f94387n.reset();
            PathMeasure pathMeasure = this.f94388o;
            float f13 = this.f94389p;
            pathMeasure.getSegment(0.02f * f13, (0.38f * f13) + (((f13 * 0.42f) / 0.3f) * (this.f94385l - 0.3f)), this.f94387n, true);
            canvas.drawPath(this.f94387n, this.f94376c);
            RectF rectF2 = this.f94384k;
            float f14 = this.f94385l;
            canvas.drawArc(rectF2, (f14 * 360.0f) - 105.0f, (1.0f - f14) * 360.0f, false, this.f94376c);
            return;
        }
        if (f10 > 0.8d) {
            this.f94387n.reset();
            this.f94388o.getSegment(this.f94382i * 10 * (this.f94385l - 1.0f), this.f94389p, this.f94387n, true);
            canvas.drawPath(this.f94387n, this.f94376c);
            return;
        }
        this.f94387n.reset();
        PathMeasure pathMeasure2 = this.f94388o;
        float f15 = this.f94389p;
        float f16 = this.f94385l;
        pathMeasure2.getSegment((0.02f * f15) + (((f15 * 0.2f) / 0.2f) * (f16 - 0.6f)), (0.8f * f15) + (((f15 * 0.2f) / 0.2f) * (f16 - 0.6f)), this.f94387n, true);
        canvas.drawPath(this.f94387n, this.f94376c);
        RectF rectF3 = this.f94384k;
        float f17 = this.f94385l;
        canvas.drawArc(rectF3, (f17 * 360.0f) - 105.0f, (1.0f - f17) * 360.0f, false, this.f94376c);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        int i14 = (i10 * 9) / 10;
        this.f94378e = i14;
        this.f94379f = (i11 * 9) / 10;
        this.f94382i = i14 / b(4);
        this.f94380g = i10 / 2;
        this.f94381h = i11 / 2;
        int i15 = this.f94380g;
        int i16 = this.f94382i;
        int i17 = this.f94381h;
        this.f94383j = new RectF(i15 - i16, i17 + (i16 * 0.6f), i15 + i16, i17 + (i16 * 2.6f));
        int i18 = this.f94380g;
        int i19 = this.f94378e;
        int i20 = this.f94381h;
        int i21 = this.f94379f;
        this.f94384k = new RectF(i18 - (i19 / 2), i20 - (i21 / 2), i18 + (i19 / 2), i20 + (i21 / 2));
        Path path = this.f94386m;
        int i22 = this.f94380g;
        int i23 = this.f94382i;
        path.moveTo(i22 - i23, this.f94381h + (i23 * 1.8f));
        Path path2 = this.f94386m;
        int i24 = this.f94380g;
        int i25 = this.f94382i;
        path2.lineTo(i24 - i25, this.f94381h - (i25 * 1.8f));
        this.f94386m.lineTo(this.f94380g + this.f94382i, this.f94381h);
        this.f94386m.close();
        this.f94388o.setPath(this.f94386m, false);
        this.f94389p = this.f94388o.getLength();
    }

    public void setDuration(int i10) {
        this.f94390q = i10;
    }

    public ENPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f94375b = f94369s;
        this.f94385l = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.play);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.play_play_line_color, f94370t);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.play_play_bg_line_color, f94371u);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.play_play_line_width, b(f94372v));
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.play_play_bg_line_width, b(f94373w));
        typedArrayObtainStyledAttributes.recycle();
        setLayerType(1, null);
        Paint paint = new Paint(1);
        this.f94376c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f94376c.setStrokeCap(Paint.Cap.ROUND);
        this.f94376c.setColor(color);
        this.f94376c.setStrokeWidth(integer);
        this.f94376c.setPathEffect(new CornerPathEffect(1.0f));
        Paint paint2 = new Paint(1);
        this.f94377d = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f94377d.setStrokeCap(Paint.Cap.ROUND);
        this.f94377d.setColor(color2);
        this.f94377d.setStrokeWidth(integer2);
        this.f94386m = new Path();
        this.f94387n = new Path();
        this.f94388o = new PathMeasure();
        this.f94390q = f94374x;
    }
}
