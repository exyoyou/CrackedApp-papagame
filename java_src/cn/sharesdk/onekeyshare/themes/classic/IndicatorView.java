package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public class IndicatorView extends View {
    private static final int DESIGN_BOTTOM_HEIGHT = 52;
    private static final int DESIGN_INDICATOR_DISTANCE = 14;
    private static final int DESIGN_INDICATOR_RADIUS = 6;
    private int count;
    private int current;

    public IndicatorView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.count <= 1) {
            setVisibility(8);
            return;
        }
        float height = getHeight();
        float f10 = (6.0f * height) / 52.0f;
        float f11 = (14.0f * height) / 52.0f;
        float f12 = f10 * 2.0f;
        int i10 = this.count;
        float width = (getWidth() - ((i10 * f12) + ((i10 - 1) * f11))) / 2.0f;
        float f13 = height / 2.0f;
        canvas.drawColor(-1);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        for (int i11 = 0; i11 < this.count; i11++) {
            if (i11 == this.current) {
                paint.setColor(-10653280);
            } else {
                paint.setColor(-5262921);
            }
            canvas.drawCircle(((f12 + f11) * i11) + width, f13, f10, paint);
        }
    }

    public void onScreenChange(int i10, int i11) {
        if (i10 != this.current) {
            this.current = i10;
            postInvalidate();
        }
    }

    public void setScreenCount(int i10) {
        this.count = i10;
    }
}
