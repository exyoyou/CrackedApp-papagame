package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CircleDownloadProgressBar extends View {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static int f64420n = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f64425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f64426g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f64427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64428i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64429j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64430k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64431l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64432m;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator animation) {
            CircleDownloadProgressBar.this.f64423d = (((Integer) animation.getAnimatedValue()).intValue() * MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL) / CircleDownloadProgressBar.f64420n;
            CircleDownloadProgressBar.this.invalidate();
        }
    }

    public CircleDownloadProgressBar(Context context) {
        this(context, null);
    }

    public void c(AttributeSet attrs) {
        this.f64427h = new Paint();
        this.f64425f = new Paint();
        TypedArray typedArrayObtainStyledAttributes = this.f64426g.obtainStyledAttributes(attrs, R.styleable.CircleDownloadProgressBar);
        this.f64424e = typedArrayObtainStyledAttributes.getColor(2, getResources().getColor(R.color.colorPrimaryDark));
        this.f64431l = typedArrayObtainStyledAttributes.getColor(4, getResources().getColor(R.color.colorAccent));
        this.f64429j = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 20);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(1, false);
        this.f64422c = z10;
        if (z10) {
            this.f64432m = typedArrayObtainStyledAttributes.getColor(5, this.f64426g.getResources().getColor(R.color.colorPrimary));
            this.f64421b = typedArrayObtainStyledAttributes.getColor(0, this.f64426g.getResources().getColor(R.color.colorAccent));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getProgress() {
        return this.f64428i;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iMin = Math.min(getHeight(), getWidth()) / 2;
        int i10 = iMin - (this.f64429j / 2);
        this.f64425f.setAntiAlias(true);
        this.f64425f.setStrokeCap(Paint.Cap.ROUND);
        this.f64425f.setStrokeWidth(this.f64429j - 1);
        this.f64425f.setStyle(Paint.Style.STROKE);
        this.f64427h.setAntiAlias(true);
        this.f64427h.setColor(this.f64424e);
        this.f64427h.setStrokeWidth(this.f64429j);
        this.f64427h.setStyle(Paint.Style.STROKE);
        this.f64427h.setStrokeCap(Paint.Cap.ROUND);
        float f10 = iMin - i10;
        int i11 = iMin + i10;
        float f11 = i11;
        RectF rectF = new RectF(f10, f10, f11, f11);
        if (this.f64422c) {
            float f12 = i11 / 2;
            LinearGradient linearGradient = new LinearGradient(f12, 0.0f, f12, getHeight(), new int[]{this.f64421b, this.f64432m}, (float[]) null, Shader.TileMode.MIRROR);
            Matrix matrix = new Matrix();
            matrix.setRotate(-183.0f, f12, f12);
            linearGradient.setLocalMatrix(matrix);
            this.f64425f.setShader(linearGradient);
        } else {
            this.f64425f.setColor(this.f64431l);
        }
        float f13 = iMin;
        canvas.drawCircle(f13, f13, i10, this.f64425f);
        canvas.drawArc(rectF, this.f64430k, -this.f64423d, false, this.f64427h);
    }

    public void setProgress(int p10, boolean anim) {
        if (anim) {
            setProgress(p10);
            return;
        }
        int i10 = f64420n;
        if (p10 > i10) {
            this.f64428i = i10;
            this.f64423d = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        } else {
            this.f64428i = p10;
            this.f64423d = (p10 * MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL) / i10;
        }
        invalidate();
    }

    public void setStartAngle(int startAngle) {
        this.f64430k = startAngle;
    }

    public CircleDownloadProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CircleDownloadProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64428i = 100;
        this.f64430k = -90;
        this.f64426g = context;
        c(attrs);
    }

    @RequiresApi(api = 21)
    public CircleDownloadProgressBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f64428i = 100;
        this.f64430k = -90;
        this.f64426g = context;
        c(attrs);
    }

    public void setProgress(int p10) {
        int i10 = this.f64428i;
        int i11 = f64420n;
        if (p10 > i11) {
            this.f64428i = i11;
        } else {
            this.f64428i = i11 - p10;
        }
        int iAbs = (Math.abs(p10 - i10) * 1000) / f64420n;
        new ValueAnimator();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, this.f64428i);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.setDuration(iAbs);
        valueAnimatorOfInt.addUpdateListener(new a());
        valueAnimatorOfInt.start();
    }
}
