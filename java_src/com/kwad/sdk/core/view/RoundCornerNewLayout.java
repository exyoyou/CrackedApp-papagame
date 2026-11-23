package com.kwad.sdk.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
public class RoundCornerNewLayout extends FrameLayout {

    @Nullable
    private Path baS;
    private int baT;
    private int baU;
    private int baV;
    private int baW;
    private boolean baX;

    public RoundCornerNewLayout(@NonNull Context context) {
        this(context, null);
    }

    @RequiresApi(api = 21)
    private void Pt() {
        if (this.baX) {
            int iMax = Math.max(this.baT, this.baU);
            int iMax2 = Math.max(this.baV, this.baW);
            setOutlineProvider(new a(Math.max(iMax, iMax2), 0, iMax == iMax2 ? 0 : -iMax2, getWidth(), iMax == iMax2 ? getHeight() : getHeight() + iMax));
            setClipToOutline(true);
        } else {
            setOutlineProvider(new a(this.baT, 0, 0, getWidth(), getHeight() + this.baT));
        }
        setClipToOutline(true);
    }

    private static Path a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Path path = new Path();
        path.moveTo(0.0f, i14);
        if (i14 >= 0) {
            float f10 = i14 * 2;
            path.arcTo(new RectF(0.0f, 0.0f, f10, f10), -180.0f, 90.0f);
        }
        path.lineTo(i12 - i15, 0.0f);
        if (i15 >= 0) {
            int i18 = i15 * 2;
            path.arcTo(new RectF(i12 - i18, 0.0f, i12, i18), -90.0f, 90.0f);
        }
        float f11 = i12;
        path.lineTo(f11, i13 - i16);
        if (i16 != 0) {
            int i19 = i16 * 2;
            path.arcTo(new RectF(i12 - i19, i13 - i19, f11, i13), 0.0f, 90.0f);
        }
        float f12 = i13;
        path.lineTo(i17, f12);
        if (i17 != 0) {
            int i20 = i17 * 2;
            path.arcTo(new RectF(0.0f, i13 - i20, i20, f12), 90.0f, 90.0f);
        }
        path.close();
        path.offset(0.0f, 0.0f);
        return path;
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"ObsoleteSdkInt"})
    protected void dispatchDraw(Canvas canvas) {
        Pt();
        Path path = this.baS;
        if (path != null) {
            canvas.clipPath(path);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    @SuppressLint({"ObsoleteSdkInt"})
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Pt();
    }

    public void setCalculateRadius(boolean z10) {
        this.baX = z10;
    }

    public void setTopRadius(int i10) {
        this.baT = i10;
        this.baU = i10;
        invalidate();
    }

    public RoundCornerNewLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundCornerNewLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.baX = false;
    }
}
