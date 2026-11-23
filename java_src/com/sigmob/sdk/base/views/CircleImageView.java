package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public class CircleImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected float f79806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f79807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f79808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f79809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f79810e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Matrix f79811f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RectF f79812g;

    public CircleImageView(Context context) {
        this(context, null);
    }

    private BitmapShader a() {
        Bitmap bitmap;
        BitmapDrawable bitmapDrawable = (BitmapDrawable) getDrawable();
        if (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null) {
            return null;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        float fMax = Math.max(this.f79808c / bitmap.getWidth(), this.f79808c / bitmap.getHeight());
        this.f79811f.setScale(fMax, fMax);
        bitmapShader.setLocalMatrix(this.f79811f);
        return bitmapShader;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        BitmapShader bitmapShaderA = a();
        if (bitmapShaderA == null) {
            super.onDraw(canvas);
            return;
        }
        this.f79810e.setShader(bitmapShaderA);
        if (this.f79807b) {
            float f10 = this.f79808c;
            canvas.drawCircle(f10 / 2.0f, f10 / 2.0f, f10 / 2.0f, this.f79810e);
        } else {
            RectF rectF = this.f79812g;
            float f11 = this.f79806a;
            canvas.drawRoundRect(rectF, f11, f11, this.f79810e);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f79808c = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        this.f79809d = measuredHeight;
        this.f79808c = Math.min(this.f79808c, measuredHeight);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f79812g = new RectF(0.0f, 0.0f, getHeight(), getHeight());
    }

    public void setCircle(boolean circle) {
        this.f79807b = circle;
    }

    public CircleImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CircleImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79807b = false;
        Paint paint = new Paint();
        this.f79810e = paint;
        paint.setAntiAlias(true);
        this.f79811f = new Matrix();
        this.f79806a = TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics());
    }
}
