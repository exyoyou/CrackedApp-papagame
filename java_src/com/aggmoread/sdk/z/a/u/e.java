package com.aggmoread.sdk.z.a.u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class e extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f4098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearGradient f4099h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Rect f4100i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Path f4101j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4102k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ValueAnimator f4103l;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup.LayoutParams f4104a;

        a(ViewGroup.LayoutParams layoutParams) {
            this.f4104a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!e.this.isAttachedToWindow()) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("anim canCel");
                e.this.f4103l.cancel();
            }
            this.f4104a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            e.this.setLayoutParams(this.f4104a);
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4106a = 0;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Animator f4108b;

            a(b bVar, Animator animator) {
                this.f4108b = animator;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f4108b.start();
            }
        }

        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            int i10 = this.f4106a + 1;
            this.f4106a = i10;
            if (i10 % 2 == 0) {
                animator.pause();
                e.this.postDelayed(new a(this, animator), 1000L);
            }
        }
    }

    public e(Context context) {
        this(context, null);
    }

    public void b() {
        a();
        this.f4103l.start();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f4103l;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        super.onDraw(canvas);
        this.f4098g.setStyle(Paint.Style.FILL);
        this.f4098g.setColor(this.f4096e);
        this.f4101j.reset();
        int i10 = this.f4102k;
        if (i10 == 1) {
            this.f4100i.set(0, 0, this.f4092a, this.f4093b - this.f4094c);
            canvas.drawRect(this.f4100i, this.f4098g);
            this.f4101j.moveTo(0.0f, this.f4093b - this.f4094c);
            Path path = this.f4101j;
            int i11 = this.f4092a;
            int i12 = this.f4093b;
            path.quadTo(i11 >> 1, i12, i11, i12 - this.f4094c);
            canvas.drawPath(this.f4101j, this.f4098g);
            paint = new Paint();
        } else {
            if (i10 != 0) {
                return;
            }
            this.f4100i.set(0, this.f4094c, this.f4092a, this.f4093b);
            canvas.drawRect(this.f4100i, this.f4098g);
            this.f4101j.moveTo(0.0f, this.f4094c);
            Path path2 = this.f4101j;
            int i13 = this.f4092a;
            path2.quadTo(i13 >> 1, 0.0f, i13, this.f4094c);
            canvas.drawPath(this.f4101j, this.f4098g);
            paint = new Paint();
        }
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f4095d);
        paint.setColor(-1);
        canvas.drawPath(this.f4101j, paint);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode == 1073741824) {
            this.f4092a = size;
        }
        if (mode2 == 1073741824) {
            this.f4093b = size2;
        }
        setMeasuredDimension(this.f4092a, this.f4093b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), 0.0f, this.f4096e, this.f4097f, Shader.TileMode.CLAMP);
        this.f4099h = linearGradient;
        this.f4098g.setShader(linearGradient);
    }

    public e(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        if (this.f4103l == null) {
            int iA = com.aggmoread.sdk.z.a.m.b.a(getContext(), 40.0d);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            int i10 = layoutParams.height;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, iA + i10);
            this.f4103l = valueAnimatorOfInt;
            valueAnimatorOfInt.addUpdateListener(new a(layoutParams));
            this.f4103l.addListener(new b());
            this.f4103l.setDuration(300L);
            this.f4103l.setRepeatCount(-1);
            this.f4103l.setRepeatMode(2);
        }
    }

    public e(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4094c = 90;
        this.f4095d = com.aggmoread.sdk.z.a.m.b.a(getContext(), 2.0d);
        this.f4096e = Color.parseColor("#88000000");
        Color.parseColor("#ffffffff");
        this.f4097f = Color.parseColor("#88000000");
        this.f4100i = new Rect(0, 0, 0, 0);
        this.f4101j = new Path();
        this.f4102k = 0;
        Paint paint = new Paint();
        this.f4098g = paint;
        paint.setAntiAlias(true);
    }
}
