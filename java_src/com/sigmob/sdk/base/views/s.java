package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class s extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f80225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RectF f80226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f80227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f80228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f80229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f80230f;

    public s(Context context) {
        super(context);
        this.f80230f = "";
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f80225a == null) {
            Paint paint = new Paint();
            this.f80225a = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f80225a.setColor(-1);
            int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
            this.f80229e = iAsIntPixels;
            this.f80225a.setStrokeWidth(iAsIntPixels);
            this.f80225a.setAlpha(127);
            Paint paint2 = new Paint();
            this.f80227c = paint2;
            paint2.setColor(-1);
            this.f80227c.setStyle(Paint.Style.FILL);
            this.f80227c.setTextSize(TypedValue.applyDimension(2, 12.0f, getResources().getDisplayMetrics()));
            this.f80228d = Dips.asIntPixels(10.0f, getContext());
        }
        int i10 = this.f80229e;
        this.f80226b = new RectF(i10, i10, getWidth() - this.f80229e, getHeight() - this.f80229e);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Paint paint = this.f80225a;
        if (paint == null) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        this.f80225a.setColor(-16777216);
        this.f80225a.setAlpha(102);
        RectF rectF = this.f80226b;
        float f10 = rectF.right;
        canvas.drawRoundRect(rectF, f10 / 2.0f, f10 / 2.0f, this.f80225a);
        this.f80225a.setStyle(Paint.Style.STROKE);
        this.f80225a.setColor(-1);
        this.f80225a.setAlpha(76);
        RectF rectF2 = this.f80226b;
        float f11 = rectF2.right;
        canvas.drawRoundRect(rectF2, f11 / 2.0f, f11 / 2.0f, this.f80225a);
        canvas.drawText(this.f80230f, (getWidth() - this.f80227c.measureText(this.f80230f)) / 2.0f, ((this.f80226b.bottom / 2.0f) + ((this.f80227c.getFontMetrics().bottom - this.f80227c.getFontMetrics().top) / 2.0f)) - this.f80227c.getFontMetrics().bottom, this.f80227c);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        a();
    }

    public void setText(String text) {
        this.f80230f = text;
        invalidate();
    }

    public s(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f80230f = "";
        a(context);
    }

    private void a(Context context) {
        com.sigmob.sdk.base.utils.x.a(this, new Runnable() { // from class: com.sigmob.sdk.base.views.s.1
            @Override // java.lang.Runnable
            public void run() {
                s.this.a();
            }
        });
    }

    public s(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f80230f = "";
        a(context);
    }
}
