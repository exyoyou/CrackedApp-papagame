package com.haima.hmcp.widgets.virtualkey;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.business.ResourceManager;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionKeyView extends BaseVirtualKeyView {
    private Drawable background;

    public DirectionKeyView(Context context) {
        super(context);
        this.background = ResourceManager.getInstance().getResources().getDrawable(R.mipmap.haima_orientation_key_bg);
    }

    private int dp2px(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, ResourceManager.getInstance().getResources().getDisplayMetrics());
    }

    @Override // com.haima.hmcp.widgets.virtualkey.BaseVirtualKeyView
    public void drawVirtualKey(Canvas canvas, PointCoord pointCoord, float f10, float f11) {
        setupPaint();
        if (pointCoord.f33823w == 0 || pointCoord.f33822h == 0) {
            pointCoord.f33823w = dp2px(this.context, 138.0f);
            pointCoord.f33822h = dp2px(this.context, 138.0f);
        }
        Drawable drawable = this.background;
        if (drawable != null) {
            float f12 = pointCoord.f33824x;
            float f13 = this.surfaceWidth;
            int i10 = pointCoord.f33823w;
            float f14 = pointCoord.f33825y;
            float f15 = this.surfaceHeight;
            int i11 = pointCoord.f33822h;
            drawable.setBounds((int) (((f12 * f13) * f10) - ((i10 * f10) / 2.0f)), (int) (((f14 * f15) * f11) - ((i11 * f11) / 2.0f)), (int) ((f12 * f13 * f10) + ((i10 * f10) / 2.0f)), (int) ((f14 * f15 * f11) + ((i11 * f11) / 2.0f)));
            this.background.draw(canvas);
        }
    }

    @Override // com.haima.hmcp.widgets.virtualkey.BaseVirtualKeyView
    protected void setupPaint() {
    }
}
