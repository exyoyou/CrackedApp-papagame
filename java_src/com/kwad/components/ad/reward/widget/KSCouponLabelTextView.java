package com.kwad.components.ad.reward.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import com.kwad.components.core.widget.d;
import com.kwad.components.core.widget.e;
import com.kwad.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"AppCompatCustomView"})
public class KSCouponLabelTextView extends TextView implements d {
    private final Rect EX;
    private final RectF EY;
    private final RectF Fb;
    private float Fd;
    private float Fe;
    private float Ff;
    private final RectF Fg;
    private final RectF Fh;
    private final Path Fi;
    private Path Fj;
    private Path Fk;
    private boolean Fl;
    private final Paint mPaint;

    @ColorInt
    private int strokeColor;

    public KSCouponLabelTextView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.EX = new Rect();
        this.EY = new RectF();
        this.Fg = new RectF();
        this.Fh = new RectF();
        this.Fi = new Path();
        this.Fb = new RectF();
        this.Fl = true;
        a(context, null, 0);
    }

    @SuppressLint({"CustomViewStyleable"})
    private void a(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_KSCouponLabelTextView, i10, 0);
        int color = context.getResources().getColor(R.color.ksad_reward_main_color);
        this.Fd = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSCouponLabelTextView_ksad_labelRadius, 8.0f);
        this.Fe = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSCouponLabelTextView_ksad_strokeSize, 2.0f);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ksad_KSCouponLabelTextView_ksad_strokeColor, color);
        this.Ff = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSCouponLabelTextView_ksad_sideRadius, 16.0f);
        typedArrayObtainStyledAttributes.recycle();
        lI();
    }

    private void b(Path path, RectF rectF, RectF rectF2, RectF rectF3) {
        path.reset();
        path.moveTo(rectF.left, rectF.top + this.Fd);
        this.Fb.set(rectF);
        RectF rectF4 = this.Fb;
        float f10 = rectF4.top;
        float f11 = this.Fd;
        rectF4.bottom = f10 + (f11 * 2.0f);
        rectF4.right = rectF4.left + (f11 * 2.0f);
        path.arcTo(rectF4, 180.0f, 90.0f);
        path.lineTo(rectF.width() - this.Fd, rectF.top);
        this.Fb.set(rectF);
        RectF rectF5 = this.Fb;
        float f12 = rectF5.right;
        float f13 = this.Fd;
        rectF5.left = f12 - (f13 * 2.0f);
        rectF5.bottom = rectF5.top + (f13 * 2.0f);
        path.arcTo(rectF5, 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF3.top);
        path.arcTo(rectF3, 270.0f, -180.0f);
        path.lineTo(rectF.right, rectF.bottom - this.Fd);
        this.Fb.set(rectF);
        RectF rectF6 = this.Fb;
        float f14 = rectF6.right;
        float f15 = this.Fd;
        rectF6.left = f14 - (f15 * 2.0f);
        rectF6.top = rectF6.bottom - (f15 * 2.0f);
        path.arcTo(rectF6, 0.0f, 90.0f);
        path.lineTo(rectF.left + this.Fd, rectF.bottom);
        this.Fb.set(rectF);
        RectF rectF7 = this.Fb;
        float f16 = rectF7.left;
        float f17 = this.Fd;
        rectF7.right = f16 + (f17 * 2.0f);
        rectF7.top = rectF7.bottom - (f17 * 2.0f);
        path.arcTo(rectF7, 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF2.bottom);
        path.arcTo(rectF2, 90.0f, -180.0f);
        path.close();
    }

    private void lI() {
        this.mPaint.setColor(this.strokeColor);
        this.mPaint.setStrokeWidth(this.Fe);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setAntiAlias(true);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.EX.setEmpty();
        getDrawingRect(this.EX);
        float f10 = this.Fe / 2.0f;
        this.EY.set(this.EX);
        RectF rectF = this.EY;
        rectF.left += f10;
        rectF.top += f10;
        rectF.right -= f10;
        rectF.bottom -= f10;
        a(rectF, this.Fg);
        b(this.EY, this.Fh);
        Path path = this.Fj;
        if (path == null) {
            this.Fj = new Path();
        } else {
            path.reset();
        }
        Path path2 = this.Fk;
        if (path2 == null) {
            this.Fk = new Path();
        } else {
            path2.reset();
        }
        a(this.Fi, this.Fj, this.Fk, this.EY, this.Fg, this.Fh);
        canvas.drawPath(this.Fi, this.mPaint);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.Fl) {
            if (((float) (getPaddingLeft() + getPaddingRight())) + getPaint().measureText(getText().toString()) <= ((float) getMeasuredWidth())) {
                return;
            }
            setVisibility(8);
        }
    }

    public KSCouponLabelTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPaint = new Paint();
        this.EX = new Rect();
        this.EY = new RectF();
        this.Fg = new RectF();
        this.Fh = new RectF();
        this.Fi = new Path();
        this.Fb = new RectF();
        this.Fl = true;
        a(context, attributeSet, 0);
    }

    @RequiresApi(api = 19)
    private void a(Path path, Path path2, Path path3, RectF rectF, RectF rectF2, RectF rectF3) {
        path.reset();
        float f10 = this.Fd;
        path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        path2.addArc(rectF2, 90.0f, -180.0f);
        path3.addArc(rectF3, 90.0f, 180.0f);
        path.op(this.Fj, Path.Op.DIFFERENCE);
        path.op(this.Fk, Path.Op.DIFFERENCE);
    }

    private void a(RectF rectF, RectF rectF2) {
        rectF2.set(rectF);
        float f10 = rectF2.left;
        float f11 = this.Ff;
        float f12 = f10 - f11;
        rectF2.left = f12;
        rectF2.right = f12 + (f11 * 2.0f);
        float fHeight = rectF.height();
        float f13 = this.Ff;
        float f14 = rectF2.top + ((fHeight - (f13 * 2.0f)) / 2.0f);
        rectF2.top = f14;
        rectF2.bottom = f14 + (f13 * 2.0f);
    }

    public KSCouponLabelTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPaint = new Paint();
        this.EX = new Rect();
        this.EY = new RectF();
        this.Fg = new RectF();
        this.Fh = new RectF();
        this.Fi = new Path();
        this.Fb = new RectF();
        this.Fl = true;
        a(context, attributeSet, i10);
    }

    @Override // com.kwad.components.core.widget.d
    public final void a(e eVar) {
        int color = getResources().getColor(R.color.ksad_reward_main_color);
        this.strokeColor = color;
        setTextColor(color);
        lI();
        invalidate();
    }

    private void b(RectF rectF, RectF rectF2) {
        rectF2.set(rectF);
        float f10 = rectF2.right;
        float f11 = this.Ff;
        float f12 = f10 + f11;
        rectF2.right = f12;
        rectF2.left = f12 - (f11 * 2.0f);
        float fHeight = rectF.height();
        float f13 = this.Ff;
        float f14 = rectF2.top + ((fHeight - (f13 * 2.0f)) / 2.0f);
        rectF2.top = f14;
        rectF2.bottom = f14 + (f13 * 2.0f);
    }
}
