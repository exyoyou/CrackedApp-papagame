package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public class RoundView extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f74409c;

    public RoundView(Context context) {
        this(context, null);
    }

    private Path a(Rect rect) {
        Path path = new Path();
        float radius = getRadius();
        path.addRoundRect(new RectF(rect.left + 0.0f, rect.top + 0.0f, rect.right - 0.0f, rect.bottom - 0.0f), radius, radius, Path.Direction.CW);
        return path;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        getLocalVisibleRect(rect);
        Path pathA = a(rect);
        this.f74409c = pathA;
        canvas.clipPath(pathA);
        super.draw(canvas);
    }

    public float getRadius() {
        return this.f74408b;
    }

    public void setRadius(float f10) {
        if (this.f74408b == f10) {
            return;
        }
        this.f74408b = f10;
        postInvalidate();
    }

    public RoundView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74408b = 0.0f;
        this.f74409c = null;
        setWillNotDraw(false);
        this.f74408b = 50.0f;
    }
}
