package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class XView extends View {
    private float ratio;

    public XView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-6250336);
        float f10 = width;
        canvas.drawRect(f10, 0.0f, getWidth(), height, paint);
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStrokeWidth(this.ratio * 3.0f);
        paint2.setColor(-1);
        float f11 = 8.0f * this.ratio;
        float f12 = f10 + f11;
        float f13 = f10 - f11;
        canvas.drawLine(f12, f11, getWidth() - f11, f13, paint2);
        canvas.drawLine(f12, f13, getWidth() - f11, f11, paint2);
    }

    public void setRatio(float f10) {
        this.ratio = f10;
    }
}
