package com.byazt.oq;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2195})
public class RingProgressView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18281a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f18282c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ValueAnimator f18283n;
    public boolean sp;
    public Paint tt;
    public float uj;
    public RectF ve;

    public RingProgressView(Context context) {
        super(context);
        this.f18281a = TTAdConstant.STYLE_SIZE_RADIO_3_2;
        this.f18282c = context;
        Paint paint = new Paint();
        this.tt = paint;
        paint.setAntiAlias(true);
        this.tt.setStyle(Paint.Style.STROKE);
        this.tt.setStrokeWidth(10.0f);
        this.tt.setColor(Color.parseColor("#80FFFFFF"));
        this.ve = new RectF();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.sp) {
            return;
        }
        canvas.drawArc(this.ve, 270.0f, this.uj, false, this.tt);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.ve.set(5.0f, 5.0f, i10 - 5, i11 - 5);
    }

    public void setDuration(int i10) {
        this.f18281a = i10;
    }

    public void tt() {
        ValueAnimator valueAnimator = this.f18283n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void ve() {
        this.sp = true;
        invalidate();
    }

    public void c() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.f18283n = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f18281a);
        this.f18283n.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.oq.RingProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RingProgressView.this.uj = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RingProgressView.this.requestLayout();
            }
        });
        this.f18283n.start();
    }
}
