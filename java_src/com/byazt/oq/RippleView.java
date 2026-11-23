package com.byazt.oq;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1435})
public class RippleView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f18285a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f18286c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f18287da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Animator.AnimatorListener f18288i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f18289n;
    public float sp;
    public float tt;
    public ValueAnimator uj;
    public ValueAnimator ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f18290x;

    public RippleView(Context context, int i10) {
        super(context);
        this.f18285a = 300L;
        this.sp = 0.0f;
        this.f18287da = i10;
        c();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.f18286c, this.tt, this.sp, this.f18289n);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f18286c = i10 / 2.0f;
        this.tt = i11 / 2.0f;
        this.f18290x = (float) (Math.hypot(i10, i11) / 2.0d);
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.f18288i = animatorListener;
    }

    public void tt() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.f18290x);
        this.ve = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f18285a);
        this.ve.setInterpolator(new LinearInterpolator());
        this.ve.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.oq.RippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.sp = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        this.ve.start();
    }

    public void ve() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f18290x, 0.0f);
        this.uj = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f18285a);
        this.uj.setInterpolator(new LinearInterpolator());
        this.uj.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.oq.RippleView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.sp = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.f18288i;
        if (animatorListener != null) {
            this.uj.addListener(animatorListener);
        }
        this.uj.start();
    }

    public void c() {
        Paint paint = new Paint(1);
        this.f18289n = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f18289n.setColor(this.f18287da);
    }
}
