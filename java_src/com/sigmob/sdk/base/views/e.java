package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class e extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Path f80002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f80003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f80004c;

    public e(Context context) {
        super(context);
        this.f80002a = new Path();
        this.f80003b = new Path();
        Paint paint = new Paint();
        this.f80004c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f80004c.setColor(-1);
        this.f80004c.setAntiAlias(true);
        this.f80004c.setAlpha(153);
        a();
    }

    private void a() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.e.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                e.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int width = getWidth();
        int width2 = getWidth();
        if (width <= 0 || width2 <= 0) {
            return;
        }
        int iMin = Math.min(width, width2);
        this.f80004c.reset();
        this.f80002a.reset();
        this.f80003b.reset();
        this.f80004c.setStrokeWidth(Dips.dipsToIntPixels(1.0f, getContext()));
        float f10 = iMin;
        float f11 = width / 2.0f;
        float f12 = width2 / 2.0f;
        this.f80002a.addCircle(f11, f12, 0.45f * f10, Path.Direction.CCW);
        this.f80003b.addCircle(f11, f12, f10 * 0.35f, Path.Direction.CCW);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f80004c.setColor(-16777216);
        this.f80004c.setAlpha(102);
        this.f80004c.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.f80002a, this.f80004c);
        this.f80004c.setColor(-1);
        this.f80004c.setAlpha(76);
        this.f80004c.setStyle(Paint.Style.STROKE);
        canvas.drawPath(this.f80002a, this.f80004c);
        this.f80004c.setAlpha(127);
        canvas.drawPath(this.f80003b, this.f80004c);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        b();
    }

    public e(Context context, AttributeSet attrs) {
        super(context, attrs);
        a();
    }

    public e(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a();
    }
}
