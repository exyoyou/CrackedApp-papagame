package com.byazt.tm;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 13})
public class tt extends GradientDrawable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Path f20328c;
    public final Paint tt;

    public tt() {
        this.f20328c = new Path();
        Paint paint = new Paint(1);
        this.tt = paint;
        paint.setColor(-1);
    }

    public void c(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Path path = this.f20328c;
        if (path == null || path.isEmpty()) {
            c(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.tt, 31);
        c(canvas);
        this.tt.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.f20328c, this.tt);
        this.tt.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }

    public void update(int i10, int i11, int i12, int i13) {
        this.f20328c.addRect(i10, i11, i12, i13, Path.Direction.CW);
        invalidateSelf();
    }

    public tt(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        super(orientation, iArr);
        this.f20328c = new Path();
        Paint paint = new Paint(1);
        this.tt = paint;
        paint.setColor(-1);
    }
}
