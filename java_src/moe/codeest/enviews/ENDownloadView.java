package moe.codeest.enviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.papa.gsyvideoplayer.R;

/* JADX INFO: loaded from: classes.dex */
public class ENDownloadView extends View {
    public static final int A = 2;
    public static final int B = 3;
    private static final int C = -1;
    private static final int D = -12959931;
    private static final int E = -1;
    private static final int F = 9;
    private static final int G = 9;
    private static final int H = 14;
    private static final int I = 0;
    private static final int J = 2;
    private static final int K = 2000;
    private static final DownloadUnit L = DownloadUnit.B;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f94336y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f94337z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f94338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f94340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f94341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f94342f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94343g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f94344h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DownloadUnit f94345i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f94346j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f94347k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f94348l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Path f94349m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RectF f94350n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RectF f94351o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ValueAnimator f94352p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f94353q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f94354r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f94355s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f94356t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f94357u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f94358v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f94359w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f94360x;

    public enum DownloadUnit {
        GB,
        MB,
        KB,
        B,
        NONE
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f94353q = valueAnimator.getAnimatedFraction();
            ENDownloadView.this.invalidate();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f94339c = 1;
            ENDownloadView.this.i();
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f94353q = valueAnimator.getAnimatedFraction();
            if (ENDownloadView.this.f94345i != DownloadUnit.NONE && ENDownloadView.this.f94342f > 0.0d) {
                ENDownloadView eNDownloadView = ENDownloadView.this;
                eNDownloadView.f94341e = ((double) eNDownloadView.f94353q) * ENDownloadView.this.f94342f;
            }
            ENDownloadView.this.invalidate();
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f94339c = 1;
            ENDownloadView.this.i();
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ENDownloadView.this.f94353q = valueAnimator.getAnimatedFraction();
            ENDownloadView.this.invalidate();
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ENDownloadView.this.f94353q = 0.0f;
            ENDownloadView.this.f94339c = 3;
            if (ENDownloadView.this.f94338b != null) {
                ENDownloadView.this.f94338b.onDownloadFinish();
            }
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f94367a;

