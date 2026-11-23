package com.aggmoread.sdk.z.c.a.a.e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes7.dex */
public class n extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f5247a;

    public n(Context context) {
        super(context);
        new Path();
    }

    public void a(float f10) {
        this.f5247a = f10;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Path path = new Path();
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        float f10 = this.f5247a;
        path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        canvas.clipPath(path);
        super.onDraw(canvas);
    }
}
