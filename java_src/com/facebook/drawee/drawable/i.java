package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i extends h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f27204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f27205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27206h;

    public interface a {
        void a(int viewWidth, int viewHeight, int imageWidth, int imageHeight, int scaledWidth, int scaledHeight, String scaleType);
    }

    public i(Drawable drawable, a listener) {
        super(drawable);
        this.f27206h = false;
        this.f27205g = listener;
        this.f27204f = A(drawable);
    }

    private String A(Drawable drawable) {
        return drawable instanceof r ? ((r) drawable).D().toString() : "none";
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f27206h) {
            this.f27206h = true;
            RectF rectF = new RectF();
            l(rectF);
            int iWidth = (int) rectF.width();
            int iHeight = (int) rectF.height();
            x(rectF);
            int iWidth2 = (int) rectF.width();
            int iHeight2 = (int) rectF.height();
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            a aVar = this.f27205g;
            if (aVar != null) {
                aVar.a(iWidth, iHeight, intrinsicWidth, intrinsicHeight, iWidth2, iHeight2, this.f27204f);
            }
        }
        super.draw(canvas);
    }
}
