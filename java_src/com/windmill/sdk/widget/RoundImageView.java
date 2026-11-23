package com.windmill.sdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"AppCompatCustomView"})
public class RoundImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f87489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f87490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BitmapShader f87491d;

    public RoundImageView(Context context) {
        this(context, null);
    }

    private Bitmap a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapA;
        if (getDrawable() == null || (bitmapA = a(getDrawable())) == null) {
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f87491d = new BitmapShader(bitmapA, tileMode, tileMode);
        float fMax = (bitmapA.getWidth() == getWidth() && bitmapA.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / bitmapA.getWidth(), (getHeight() * 1.0f) / bitmapA.getHeight());
        this.f87490c.setScale(fMax, fMax);
        this.f87491d.setLocalMatrix(this.f87490c);
        this.f87489b.setShader(this.f87491d);
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        int i10 = this.f87488a;
        canvas.drawRoundRect(rectF, i10, i10, this.f87489b);
    }

    public RoundImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RoundImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f87488a = 20;
        this.f87490c = new Matrix();
        Paint paint = new Paint();
        this.f87489b = paint;
        paint.setAntiAlias(true);
    }
}
