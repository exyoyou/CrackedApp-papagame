package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class ad extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f79851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f79852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f79853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Path f79854d;

    public ad(Context context) {
        super(context);
        a();
    }

    private void a() {
    }

    private void b() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        this.f79851a = Dips.dipsToIntPixels(5.0f, getContext());
        this.f79852b = height / 2;
        this.f79854d = new Path();
        Paint paint = new Paint(1);
        this.f79853c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f79853c.setStrokeWidth(this.f79851a);
        this.f79853c.setColor(-1);
        a(this.f79854d, new PointF(width / 2.0f, this.f79852b));
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f79854d, this.f79853c);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        b();
    }

    public ad(Context context, AttributeSet attrs) {
        super(context, attrs);
        a();
    }

    private void a(Path path, PointF point) {
        float fTan = (float) (((double) point.x) - (((double) this.f79852b) * Math.tan(2.0943951023931953d)));
        float f10 = point.y;
        int i10 = this.f79852b;
        float f11 = f10 + i10;
        float fTan2 = (float) (((double) point.x) + (((double) i10) * Math.tan(2.0943951023931953d)));
        float f12 = point.y + this.f79852b;
        path.moveTo(fTan, f11);
        path.lineTo(point.x, point.y);
        path.lineTo(fTan2, f12);
    }

    public ad(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a();
    }
}