        static {
            int[] iArr = new int[DownloadUnit.values().length];
            f94367a = iArr;
            try {
                iArr[DownloadUnit.GB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f94367a[DownloadUnit.MB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f94367a[DownloadUnit.KB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f94367a[DownloadUnit.B.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    interface h {
        void a();

        void onDownloadFinish();
    }

    public ENDownloadView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ValueAnimator valueAnimator = this.f94352p;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f94352p.removeAllUpdateListeners();
            if (this.f94352p.isRunning()) {
                this.f94352p.cancel();
            }
            this.f94352p = null;
        }
        if (this.f94339c != 1) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f94352p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f94344h);
        this.f94352p.setInterpolator(new LinearInterpolator());
        this.f94352p.addUpdateListener(new c());
        this.f94352p.addListener(new d());
        this.f94352p.start();
    }

    private void j() {
        ValueAnimator valueAnimator = this.f94352p;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f94352p.removeAllUpdateListeners();
            if (this.f94352p.isRunning()) {
                this.f94352p.cancel();
            }
            this.f94352p = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f94352p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(700L);
        this.f94352p.setInterpolator(new OvershootInterpolator());
        this.f94352p.addUpdateListener(new e());
        this.f94352p.addListener(new f());
        this.f94352p.start();
    }

    private String k(DownloadUnit downloadUnit) {
        int i10 = g.f94367a[downloadUnit.ordinal()];
        if (i10 == 1) {
            return " gb";
        }
        if (i10 != 2) {
            return i10 != 3 ? " b" : " kb";
        }
        return " mb";
    }

    public int getCurrentState() {
        return this.f94339c;
    }

    public void l() {
        ValueAnimator valueAnimator = this.f94352p;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f94352p.removeAllUpdateListeners();
            if (this.f94352p.isRunning()) {
                this.f94352p.cancel();
            }
            this.f94352p = null;
        }
    }

    public void m() {
        this.f94353q = 0.0f;
        this.f94339c = 0;
        ValueAnimator valueAnimator = this.f94352p;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f94352p.removeAllUpdateListeners();
            if (this.f94352p.isRunning()) {
                this.f94352p.cancel();
            }
            this.f94352p = null;
        }
    }

    public void n() {
        ValueAnimator valueAnimator = this.f94352p;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.f94352p.removeAllUpdateListeners();
            if (this.f94352p.isRunning()) {
                this.f94352p.cancel();
            }
            this.f94352p = null;
        }
        this.f94339c = 1;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 100.0f);
        this.f94352p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1500L);
        this.f94352p.setInterpolator(new OvershootInterpolator());
        this.f94352p.addUpdateListener(new a());
        this.f94352p.addListener(new b());
        this.f94352p.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i10 = this.f94339c;
        if (i10 == 0) {
            float f10 = this.f94353q;
            if (f10 <= 0.4d) {
                canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
                float f11 = this.f94356t;
                float f12 = this.f94358v;
                float f13 = this.f94357u;
                canvas.drawLine(f11 - f12, f13, f11, f13 + f12, this.f94346j);
                float f14 = this.f94356t;
                float f15 = this.f94357u;
                float f16 = this.f94358v;
                canvas.drawLine(f14, f15 + f16, f14 + f16, f15, this.f94346j);
                float f17 = this.f94356t;
                float f18 = this.f94357u;
                float f19 = this.f94358v;
                float f20 = this.f94353q;
                canvas.drawLine(f17, (f18 + f19) - (((f19 * 1.3f) / 0.4f) * f20), f17, (f18 - (1.6f * f19)) + (((f19 * 1.3f) / 0.4f) * f20), this.f94346j);
                return;
            }
            if (f10 <= 0.6d) {
                canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
                canvas.drawCircle(this.f94356t, this.f94357u - (this.f94358v * 0.3f), 2.0f, this.f94346j);
                float f21 = this.f94356t;
                float f22 = this.f94358v;
                float f23 = this.f94353q;
                float f24 = this.f94357u;
                canvas.drawLine((f21 - f22) - (((f22 * 1.2f) / 0.2f) * (f23 - 0.4f)), f24, f21, (f24 + f22) - ((f22 / 0.2f) * (f23 - 0.4f)), this.f94346j);
                float f25 = this.f94356t;
                float f26 = this.f94357u;
                float f27 = this.f94358v;
                float f28 = this.f94353q;
                canvas.drawLine(f25, (f26 + f27) - ((f27 / 0.2f) * (f28 - 0.4f)), f25 + f27 + (((f27 * 1.2f) / 0.2f) * (f28 - 0.4f)), f26, this.f94346j);
                return;
            }
            if (f10 > 1.0f) {
                canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
                canvas.drawCircle(this.f94356t, (this.f94357u - this.f94359w) - ((this.f94358v * 3.0f) * (this.f94353q - 1.0f)), 3.0f, this.f94346j);
                float f29 = this.f94356t;
                float f30 = this.f94358v;
                float f31 = this.f94357u;
                canvas.drawLine(f29 - (f30 * 2.2f), f31, f29 + (f30 * 2.2f), f31, this.f94346j);
                return;
            }
            canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
            float f32 = this.f94356t;
            float f33 = this.f94357u;
            float f34 = this.f94358v;
            canvas.drawCircle(f32, (f33 - (f34 * 0.3f)) - (((this.f94359w - (f34 * 0.3f)) / 0.4f) * (this.f94353q - 0.6f)), 2.0f, this.f94346j);
            float f35 = this.f94356t;
            float f36 = this.f94358v;
            float f37 = this.f94357u;
            canvas.drawLine(f35 - (f36 * 2.2f), f37, f35 + (f36 * 2.2f), f37, this.f94346j);
            return;
        }
        if (i10 == 1) {
            float f38 = this.f94353q;
            if (f38 <= 0.2d) {
                this.f94348l.setTextSize((this.f94343g / 0.2f) * f38);
            }
            canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
            canvas.drawArc(this.f94350n, -90.0f, this.f94353q * 359.99f, false, this.f94346j);
            this.f94349m.reset();
            float f39 = this.f94340d + 2.0f;
            this.f94340d = f39;
            float f40 = this.f94356t;
            float f41 = this.f94360x;
            if (f39 > f40 - (6.0f * f41)) {
                this.f94340d = f40 - (f41 * 10.0f);
            }
            this.f94349m.moveTo(this.f94340d, this.f94357u);
            for (int i11 = 0; i11 < 4; i11++) {
                Path path = this.f94349m;
                float f42 = this.f94360x;
                path.rQuadTo(f42, (-(1.0f - this.f94353q)) * f42, f42 * 2.0f, 0.0f);
                Path path2 = this.f94349m;
                float f43 = this.f94360x;
                path2.rQuadTo(f43, (1.0f - this.f94353q) * f43, f43 * 2.0f, 0.0f);
            }
            canvas.save();
            canvas.clipRect(this.f94351o);
            canvas.drawPath(this.f94349m, this.f94346j);
            canvas.restore();
            DownloadUnit downloadUnit = DownloadUnit.NONE;
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return;
            }
            canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94347k);
            float f44 = this.f94356t;
            float f45 = this.f94358v;
            float f46 = this.f94357u;
            float f47 = this.f94353q;
            canvas.drawLine(f44 - f45, f46, (f45 * 0.5f * f47) + (f44 - (f45 * 0.5f)), (f45 * 0.65f) + f46 + (f45 * 0.35f * f47), this.f94346j);
            float f48 = this.f94356t;
            float f49 = this.f94358v;
            float f50 = this.f94353q;
            float f51 = this.f94357u;
            canvas.drawLine((f48 - (f49 * 0.5f)) + (f49 * 0.5f * f50), (f49 * 0.65f) + f51 + (f49 * 0.35f * f50), (f48 + (1.2f * f49)) - ((0.2f * f49) * f50), (f51 - (f49 * 1.3f)) + (f49 * 1.3f * f50), this.f94346j);
            float f52 = this.f94356t;
            float f53 = this.f94358v;
            float f54 = this.f94353q;
            float f55 = this.f94357u;
            canvas.drawLine((f52 - (f53 * 0.5f)) + (f53 * 0.5f * f54), (f53 * 0.65f) + f55 + (0.35f * f53 * f54), (0.5f * f53 * f54) + (f52 - (f53 * 0.5f)), (f55 + (0.65f * f53)) - ((f53 * 2.25f) * f54), this.f94346j);
            return;
        }
        canvas.drawCircle(this.f94356t, this.f94357u, this.f94359w, this.f94346j);
        float f56 = this.f94353q;
        if (f56 <= 0.5d) {
            Paint paint = this.f94348l;
            int i12 = this.f94343g;
            paint.setTextSize(i12 - ((i12 / 0.2f) * f56));
        } else {
            this.f94348l.setTextSize(0.0f);
        }
        if (this.f94345i != DownloadUnit.NONE && this.f94341e > 0.0d) {
            canvas.drawText(String.format("%.2f", Double.valueOf(this.f94341e)) + k(this.f94345i), this.f94356t, this.f94357u + (this.f94358v * 1.4f), this.f94348l);
        }
        float f57 = this.f94356t;
        float f58 = this.f94358v;
        float f59 = this.f94353q;
        float f60 = this.f94357u;
        canvas.drawLine((f57 - (f58 * 2.2f)) + (1.2f * f58 * f59), f60, f57 - (f58 * 0.5f), f60 + (f58 * 0.5f * f59 * 1.3f), this.f94346j);
        float f61 = this.f94356t;
        float f62 = this.f94358v;
        float f63 = this.f94357u;
        float f64 = this.f94353q;
        canvas.drawLine(f61 - (f62 * 0.5f), f63 + (0.5f * f62 * f64 * 1.3f), (f61 + (2.2f * f62)) - (f62 * f64), f63 - ((f62 * f64) * 1.3f), this.f94346j);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i10;
        this.f94354r = f10;
        float f11 = i11;
        this.f94355s = f11;
        float f12 = f10 / 2.0f;
        this.f94356t = f12;
        this.f94357u = f11 / 2.0f;
        float f13 = (f10 * 5.0f) / 12.0f;
        this.f94359w = f13;
        float f14 = f13 / 3.0f;
        this.f94358v = f14;
        float f15 = (f14 * 4.4f) / 12.0f;
        this.f94360x = f15;
        this.f94340d = f12 - (f15 * 10.0f);
        float f16 = this.f94356t;
        float f17 = this.f94359w;
        float f18 = this.f94357u;
        this.f94350n = new RectF(f16 - f17, f18 - f17, f16 + f17, f18 + f17);
        float f19 = this.f94356t;
        float f20 = this.f94360x;
        this.f94351o = new RectF(f19 - (f20 * 6.0f), 0.0f, f19 + (f20 * 6.0f), this.f94355s);
    }

    public void setDownloadConfig(int i10, double d10, DownloadUnit downloadUnit) {
        this.f94344h = i10;
        this.f94342f = d10;
        this.f94345i = downloadUnit;
    }

    public void setOnDownloadStateListener(h hVar) {
        this.f94338b = hVar;
    }

    public ENDownloadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.download);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.download_download_line_color, -1);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.download_download_bg_line_color, D);
        int color3 = typedArrayObtainStyledAttributes.getColor(R.styleable.download_download_text_color, -1);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.download_download_line_width, 9);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.download_download_bg_line_width, 9);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.download_download_text_size, 14);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f94346j = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f94346j.setStrokeCap(Paint.Cap.ROUND);
        this.f94346j.setStrokeWidth(integer);
        this.f94346j.setColor(color);
        Paint paint2 = new Paint(1);
        this.f94347k = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f94347k.setStrokeCap(Paint.Cap.ROUND);
        this.f94347k.setStrokeWidth(integer2);
        this.f94347k.setColor(color2);
        Paint paint3 = new Paint(1);
        this.f94348l = paint3;
        paint3.setColor(color3);
        this.f94348l.setTextSize(integer3);
        this.f94348l.setTextAlign(Paint.Align.CENTER);
        this.f94349m = new Path();
        this.f94343g = integer3;
        this.f94339c = 0;
        this.f94345i = L;
        this.f94344h = 2000;
    }
}
